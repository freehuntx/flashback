package _SafePkg_14
{
   import _SafePkg_124.Particle2D;
   import flash.geom.Point;
   
   public class _SafeCls_116 implements Zone2D
   {
      
      private var _SafeStr_2434:Point;
      
      public function _SafeCls_116(param1:Point = null)
      {
         super();
         if(param1 == null)
         {
            this._SafeStr_2434 = new Point(0,0);
         }
         else
         {
            this._SafeStr_2434 = param1;
         }
      }
      
      public function get _SafeStr_1437() : Point
      {
         return this._SafeStr_2434;
      }
      
      public function set _SafeStr_1437(param1:Point) : void
      {
         this._SafeStr_2434 = param1;
      }
      
      public function get x() : Number
      {
         return this._SafeStr_2434.x;
      }
      
      public function set x(param1:Number) : void
      {
         this._SafeStr_2434.x = param1;
      }
      
      public function get y() : Number
      {
         return this._SafeStr_2434.y;
      }
      
      public function set y(param1:Number) : void
      {
         this._SafeStr_2434.y = param1;
      }
      
      public function contains(param1:Number, param2:Number) : Boolean
      {
         return this._SafeStr_2434.x == param1 && this._SafeStr_2434.y == param2;
      }
      
      public function _SafeStr_671() : Point
      {
         return this._SafeStr_2434.clone();
      }
      
      public function _SafeStr_623() : Number
      {
         return 1;
      }
      
      public function _SafeStr_954(param1:Particle2D, param2:Number = 1) : Boolean
      {
         var _loc19_:Number = NaN;
         var _loc3_:Number = param1._SafeStr_2289 - this._SafeStr_2434.x;
         var _loc4_:Number = param1._SafeStr_917 - this._SafeStr_2434.y;
         var _loc5_:Number = _loc3_ * param1._SafeStr_1392 + _loc4_ * param1._SafeStr_348;
         if(_loc5_ >= 0)
         {
            return false;
         }
         var _loc6_:Number = param1.x - this._SafeStr_2434.x;
         var _loc7_:Number = param1.y - this._SafeStr_2434.y;
         var _loc8_:Number = param1._SafeStr_1309;
         _loc5_ = _loc6_ * param1._SafeStr_1392 + _loc7_ * param1._SafeStr_348;
         if(_loc5_ <= 0)
         {
            if(_loc6_ > _loc8_ || _loc6_ < -_loc8_)
            {
               return false;
            }
            if(_loc7_ > _loc8_ || _loc7_ < -_loc8_)
            {
               return false;
            }
            if(_loc6_ * _loc6_ + _loc7_ * _loc7_ > _loc8_ * _loc8_)
            {
               return false;
            }
         }
         var _loc9_:Number = _loc6_ - _loc3_;
         var _loc10_:Number = _loc7_ - _loc4_;
         var _loc11_:Number = _loc9_ * _loc9_ + _loc10_ * _loc10_;
         var _loc12_:Number = 2 * (_loc3_ * _loc9_ + _loc4_ * _loc10_);
         var _loc13_:Number = _loc3_ * _loc3_ + _loc4_ * _loc4_ - _loc8_ * _loc8_;
         var _loc14_:Number = _loc12_ * _loc12_ - 4 * _loc11_ * _loc13_;
         if(_loc14_ < 0)
         {
            return false;
         }
         var _loc15_:Number = Number(Math.sqrt(_loc14_));
         var _loc16_:Number = (-_loc12_ + _loc15_) / (2 * _loc11_);
         var _loc17_:Number = (-_loc12_ - _loc15_) / (2 * _loc11_);
         var _loc18_:Array = new Array();
         if(_loc16_ > 0 && _loc16_ <= 1)
         {
            _loc18_.push(_loc16_);
         }
         if(_loc17_ > 0 && _loc17_ <= 1)
         {
            _loc18_.push(_loc17_);
         }
         if(_loc18_.length == 0)
         {
            return false;
         }
         if(_loc18_.length == 1)
         {
            _loc19_ = Number(_loc18_[0]);
         }
         else
         {
            _loc19_ = Number(Math.min(_loc16_,_loc17_));
         }
         var _loc20_:Number = _loc3_ + _loc19_ * _loc9_ + this._SafeStr_2434.x;
         var _loc21_:Number = _loc4_ + _loc19_ * _loc10_ + this._SafeStr_2434.y;
         var _loc22_:Number = _loc20_ - this._SafeStr_2434.x;
         var _loc23_:Number = _loc21_ - this._SafeStr_2434.y;
         var _loc24_:Number = Number(Math.sqrt(_loc22_ * _loc22_ + _loc23_ * _loc23_));
         _loc22_ /= _loc24_;
         _loc23_ /= _loc24_;
         var _loc25_:Number = _loc9_ * _loc22_ + _loc10_ * _loc23_;
         _loc9_ -= 2 * _loc22_ * _loc25_;
         _loc10_ -= 2 * _loc23_ * _loc25_;
         param1.x = _loc20_ + (1 - _loc19_) * _loc9_;
         param1.y = _loc21_ + (1 - _loc19_) * _loc10_;
         var _loc26_:Number = param1._SafeStr_1392 * _loc22_ + param1._SafeStr_348 * _loc23_;
         param1._SafeStr_1392 -= (1 + param2) * _loc22_ * _loc26_;
         param1._SafeStr_348 -= (1 + param2) * _loc23_ * _loc26_;
         return true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_116 = "_-Ph"
 * @identifier _SafePkg_14 = "_-hj"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_623 = "_-Kd"
 * @identifier _SafeStr_671 = "_-EC"
 * @identifier _SafeStr_917 = "_-CP"
 * @identifier _SafeStr_954 = "_-9h"
 * @identifier _SafeStr_1309 = "_-YC"
 * @identifier _SafeStr_1392 = "_-17"
 * @identifier _SafeStr_1437 = "_-CB"
 * @identifier _SafeStr_2289 = "_-H0"
 * @identifier _SafeStr_2434 = "_-4d"
 */
