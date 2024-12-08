var §\x01§ = 25;
var §\x0f§ = 1;
class WallMoving2 extends BaseObject
{
   var hitZone;
   var startX;
   var startY;
   var up = false;
   var down = false;
   var left = false;
   var right = false;
   var bound = 100;
   var speed = 6;
   var framesPlus = 0;
   function WallMoving2()
   {
      super();
      trace("WallMoving()");
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
      this.hitZone._visible = false;
      this.startX = this._x;
      this.startY = this._y;
      this.down = true;
   }
   function gotoFramePos(pos)
   {
      this._x = this.startX;
      this._y = this.startY;
      this.down = true;
      var _loc3_ = pos + this.framesPlus;
      var _loc2_ = 0;
      while(_loc2_ < _loc3_)
      {
         this.updateMe();
         _loc2_ = _loc2_ + 1;
      }
   }
   function updateMe()
   {
      if(this.down)
      {
         if(this._y >= this.startY + this.bound)
         {
            this.down = false;
            this.up = true;
         }
         this._y += this.speed;
      }
      else if(this.up)
      {
         if(this._y <= this.startY)
         {
            this.down = true;
            this.up = false;
         }
         this._y -= 20;
      }
      if(Game.inst.myBall.rolling)
      {
         var _loc2_ = Game.inst.myBall._y;
         if(this.hitTest(Game.inst.myBall.hitZone))
         {
            Game.inst.myBall._y -= this.speed;
            if(this.hitTest(Game.inst.myBall.hitZone))
            {
               Game.inst.myBall._y += this.speed * 2;
               if(this.hitTest(Game.inst.myBall.hitZone))
               {
                  Game.inst.myBall._y -= this.speed * 3;
                  if(this.hitTest(Game.inst.myBall.hitZone))
                  {
                     Game.inst.myBall._y += this.speed * 4;
                  }
               }
            }
         }
      }
      if(Game.inst.otherBall.rolling)
      {
         _loc2_ = Game.inst.otherBall._y;
         if(this.hitTest(Game.inst.otherBall.hitZone))
         {
            Game.inst.otherBall._y -= this.speed;
            if(this.hitTest(Game.inst.otherBall.hitZone))
            {
               Game.inst.otherBall._y += this.speed * 2;
               if(this.hitTest(Game.inst.otherBall.hitZone))
               {
                  Game.inst.otherBall._y -= this.speed * 3;
                  if(this.hitTest(Game.inst.otherBall.hitZone))
                  {
                     Game.inst.otherBall._y += this.speed * 4;
                  }
               }
            }
         }
      }
   }
   function registerToParent(myParent)
   {
      myParent.wallMovingArray.push(this);
      myParent.wallArray.push(this);
   }
   function reset()
   {
      this._x = this.startX;
      this._y = this.startY;
   }
}
