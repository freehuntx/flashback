package _SafePkg_9
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Mat33;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2Vec3;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
      
      private var _SafeStr_792:b2Vec2 = new b2Vec2();
      
      private var _SafeStr_353:b2Vec2 = new b2Vec2();
      
      private var m_referenceAngle:Number;
      
      private var _SafeStr_460:b2Vec3 = new b2Vec3();
      
      private var _SafeStr_399:b2Mat33 = new b2Mat33();
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         super(param1);
         this._SafeStr_792._SafeStr_1679(param1._SafeStr_1627);
         this._SafeStr_353._SafeStr_1679(param1._SafeStr_1876);
         this.m_referenceAngle = param1.referenceAngle;
         this._SafeStr_460._SafeStr_1807();
         this._SafeStr_399 = new b2Mat33();
      }
      
      override public function _SafeStr_2153() : b2Vec2
      {
         return b2internal::_SafeStr_496._SafeStr_2376(this._SafeStr_792);
      }
      
      override public function _SafeStr_2506() : b2Vec2
      {
         return b2internal::_SafeStr_907._SafeStr_2376(this._SafeStr_353);
      }
      
      override public function _SafeStr_600(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this._SafeStr_460.x,param1 * this._SafeStr_460.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return param1 * this._SafeStr_460.z;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = b2internal::_SafeStr_496;
         _loc5_ = b2internal::_SafeStr_907;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         _loc6_ = this._SafeStr_792.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         _loc7_ = this._SafeStr_792.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_._SafeStr_1473._SafeStr_945;
         _loc8_ = this._SafeStr_353.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
         _loc9_ = this._SafeStr_353.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_._SafeStr_615;
         _loc11_ = _loc5_._SafeStr_615;
         _loc12_ = _loc4_._SafeStr_882;
         _loc13_ = _loc5_._SafeStr_882;
         this._SafeStr_399.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this._SafeStr_399.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this._SafeStr_399.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this._SafeStr_399.col1.y = this._SafeStr_399.col2.x;
         this._SafeStr_399.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this._SafeStr_399.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this._SafeStr_399.col1.z = this._SafeStr_399.col3.x;
         this._SafeStr_399.col2.z = this._SafeStr_399.col3.y;
         this._SafeStr_399.col3.z = _loc12_ + _loc13_;
         if(param1.warmStarting)
         {
            this._SafeStr_460.x *= param1._SafeStr_889;
            this._SafeStr_460.y *= param1._SafeStr_889;
            this._SafeStr_460.z *= param1._SafeStr_889;
            _loc4_._SafeStr_1234.x -= _loc10_ * this._SafeStr_460.x;
            _loc4_._SafeStr_1234.y -= _loc10_ * this._SafeStr_460.y;
            _loc4_._SafeStr_1846 -= _loc12_ * (_loc6_ * this._SafeStr_460.y - _loc7_ * this._SafeStr_460.x + this._SafeStr_460.z);
            _loc5_._SafeStr_1234.x += _loc11_ * this._SafeStr_460.x;
            _loc5_._SafeStr_1234.y += _loc11_ * this._SafeStr_460.y;
            _loc5_._SafeStr_1846 += _loc13_ * (_loc8_ * this._SafeStr_460.y - _loc9_ * this._SafeStr_460.x + this._SafeStr_460.z);
         }
         else
         {
            this._SafeStr_460._SafeStr_1807();
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::_SafeStr_496;
         var _loc5_:b2Body = b2internal::_SafeStr_907;
         var _loc6_:b2Vec2 = _loc4_._SafeStr_1234;
         var _loc7_:Number = _loc4_._SafeStr_1846;
         var _loc8_:b2Vec2 = _loc5_._SafeStr_1234;
         var _loc9_:Number = _loc5_._SafeStr_1846;
         var _loc10_:Number = _loc4_._SafeStr_615;
         var _loc11_:Number = _loc5_._SafeStr_615;
         var _loc12_:Number = _loc4_._SafeStr_882;
         var _loc13_:Number = _loc5_._SafeStr_882;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         var _loc14_:Number = this._SafeStr_792.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         var _loc15_:Number = this._SafeStr_792.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc14_ + _loc2_.col2.x * _loc15_;
         _loc15_ = _loc2_.col1.y * _loc14_ + _loc2_.col2.y * _loc15_;
         _loc14_ = _loc3_;
         _loc2_ = _loc5_._SafeStr_1473._SafeStr_945;
         var _loc16_:Number = this._SafeStr_353.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
         var _loc17_:Number = this._SafeStr_353.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc16_ + _loc2_.col2.x * _loc17_;
         _loc17_ = _loc2_.col1.y * _loc16_ + _loc2_.col2.y * _loc17_;
         _loc16_ = _loc3_;
         var _loc18_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc19_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc20_:Number = _loc9_ - _loc7_;
         var _loc21_:b2Vec3 = new b2Vec3();
         this._SafeStr_399.Solve33(_loc21_,-_loc18_,-_loc19_,-_loc20_);
         this._SafeStr_460.Add(_loc21_);
         _loc6_.x -= _loc10_ * _loc21_.x;
         _loc6_.y -= _loc10_ * _loc21_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc21_.y - _loc15_ * _loc21_.x + _loc21_.z);
         _loc8_.x += _loc11_ * _loc21_.x;
         _loc8_.y += _loc11_ * _loc21_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc21_.y - _loc17_ * _loc21_.x + _loc21_.z);
         _loc4_._SafeStr_1846 = _loc7_;
         _loc5_._SafeStr_1846 = _loc9_;
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::_SafeStr_496;
         var _loc5_:b2Body = b2internal::_SafeStr_907;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         var _loc6_:Number = this._SafeStr_792.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         var _loc7_:Number = this._SafeStr_792.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this._SafeStr_353.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this._SafeStr_353.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         var _loc10_:Number = _loc4_._SafeStr_615;
         var _loc11_:Number = _loc5_._SafeStr_615;
         var _loc12_:Number = _loc4_._SafeStr_882;
         var _loc13_:Number = _loc5_._SafeStr_882;
         var _loc14_:Number = _loc5_._SafeStr_2025.c.x + _loc8_ - _loc4_._SafeStr_2025.c.x - _loc6_;
         var _loc15_:Number = _loc5_._SafeStr_2025.c.y + _loc9_ - _loc4_._SafeStr_2025.c.y - _loc7_;
         var _loc16_:Number = _loc5_._SafeStr_2025.a - _loc4_._SafeStr_2025.a - this.m_referenceAngle;
         var _loc17_:Number = 10 * b2Settings.b2_linearSlop;
         var _loc18_:Number = Number(Math.sqrt(_loc14_ * _loc14_ + _loc15_ * _loc15_));
         var _loc19_:Number = b2Math._SafeStr_283(_loc16_);
         if(_loc18_ > _loc17_)
         {
            _loc12_ *= 1;
            _loc13_ *= 1;
         }
         this._SafeStr_399.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this._SafeStr_399.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this._SafeStr_399.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this._SafeStr_399.col1.y = this._SafeStr_399.col2.x;
         this._SafeStr_399.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this._SafeStr_399.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this._SafeStr_399.col1.z = this._SafeStr_399.col3.x;
         this._SafeStr_399.col2.z = this._SafeStr_399.col3.y;
         this._SafeStr_399.col3.z = _loc12_ + _loc13_;
         var _loc20_:b2Vec3 = new b2Vec3();
         this._SafeStr_399.Solve33(_loc20_,-_loc14_,-_loc15_,-_loc16_);
         _loc4_._SafeStr_2025.c.x -= _loc10_ * _loc20_.x;
         _loc4_._SafeStr_2025.c.y -= _loc10_ * _loc20_.y;
         _loc4_._SafeStr_2025.a -= _loc12_ * (_loc6_ * _loc20_.y - _loc7_ * _loc20_.x + _loc20_.z);
         _loc5_._SafeStr_2025.c.x += _loc11_ * _loc20_.x;
         _loc5_._SafeStr_2025.c.y += _loc11_ * _loc20_.y;
         _loc5_._SafeStr_2025.a += _loc13_ * (_loc8_ * _loc20_.y - _loc9_ * _loc20_.x + _loc20_.z);
         _loc4_._SafeStr_2018();
         _loc5_._SafeStr_2018();
         return _loc18_ <= b2Settings.b2_linearSlop && _loc19_ <= b2Settings.b2_angularSlop;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_353 = "_-TM"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_792 = "_-LQ"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
