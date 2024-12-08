var §\x01§ = 852;
var §\x0f§ = 1;
class Game extends MovieClip
{
   var hitZoneGame;
   var timer;
   var state;
   var shootBall;
   var secondBall;
   var turnTimeFirstTurn;
   var bahnNr;
   var bahnenLayer;
   static var inst;
   static var testMode = false;
   static var debugMode = false;
   var bahn = null;
   var myBall = null;
   var otherBall = null;
   var hitCountMyBall = 0;
   var hitCountTotalMyBall = 0;
   var hitCountOtherBall = 0;
   var hitCountTotalOtherBall = 0;
   var myTurn = false;
   var myFirstTurn = false;
   var STATE_INIT = 1;
   var STATE_AIM = 2;
   var ROLLING = 3;
   var MYPAUSE = 5;
   var INIT = 6;
   var NEXT_LEVEL_PAUSE = 7;
   var nextLevelTime = 0;
   var firstShoot = true;
   var turnsInactive = 0;
   function Game()
   {
      super();
      trace("Game()");
      this.hitZoneGame._visible = false;
      this.timer = new Timer();
      Key.addListener(this);
      Game.inst = this;
      BaseObject.game = this;
      Bahn.game = this;
      this.state = this.INIT;
      if(Game.testMode)
      {
         Connector.myName = "Player1";
         this.startLevel(1," ",0);
      }
   }
   function onEnterFrame()
   {
      if(this.state == this.ROLLING)
      {
         this.shootBall.updateRolling();
         this.secondBall.updateRolling();
         if(!this.myBall.rolling && !this.otherBall.rolling)
         {
            this.state = this.MYPAUSE;
            Connector.sendGameMsg("<ready x=\"" + this.myBall._x + "\" y=\"" + this.myBall._y + "\"/>\n");
            if(Game.testMode)
            {
               this.nextTurn("Player1");
               this.otherBall._visible = true;
            }
         }
      }
      else if(this.state == this.STATE_AIM)
      {
         this.myBall.updateAim();
      }
      else if(this.state != this.MYPAUSE)
      {
         if(this.state == this.INIT)
         {
            this.state = this.MYPAUSE;
            this.myInit();
         }
      }
      this.bahn.update();
      this.timer.update();
   }
   function myInit()
   {
      Connector.sendGameMsg("<clientInitiated/>\n");
   }
   function myPause()
   {
      this.state = this.MYPAUSE;
   }
   function ballInHole(ball)
   {
      Game.debugMsg("ballInHole() " + ball);
      ball.setInHole();
      if(ball == this.myBall)
      {
         Connector.sendGameMsg("<pocketed/>\n");
         this.setLevelsStat();
      }
      Game.debugMsg("inHill" + ball.inHill);
   }
   function shoot()
   {
      this.turnsInactive = 0;
      this.timer.stopTimer();
      this.state = this.ROLLING;
      var _loc2_ = this.getPlayer(Connector.myName);
      _loc2_.swings++;
   }
   function startLevel(nr, pn, ti)
   {
      this.hitCountMyBall = 0;
      this.hitCountOtherBall = 0;
      this.turnsInactive = 0;
      this.turnTimeFirstTurn = ti;
      Game.debugMsg("startLevel");
      InfoPanel.inst.yourTurn._visible = false;
      InfoPanel.inst.othersTurn._visible = false;
      if(pn == Connector.myName)
      {
         this.myTurn = true;
      }
      else
      {
         this.myTurn = false;
      }
      this.loadBahn(nr);
      this.bahnNr = nr;
   }
   function getPlayer(pName)
   {
      var _loc1_ = 0;
      while(_loc1_ < Connector.players.length)
      {
         if(Connector.players[_loc1_].pName == pName)
         {
            return Connector.players[_loc1_];
         }
         _loc1_ = _loc1_ + 1;
      }
      return null;
   }
   function countTurn(pn)
   {
      if(pn == Connector.myName)
      {
         this.hitCountMyBall++;
         this.hitCountTotalMyBall++;
         this.updateInfoPanel();
      }
      else
      {
         this.hitCountOtherBall++;
         this.hitCountTotalOtherBall++;
         this.updateInfoPanel();
      }
   }
   function nextTurn(pn, ti, x1, y1, x2, y2)
   {
      if(this.turnsInactive >= 2)
      {
         Game.disconnectAfterInactivity();
         return undefined;
      }
      if(pn == Connector.myName)
      {
         Game.debugMsg("myTurn");
         this.turnsInactive++;
         this.myTurn = true;
         if(x1 != 0 && y1 != 0)
         {
            this.myBall.setPos(x1,y1);
         }
         if(x2 != 0 && y2 != 0)
         {
            this.otherBall.setPos(x2,y2);
         }
         this.myBall._visible = true;
      }
      else
      {
         Game.debugMsg("othersTurn");
         this.myTurn = false;
         if(x1 != 0 && y1 != 0)
         {
            this.otherBall.setPos(x1,y1);
         }
         if(x2 != 0 && y2 != 0)
         {
            this.myBall.setPos(x2,y2);
         }
         this.otherBall._visible = true;
      }
      this.nextTurn2(ti);
   }
   function nextTurn2(ti)
   {
      this.timer.startTimer(ti);
      var _loc2_ = Util.calcAbstand(this.myBall._x,this.myBall._y,this.otherBall._x,this.otherBall._y);
      if(_loc2_ <= this.myBall.radius * 2)
      {
         this.firstShoot = true;
         Game.debugMsg("ball hit test true");
      }
      else
      {
         this.firstShoot = false;
      }
      if(this.myTurn)
      {
         this.state = this.STATE_AIM;
         this.myBall.aiming = true;
         this.myBall._visible = true;
         InfoPanel.inst.playerMark1._visible = true;
         InfoPanel.inst.playerMark2._visible = false;
         InfoPanel.inst.yourTurn._visible = true;
         InfoPanel.inst.othersTurn._visible = false;
         this.shootBall = this.myBall;
         this.secondBall = this.otherBall;
      }
      else
      {
         this.state = this.MYPAUSE;
         this.otherBall._visible = true;
         this.myBall.aiming = false;
         this.myBall.pointer._visible = false;
         InfoPanel.inst.playerMark1._visible = false;
         InfoPanel.inst.playerMark2._visible = true;
         InfoPanel.inst.yourTurn._visible = false;
         InfoPanel.inst.othersTurn._visible = true;
         this.shootBall = this.otherBall;
         this.secondBall = this.myBall;
      }
   }
   function remoteShoot(x, y, p, r, fp)
   {
      trace("Game.remoteShoot()");
      this.timer.stopTimer();
      this.otherBall._x = x;
      this.otherBall._y = y;
      this.state = this.ROLLING;
      this.bahn.gotoFramePos(fp);
      this.otherBall.shoot(p,r);
      InfoPanel.inst.yourTurn._visible = false;
      InfoPanel.inst.othersTurn._visible = false;
      this.hitCountOtherBall++;
      this.hitCountTotalOtherBall++;
      this.updateInfoPanel();
   }
   function loadBahn(bNr)
   {
      if(bNr != 1)
      {
         SoundPlayer.stop();
      }
      this.firstShoot = true;
      InfoPanel.inst.setVal(1,bNr,0,this.hitCountTotalMyBall);
      InfoPanel.inst.setVal(2,bNr,0,this.hitCountTotalOtherBall);
      if(this.bahn != null)
      {
         this.bahn.removeMovieClip();
         this.myBall.removeMovieClip();
         this.otherBall.removeMovieClip();
         this.myBall = null;
         this.otherBall = null;
         this.bahn = null;
      }
      var _loc3_ = "Bahn" + bNr;
      var _loc4_ = this.bahnenLayer.getNextHighestDepth();
      this.bahn = this.bahnenLayer.attachMovie(_loc3_,_loc3_ + _loc4_,_loc4_);
      this.bahn.bahnId = bNr;
   }
   function updateInfoPanel()
   {
      InfoPanel.inst.setVal(this.myBall.playerNr,this.bahnNr,this.hitCountMyBall,this.hitCountTotalMyBall);
      InfoPanel.inst.setVal(this.otherBall.playerNr,this.bahnNr,this.hitCountOtherBall,this.hitCountTotalOtherBall);
   }
   function bahnLoaded()
   {
      if(Game.testMode)
      {
         this.myTurn = true;
      }
      this.nextTurn2(this.turnTimeFirstTurn);
   }
   function endGame(winner)
   {
      ResultInfoPanel.showInfo = true;
      ResultInfoPanel.name1 = Connector.myName;
      ResultInfoPanel.score1 = this.hitCountTotalMyBall;
      ResultInfoPanel.name2 = Connector.oppName;
      ResultInfoPanel.score2 = this.hitCountTotalOtherBall;
      if(winner == "")
      {
         this.drawn();
      }
      else if(winner == Connector.myName)
      {
         this.win();
      }
      else
      {
         this.loose();
      }
   }
   function sendIWin(winType)
   {
   }
   function sendIDraw()
   {
   }
   function sendISurr()
   {
      Connector.sendGameMsg("<surrender/>\n");
      SoundPlayer.stop();
   }
   function win()
   {
      trace("win");
      Connector.matchResult = 1;
      SoundPlayer.stop();
      _root.nextFrame();
   }
   function loose()
   {
      trace("loose");
      Connector.matchResult = 2;
      SoundPlayer.stop();
      _root.nextFrame();
   }
   function drawn()
   {
      trace("draw");
      Connector.matchResult = 0;
      SoundPlayer.stop();
      _root.nextFrame();
   }
   function onKeyDown()
   {
      if(Game.debugMode)
      {
         if(Key.getCode() == 39)
         {
            Connector.sendGameMsg("<nextLevel/>\n");
         }
         if(Key.getCode() == 37)
         {
         }
         if(Key.getCode() == 46)
         {
            _root.chatBox.clearChatList();
         }
      }
   }
   static function debugMsg(msg)
   {
      if(Game.debugMode)
      {
         _root.chatBox.addMsg("debug",msg);
      }
   }
   function setLevelsStat()
   {
      var _loc2_ = this.getPlayer(Connector.myName);
      _loc2_.levels++;
   }
   static function disconnectAfterInactivity()
   {
      Connector.disConTxt = "Verbindung wegen Inaktivität\n geschlossen\n\nDisconnect after inactivity";
      Connector.xmlSocket.close();
      _root.gotoAndStop("ConnLost");
   }
}
