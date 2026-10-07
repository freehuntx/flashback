package _SafePkg_14
{
   import _SafePkg_124.Particle2D;
   import flash.geom.Point;
   
   public class _SafeCls_114 implements Zone2D
   {
      
      private static const _SafeStr_1997:Number = Math.PI * 2;
      
      private var _SafeStr_780:Point;
      
      private var _SafeStr_1641:Number;
      
      private var _SafeStr_1631:Number;
      
      private var _SafeStr_434:Number;
      
      private var _SafeStr_1450:Number;
      
      public function _SafeCls_114(param1:Point = null, param2:Number = 0, param3:Number = 0)
      {
         super();
         if(param2 < param3)
         {
            throw new Error("The outerRadius (" + param2 + ") can\'t be smaller than the innerRadius (" + param3 + ") in your DiscZone. N.B. the outerRadius is the second argument in the constructor and the innerRadius is the third argument.");
         }
         if(param1 == null)
         {
            this._SafeStr_780 = new Point(0,0);
         }
         else
         {
            this._SafeStr_780 = param1;
         }
         this._SafeStr_1641 = param3;
         this._SafeStr_1631 = param2;
         this._SafeStr_434 = this._SafeStr_1641 * this._SafeStr_1641;
         this._SafeStr_1450 = this._SafeStr_1631 * this._SafeStr_1631;
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
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         param1 -= this._SafeStr_780.x;
         param2 -= this._SafeStr_780.y;
         var _loc3_:Number = param1 * param1 + param2 * param2;
         return _loc3_ <= this._SafeStr_1450 && _loc3_ >= this._SafeStr_434;
      }
      
      public function _SafeStr_671() : Point
      {
         var _loc1_:Number = Number(Math.random());
         var _loc2_:Point = Point.polar(this._SafeStr_1641 + (1 - _loc1_ * _loc1_) * (this._SafeStr_1631 - this._SafeStr_1641),Math.random() * _SafeStr_1997);
         _loc2_.x += this._SafeStr_780.x;
         _loc2_.y += this._SafeStr_780.y;
         return _loc2_;
      }
      
      public function _SafeStr_623() : Number
      {
         return Math.PI * (this._SafeStr_1450 - this._SafeStr_434);
      }
      
      public function _SafeStr_954(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc15_:Number = param1.x - this._SafeStr_780.x;
         var _loc16_:Number = param1.y - this._SafeStr_780.y;
         var _loc17_:Number = param1._SafeStr_1392 * _loc15_ + param1._SafeStr_348 * _loc16_;
         if(_loc17_ < 0)
         {
            _loc3_ = this._SafeStr_1631 + param1._SafeStr_1309;
            if(Math.abs(_loc15_) > _loc3_)
            {
               return false;
            }
            if(Math.abs(_loc16_) > _loc3_)
            {
               return false;
            }
            _loc7_ = _loc15_ * _loc15_ + _loc16_ * _loc16_;
            _loc5_ = _loc3_ * _loc3_;
            if(_loc7_ > _loc5_)
            {
               return false;
            }
            _loc9_ = param1._SafeStr_2289 - this._SafeStr_780.x;
            _loc10_ = param1._SafeStr_917 - this._SafeStr_780.y;
            _loc11_ = _loc9_ * _loc9_ + _loc10_ * _loc10_;
            if(_loc11_ > _loc5_)
            {
               _loc12_ = (1 + param2) * _loc17_ / _loc7_;
               param1._SafeStr_1392 -= _loc12_ * _loc15_;
               param1._SafeStr_348 -= _loc12_ * _loc16_;
               _loc8_ = Number(Math.sqrt(_loc7_));
               _loc13_ = (2 * _loc3_ - _loc8_) / _loc8_ + 0.001;
               param1.x = this._SafeStr_780.x + _loc15_ * _loc13_;
               param1.y = this._SafeStr_780.y + _loc16_ * _loc13_;
               return true;
            }
            if(this._SafeStr_1641 != 0 && this._SafeStr_1697 != this._SafeStr_1631)
            {
               _loc4_ = this._SafeStr_1641 + param1._SafeStr_1309;
               if(Math.abs(_loc15_) > _loc4_)
               {
                  return false;
               }
               if(Math.abs(_loc16_) > _loc4_)
               {
                  return false;
               }
               _loc6_ = _loc4_ * _loc4_;
               if(_loc7_ > _loc6_)
               {
                  return false;
               }
               if(_loc11_ > _loc6_)
               {
                  _loc12_ = (1 + param2) * _loc17_ / _loc7_;
                  param1._SafeStr_1392 -= _loc12_ * _loc15_;
                  param1._SafeStr_348 -= _loc12_ * _loc16_;
                  _loc8_ = Number(Math.sqrt(_loc7_));
                  _loc13_ = (2 * _loc4_ - _loc8_) / _loc8_ + 0.001;
                  param1.x = this._SafeStr_780.x + _loc15_ * _loc13_;
                  param1.y = this._SafeStr_780.y + _loc16_ * _loc13_;
                  return true;
               }
            }
            return false;
         }
         _loc3_ = this._SafeStr_1631 - param1._SafeStr_1309;
         _loc9_ = param1._SafeStr_2289 - this._SafeStr_780.x;
         _loc10_ = param1._SafeStr_917 - this._SafeStr_780.y;
         if(Math.abs(_loc9_) > _loc3_)
         {
            return false;
         }
         if(Math.abs(_loc10_) > _loc3_)
         {
            return false;
         }
         _loc11_ = _loc9_ * _loc9_ + _loc10_ * _loc10_;
         _loc5_ = _loc3_ * _loc3_;
         if(_loc11_ > _loc5_)
         {
            return false;
         }
         _loc7_ = _loc15_ * _loc15_ + _loc16_ * _loc16_;
         if(this._SafeStr_1641 != 0 && this._SafeStr_1697 != this._SafeStr_1631)
         {
            _loc4_ = this._SafeStr_1641 - param1._SafeStr_1309;
            _loc6_ = _loc4_ * _loc4_;
            if(_loc11_ < _loc6_ && _loc7_ >= _loc6_)
            {
               _loc12_ = (1 + param2) * _loc17_ / _loc7_;
               param1._SafeStr_1392 -= _loc12_ * _loc15_;
               param1._SafeStr_348 -= _loc12_ * _loc16_;
               _loc8_ = Number(Math.sqrt(_loc7_));
               _loc13_ = (2 * _loc4_ - _loc8_) / _loc8_ - 0.001;
               param1.x = this._SafeStr_780.x + _loc15_ * _loc13_;
               param1.y = this._SafeStr_780.y + _loc16_ * _loc13_;
               return true;
            }
         }
         if(_loc7_ >= _loc5_)
         {
            _loc12_ = (1 + param2) * _loc17_ / _loc7_;
            param1._SafeStr_1392 -= _loc12_ * _loc15_;
            param1._SafeStr_348 -= _loc12_ * _loc16_;
            _loc8_ = Number(Math.sqrt(_loc7_));
            _loc13_ = (2 * _loc3_ - _loc8_) / _loc8_ - 0.001;
            param1.x = this._SafeStr_780.x + _loc15_ * _loc13_;
            param1.y = this._SafeStr_780.y + _loc16_ * _loc13_;
            return true;
         }
         return false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_114 = "_-84"
 * @identifier _SafePkg_14 = "_-hj"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_434 = "_-hQ"
 * @identifier _SafeStr_623 = "_-Kd"
 * @identifier _SafeStr_671 = "_-EC"
 * @identifier _SafeStr_780 = "_-Qw"
 * @identifier _SafeStr_917 = "_-CP"
 * @identifier _SafeStr_954 = "_-9h"
 * @identifier _SafeStr_1309 = "_-YC"
 * @identifier _SafeStr_1392 = "_-17"
 * @identifier _SafeStr_1450 = "_-NW"
 * @identifier _SafeStr_1631 = "_-Ip"
 * @identifier _SafeStr_1637 = "_-M"
 * @identifier _SafeStr_1641 = "_-CK"
 * @identifier _SafeStr_1697 = "_-J7"
 * @identifier _SafeStr_1997 = "_-Z6"
 * @identifier _SafeStr_2289 = "_-H0"
 * @identifier _SafeStr_2464 = "_-Fv"
 * @identifier _SafeStr_2473 = "_-1y"
 */
