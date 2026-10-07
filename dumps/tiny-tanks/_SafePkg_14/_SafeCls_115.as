package _SafePkg_14
{
   import _SafePkg_124.Particle2D;
   import flash.geom.Point;
   
   public class _SafeCls_115 implements Zone2D
   {
      
      private static var _SafeStr_1997:Number = Math.PI * 2;
      
      private var _SafeStr_780:Point;
      
      private var _SafeStr_1641:Number;
      
      private var _SafeStr_1631:Number;
      
      private var _SafeStr_434:Number;
      
      private var _SafeStr_1450:Number;
      
      private var _minAngle:Number;
      
      private var _maxAngle:Number;
      
      private var _SafeStr_1481:Number;
      
      private var _minNormal:Point;
      
      private var _maxNormal:Point;
      
      public function _SafeCls_115(param1:Point = null, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0)
      {
         super();
         if(param2 < param3)
         {
            throw new Error("The outerRadius (" + param2 + ") can\'t be smaller than the innerRadius (" + param3 + ") in your DiscSectorZone. N.B. the outerRadius is the second argument in the constructor and the innerRadius is the third argument.");
         }
         this._SafeStr_780 = param1 ? param1.clone() : new Point(0,0);
         this._SafeStr_1641 = param3;
         this._SafeStr_1631 = param2;
         this._SafeStr_434 = this._SafeStr_1641 * this._SafeStr_1641;
         this._SafeStr_1450 = this._SafeStr_1631 * this._SafeStr_1631;
         this._minAngle = param4;
         this._maxAngle = param5;
         if(!isNaN(this._maxAngle))
         {
            while(this._maxAngle > _SafeStr_1997)
            {
               this._maxAngle -= _SafeStr_1997;
            }
            while(this._maxAngle < 0)
            {
               this._maxAngle += _SafeStr_1997;
            }
            this._SafeStr_1481 = this._maxAngle - _SafeStr_1997;
            if(!isNaN(this._minAngle))
            {
               if(param4 == param5)
               {
                  this._minAngle = this._maxAngle;
               }
               else
               {
                  this._minAngle = this._SafeStr_1714(this._minAngle);
               }
            }
            this._SafeStr_2489();
         }
      }
      
      private function _SafeStr_1714(param1:Number) : Number
      {
         if(!isNaN(this._maxAngle))
         {
            while(param1 > this._maxAngle)
            {
               param1 -= _SafeStr_1997;
            }
            while(param1 < this._SafeStr_1481)
            {
               param1 += _SafeStr_1997;
            }
         }
         return param1;
      }
      
      private function _SafeStr_2489() : void
      {
         if(!isNaN(this._minAngle))
         {
            this._minNormal = new Point(Math.sin(this._minAngle),-Math.cos(this._minAngle));
            this._minNormal.normalize(1);
         }
         if(!isNaN(this._maxAngle))
         {
            this._maxNormal = new Point(-Math.sin(this._maxAngle),Math.cos(this._maxAngle));
            this._maxNormal.normalize(1);
         }
      }
      
      public function get center() : Point
      {
         return this._SafeStr_780;
      }
      
      public function set center(param1:Point) : void
      {
         this._SafeStr_780 = param1;
      }
      
      public function get _SafeStr_2473() : Number
      {
         return this._SafeStr_780.x;
      }
      
      public function set _SafeStr_2473(param1:Number) : void
      {
         this._SafeStr_780.x = param1;
      }
      
      public function get _SafeStr_1637() : Number
      {
         return this._SafeStr_780.y;
      }
      
      public function set _SafeStr_1637(param1:Number) : void
      {
         this._SafeStr_780.y = param1;
      }
      
      public function get _SafeStr_1697() : Number
      {
         return this._SafeStr_1641;
      }
      
      public function set _SafeStr_1697(param1:Number) : void
      {
         this._SafeStr_1641 = param1;
         this._SafeStr_434 = this._SafeStr_1641 * this._SafeStr_1641;
      }
      
      public function get _SafeStr_2464() : Number
      {
         return this._SafeStr_1631;
      }
      
      public function set _SafeStr_2464(param1:Number) : void
      {
         this._SafeStr_1631 = param1;
         this._SafeStr_1450 = this._SafeStr_1631 * this._SafeStr_1631;
      }
      
      public function get minAngle() : Number
      {
         return this._minAngle;
      }
      
      public function set minAngle(param1:Number) : void
      {
         this._minAngle = this._SafeStr_1714(param1);
         this._SafeStr_2489();
      }
      
      public function get maxAngle() : Number
      {
         return this._maxAngle;
      }
      
      public function set maxAngle(param1:Number) : void
      {
         this._maxAngle = param1;
         while(this._maxAngle > _SafeStr_1997)
         {
            this._maxAngle -= _SafeStr_1997;
         }
         while(this._maxAngle < 0)
         {
            this._maxAngle += _SafeStr_1997;
         }
         this._SafeStr_1481 = this._maxAngle - _SafeStr_1997;
         this._minAngle = this._SafeStr_1714(this._minAngle);
         this._SafeStr_2489();
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         param1 -= this._SafeStr_780.x;
         param2 -= this._SafeStr_780.y;
         var _loc3_:Number = param1 * param1 + param2 * param2;
         if(_loc3_ > this._SafeStr_1450 || _loc3_ < this._SafeStr_434)
         {
            return false;
         }
         var _loc4_:Number = Number(Math.atan2(param2,param1));
         _loc4_ = this._SafeStr_1714(_loc4_);
         return _loc4_ >= this._minAngle;
      }
      
      public function _SafeStr_671() : Point
      {
         var _loc1_:Number = Number(Math.random());
         var _loc2_:Point = Point.polar(this._SafeStr_1641 + (1 - _loc1_ * _loc1_) * (this._SafeStr_1631 - this._SafeStr_1641),this._minAngle + Math.random() * (this._maxAngle - this._minAngle));
         _loc2_.x += this._SafeStr_780.x;
         _loc2_.y += this._SafeStr_780.y;
         return _loc2_;
      }
      
      public function _SafeStr_623() : Number
      {
         return (this._SafeStr_1450 - this._SafeStr_434) * (this._maxAngle - this._minAngle) * 0.5;
      }
      
      public function _SafeStr_954(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc13_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc3_:Number = param1.x - this._SafeStr_780.x;
         var _loc4_:Number = param1.y - this._SafeStr_780.y;
         var _loc5_:Number = param1._SafeStr_2289 - this._SafeStr_780.x;
         var _loc6_:Number = param1._SafeStr_917 - this._SafeStr_780.y;
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = true;
         var _loc9_:Number = _loc5_ * _loc5_ + _loc6_ * _loc6_;
         var _loc10_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_;
         if(_loc9_ > this._SafeStr_1450 || _loc9_ < this._SafeStr_434)
         {
            _loc8_ = false;
         }
         if(_loc10_ > this._SafeStr_1450 || _loc10_ < this._SafeStr_434)
         {
            _loc7_ = false;
         }
         if(!_loc7_ && !_loc8_)
         {
            return false;
         }
         var _loc11_:Number = this._SafeStr_1714(Math.atan2(_loc6_,_loc5_));
         var _loc12_:Number = this._SafeStr_1714(Math.atan2(_loc4_,_loc3_));
         _loc8_ &&= _loc11_ >= this.minAngle;
         _loc7_ &&= _loc12_ >= this._minAngle;
         if(_loc7_ == _loc8_)
         {
            return false;
         }
         var _loc14_:Number = param1._SafeStr_1392 * _loc3_ + param1._SafeStr_348 * _loc4_;
         if(_loc7_)
         {
            if(_loc9_ > this._SafeStr_1450)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1._SafeStr_1392 -= _loc13_ * _loc3_;
               param1._SafeStr_348 -= _loc13_ * _loc4_;
            }
            else if(_loc9_ < this._SafeStr_434)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1._SafeStr_1392 -= _loc13_ * _loc3_;
               param1._SafeStr_348 -= _loc13_ * _loc4_;
            }
            if(_loc11_ < this._minAngle)
            {
               if(_loc11_ < (this._SafeStr_1481 + this._minAngle) / 2)
               {
                  _loc16_ = this._maxNormal.x * param1._SafeStr_1392 + this._maxNormal.y * param1._SafeStr_348;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1._SafeStr_1392 -= _loc15_ * this._maxNormal.x;
                  param1._SafeStr_348 -= _loc15_ * this._maxNormal.y;
               }
               else
               {
                  _loc16_ = this._minNormal.x * param1._SafeStr_1392 + this._minNormal.y * param1._SafeStr_348;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1._SafeStr_1392 -= _loc15_ * this._minNormal.x;
                  param1._SafeStr_348 -= _loc15_ * this._minNormal.y;
               }
            }
         }
         else
         {
            if(_loc10_ > this._SafeStr_1450)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1._SafeStr_1392 -= _loc13_ * _loc3_;
               param1._SafeStr_348 -= _loc13_ * _loc4_;
            }
            else if(_loc10_ < this._SafeStr_434)
            {
               _loc13_ = (1 + param2) * _loc14_ / _loc10_;
               param1._SafeStr_1392 -= _loc13_ * _loc3_;
               param1._SafeStr_348 -= _loc13_ * _loc4_;
            }
            if(_loc12_ < this._minAngle)
            {
               if(_loc12_ < (this._SafeStr_1481 + this._minAngle) / 2)
               {
                  _loc16_ = this._maxNormal.x * param1._SafeStr_1392 + this._maxNormal.y * param1._SafeStr_348;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1._SafeStr_1392 -= _loc15_ * this._maxNormal.x;
                  param1._SafeStr_348 -= _loc15_ * this._maxNormal.y;
               }
               else
               {
                  _loc16_ = this._minNormal.x * param1._SafeStr_1392 + this._minNormal.y * param1._SafeStr_348;
                  _loc15_ = (1 + param2) * _loc16_;
                  param1._SafeStr_1392 -= _loc15_ * this._minNormal.x;
                  param1._SafeStr_348 -= _loc15_ * this._minNormal.y;
               }
            }
         }
         param1.x = param1._SafeStr_2289;
         param1.y = param1._SafeStr_917;
         return true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_115 = "_-LZ"
 * @identifier _SafePkg_14 = "_-hj"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_434 = "_-hQ"
 * @identifier _SafeStr_623 = "_-Kd"
 * @identifier _SafeStr_671 = "_-EC"
 * @identifier _SafeStr_780 = "_-Qw"
 * @identifier _SafeStr_917 = "_-CP"
 * @identifier _SafeStr_954 = "_-9h"
 * @identifier _SafeStr_1392 = "_-17"
 * @identifier _SafeStr_1450 = "_-NW"
 * @identifier _SafeStr_1481 = "_-A3"
 * @identifier _SafeStr_1631 = "_-Ip"
 * @identifier _SafeStr_1637 = "_-M"
 * @identifier _SafeStr_1641 = "_-CK"
 * @identifier _SafeStr_1697 = "_-J7"
 * @identifier _SafeStr_1714 = "_-Ss"
 * @identifier _SafeStr_1997 = "_-Z6"
 * @identifier _SafeStr_2289 = "_-H0"
 * @identifier _SafeStr_2464 = "_-Fv"
 * @identifier _SafeStr_2473 = "_-1y"
 * @identifier _SafeStr_2489 = "_-Nw"
 */
