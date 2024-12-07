using System;
using System.Collections.Generic;
using PlayerIO.GameLibrary;
using System.Linq;
using System.Xml;

namespace BomberPenguGame
{
    public class Match
    {
        private readonly Room room;
        public List<Player> players = new List<Player>();
        public const int MaxPlayers = 4;
        private readonly object _lock = new object();

        public Match(Room room, IEnumerable<Player> participants)
        {
            this.room = room;
            foreach (var player in participants)
            {
                AddPlayer(player);
            }
        }

        /// <summary>
        /// Adds a player to the match if the maximum limit has not been reached.
        /// </summary>
        public void AddPlayer(Player player)
        {
            lock (_lock)
            {
                if (players.Count >= MaxPlayers)
                    throw new InvalidOperationException("Match is full");

                players.Add(player);
                player.match = this;
                player.Spawn();

                // Notify all players in the match about the new player
                Broadcast("xml", $"<newPlayer name=\"{player.Name}\" skill=\"{player.Skill}\" state=\"{player.GetState(player)}\" />");
            }
        }

        /// <summary>
        /// Starts the match by spawning all players.
        /// </summary>
        public void Start()
        {
            lock (_lock)
            {
                foreach (var player in players)
                {
                    player.Spawn();
                }
            }
        }

        /// <summary>
        /// Checks the current game status to determine if there's a winner or a draw.
        /// </summary>
        public void CheckGameStatus()
        {
            lock (_lock)
            {
                var alivePlayers = players.Where(p => p.alive).ToList();
                if (alivePlayers.Count == 0)
                {
                    // Draw
                    foreach (var p in players)
                    {
                        p.Draw();
                        p.Send("xml", "<draw />");
                    }
                }
                else if (alivePlayers.Count == 1)
                {
                    // One winner
                    var winner = alivePlayers[0];
                    winner.Win();
                    foreach (var p in players)
                    {
                        p.Send("xml", $"<win winner=\"{winner.Name}\" />");
                    }
                }
                // If more than one player is alive, the game continues
            }
        }

        /// <summary>
        /// Determines if all players have requested freestyle.
        /// </summary>
        public bool AllFreestyleRequested()
        {
            lock (_lock)
            {
                return players.All(p => p.freestyleRequested);
            }
        }

        /// <summary>
        /// Initiates the freestyle round for all players.
        /// </summary>
        public void StartFreestyle()
        {
            lock (_lock)
            {
                foreach (var player in players)
                {
                    player.Send("xml", "<Tag16 s=\"26\" />");
                    var posList = "3:0,5:0,8:1,1:2,2:2,3:2,7:2,2:3,4:3,8:3,10:3,5:4,6:4,10:4,11:4,4:5,6:5,8:5,0:6,2:6,4:6,6:6,8:6,10:6,11:6,2:7,4:7,8:7,12:7,4:8,8:8,9:8,10:8,8:9,3:10,4:10,6:10,9:10".Split(',');
                    foreach (var item in posList)
                    {
                        var pos = item.Split(':');
                        player.Send("xml", $"<Tag17 c=\"0000\" x=\"0\" y=\"0\" xp=\"{pos[0]}\" yp=\"{pos[1]}\" />");
                    }
                }
            }
        }

        /// <summary>
        /// Broadcasts a message to all players in the match.
        /// </summary>
        public void Broadcast(string type, string message)
        {
            lock (_lock)
            {
                foreach (var player in players)
                {
                    player.Send(type, message);
                }
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

        public string Skill
        {
            get { return $"{wins}/{loses}/{draws}"; }
        }

        public bool InMatch
        {
            get { return match != null; }
        }

        /// <summary>
        /// Increments the win count for the player.
        /// </summary>
        public void Win()
        {
            wins++;
        }

        /// <summary>
        /// Increments the draw count for the player.
        /// </summary>
        public void Draw()
        {
            draws++;
        }

        /// <summary>
        /// Handles the player's death within a match.
        /// </summary>
        public void Die()
        {
            if (!InMatch || !alive) return;
            alive = false;
            loses++;
            match.CheckGameStatus();
        }

        /// <summary>
        /// Spawns the player, resetting relevant states.
        /// </summary>
        public void Spawn()
        {
            alive = true;
            freestyleRequested = false;
        }

        /// <summary>
        /// Sends a chat message to either the match or all players.
        /// </summary>
        public void SendChat(string sender, string message)
        {
            Send("xml", $"<{(InMatch ? "msgPlayer" : "msgAll")} name=\"{sender}\" msg=\"{message}\" />");
        }

        /// <summary>
        /// Handles the player's request to start a freestyle round.
        /// </summary>
        public void RequestFreestyle()
        {
            if (!alive || !InMatch || freestyleRequested) return;
            freestyleRequested = true;

            if (!match.AllFreestyleRequested())
            {
                SendChat("System", "You requested freestyle");
                // Notify other players that a freestyle request has been made
                foreach (var p in match.players.Where(p => p != this))
                {
                    p.SendChat("System", $"Player {this.Name} has requested freestyle. Type !fs to agree");
                }
            }
            else
            {
                // All players have requested freestyle, start it
                foreach (var p in match.players)
                {
                    p.SendChat("System", "Starting freestyle!");
                }
                match.StartFreestyle();
            }
        }

        /// <summary>
        /// Sends help information to the player.
        /// </summary>
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

        /// <summary>
        /// Retrieves the state of the player from the perspective of another player.
        /// </summary>
        public string GetState(Player askingPlayer)
        {
            if (askingPlayer == this) return "5";

            var inMatchState = InMatch ? "3" : "";
            string state = "";

            if (challengeAll) state = "1" + inMatchState;
            else if (askingPlayer.challengeAll) state = "2" + inMatchState;
            else if (inMatchState == "") state = "0";
            else state = inMatchState;

            return state;
        }

        /// <summary>
        /// Disconnects the player with a specific reason.
        /// </summary>
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
                // If it's another player, inform them about the new player
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

            if (player.InMatch)
            {
                player.Die(); // This will trigger game status check
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

                lock (player.match)
                {
                    player.match.players.Remove(player);
                    player.match = null;

                    foreach (var p in Players)
                    {
                        if (p == player) continue;
                        p.Send("xml", $"<playerUpdate name=\"{player.Name}\" skill=\"{player.Skill}\" state=\"{p.GetState(p)}\" />");
                    }
                }

                return;
            }

            if (rootName == "challenge")
            {
                var targetPlayerName = xml.DocumentElement.Attributes["name"]?.Value ?? "";
                if (targetPlayerName == "") return;

                var targetPlayer = Players.FirstOrDefault(p => p.Name == targetPlayerName);
                if (targetPlayer == null) return;

                if (!player.challengedPlayers.Contains(targetPlayer))
                {
                    player.challengedPlayers.Add(targetPlayer);
                }

                targetPlayer.Send("xml", $"<request name=\"{player.Name}\" />\0");
                return;
            }

            if (rootName == "remChallenge")
            {
                var targetPlayerName = xml.DocumentElement.Attributes["name"]?.Value ?? "";
                if (targetPlayerName == "") return;

                var targetPlayer = player.challengedPlayers.FirstOrDefault(p => p.Name == targetPlayerName);
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
                    if (!player.challengedPlayers.Contains(p))
                    {
                        player.challengedPlayers.Add(p);
                        p.Send("xml", $"<request name=\"{player.Name}\" />\0");
                    }
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
                // Expecting a comma-separated list of player names
                var targetPlayerNames = xml.DocumentElement.Attributes["names"]?.Value ?? "";
                if (string.IsNullOrEmpty(targetPlayerNames)) return;

                var targetNames = targetPlayerNames.Split(',').Select(name => name.Trim()).ToList();
                var targetPlayers = Players.Where(p => targetNames.Contains(p.Name)).ToList();

                if (targetPlayers.Count == 0)
                    return;

                // Ensure all target players are available and not already in a match
                foreach (var targetPlayer in targetPlayers)
                {
                    if (targetPlayer.InMatch)
                        return; // Optionally, notify the initiating player that a target is unavailable
                }

                // Create the match with the initiating player and target players
                var participants = new List<Player> { player };
                participants.AddRange(targetPlayers);

                if (participants.Count > Match.MaxPlayers)
                {
                    player.Send("xml", "<errorMsg>Cannot start a match with more than 4 players.</errorMsg>");
                    return;
                }

                var match = new Match(this, participants);
                match.Start();

                // Notify all participants
                foreach (var p in match.players)
                {
                    p.Send("xml", $"<startGame name=\"{player.Name}\" />");
                }

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
                return;
            }

            if (rootName == "msgPlayer" || rootName == "msgAll")
            {
                var msg = xml.DocumentElement.Attributes["msg"]?.Value ?? "";
                if (msg == "") return;

                if (msg.StartsWith("!"))
                {
                    Console.WriteLine($"Command: '{msg}'");
                    if (msg == "!h" || msg == "!help")
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
                }
                else
                {
                    if (player.InMatch)
                    {
                        // Send to all other players in the match
                        foreach (var p in player.match.players.Where(p => p != player))
                        {
                            p.SendChat(player.Name, msg);
                        }
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

                player.Die();
                // After a surrender, CheckGameStatus() is already called in Die().
                // If there's exactly one winner, we announce it. If no one alive, it's a draw.
                // If multiple alive, no immediate winner is decided.

                return;
            }

            // Broadcast these tags to all other match players
            if (
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
                try
                {
                    xmlDoc.LoadXml(xmlString);
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Invalid XML from player {player.Name}: {ex.Message}");
                    return;
                }
                OnXml(player, xmlDoc, xmlString);
                return;
            }

            Console.WriteLine("[Error] Unhandled message type: " + message.Type);
        }
    }
}
