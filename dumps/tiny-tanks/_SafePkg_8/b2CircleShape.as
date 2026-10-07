package _SafePkg_8
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_20.b2AABB;
   import _SafePkg_20.b2RayCastInput;
   import _SafePkg_20.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
      
      b2internal var _SafeStr_2560:b2Vec2 = new b2Vec2();
      
      public function b2CircleShape(param1:Number = 0)
      {
         super();
         b2internal::_SafeStr_972 = b2internal::_SafeStr_695;
         b2internal::_SafeStr_874 = param1;
      }
      
      override public function _SafeStr_2396() : b2Shape
      {
         var _loc1_:b2Shape = new b2CircleShape();
         _loc1_.Set(this);
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         super.Set(param1);
         if(param1 is b2CircleShape)
         {
            _loc2_ = param1 as b2CircleShape;
            this._SafeStr_2560._SafeStr_1679(_loc2_._SafeStr_2560);
         }
      }
      
      override public function _SafeStr_1865(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Mat22 = param1._SafeStr_945;
         var _loc4_:Number = param1.position.x + (_loc3_.col1.x * this._SafeStr_2560.x + _loc3_.col2.x * this._SafeStr_2560.y);
         var _loc5_:Number = param1.position.y + (_loc3_.col1.y * this._SafeStr_2560.x + _loc3_.col2.y * this._SafeStr_2560.y);
         _loc4_ = param2.x - _loc4_;
         _loc5_ = param2.y - _loc5_;
         return _loc4_ * _loc4_ + _loc5_ * _loc5_ <= b2internal::_SafeStr_874 * b2internal::_SafeStr_874;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc8_:Number = NaN;
         var _loc4_:b2Mat22 = param3._SafeStr_945;
         var _loc5_:Number = param3.position.x + (_loc4_.col1.x * this._SafeStr_2560.x + _loc4_.col2.x * this._SafeStr_2560.y);
         var _loc6_:Number = param3.position.y + (_loc4_.col1.y * this._SafeStr_2560.x + _loc4_.col2.y * this._SafeStr_2560.y);
         var _loc7_:Number = param2.p1.x - _loc5_;
         _loc8_ = param2.p1.y - _loc6_;
         var _loc9_:Number = _loc7_ * _loc7_ + _loc8_ * _loc8_ - b2internal::_SafeStr_874 * b2internal::_SafeStr_874;
         var _loc10_:Number = param2.p2.x - param2.p1.x;
         var _loc11_:Number = param2.p2.y - param2.p1.y;
         var _loc12_:Number = _loc7_ * _loc10_ + _loc8_ * _loc11_;
         var _loc13_:Number = _loc10_ * _loc10_ + _loc11_ * _loc11_;
         var _loc14_:Number = _loc12_ * _loc12_ - _loc13_ * _loc9_;
         if(_loc14_ < 0 || _loc13_ < Number.MIN_VALUE)
         {
            return false;
         }
         var _loc15_:Number = -(_loc12_ + Math.sqrt(_loc14_));
         if(0 <= _loc15_ && _loc15_ <= param2._SafeStr_1595 * _loc13_)
         {
            _loc15_ /= _loc13_;
            param1._SafeStr_2571 = _loc15_;
            param1.normal.x = _loc7_ + _loc15_ * _loc10_;
            param1.normal.y = _loc8_ + _loc15_ * _loc11_;
            param1.normal.Normalize();
            return true;
         }
         return false;
      }
      
      override public function _SafeStr_2297(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc3_:b2Mat22 = param2._SafeStr_945;
         var _loc4_:Number = param2.position.x + (_loc3_.col1.x * this._SafeStr_2560.x + _loc3_.col2.x * this._SafeStr_2560.y);
         var _loc5_:Number = param2.position.y + (_loc3_.col1.y * this._SafeStr_2560.x + _loc3_.col2.y * this._SafeStr_2560.y);
         param1.lowerBound.Set(_loc4_ - b2internal::_SafeStr_874,_loc5_ - b2internal::_SafeStr_874);
         param1.upperBound.Set(_loc4_ + b2internal::_SafeStr_874,_loc5_ + b2internal::_SafeStr_874);
      }
      
      override public function _SafeStr_1244(param1:b2MassData, param2:Number) : void
      {
         param1._SafeStr_1106 = param2 * b2Settings.b2_pi * b2internal::_SafeStr_874 * b2internal::_SafeStr_874;
         param1.center._SafeStr_1679(this._SafeStr_2560);
         param1.I = param1._SafeStr_1106 * (0.5 * b2internal::_SafeStr_874 * b2internal::_SafeStr_874 + (this._SafeStr_2560.x * this._SafeStr_2560.x + this._SafeStr_2560.y * this._SafeStr_2560.y));
      }
      
      override public function _SafeStr_662(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc9_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math._SafeStr_457(param3,this._SafeStr_2560);
         var _loc6_:Number = -(b2Math._SafeCls_184(param1,_loc5_) - param2);
         if(_loc6_ < -b2internal::_SafeStr_874 + Number.MIN_VALUE)
         {
            return 0;
         }
         if(_loc6_ > b2internal::_SafeStr_874)
         {
            param4._SafeStr_1679(_loc5_);
            return Math.PI * b2internal::_SafeStr_874 * b2internal::_SafeStr_874;
         }
         var _loc7_:Number = b2internal::_SafeStr_874 * b2internal::_SafeStr_874;
         var _loc8_:Number = _loc6_ * _loc6_;
         _loc9_ = _loc7_ * (Math.asin(_loc6_ / b2internal::_SafeStr_874) + Math.PI / 2) + _loc6_ * Math.sqrt(_loc7_ - _loc8_);
         var _loc10_:Number = -2 / 3 * Math.pow(_loc7_ - _loc8_,1.5) / _loc9_;
         param4.x = _loc5_.x + param1.x * _loc10_;
         param4.y = _loc5_.y + param1.y * _loc10_;
         return _loc9_;
      }
      
      public function _SafeStr_1362() : b2Vec2
      {
         return this._SafeStr_2560;
      }
      
      public function _SafeStr_2640(param1:b2Vec2) : void
      {
         this._SafeStr_2560._SafeStr_1679(param1);
      }
      
      public function _SafeStr_1945() : Number
      {
         return b2internal::_SafeStr_874;
      }
      
      public function _SafeStr_2170(param1:Number) : void
      {
         _SafeStr_874 = param1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_662 = "_-5X"
 * @identifier _SafeStr_695 = "_-Dy"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1106 = "_-Y8"
 * @identifier _SafeStr_1244 = "_-cm"
 * @identifier _SafeStr_1362 = "_-Uq"
 * @identifier _SafeStr_1595 = "_-9G"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1865 = "_-aW"
 * @identifier _SafeStr_1945 = "_-KZ"
 * @identifier _SafeStr_2170 = "_-D6"
 * @identifier _SafeStr_2297 = "_-5a"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2560 = "_-7x"
 * @identifier _SafeStr_2571 = "_-Eb"
 * @identifier _SafeStr_2640 = "_-7v"
 */
