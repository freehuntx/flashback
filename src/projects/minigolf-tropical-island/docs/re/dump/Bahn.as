var §\x01§ = 686;
var §\x0f§ = 1;
class Bahn extends MovieClip
{
   var firstEnter;
   var secondEnter;
   var wallMovingArray;
   var objectArray;
   var wallArray;
   var bahnId;
   var ballLayer;
   var startPunkt;
   static var game;
   var frame = 0;
   function Bahn()
   {
      super();
      trace("Bahn() " + this);
      this.firstEnter = true;
      this.secondEnter = false;
   }
   function update()
   {
      if(this.firstEnter)
      {
         if(this.secondEnter)
         {
            this.firstEnter = false;
            this.secondEnter = false;
            this.myInit();
         }
         this.secondEnter = true;
      }
      var _loc2_ = 0;
      while(_loc2_ < this.wallMovingArray.length)
      {
         var _loc3_ = this.wallMovingArray[_loc2_];
         _loc3_.updateMe();
         _loc2_ = _loc2_ + 1;
      }
      this.frame++;
   }
   function myInit()
   {
      this.objectArray = new Array();
      this.wallArray = new Array();
      this.wallMovingArray = new Array();
      for(var _loc2_ in this)
      {
         var _loc3_ = BaseObject(this[_loc2_]);
         _loc3_.registerToParent(this);
      }
      var _loc2_ = 0;
      while(_loc2_ < this.objectArray.length)
      {
         var _loc4_ = this.objectArray[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 0;
      while(_loc2_ < this.wallArray.length)
      {
         _loc4_ = this.wallArray[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 0;
      while(_loc2_ < this.wallMovingArray.length)
      {
         _loc4_ = this.wallMovingArray[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      Ball.bahn = this;
      if(this.bahnId == 5)
      {
         this.wallMovingArray[0].speed = 2;
         this.wallMovingArray[1].speed = 3;
         this.wallMovingArray[2].speed = 4;
      }
      else if(this.bahnId == 6)
      {
         this.wallMovingArray[0].speed = 2;
         this.wallMovingArray[0].bound = 50;
      }
      else if(this.bahnId == 8)
      {
         this.wallMovingArray[0].speed = 3;
         this.wallMovingArray[0].framesPlus = 0;
         this.wallMovingArray[0].gotoFramePos(0);
         this.wallMovingArray[1].speed = 4;
         this.wallMovingArray[1].framesPlus = 0;
         this.wallMovingArray[1].gotoFramePos(0);
         this.wallMovingArray[2].speed = 5;
         this.wallMovingArray[2].framesPlus = 0;
         this.wallMovingArray[2].gotoFramePos(0);
         this.wallMovingArray[3].speed = 4;
         this.wallMovingArray[3].framesPlus = 0;
         this.wallMovingArray[3].gotoFramePos(0);
         this.wallMovingArray[4].speed = 3;
         this.wallMovingArray[4].framesPlus = 0;
         this.wallMovingArray[4].gotoFramePos(0);
      }
      var _loc5_ = "MyBall";
      var _loc6_ = this.ballLayer.getNextHighestDepth();
      Bahn.game.myBall = MyBall(this.ballLayer.attachMovie(_loc5_,_loc5_ + _loc6_,_loc6_));
      Bahn.game.myBall.setPos(Math.round(this.startPunkt._x),Math.round(this.startPunkt._y));
      Bahn.game.myBall.playerNr = 1;
      InfoPanel.inst.nameP1.text = Connector.myName;
      trace("Bahn init myBall" + Bahn.game.myBall);
      _loc5_ = "OtherBall";
      _loc6_ = this.ballLayer.getNextHighestDepth();
      Bahn.game.otherBall = Ball(this.ballLayer.attachMovie(_loc5_,_loc5_ + _loc6_,_loc6_));
      Bahn.game.otherBall.setPos(Math.round(this.startPunkt._x),Math.round(this.startPunkt._y));
      Bahn.game.otherBall.playerNr = 2;
      InfoPanel.inst.nameP2.text = Connector.oppName;
      Bahn.game.bahnLoaded();
   }
   function gotoFramePos(pos)
   {
      trace("gotoFramePos " + pos);
      this.frame = pos;
      var _loc2_ = 0;
      while(_loc2_ < this.wallMovingArray.length)
      {
         trace("gotoFramePos " + _loc2_);
         var _loc3_ = this.wallMovingArray[_loc2_];
         _loc3_.gotoFramePos(pos - 1);
         _loc2_ = _loc2_ + 1;
      }
   }
}
