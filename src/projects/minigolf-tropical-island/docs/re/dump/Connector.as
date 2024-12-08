var §\x01§ = 578;
var §\x0f§ = 1;
class Connector extends MovieClip
{
   static var matchResult;
   static var myName;
   static var players;
   static var xmlSocket;
   static var versionNr = "1.0.2_pich";
   static var server = "www.qplaygames.de";
   static var port = "6926";
   static var connected = false;
   static var disConTxt = "";
   static var challengedAll = false;
   static var oppName = "0";
   static var myTurn = false;
   static var gameStarted = false;
   static var playAgainReq = false;
   static var startPlayer = false;
   static var lastMsg = 0;
   static var msgInt = 15000;
   function Connector()
   {
      super();
      if(Game.testMode)
      {
         _root.gotoAndStop(6);
      }
      else
      {
         Connector.doConnect();
      }
   }
   static function doConnect()
   {
      trace("Connector.doConnect()");
      var _loc2_ = new ContextMenu();
      _loc2_.hideBuiltInItems();
      _loc2_.builtInItems.quality = true;
      _root.menu = _loc2_;
      Stage.scaleMode = "noScale";
      if(_root.user == undefined)
      {
         Connector.myName = "Player" + Math.round(Math.random() * 100000);
      }
      else
      {
         Connector.myName = _root.user;
      }
      if(_root.surl != undefined)
      {
         Connector.server = _root.surl;
      }
      if(_root.sport != undefined)
      {
         Connector.port = _root.sport;
      }
      Connector.players = new Array();
      Connector.xmlSocket = new XMLSocket();
      Connector.xmlSocket.connect(Connector.server,Connector.port);
      Connector.xmlSocket.onConnect = Connector.onSockConnect;
      Connector.xmlSocket.onClose = Connector.onSockClose;
      Connector.xmlSocket.onXML = Connector.onSockXML;
   }
   function onEnterFrame()
   {
      if(getTimer() > Connector.lastMsg + Connector.msgInt)
      {
         Connector.xmlSocket.send("<beat/>\n");
         Connector.lastMsg = getTimer();
      }
   }
   static function addPlayer(pName, pSkill, pStatus)
   {
      if(pName == Connector.myName)
      {
         pStatus = "5";
      }
      var _loc2_ = new Player(pName,pSkill,pStatus);
      Connector.players.push(_loc2_);
      if(_root.playerRoom.active)
      {
         _root.playerRoom.addPlayer(_loc2_);
      }
   }
   static function updatePlayer(pName, pSkill, pStatus)
   {
      var _loc2_ = 0;
      while(_loc2_ < Connector.players.length)
      {
         if(Connector.players[_loc2_].pName == pName)
         {
            if(Connector.challengedAll)
            {
               switch(Connector.players[_loc2_].pStatus)
               {
                  case "0":
                     Connector.players[_loc2_].pStatus = "2";
                     break;
                  case "3":
                     Connector.players[_loc2_].pStatus = "23";
               }
            }
            if(pStatus == "0")
            {
               switch(Connector.players[_loc2_].pStatus)
               {
                  case "23":
                     Connector.players[_loc2_].pStatus = "2";
                     break;
                  case "13":
                     Connector.players[_loc2_].pStatus = "1";
                     break;
                  case "1":
                     Connector.players[_loc2_].pStatus = "1";
                     break;
                  case "2":
                     Connector.players[_loc2_].pStatus = "2";
                     break;
                  default:
                     Connector.players[_loc2_].pStatus = pStatus;
               }
            }
            else if(pStatus == "3")
            {
               switch(Connector.players[_loc2_].pStatus)
               {
                  case "1":
                     Connector.players[_loc2_].pStatus = "13";
                     break;
                  case "2":
                     Connector.players[_loc2_].pStatus = "23";
                     break;
                  case "13":
                     Connector.players[_loc2_].pStatus = "13";
                     break;
                  case "23":
                     Connector.players[_loc2_].pStatus = "23";
                     break;
                  default:
                     Connector.players[_loc2_].pStatus = pStatus;
               }
            }
            else
            {
               Connector.players[_loc2_].pStatus = pStatus;
            }
            Connector.players[_loc2_].pSkill = pSkill;
            Connector.players[_loc2_].update();
            break;
         }
         _loc2_ = _loc2_ + 1;
      }
      if(_root.playerRoom.active)
      {
         _root.playerRoom.updatePlayer(Connector.players[_loc2_]);
      }
   }
   static function updatePlayer2(pName, pStatus)
   {
      var _loc2_ = 0;
      while(_loc2_ < Connector.players.length)
      {
         if(Connector.players[_loc2_].pName == pName)
         {
            Connector.players[_loc2_].pStatus = pStatus;
            if(_root.playerRoom.active)
            {
               _root.playerRoom.updatePlayer(Connector.players[_loc2_]);
            }
            break;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   static function removePlayer(pName)
   {
      var _loc3_ = undefined;
      _loc3_ = new Array();
      var _loc2_ = 0;
      while(_loc2_ < Connector.players.length)
      {
         if(Connector.players[_loc2_].pName != pName)
         {
            _loc3_.push(Connector.players[_loc2_]);
         }
         _loc2_ = _loc2_ + 1;
      }
      Connector.players = _loc3_;
      if(_root.playerRoom.active)
      {
         _root.playerRoom.removePlayer(pName);
      }
   }
   static function getPlayerStatus(pName)
   {
      var _loc1_ = 0;
      while(_loc1_ < Connector.players.length)
      {
         if(Connector.players[_loc1_].pName == pName)
         {
            return Connector.players[_loc1_].pStatus;
         }
         _loc1_ = _loc1_ + 1;
      }
      return "-1";
   }
   static function getPlayerId(pName)
   {
      var _loc1_ = 0;
      while(_loc1_ < Connector.players.length)
      {
         if(Connector.players[_loc1_].pName == pName)
         {
            return _loc1_;
         }
         _loc1_ = _loc1_ + 1;
      }
      return -1;
   }
   static function onSockClose()
   {
      trace("onSockClose()");
      Connector.connected = false;
      _root.gotoAndStop("ConnLost");
   }
   static function onSockXML(input)
   {
      var _loc2_ = input.lastChild;
      var _loc11_ = _loc2_.nodeName;
      switch(_loc11_)
      {
         case "turn":
            var _loc35_ = Number(_loc2_.attributes.x);
            var _loc34_ = Number(_loc2_.attributes.y);
            var _loc25_ = Number(_loc2_.attributes.r);
            var _loc27_ = Number(_loc2_.attributes.p);
            var _loc30_ = Number(_loc2_.attributes.fp);
            var _loc4_ = _loc2_.childNodes;
            var _loc3_ = 0;
            while(_loc3_ < _loc4_.length)
            {
               var _loc6_ = _loc4_[_loc3_].attributes.n;
               var _loc7_ = new Number(_loc4_[_loc3_].attributes.f);
               Game.inst.bahn["flip_" + _loc6_].gotoAndPlay(_loc7_);
               _loc3_ = _loc3_ + 1;
            }
            Game.inst.remoteShoot(_loc35_,_loc34_,_loc27_,_loc25_,_loc30_);
            break;
         case "nextTurn":
            var _loc28_ = String(_loc2_.attributes.n);
            var _loc21_ = Number(_loc2_.attributes.t);
            var _loc22_ = Number(_loc2_.attributes.x1);
            var _loc17_ = Number(_loc2_.attributes.y1);
            var _loc18_ = Number(_loc2_.attributes.x2);
            var _loc15_ = Number(_loc2_.attributes.y2);
            var _loc24_ = Number(_loc2_.attributes.tr1);
            var _loc23_ = Number(_loc2_.attributes.tr2);
            Game.inst.nextTurn(_loc28_,_loc21_,_loc22_,_loc17_,_loc18_,_loc15_,_loc24_,_loc23_);
            break;
         case "countTurn":
            _loc28_ = String(_loc2_.attributes.n);
            Game.inst.countTurn(_loc28_);
            break;
         case "startLevel":
            var _loc16_ = Number(_loc2_.attributes.nr);
            var _loc19_ = String(_loc2_.attributes.pn);
            _loc21_ = Number(_loc2_.attributes.t);
            Game.inst.startLevel(_loc16_,_loc19_,_loc21_);
            break;
         case "endGame":
            trace("case: endGame");
            var _loc9_ = String(_loc2_.attributes.winner);
            Game.inst.endGame(_loc9_);
            break;
         case "errorMsg":
            trace("case: errorMsg");
            Connector.disConTxt = _loc2_.lastChild.nodeValue;
            _root.gotoAndStop("ConnLost");
            break;
         case "userList":
            trace("case: userList");
            _loc4_ = _loc2_.childNodes;
            _loc3_ = 0;
            while(_loc3_ < _loc4_.length)
            {
               var _loc12_ = _loc4_[_loc3_].attributes.name;
               var _loc10_ = _loc4_[_loc3_].attributes.skill;
               var _loc13_ = _loc4_[_loc3_].attributes.state;
               Connector.addPlayer(_loc12_,_loc10_,_loc13_);
               trace(_loc12_);
               trace(_loc10_);
               trace(_loc13_);
               _loc3_ = _loc3_ + 1;
            }
            _root.playerRoom.sortPlayerList();
            break;
         case "playerUpdate":
            trace("case: playerUpdate");
            _loc12_ = _loc2_.attributes.name;
            _loc10_ = _loc2_.attributes.skill;
            _loc13_ = _loc2_.attributes.state;
            trace(_loc12_);
            trace(_loc10_);
            trace(_loc13_);
            Connector.updatePlayer(_loc12_,_loc10_,_loc13_);
            break;
         case "newPlayer":
            trace("case: newPlayer");
            _loc12_ = _loc2_.attributes.name;
            _loc10_ = _loc2_.attributes.skill;
            _loc13_ = _loc2_.attributes.state;
            if(Connector.challengedAll)
            {
               Connector.addPlayer(_loc12_,_loc10_,"2");
            }
            else
            {
               Connector.addPlayer(_loc12_,_loc10_,_loc13_);
            }
            _root.playerRoom.sortPlayerList();
            trace(_loc12_);
            trace(_loc10_);
            trace(_loc13_);
            break;
         case "playerLeft":
            trace("case: playerLeft");
            _loc12_ = _loc2_.attributes.name;
            trace(_loc12_);
            Connector.removePlayer(_loc12_);
            if(Connector.gameStarted && _loc12_ == Connector.oppName)
            {
               trace("lost opponent");
               _root.game.win();
            }
            break;
         case "request":
            trace("case: request");
            _loc12_ = _loc2_.attributes.name;
            Connector.updatePlayer2(_loc12_,"1");
            if(!Connector.gameStarted)
            {
               SoundPlayer.play("Request.wav");
            }
            trace(_loc12_);
            break;
         case "remRequest":
            trace("case: remRequest");
            _loc12_ = _loc2_.attributes.name;
            var _loc36_ = Connector.getPlayerId(_loc12_);
            switch(Connector.getPlayerStatus(_loc12_))
            {
               case "0":
               case "1":
                  Connector.updatePlayer2(_loc12_,"0");
                  break;
               case "3":
               case "13":
                  Connector.updatePlayer2(_loc12_,"3");
                  break;
               default:
                  Connector.updatePlayer2(_loc12_,"0");
            }
            trace(_loc12_);
            break;
         case "startGame":
            trace("case: startGame");
            _loc12_ = _loc2_.attributes.name;
            trace(_loc12_);
            Connector.oppName = _loc12_;
            Connector.updatePlayer2(Connector.oppName,"3");
            if(Connector.challengedAll)
            {
               Connector.sendRemChallengeAll();
               _loc3_ = 0;
               while(_loc3_ < Connector.players.length)
               {
                  if(Connector.players[_loc3_].pStatus == "2")
                  {
                     Connector.updatePlayer2(Connector.players[_loc3_].pName,"0");
                  }
                  else if(Connector.players[_loc3_].pStatus == "23")
                  {
                     Connector.updatePlayer2(Connector.players[_loc3_].pName,"3");
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            if(!Connector.gameStarted)
            {
               _root.chatBox.clearChatList();
            }
            Connector.myTurn = false;
            Connector.gameStarted = true;
            Connector.playAgainReq = false;
            Connector.challengedAll = false;
            Connector.startPlayer = false;
            _root.gotoAndStop("gameFrame");
            break;
         case "startGame2":
            trace("case: startGame2");
            _loc12_ = _loc2_.attributes.name;
            trace(_loc12_);
            Connector.oppName = _loc12_;
            Connector.updatePlayer2(Connector.oppName,"3");
            if(Connector.challengedAll)
            {
               Connector.sendRemChallengeAll();
               _loc3_ = 0;
               while(_loc3_ < Connector.players.length)
               {
                  if(Connector.players[_loc3_].pStatus == "2")
                  {
                     Connector.updatePlayer2(Connector.players[_loc3_].pName,"0");
                  }
                  else if(Connector.players[_loc3_].pStatus == "23")
                  {
                     Connector.updatePlayer2(Connector.players[_loc3_].pName,"3");
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            if(!Connector.gameStarted)
            {
               _root.chatBox.clearChatList();
            }
            Connector.myTurn = true;
            Connector.gameStarted = true;
            Connector.playAgainReq = false;
            Connector.challengedAll = false;
            Connector.startPlayer = true;
            _root.gotoAndStop("gameFrame");
            break;
         case "acceptFail":
            trace("case: msgPlayer");
            if(!Connector.challengedAll)
            {
               var _loc20_ = _loc2_.attributes.name;
               var _loc29_ = _loc2_.attributes.msg;
               _root.chatBox.addMsg(_loc20_,_loc29_);
            }
            else
            {
               _root.challengeButton.onPress();
            }
            break;
         case "timeout":
            break;
         case "surrender":
            trace("case: surrender");
            _loc9_ = _loc2_.attributes.winner;
            trace("winner: " + _loc9_ + "; " + Connector.oppName + " surrendered");
            if(_loc9_ == Connector.myName)
            {
               _root.game.win();
            }
            else if(_loc9_ == Connector.oppName)
            {
               _root.game.loose();
            }
            else
            {
               _root.game.drawn();
            }
            break;
         case "turn":
            trace("case: turn");
            _root.game.newTurn(_loc2_);
            break;
         case "playAgain":
            trace("case: playAgain");
            Connector.playAgainReq = true;
            break;
         case "msgPlayer":
            trace("case: msgPlayer");
            _loc20_ = _loc2_.attributes.name;
            _loc29_ = _loc2_.attributes.msg;
            if(Connector.gameStarted)
            {
               _root.chatBox.addMsg(_loc20_,_loc29_);
            }
            break;
         case "msgAll":
            trace("case: msgAll");
            _loc20_ = _loc2_.attributes.name;
            _loc29_ = _loc2_.attributes.msg;
            if(!Connector.gameStarted)
            {
               _root.chatBox.addMsg(_loc20_,_loc29_);
            }
            break;
         case "config":
            trace("case: config");
            var _loc14_ = _loc2_.attributes.adConfigUrl;
            trace("adConfigUrl: " + _loc14_);
            AdManager.loadAdConfig(_loc14_);
            var _loc31_ = _loc2_.attributes.badWordsUrl;
            var _loc26_ = _loc2_.attributes.replacementChar;
            var _loc33_ = _loc2_.attributes.deleteLine;
            var _loc32_ = Number(_loc2_.attributes.floodLimit);
            CensorManager.setConfig(_loc31_,_loc26_,_loc33_,_loc32_);
            break;
         case "adminButtons":
            trace("case: adminButtons");
            _loc4_ = _loc2_.childNodes;
            _loc3_ = 0;
            while(_loc3_ < _loc4_.length)
            {
               var _loc8_ = String(_loc4_[_loc3_].attributes.l);
               var _loc5_ = String(_loc4_[_loc3_].attributes.c);
               AdminMenu.addButton(_loc8_,_loc5_);
               _loc3_ = _loc3_ + 1;
            }
            AdminMenu.ready = true;
            break;
         default:
            trace("error unknown command: " + _loc11_);
      }
   }
   static function onSockConnect(success)
   {
      trace("onSockConnect()");
      if(success)
      {
         trace("sockConnect success");
         Connector.connected = true;
         Connector.xmlSocket.send("<auth name=\"" + Connector.myName + "\" version=\"" + Connector.versionNr + "\" hash=\"" + _root.hash + "\"/>\n");
         Connector.lastMsg = getTimer();
      }
      else
      {
         trace("sockConnect failed");
         Connector.connected = false;
         _root.gotoAndStop("ConnLost");
      }
   }
   static function sendChallenge(targetPlayer)
   {
      trace("send challenge to " + targetPlayer);
      Connector.xmlSocket.send("<challenge name=\"" + targetPlayer + "\" hash=\"xxxxxx\"/>\n");
      Connector.lastMsg = getTimer();
   }
   static function sendRemChallenge(targetPlayer)
   {
      trace("send remChallenge to " + targetPlayer);
      Connector.xmlSocket.send("<remChallenge name=\"" + targetPlayer + "\" hash=\"xxxxxx\"/>\n");
      Connector.lastMsg = getTimer();
   }
   static function sendStartGame(targetPlayer)
   {
      Connector.xmlSocket.send("<startGame name=\"" + targetPlayer + "\" hash=\"xxxxxx\"/>\n");
      Connector.lastMsg = getTimer();
   }
   static function sendGameMsg(command)
   {
      trace("send gameMsg " + command);
      Connector.xmlSocket.send(command);
      Connector.lastMsg = getTimer();
   }
   static function sendChallengeAll()
   {
      trace("send challengeAll");
      Connector.xmlSocket.send("<challengeAll/>\n");
      Connector.lastMsg = getTimer();
   }
   static function sendRemChallengeAll()
   {
      trace("send RemChallengeAll");
      Connector.xmlSocket.send("<remChallengeAll/>\n");
      Connector.lastMsg = getTimer();
   }
   static function sendChatMsg(msg)
   {
      var _loc2_ = false;
      msg = Util.cleanMsg(msg);
      if(CensorManager.checkBadWords(msg))
      {
         if(CensorManager.deleteLine)
         {
            _loc2_ = true;
         }
         else
         {
            msg = CensorManager.censorMsg(msg);
         }
      }
      if(!_loc2_ && !CensorManager.checkFlooding(msg))
      {
         if(Connector.gameStarted)
         {
            trace("send msgPlayer");
            Connector.xmlSocket.send("<msgPlayer name=\"" + Connector.myName + "\" msg=\"" + msg + "\"/>\n");
            Connector.lastMsg = getTimer();
         }
         else
         {
            trace("send msgAll");
            Connector.xmlSocket.send("<msgAll name=\"" + Connector.myName + "\" msg=\"" + msg + "\"/>\n");
            Connector.lastMsg = getTimer();
         }
      }
   }
}
