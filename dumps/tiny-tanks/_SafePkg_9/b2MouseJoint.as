package _SafePkg_9
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
      
      private var _SafeStr_672:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var _SafeStr_2646:b2Vec2;
      
      private var _SafeStr_1466:b2Vec2;
      
      private var _SafeStr_460:b2Vec2;
      
      private var _SafeStr_399:b2Mat22;
      
      private var _SafeStr_1760:b2Vec2;
      
      private var _SafeStr_1345:Number;
      
      private var _SafeStr_655:Number;
      
      private var _SafeStr_1056:Number;
      
      private var _SafeStr_525:Number;
      
      private var _SafeStr_860:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         this._SafeStr_672 = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this._SafeStr_2646 = new b2Vec2();
         this._SafeStr_1466 = new b2Vec2();
         this._SafeStr_460 = new b2Vec2();
         this._SafeStr_399 = new b2Mat22();
         this._SafeStr_1760 = new b2Vec2();
         super(param1);
         this._SafeStr_1466._SafeStr_1679(param1.target);
         _loc2_ = this._SafeStr_1466.x - b2internal::_SafeStr_907._SafeStr_1473.position.x;
         var _loc3_:Number = this._SafeStr_1466.y - b2internal::_SafeStr_907._SafeStr_1473.position.y;
         _loc4_ = b2internal::_SafeStr_907._SafeStr_1473._SafeStr_945;
         this._SafeStr_2646.x = _loc2_ * _loc4_.col1.x + _loc3_ * _loc4_.col1.y;
         this._SafeStr_2646.y = _loc2_ * _loc4_.col2.x + _loc3_ * _loc4_.col2.y;
         this._SafeStr_1345 = param1._SafeStr_924;
         this._SafeStr_460._SafeStr_1807();
         this._SafeStr_655 = param1._SafeStr_332;
         this._SafeStr_1056 = param1._SafeStr_2335;
         this._SafeStr_525 = 0;
         this._SafeStr_860 = 0;
      }
      
      override public function _SafeStr_2153() : b2Vec2
      {
         return this._SafeStr_1466;
      }
      
      override public function _SafeStr_2506() : b2Vec2
      {
         return b2internal::_SafeStr_907._SafeStr_2376(this._SafeStr_2646);
      }
      
      override public function _SafeStr_600(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this._SafeStr_460.x,param1 * this._SafeStr_460.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return 0;
      }
      
      public function _SafeStr_2158() : b2Vec2
      {
         return this._SafeStr_1466;
      }
      
      public function _SafeStr_2490(param1:b2Vec2) : void
      {
         if(b2internal::_SafeStr_907._SafeStr_2035() == false)
         {
            b2internal::_SafeStr_907._SafeStr_1589(true);
         }
         this._SafeStr_1466 = param1;
      }
      
      public function _SafeStr_414() : Number
      {
         return this._SafeStr_1345;
      }
      
      public function _SafeStr_1893(param1:Number) : void
      {
         this._SafeStr_1345 = param1;
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
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:b2Body = b2internal::_SafeStr_907;
         var _loc3_:Number = _loc2_._SafeStr_1885();
         var _loc4_:Number = 2 * Math.PI * this._SafeStr_655;
         var _loc5_:Number = 2 * _loc3_ * this._SafeStr_1056 * _loc4_;
         var _loc6_:Number = _loc3_ * _loc4_ * _loc4_;
         this._SafeStr_860 = param1._SafeStr_1607 * (_loc5_ + param1._SafeStr_1607 * _loc6_);
         this._SafeStr_860 = this._SafeStr_860 != 0 ? 1 / this._SafeStr_860 : 0;
         this._SafeStr_525 = param1._SafeStr_1607 * _loc6_ * this._SafeStr_860;
         _loc7_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this._SafeStr_2646.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this._SafeStr_2646.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
         var _loc10_:Number = _loc7_.col1.x * _loc8_ + _loc7_.col2.x * _loc9_;
         _loc9_ = _loc7_.col1.y * _loc8_ + _loc7_.col2.y * _loc9_;
         _loc8_ = _loc10_;
         _loc11_ = _loc2_._SafeStr_615;
         _loc12_ = _loc2_._SafeStr_882;
         this.K1.col1.x = _loc11_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc11_;
         this.K2.col1.x = _loc12_ * _loc9_ * _loc9_;
         this.K2.col2.x = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col1.y = -_loc12_ * _loc8_ * _loc9_;
         this.K2.col2.y = _loc12_ * _loc8_ * _loc8_;
         this._SafeStr_672._SafeStr_2130(this.K1);
         this._SafeStr_672._SafeStr_2378(this.K2);
         this._SafeStr_672.col1.x += this._SafeStr_860;
         this._SafeStr_672.col2.y += this._SafeStr_860;
         this._SafeStr_672._SafeStr_2352(this._SafeStr_399);
         this._SafeStr_1760.x = _loc2_._SafeStr_2025.c.x + _loc8_ - this._SafeStr_1466.x;
         this._SafeStr_1760.y = _loc2_._SafeStr_2025.c.y + _loc9_ - this._SafeStr_1466.y;
         _loc2_._SafeStr_1846 *= 0.98;
         this._SafeStr_460.x *= param1._SafeStr_889;
         this._SafeStr_460.y *= param1._SafeStr_889;
         _loc2_._SafeStr_1234.x += _loc11_ * this._SafeStr_460.x;
         _loc2_._SafeStr_1234.y += _loc11_ * this._SafeStr_460.y;
         _loc2_._SafeStr_1846 += _loc12_ * (_loc8_ * this._SafeStr_460.y - _loc9_ * this._SafeStr_460.x);
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc3_:b2Mat22 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc2_:b2Body = b2internal::_SafeStr_907;
         _loc3_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc6_:Number = this._SafeStr_2646.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
         var _loc7_:Number = this._SafeStr_2646.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
         _loc4_ = _loc3_.col1.x * _loc6_ + _loc3_.col2.x * _loc7_;
         _loc7_ = _loc3_.col1.y * _loc6_ + _loc3_.col2.y * _loc7_;
         _loc6_ = _loc4_;
         var _loc8_:Number = _loc2_._SafeStr_1234.x + -_loc2_._SafeStr_1846 * _loc7_;
         var _loc9_:Number = _loc2_._SafeStr_1234.y + _loc2_._SafeStr_1846 * _loc6_;
         _loc3_ = this._SafeStr_399;
         _loc4_ = _loc8_ + this._SafeStr_525 * this._SafeStr_1760.x + this._SafeStr_860 * this._SafeStr_460.x;
         _loc5_ = _loc9_ + this._SafeStr_525 * this._SafeStr_1760.y + this._SafeStr_860 * this._SafeStr_460.y;
         var _loc10_:Number = -(_loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_);
         var _loc11_:Number = -(_loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_);
         var _loc12_:Number = this._SafeStr_460.x;
         var _loc13_:Number = this._SafeStr_460.y;
         this._SafeStr_460.x += _loc10_;
         this._SafeStr_460.y += _loc11_;
         var _loc14_:Number = param1._SafeStr_1607 * this._SafeStr_1345;
         if(this._SafeStr_460._SafeStr_731() > _loc14_ * _loc14_)
         {
            this._SafeStr_460.Multiply(_loc14_ / this._SafeStr_460.Length());
         }
         _loc10_ = this._SafeStr_460.x - _loc12_;
         _loc11_ = this._SafeStr_460.y - _loc13_;
         _loc2_._SafeStr_1234.x += _loc2_._SafeStr_615 * _loc10_;
         _loc2_._SafeStr_1234.y += _loc2_._SafeStr_615 * _loc11_;
         _loc2_._SafeStr_1846 += _loc2_._SafeStr_882 * (_loc6_ * _loc11_ - _loc7_ * _loc10_);
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
 * @identifier _SafeStr_332 = "_-IY"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_414 = "_-Ex"
 * @identifier _SafeStr_439 = "_-bp"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_525 = "_-RK"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_655 = "_-OI"
 * @identifier _SafeStr_672 = "_-RF"
 * @identifier _SafeStr_731 = "_-Fl"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_860 = "_-j0"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_924 = "_-Z"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1056 = "_-Cj"
 * @identifier _SafeStr_1067 = "_-SF"
 * @identifier _SafeStr_1131 = "_-Pr"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1345 = "_-Av"
 * @identifier _SafeStr_1466 = "_-9V"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1760 = "_-e3"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1885 = "_-OU"
 * @identifier _SafeStr_1893 = "_-hc"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2035 = "_-ZE"
 * @identifier _SafeStr_2130 = "_-gz"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2158 = "_-7s"
 * @identifier _SafeStr_2268 = "_-Xz"
 * @identifier _SafeStr_2335 = "_-Mv"
 * @identifier _SafeStr_2352 = "_-aC"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2378 = "_-2y"
 * @identifier _SafeStr_2490 = "_-9J"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2643 = "_-Y6"
 * @identifier _SafeStr_2646 = "_-10"
 */
