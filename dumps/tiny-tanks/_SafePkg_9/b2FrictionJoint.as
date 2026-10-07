package _SafePkg_9
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
      
      private var _SafeStr_792:b2Vec2 = new b2Vec2();
      
      private var _SafeStr_353:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_369:b2Mat22 = new b2Mat22();
      
      public var _SafeStr_1976:Number;
      
      private var _SafeStr_2604:b2Vec2 = new b2Vec2();
      
      private var _SafeStr_2139:Number;
      
      private var _SafeStr_1345:Number;
      
      private var _SafeStr_1274:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         super(param1);
         this._SafeStr_792._SafeStr_1679(param1._SafeStr_1627);
         this._SafeStr_353._SafeStr_1679(param1._SafeStr_1876);
         this._SafeStr_369._SafeStr_1807();
         this._SafeStr_1976 = 0;
         this._SafeStr_2604._SafeStr_1807();
         this._SafeStr_2139 = 0;
         this._SafeStr_1345 = param1._SafeStr_924;
         this._SafeStr_1274 = param1._SafeStr_341;
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
         return new b2Vec2(param1 * this._SafeStr_2604.x,param1 * this._SafeStr_2604.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return param1 * this._SafeStr_2139;
      }
      
      public function _SafeStr_1893(param1:Number) : void
      {
         this._SafeStr_1345 = param1;
      }
      
      public function _SafeStr_414() : Number
      {
         return this._SafeStr_1345;
      }
      
      public function _SafeStr_1901(param1:Number) : void
      {
         this._SafeStr_1274 = param1;
      }
      
      public function _SafeStr_2394() : Number
      {
         return this._SafeStr_1274;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::_SafeStr_496;
         _loc5_ = b2internal::_SafeStr_907;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         _loc6_ = this._SafeStr_792.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         var _loc7_:Number = this._SafeStr_792.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_._SafeStr_1473._SafeStr_945;
         _loc8_ = this._SafeStr_353.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this._SafeStr_353.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         _loc10_ = _loc4_._SafeStr_615;
         var _loc11_:Number = _loc5_._SafeStr_615;
         _loc12_ = _loc4_._SafeStr_882;
         _loc13_ = _loc5_._SafeStr_882;
         _loc14_ = new b2Mat22();
         _loc14_.col1.x = _loc10_ + _loc11_;
         _loc14_.col2.x = 0;
         _loc14_.col1.y = 0;
         _loc14_.col2.y = _loc10_ + _loc11_;
         _loc14_.col1.x += _loc12_ * _loc7_ * _loc7_;
         _loc14_.col2.x += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col1.y += -_loc12_ * _loc6_ * _loc7_;
         _loc14_.col2.y += _loc12_ * _loc6_ * _loc6_;
         _loc14_.col1.x += _loc13_ * _loc9_ * _loc9_;
         _loc14_.col2.x += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col1.y += -_loc13_ * _loc8_ * _loc9_;
         _loc14_.col2.y += _loc13_ * _loc8_ * _loc8_;
         _loc14_._SafeStr_2352(this._SafeStr_369);
         this._SafeStr_1976 = _loc12_ + _loc13_;
         if(this._SafeStr_1976 > 0)
         {
            this._SafeStr_1976 = 1 / this._SafeStr_1976;
         }
         if(param1.warmStarting)
         {
            this._SafeStr_2604.x *= param1._SafeStr_889;
            this._SafeStr_2604.y *= param1._SafeStr_889;
            this._SafeStr_2139 *= param1._SafeStr_889;
            _loc15_ = this._SafeStr_2604;
            _loc4_._SafeStr_1234.x -= _loc10_ * _loc15_.x;
            _loc4_._SafeStr_1234.y -= _loc10_ * _loc15_.y;
            _loc4_._SafeStr_1846 -= _loc12_ * (_loc6_ * _loc15_.y - _loc7_ * _loc15_.x + this._SafeStr_2139);
            _loc5_._SafeStr_1234.x += _loc11_ * _loc15_.x;
            _loc5_._SafeStr_1234.y += _loc11_ * _loc15_.y;
            _loc5_._SafeStr_1846 += _loc13_ * (_loc8_ * _loc15_.y - _loc9_ * _loc15_.x + this._SafeStr_2139);
         }
         else
         {
            this._SafeStr_2604._SafeStr_1807();
            this._SafeStr_2139 = 0;
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc18_:Number = NaN;
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
         var _loc19_:Number = _loc9_ - _loc7_;
         var _loc20_:Number = -this._SafeStr_1976 * _loc19_;
         var _loc21_:Number = this._SafeStr_2139;
         _loc18_ = param1._SafeStr_1607 * this._SafeStr_1274;
         this._SafeStr_2139 = b2Math._SafeStr_392(this._SafeStr_2139 + _loc20_,-_loc18_,_loc18_);
         _loc20_ = this._SafeStr_2139 - _loc21_;
         _loc7_ -= _loc12_ * _loc20_;
         _loc9_ += _loc13_ * _loc20_;
         var _loc22_:Number = _loc8_.x - _loc9_ * _loc17_ - _loc6_.x + _loc7_ * _loc15_;
         var _loc23_:Number = _loc8_.y + _loc9_ * _loc16_ - _loc6_.y - _loc7_ * _loc14_;
         var _loc24_:b2Vec2 = b2Math._SafeStr_734(this._SafeStr_369,new b2Vec2(-_loc22_,-_loc23_));
         var _loc25_:b2Vec2 = this._SafeStr_2604._SafeStr_2396();
         this._SafeStr_2604.Add(_loc24_);
         _loc18_ = param1._SafeStr_1607 * this._SafeStr_1345;
         if(this._SafeStr_2604._SafeStr_731() > _loc18_ * _loc18_)
         {
            this._SafeStr_2604.Normalize();
            this._SafeStr_2604.Multiply(_loc18_);
         }
         _loc24_ = b2Math._SafeStr_2442(this._SafeStr_2604,_loc25_);
         _loc6_.x -= _loc10_ * _loc24_.x;
         _loc6_.y -= _loc10_ * _loc24_.y;
         _loc7_ -= _loc12_ * (_loc14_ * _loc24_.y - _loc15_ * _loc24_.x);
         _loc8_.x += _loc11_ * _loc24_.x;
         _loc8_.y += _loc11_ * _loc24_.y;
         _loc9_ += _loc13_ * (_loc16_ * _loc24_.y - _loc17_ * _loc24_.x);
         _loc4_._SafeStr_1846 = _loc7_;
         _loc5_._SafeStr_1846 = _loc9_;
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         return true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_341 = "_-1s"
 * @identifier _SafeStr_353 = "_-TM"
 * @identifier _SafeStr_369 = "_-4o"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_414 = "_-Ex"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_731 = "_-Fl"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_792 = "_-LQ"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_924 = "_-Z"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1274 = "_-t"
 * @identifier _SafeStr_1345 = "_-Av"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_1893 = "_-hc"
 * @identifier _SafeStr_1901 = "_-CL"
 * @identifier _SafeStr_1976 = "_-m"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2139 = "_-hH"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2352 = "_-aC"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2394 = "_-Xj"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2604 = "_-P2"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
