using System;
using System.Collections.Generic;
using PlayerIO.GameLibrary;
using System.Linq;
using System.Xml;

namespace BomberPenguGame
{

  public class Match
  {
    readonly Room room;
    public List<Player> players = new List<Player>();

    public Match(Room room, Player playerA, Player playerB)
    {
      this.room = room;
      players.Add(playerA);
      players.Add(playerB);
    }

    public void Start()
    {
      foreach (var player in players)
      {
        player.Spawn();
      }
    }
  }

  public class Player : BasePlayer
  {
    public List<Player> challengedPlayers = new List<Player>();
    public Match match;

    public string Name;
    public bool alive = false;
    public bool challengeAll = false;
    public bool freestyleRequested = false;
    int wins = 0;
    int loses = 0;
    int draws = 0;

    public Player Enemy
    {
      get {
        if (!InMatch) return null;
        return match.players.FirstOrDefault(p => p != this);
      }
    }

    public string Skill
    {
      get { return $"{wins}/{loses}/{draws}"; }
    }

    public bool InMatch
    {
      get { return match != null; }
    }

    public void Win()
    {
      wins++;
    }

    public void Draw()
    {
      draws++;
    }

    public void Die()
    {
      if (!InMatch || !alive) return;
      alive = false;
      loses++;
    }

    public void Spawn()
    {
      alive = true;
      freestyleRequested = false;
    }

    public void SendChat(string sender, string message)
    {
      Send("xml", $"<{(InMatch ? "msgPlayer" : "msgAll")} name=\"{sender}\" msg=\"{message}\" />");
    }

    public void RequestFreestyle()
    {
      if (!alive || !InMatch || Enemy == null || freestyleRequested) return;
      freestyleRequested = true;

      if (!Enemy.freestyleRequested)
      {
        SendChat("System", "You requested freestyle");
        Enemy.SendChat("System", "Your opponent requested freestyle. Type !fs to agree");
      }
      else
      {
        SendChat("System", "Starting freestyle!");
        Enemy.SendChat("System", "Starting freestyle!");

        foreach (var player in match.players)
        {
          player.Send("xml", "<Tag16 s = \"26\" />");
          var posList = "3:0,5:0,8:1,1:2,2:2,3:2,7:2,2:3,4:3,8:3,10:3,5:4,6:4,10:4,11:4,4:5,6:5,8:5,0:6,2:6,4:6,6:6,8:6,10:6,11:6,2:7,4:7,8:7,12:7,4:8,8:8,9:8,10:8,8:9,3:10,4:10,6:10,9:10".Split(',');
          foreach (var item in posList)
          {
            var pos = item.Split(':');
            player.Send("xml", $"<Tag17 c=\"0000\" x=\"0\" y=\"0\" xp=\"{pos[0]}\" yp=\"{pos[1]}\" />");
          }
        }
      }
    }

    public void ShowHelp()
    {
      var lines = new Dictionary<string, string>()
      {
        { "!fs|!freestyle", "Vote for a freestyle round" },
        { "!bug", "Report a bug" },
        { "!h|!help", "Show this help" },
      };


      foreach (var entry in lines)
      {
        SendChat(entry.Key, entry.Value);
      }
    }

    public string GetState(Player askingPlayer)
    {
      if (askingPlayer == this) return "5";

      var state = InMatch ? "3" : "";

      if (challengeAll) state = "1" + state;
      else if (askingPlayer.challengeAll) state = "2" + state;
      else if (state == "") state = "0";

      return state;
    }

    public void Disconnect(string reason)
    {
      Send("xml", $"<errorMsg>{reason}</errorMsg>");
      Disconnect();
    }
  }

  [RoomType("Lobby")]
  public class Room : Game<Player>
  {

    public override bool AllowUserJoin(Player player)
    {
      var hasName = player.JoinData.TryGetValue("name", out string name);
      if (!hasName || name == "")
      {
        player.Disconnect("Missing name!");
        return false;
      }

      if (Players.Count(p => p.Name == name) > 0)
      {
        player.Disconnect("Name taken!");
        return false;
      }

      player.Name = name;

      return true;
    }

    public override void UserJoined(Player player)
    {
      var userListXml = "<userList>";

      foreach (var p in Players)
      {
        // If its another player, inform him about us
        if (p != player)
        {
          p.Send("xml", $"<newPlayer name=\"{player.Name}\" skill=\"{player.Skill}\" state=\"{player.GetState(p)}\" />");
        }

        userListXml += $"<user name=\"{p.Name}\" skill=\"{p.Skill}\" state=\"{p.GetState(player)}\" />";
      }

      userListXml += "</userList>";
      player.Send("xml", userListXml);
    }

    public override void UserLeft(Player player)
    {
      foreach (var p in Players)
      {
        if (p == player) continue;

        p.challengedPlayers.Remove(player);
      }

      Broadcast("xml", $"<playerLeft name=\"{player.Name}\" />");
    }

    private void OnXml(Player player, XmlDocument xml, string xmlString)
    {
      string rootName = xml.DocumentElement.Name;

      if (rootName == "auth")
      {
        var name = xml.DocumentElement.Attributes["name"]?.Value ?? "";
        if (name != player.Name)
        {
          player.Disconnect("Name mismatch!");
          return;
        }

        return;
      }

      if (rootName == "toRoom")
      {
        if (!player.InMatch) return;

        player.match.players.Remove(player);
        player.match = null;

        foreach (var p in Players)
        {
          if (p == player) continue;
          p.Send("xml", $"<playerUpdate name=\"{player.Name}\" skill=\"{player.Skill}\" state=\"{player.GetState(p)}\" />");
        }

        return;
      }

      if (rootName == "challenge")
      {
        var targetPlayerName = xml.DocumentElement.Attributes["name"]?.Value ?? "";
        if (targetPlayerName == "") return;

        var targetPlayer = Players.Where(p => p.Name == targetPlayerName).FirstOrDefault();
        if (targetPlayer == null) return;

        player.challengedPlayers.Add(targetPlayer);

        targetPlayer.Send("xml", $"<request name=\"{player.Name}\" />\0");
        return;
      }

      if (rootName == "remChallenge")
      {
        var targetPlayerName = xml.DocumentElement.Attributes["name"]?.Value ?? "";
        if (targetPlayerName == "") return;

        var targetPlayer = player.challengedPlayers.Where(p => p.Name == targetPlayerName).FirstOrDefault();
        if (targetPlayer == null) return;

        player.challengedPlayers.Remove(targetPlayer);

        targetPlayer.Send("xml", $"<remRequest name=\"{player.Name}\" />\0");
        return;
      }

      if (rootName == "challengeAll")
      {
        if (player.challengeAll) return;

        player.challengeAll = true;

        foreach (var p in Players)
        {
          if (p == player) continue;
          if (player.challengedPlayers.Contains(p)) continue;

          player.challengedPlayers.Add(p);
          p.Send("xml", $"<request name=\"{player.Name}\" />\0");
        }

        return;
      }

      if (rootName == "remChallengeAll")
      {
        if (!player.challengeAll) return;
        player.challengeAll = false;

        foreach (var p in player.challengedPlayers)
        {
          p.Send("xml", $"<remRequest name=\"{player.Name}\" />\0");
        }

        player.challengedPlayers.Clear();

        return;
      }

      if (rootName == "startGame")
      {
        var targetPlayerName = xml.DocumentElement.Attributes["name"]?.Value ?? "";
        if (targetPlayerName == "") return;

        var targetPlayer = Players.Where(p => p.Name == targetPlayerName).FirstOrDefault();
        if (targetPlayer == null) return;
        if (player.match != targetPlayer.match) return;

        // If there is no match yet, create it
        if (player.match == null)
        {
          player.match = new Match(this, player, targetPlayer);
          targetPlayer.match = player.match;
        }

        player.challengeAll = false;
        targetPlayer.challengeAll = false;

        targetPlayer.Send("xml", $"<startGame name=\"{player.Name}\" />");

        player.match.Start();

        return;
      }

      if (rootName == "winGame")
      {
        if (!player.InMatch) return;
        player.Win();
        return;
      }

      if (rootName == "drawGame")
      {
        if (!player.InMatch) return;
        player.Draw();
        return;
      }

      if (rootName == "die")
      {
        if (!player.InMatch) return;
        if (!player.alive) return;
        player.Die();

        if (player.Enemy != null && !player.Enemy.alive)
        {
          player.Draw();
          player.Enemy.Draw();

          player.Send("xml", $"<draw />");
          player.Enemy.Send("xml", $"<draw />");
        }
      }

      if (rootName == "msgPlayer" || rootName == "msgAll")
      {

        var msg = xml.DocumentElement.Attributes["msg"]?.Value ?? "";
        if (msg == "") return;

        if (msg.StartsWith("!"))
        {
          Console.WriteLine($"Command: '{msg}'");
          if (msg == "!h" ||  msg == "!help")
          {
            player.ShowHelp();
          }
          else if (msg == "!fs" || msg == "!freestyle")
          {
            player.RequestFreestyle();
          }
          else if (msg == "!bug")
          {
            player.SendChat("System", "Report bugs at: https://github.com/freehuntx/flashback/issues");
          }
          /*else if (msg.StartsWith("!d "))
          {
            player.Send("xml", msg.Replace("(", "<").Replace(")", ">").Substring(3));
          }*/
        }
        else
        {
          if (player.InMatch)
          {
            player.Enemy?.SendChat(player.Name, msg);
          }
          else
          {
            foreach (var p in Players)
            {
              if (p == player || p.InMatch) continue;
              p.SendChat(player.Name, msg);
            }
          }
        }

        return;
      }

      if (rootName == "surrender")
      {
        if (!player.InMatch) return;
        var enemy = player.match.players.FirstOrDefault(p => p != player);

        player.Die();

        player.Send("xml", $"<surrender winner=\"{enemy.Name}\" />");
        enemy?.Send("xml", $"<surrender winner=\"{enemy.Name}\" />");

        return;
      }

      // These should be sent to the enemy
      if (
        rootName == "die" ||
        rootName == "playAgain" ||
        rootName == "Tag10" ||
        rootName == "Tag11" ||
        rootName == "Tag12" ||
        rootName == "Tag14" ||
        rootName == "Tag16" ||
        rootName == "Tag17" ||
        rootName == "Tag18" ||
        rootName == "Tag19"
      )
      {
        if (!player.InMatch) return;

        foreach (var p in player.match.players)
        {
          if (p == player) continue;
          p.Send("xml", xmlString);
        }
        return;
      }

      if (rootName == "ping")
      {
        player.Send("xml", "<pong/>");
        return;
      }

      Console.WriteLine($"Unhandled: {xmlString}");
    }

    // This method is called when a player sends a message into the server code
    public override void GotMessage(Player player, Message message)
    {
      if (message.Type == "xml")
      {
        string xmlString = message.GetString(0);
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.LoadXml(xmlString);
        OnXml(player, xmlDoc, xmlString);
        return;
      }

      Console.WriteLine("[Error] Unhandled message type: " + message.Type);
    }
  }
}
