var §\x01§ = 334;
var §\x0f§ = 1;
class Ball extends MovieClip
{
   var hitZone;
   var power;
   var rot;
   var speed;
   var dx;
   var dy;
   var wLeft;
   var wCenter;
   var wRight;
   var pointArray;
   var lastXX;
   var lastYY;
   static var bahn;
   static var collisionOn = true;
   static var maxSpeed = 2;
   var speedBoundLow = 0.07;
   var numUpdates = 12;
   var selfBreaking = 0.0015;
   var radius = 7;
   var wallHitDecay = 0.9;
   var inHill = false;
   var inHole2 = false;
   var rolling = false;
   function Ball()
   {
      super();
      trace("Ball() " + this);
      this._visible = false;
      this.hitZone._visible = false;
      this.buildPointArray();
   }
   function setVarInHole(bol)
   {
      this.inHole2 = bol;
   }
   function isInHole()
   {
      return this.inHole2;
   }
   function shoot(p, r)
   {
      trace("Ball.shoot()");
      this.power = p;
      this.rot = r;
      this.speed = p / 100 * Ball.maxSpeed;
      this.dx = Util.calcDx(r,this.speed);
      this.dy = Util.calcDy(r,this.speed);
      trace("shoot dx:" + this.dx + " dy:" + this.dy);
      this.rolling = true;
      SoundPlayer.playV(Config.soundSwing,Config.soundSwingV);
   }
   function updateRolling()
   {
      if(!this.inHole2 && this.rolling)
      {
         var _loc2_ = 0;
         while(_loc2_ < this.numUpdates)
         {
            if(!this.checkRolling())
            {
               return undefined;
            }
            this.moveMe();
            this.checkWalls();
            this.checkObjects();
            if(Ball.collisionOn)
            {
               if(Game.inst.secondBall != this)
               {
                  this.checkOtherBall(Game.inst.secondBall);
               }
               else
               {
                  this.checkOtherBall(Game.inst.shootBall);
               }
            }
            _loc2_ = _loc2_ + 1;
         }
         this.checkRolling();
      }
      else
      {
         this.rolling = false;
      }
   }
   function checkObjects()
   {
      this.inHill = false;
      var _loc2_ = 0;
      while(_loc2_ < Ball.bahn.objectArray.length)
      {
         if(Ball.bahn.objectArray[_loc2_].hitZone.hitTest(this._x,this._y,true))
         {
            Ball.bahn.objectArray[_loc2_].hitByBall(this);
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function checkWalls()
   {
      var _loc3_ = 0;
      while(_loc3_ < Ball.bahn.wallArray.length)
      {
         if(this.hitZone.hitTest(Ball.bahn.wallArray[_loc3_].hitZone))
         {
            var _loc4_ = new Array();
            _loc4_.push(Ball.bahn.wallArray[_loc3_]);
            var _loc2_ = _loc3_ + 1;
            while(_loc2_ < Ball.bahn.wallArray.length)
            {
               if(this.hitZone.hitTest(Ball.bahn.wallArray[_loc2_].hitZone))
               {
                  _loc4_.push(Ball.bahn.wallArray[_loc2_]);
               }
               _loc2_ = _loc2_ + 1;
            }
            this.checkWallsExact(_loc4_);
            return undefined;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function checkWallsExact(walls)
   {
      this.wLeft = -1000;
      this.wCenter = -1000;
      this.wRight = -1000;
      var _loc7_ = 0;
      while(_loc7_ < walls.length)
      {
         var _loc5_ = BaseObject(walls[_loc7_]);
         var _loc6_ = Math.round(this.rot);
         var _loc3_ = 0;
         while(_loc3_ < 90)
         {
            var _loc2_ = _loc6_ + _loc3_;
            if(_loc2_ > 360)
            {
               _loc2_ -= 360;
            }
            else if(_loc2_ < 0)
            {
               _loc2_ = 360 + _loc2_;
            }
            var _loc4_ = this.pointArray[_loc2_];
            if(_loc5_.hitZone.hitTest(this._x + _loc4_.x,this._y + _loc4_.y,true))
            {
               this.setWinkel(_loc3_);
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc3_ = 0;
         while(_loc3_ < 90)
         {
            _loc2_ = _loc6_ - _loc3_;
            if(_loc2_ > 360)
            {
               _loc2_ -= 360;
            }
            else if(_loc2_ < 0)
            {
               _loc2_ = 360 + _loc2_;
            }
            _loc4_ = this.pointArray[_loc2_];
            if(_loc5_.hitZone.hitTest(this._x + _loc4_.x,this._y + _loc4_.y,true))
            {
               this.setWinkel(- _loc3_);
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc7_ = _loc7_ + 1;
      }
      this.computeWCenter();
   }
   function computeWCenter()
   {
      if(this.wLeft != -1000 && this.wRight != -1000)
      {
         if(this.wLeft <= 0 && this.wRight <= 0)
         {
            this.wCenter = this.wLeft + (Math.abs(this.wLeft) - Math.abs(this.wRight)) / 2;
         }
         else if(this.wLeft >= 0 && this.wRight >= 0)
         {
            this.wCenter = this.wLeft + (this.wRight - this.wLeft) / 2;
         }
         else
         {
            this.wCenter = Math.abs(this.wRight) / 2 - Math.abs(this.wLeft) / 2;
         }
         var _loc2_ = Util.calcAngelRel(this.rot,this.wCenter);
         this.rot = _loc2_;
         this.calcSpeed();
         this.speed *= this.wallHitDecay;
         this.calcDxDy();
         SoundPlayer.playV(Config.soundHitWall,Config.soundHitWallV);
      }
   }
   function calcDxDy()
   {
      this.dx = Util.calcDx(this.rot,this.speed);
      this.dy = Util.calcDy(this.rot,this.speed);
   }
   function calcSpeed()
   {
      this.speed = Util.calcSpeed(this.dx,this.dy);
   }
   function calcRot()
   {
      this.rot = Util.calcRot(this.dx,this.dy);
   }
   function setWinkel(w)
   {
      if(this.wLeft == -1000)
      {
         this.wLeft = w;
      }
      else if(w < this.wLeft)
      {
         this.wLeft = w;
      }
      if(this.wRight == -1000)
      {
         this.wRight = w;
      }
      else if(w > this.wRight)
      {
         this.wRight = w;
      }
   }
   function moveMe()
   {
      this._x += this.dx;
      this._y += this.dy;
      if(this.speed > 0)
      {
         this.speed -= this.selfBreaking;
      }
      this.calcDxDy();
   }
   function checkRolling()
   {
      if(this.inHole2)
      {
         this.rolling = false;
         return false;
      }
      if(this.speed < this.speedBoundLow)
      {
         if(!this.inHill)
         {
            this.speed = 0;
            this.dx = 0;
            this.dy = 0;
            this._x = Math.round(this._x);
            this._y = Math.round(this._y);
            this.lastXX = this._x;
            this.lastYY = this._y;
            this.rolling = false;
            return false;
         }
      }
      this.rolling = true;
      return true;
   }
   function setToLastPos()
   {
      this._x = this.lastXX;
      this._y = this.lastYY;
      this.dx = 0;
      this.dy = 0;
      this.speed = 0;
   }
   function setPos(xxx, yyy)
   {
      this._x = Math.round(xxx);
      this._y = Math.round(yyy);
      this.dx = 0;
      this.dy = 0;
      this.lastXX = this._x;
      this.lastYY = this._y;
      this.speed = 0;
      this.rolling = false;
      this.inHill = false;
   }
   function setInHole()
   {
      this.setPos(-100,-100);
      this.inHole2 = true;
      this.inHill = false;
      this.rolling = false;
      this._visible = false;
   }
   function buildPointArray()
   {
      this.pointArray = new Array();
      var _loc2_ = 0;
      while(_loc2_ < 360)
      {
         var _loc3_ = this.getPoint(this.radius,_loc2_);
         _loc3_.rot = _loc2_;
         this.pointArray.push(_loc3_);
         _loc2_ = _loc2_ + 1;
      }
   }
   function getPoint(r, winkel)
   {
      var _loc2_ = r * Math.cos(0.017453292519943295 * (winkel - 90));
      var _loc1_ = r * Math.sin(0.017453292519943295 * (winkel - 90));
      return new Point(_loc2_,_loc1_);
   }
   function checkOtherBall(oBall)
   {
      if(!Game.inst.firstShoot && !oBall.inHole2)
      {
         if(this.hitZone.hitTest(oBall.hitZone))
         {
            var _loc25_ = Util.calcAbstand(this._x,this._y,oBall._x,oBall._y);
            if(_loc25_ < this.radius * 2)
            {
               var _loc27_ = this.dx;
               var _loc26_ = this.dy;
               var _loc8_ = this.dx;
               var _loc6_ = this.dy;
               var _loc7_ = oBall.dx;
               var _loc5_ = oBall.dy;
               var _loc24_ = this._x;
               var _loc22_ = this._y;
               var _loc23_ = oBall._x;
               var _loc21_ = oBall._y;
               var _loc10_ = _loc23_ - _loc24_;
               var _loc9_ = _loc21_ - _loc22_;
               var _loc16_ = Math.sqrt(_loc10_ * _loc10_ + _loc9_ * _loc9_);
               var _loc4_ = _loc10_ / _loc16_;
               var _loc3_ = _loc9_ / _loc16_;
               var _loc12_ = _loc8_ * _loc4_ + _loc6_ * _loc3_;
               var _loc14_ = (- _loc8_) * _loc3_ + _loc6_ * _loc4_;
               var _loc11_ = _loc7_ * _loc4_ + _loc5_ * _loc3_;
               var _loc13_ = (- _loc7_) * _loc3_ + _loc5_ * _loc4_;
               var _loc20_ = 1;
               var _loc19_ = 1;
               var _loc18_ = 1;
               var _loc17_ = _loc12_ + (1 + _loc18_) * (_loc11_ - _loc12_) / (1 + _loc20_ / _loc19_);
               var _loc15_ = _loc11_ + (1 + _loc18_) * (_loc12_ - _loc11_) / (1 + _loc19_ / _loc20_);
               _loc8_ = _loc17_ * _loc4_ - _loc14_ * _loc3_;
               _loc6_ = _loc17_ * _loc3_ + _loc14_ * _loc4_;
               _loc7_ = _loc15_ * _loc4_ - _loc13_ * _loc3_;
               _loc5_ = _loc15_ * _loc3_ + _loc13_ * _loc4_;
               this.dx = _loc8_;
               this.dy = _loc6_;
               oBall.dx = _loc7_;
               oBall.dy = _loc5_;
               oBall.calcSpeed();
               oBall.calcRot();
               oBall.rolling = true;
               this.calcSpeed();
               this.calcRot();
            }
            this.checkBallAbs(this,oBall);
         }
      }
   }
   function checkBallAbs(ball1, ball2)
   {
      var _loc2_ = 0;
      while(_loc2_ < 40)
      {
         var _loc3_ = false;
         if(ball2.inHole2 == false)
         {
            if(this.checkAndMove2Balls(ball1,ball2))
            {
               _loc3_ = true;
            }
         }
         if(_loc3_ == false)
         {
            return undefined;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function checkAndMove2Balls(ball1, ball2)
   {
      var _loc4_ = Util.calcAbstand(ball1._x,ball1._y,ball2._x,ball2._y);
      if(_loc4_ <= this.radius * 2)
      {
         if(ball1._x > ball2._x)
         {
            ball1._x += 1;
            ball2._x -= 1;
         }
         else
         {
            ball1._x -= 1;
            ball2._x += 1;
         }
         if(ball1._y > ball2._y)
         {
            ball1._y += 1;
            ball2._y -= 1;
         }
         else
         {
            ball1._y -= 1;
            ball2._y += 1;
         }
         return true;
      }
      return false;
   }
}
