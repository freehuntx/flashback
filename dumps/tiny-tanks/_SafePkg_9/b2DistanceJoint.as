package _SafePkg_9
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var _SafeStr_1653:b2Vec2;
      
      private var _SafeStr_655:Number;
      
      private var _SafeStr_1056:Number;
      
      private var _SafeStr_860:Number;
      
      private var _SafeStr_1955:Number;
      
      private var _SafeStr_460:Number;
      
      private var _SafeStr_399:Number;
      
      private var m_length:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this._SafeStr_1653 = new b2Vec2();
         super(param1);
         this.m_localAnchor1._SafeStr_1679(param1._SafeStr_1627);
         this.m_localAnchor2._SafeStr_1679(param1._SafeStr_1876);
         this.m_length = param1.length;
         this._SafeStr_655 = param1._SafeStr_332;
         this._SafeStr_1056 = param1._SafeStr_2335;
         this._SafeStr_460 = 0;
         this._SafeStr_860 = 0;
         this._SafeStr_1955 = 0;
      }
      
      override public function _SafeStr_2153() : b2Vec2
      {
         return b2internal::_SafeStr_496._SafeStr_2376(this.m_localAnchor1);
      }
      
      override public function _SafeStr_2506() : b2Vec2
      {
         return b2internal::_SafeStr_907._SafeStr_2376(this.m_localAnchor2);
      }
      
      override public function _SafeStr_600(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this._SafeStr_460 * this._SafeStr_1653.x,param1 * this._SafeStr_460 * this._SafeStr_1653.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetLength() : Number
      {
         return this.m_length;
      }
      
      public function SetLength(param1:Number) : void
      {
         this.m_length = param1;
      }
      
      public function _SafeStr_1131() : Number
      {
         return this._SafeStr_655;
      }
      
      public function _SafeStr_2268(param1:Number) : void
      {
         this._SafeStr_655 = param1;
      }
      
      public function _SafeStr_1067() : Number
      {
         return this._SafeStr_1056;
      }
      
      public function _SafeStr_439(param1:Number) : void
      {
         this._SafeStr_1056 = param1;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc4_ = b2internal::_SafeStr_496;
         _loc5_ = b2internal::_SafeStr_907;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         var _loc6_:Number = this.m_localAnchor1.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         _loc7_ = this.m_localAnchor1.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc6_ + _loc2_.col2.x * _loc7_;
         _loc7_ = _loc2_.col1.y * _loc6_ + _loc2_.col2.y * _loc7_;
         _loc6_ = _loc3_;
         _loc2_ = _loc5_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor2.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
         _loc9_ = this.m_localAnchor2.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
         _loc3_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc3_;
         this._SafeStr_1653.x = _loc5_._SafeStr_2025.c.x + _loc8_ - _loc4_._SafeStr_2025.c.x - _loc6_;
         this._SafeStr_1653.y = _loc5_._SafeStr_2025.c.y + _loc9_ - _loc4_._SafeStr_2025.c.y - _loc7_;
         var _loc10_:Number = Number(Math.sqrt(this._SafeStr_1653.x * this._SafeStr_1653.x + this._SafeStr_1653.y * this._SafeStr_1653.y));
         if(_loc10_ > b2Settings.b2_linearSlop)
         {
            this._SafeStr_1653.Multiply(1 / _loc10_);
         }
         else
         {
            this._SafeStr_1653._SafeStr_1807();
         }
         var _loc11_:Number = _loc6_ * this._SafeStr_1653.y - _loc7_ * this._SafeStr_1653.x;
         var _loc12_:Number = _loc8_ * this._SafeStr_1653.y - _loc9_ * this._SafeStr_1653.x;
         var _loc13_:Number = _loc4_._SafeStr_615 + _loc4_._SafeStr_882 * _loc11_ * _loc11_ + _loc5_._SafeStr_615 + _loc5_._SafeStr_882 * _loc12_ * _loc12_;
         this._SafeStr_399 = _loc13_ != 0 ? 1 / _loc13_ : 0;
         if(this._SafeStr_655 > 0)
         {
            _loc14_ = _loc10_ - this.m_length;
            _loc15_ = 2 * Math.PI * this._SafeStr_655;
            _loc16_ = 2 * this._SafeStr_399 * this._SafeStr_1056 * _loc15_;
            _loc17_ = this._SafeStr_399 * _loc15_ * _loc15_;
            this._SafeStr_860 = param1._SafeStr_1607 * (_loc16_ + param1._SafeStr_1607 * _loc17_);
            this._SafeStr_860 = this._SafeStr_860 != 0 ? 1 / this._SafeStr_860 : 0;
            this._SafeStr_1955 = _loc14_ * param1._SafeStr_1607 * _loc17_ * this._SafeStr_860;
            this._SafeStr_399 = _loc13_ + this._SafeStr_860;
            this._SafeStr_399 = this._SafeStr_399 != 0 ? 1 / this._SafeStr_399 : 0;
         }
         if(param1.warmStarting)
         {
            this._SafeStr_460 *= param1._SafeStr_889;
            _loc18_ = this._SafeStr_460 * this._SafeStr_1653.x;
            _loc19_ = this._SafeStr_460 * this._SafeStr_1653.y;
            _loc4_._SafeStr_1234.x -= _loc4_._SafeStr_615 * _loc18_;
            _loc4_._SafeStr_1234.y -= _loc4_._SafeStr_615 * _loc19_;
            _loc4_._SafeStr_1846 -= _loc4_._SafeStr_882 * (_loc6_ * _loc19_ - _loc7_ * _loc18_);
            _loc5_._SafeStr_1234.x += _loc5_._SafeStr_615 * _loc18_;
            _loc5_._SafeStr_1234.y += _loc5_._SafeStr_615 * _loc19_;
            _loc5_._SafeStr_1846 += _loc5_._SafeStr_882 * (_loc8_ * _loc19_ - _loc9_ * _loc18_);
         }
         else
         {
            this._SafeStr_460 = 0;
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::_SafeStr_496;
         var _loc4_:b2Body = b2internal::_SafeStr_907;
         _loc2_ = _loc3_._SafeStr_1473._SafeStr_945;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc3_._SafeStr_1234.x + -_loc3_._SafeStr_1846 * _loc6_;
         var _loc11_:Number = _loc3_._SafeStr_1234.y + _loc3_._SafeStr_1846 * _loc5_;
         var _loc12_:Number = _loc4_._SafeStr_1234.x + -_loc4_._SafeStr_1846 * _loc9_;
         var _loc13_:Number = _loc4_._SafeStr_1234.y + _loc4_._SafeStr_1846 * _loc8_;
         var _loc14_:Number = this._SafeStr_1653.x * (_loc12_ - _loc10_) + this._SafeStr_1653.y * (_loc13_ - _loc11_);
         var _loc15_:Number = -this._SafeStr_399 * (_loc14_ + this._SafeStr_1955 + this._SafeStr_860 * this._SafeStr_460);
         this._SafeStr_460 += _loc15_;
         var _loc16_:Number = _loc15_ * this._SafeStr_1653.x;
         var _loc17_:Number = _loc15_ * this._SafeStr_1653.y;
         _loc3_._SafeStr_1234.x -= _loc3_._SafeStr_615 * _loc16_;
         _loc3_._SafeStr_1234.y -= _loc3_._SafeStr_615 * _loc17_;
         _loc3_._SafeStr_1846 -= _loc3_._SafeStr_882 * (_loc5_ * _loc17_ - _loc6_ * _loc16_);
         _loc4_._SafeStr_1234.x += _loc4_._SafeStr_615 * _loc16_;
         _loc4_._SafeStr_1234.y += _loc4_._SafeStr_615 * _loc17_;
         _loc4_._SafeStr_1846 += _loc4_._SafeStr_882 * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc2_:b2Mat22 = null;
         if(this._SafeStr_655 > 0)
         {
            return true;
         }
         var _loc3_:b2Body = b2internal::_SafeStr_496;
         var _loc4_:b2Body = b2internal::_SafeStr_907;
         _loc2_ = _loc3_._SafeStr_1473._SafeStr_945;
         var _loc5_:Number = this.m_localAnchor1.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
         var _loc7_:Number = _loc2_.col1.x * _loc5_ + _loc2_.col2.x * _loc6_;
         _loc6_ = _loc2_.col1.y * _loc5_ + _loc2_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc2_ = _loc4_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor2.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
         _loc7_ = _loc2_.col1.x * _loc8_ + _loc2_.col2.x * _loc9_;
         _loc9_ = _loc2_.col1.y * _loc8_ + _loc2_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc4_._SafeStr_2025.c.x + _loc8_ - _loc3_._SafeStr_2025.c.x - _loc5_;
         var _loc11_:Number = _loc4_._SafeStr_2025.c.y + _loc9_ - _loc3_._SafeStr_2025.c.y - _loc6_;
         var _loc12_:Number = Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_));
         _loc10_ /= _loc12_;
         _loc11_ /= _loc12_;
         var _loc13_:Number = _loc12_ - this.m_length;
         _loc13_ = b2Math._SafeStr_392(_loc13_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
         var _loc14_:Number = -this._SafeStr_399 * _loc13_;
         this._SafeStr_1653.Set(_loc10_,_loc11_);
         var _loc15_:Number = _loc14_ * this._SafeStr_1653.x;
         var _loc16_:Number = _loc14_ * this._SafeStr_1653.y;
         _loc3_._SafeStr_2025.c.x -= _loc3_._SafeStr_615 * _loc15_;
         _loc3_._SafeStr_2025.c.y -= _loc3_._SafeStr_615 * _loc16_;
         _loc3_._SafeStr_2025.a -= _loc3_._SafeStr_882 * (_loc5_ * _loc16_ - _loc6_ * _loc15_);
         _loc4_._SafeStr_2025.c.x += _loc4_._SafeStr_615 * _loc15_;
         _loc4_._SafeStr_2025.c.y += _loc4_._SafeStr_615 * _loc16_;
         _loc4_._SafeStr_2025.a += _loc4_._SafeStr_882 * (_loc8_ * _loc16_ - _loc9_ * _loc15_);
         _loc3_._SafeStr_2018();
         _loc4_._SafeStr_2018();
         return b2Math._SafeStr_283(_loc13_) < b2Settings.b2_linearSlop;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_332 = "_-IY"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_439 = "_-bp"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_655 = "_-OI"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_860 = "_-j0"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1056 = "_-Cj"
 * @identifier _SafeStr_1067 = "_-SF"
 * @identifier _SafeStr_1131 = "_-Pr"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1653 = "_-Jt"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_1955 = "_-WK"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2268 = "_-Xz"
 * @identifier _SafeStr_2335 = "_-Mv"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
