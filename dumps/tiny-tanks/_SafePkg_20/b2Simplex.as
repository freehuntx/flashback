package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_8.*;
   
   internal class b2Simplex
   {
      
      public var m_v1:b2SimplexVertex = new b2SimplexVertex();
      
      public var m_v2:b2SimplexVertex = new b2SimplexVertex();
      
      public var m_v3:b2SimplexVertex = new b2SimplexVertex();
      
      public var _SafeStr_447:Vector.<b2SimplexVertex> = new Vector.<b2SimplexVertex>(3);
      
      public var _SafeStr_2284:int;
      
      public function b2Simplex()
      {
         super();
         this._SafeStr_447[0] = this.m_v1;
         this._SafeStr_447[1] = this.m_v2;
         this._SafeStr_447[2] = this.m_v3;
      }
      
      public function _SafeStr_2579(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         b2Settings.b2Assert(0 <= param1.count && param1.count <= 3);
         this._SafeStr_2284 = param1.count;
         var _loc8_:Vector.<b2SimplexVertex> = this._SafeStr_447;
         var _loc9_:int = 0;
         while(_loc9_ < this._SafeStr_2284)
         {
            _loc10_ = _loc8_[_loc9_];
            _loc10_._SafeStr_1143 = param1._SafeStr_1143[_loc9_];
            _loc10_._SafeStr_1512 = param1._SafeStr_1512[_loc9_];
            _loc6_ = param2._SafeStr_1254(_loc10_._SafeStr_1143);
            _loc7_ = param4._SafeStr_1254(_loc10_._SafeStr_1512);
            _loc10_._SafeStr_2507 = b2Math._SafeStr_457(param3,_loc6_);
            _loc10_._SafeStr_2172 = b2Math._SafeStr_457(param5,_loc7_);
            _loc10_.w = b2Math._SafeStr_2442(_loc10_._SafeStr_2172,_loc10_._SafeStr_2507);
            _loc10_.a = 0;
            _loc9_++;
         }
         if(this._SafeStr_2284 > 1)
         {
            _loc11_ = param1._SafeStr_2107;
            _loc12_ = this._SafeStr_793();
            if(_loc12_ < 0.5 * _loc11_ || 2 * _loc11_ < _loc12_ || _loc12_ < Number.MIN_VALUE)
            {
               this._SafeStr_2284 = 0;
            }
         }
         if(this._SafeStr_2284 == 0)
         {
            _loc10_ = _loc8_[0];
            _loc10_._SafeStr_1143 = 0;
            _loc10_._SafeStr_1512 = 0;
            _loc6_ = param2._SafeStr_1254(0);
            _loc7_ = param4._SafeStr_1254(0);
            _loc10_._SafeStr_2507 = b2Math._SafeStr_457(param3,_loc6_);
            _loc10_._SafeStr_2172 = b2Math._SafeStr_457(param5,_loc7_);
            _loc10_.w = b2Math._SafeStr_2442(_loc10_._SafeStr_2172,_loc10_._SafeStr_2507);
            this._SafeStr_2284 = 1;
         }
      }
      
      public function _SafeStr_1532(param1:b2SimplexCache) : void
      {
         param1._SafeStr_2107 = this._SafeStr_793();
         param1.count = uint(this._SafeStr_2284);
         var _loc2_:Vector.<b2SimplexVertex> = this._SafeStr_447;
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_2284)
         {
            param1._SafeStr_1143[_loc3_] = uint(_loc2_[_loc3_]._SafeStr_1143);
            param1._SafeStr_1512[_loc3_] = uint(_loc2_[_loc3_]._SafeStr_1512);
            _loc3_++;
         }
      }
      
      public function _SafeStr_516() : b2Vec2
      {
         var _loc1_:b2Vec2 = null;
         var _loc2_:Number = NaN;
         switch(this._SafeStr_2284)
         {
            case 1:
               return this.m_v1.w._SafeStr_714();
            case 2:
               _loc1_ = b2Math._SafeStr_2442(this.m_v2.w,this.m_v1.w);
               _loc2_ = b2Math._SafeStr_1001(_loc1_,this.m_v1.w._SafeStr_714());
               if(_loc2_ > 0)
               {
                  return b2Math._SafeStr_429(1,_loc1_);
               }
               return b2Math._SafeStr_2600(_loc1_,1);
               break;
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function _SafeStr_1438() : b2Vec2
      {
         switch(this._SafeStr_2284)
         {
            case 0:
               b2Settings.b2Assert(false);
               return new b2Vec2();
            case 1:
               return this.m_v1.w;
            case 2:
               return new b2Vec2(this.m_v1.a * this.m_v1.w.x + this.m_v2.a * this.m_v2.w.x,this.m_v1.a * this.m_v1.w.y + this.m_v2.a * this.m_v2.w.y);
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function _SafeStr_1495(param1:b2Vec2, param2:b2Vec2) : void
      {
         switch(this._SafeStr_2284)
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            case 1:
               param1._SafeStr_1679(this.m_v1._SafeStr_2507);
               param2._SafeStr_1679(this.m_v1._SafeStr_2172);
               break;
            case 2:
               param1.x = this.m_v1.a * this.m_v1._SafeStr_2507.x + this.m_v2.a * this.m_v2._SafeStr_2507.x;
               param1.y = this.m_v1.a * this.m_v1._SafeStr_2507.y + this.m_v2.a * this.m_v2._SafeStr_2507.y;
               param2.x = this.m_v1.a * this.m_v1._SafeStr_2172.x + this.m_v2.a * this.m_v2._SafeStr_2172.x;
               param2.y = this.m_v1.a * this.m_v1._SafeStr_2172.y + this.m_v2.a * this.m_v2._SafeStr_2172.y;
               break;
            case 3:
               param2.x = param1.x = this.m_v1.a * this.m_v1._SafeStr_2507.x + this.m_v2.a * this.m_v2._SafeStr_2507.x + this.m_v3.a * this.m_v3._SafeStr_2507.x;
               param2.y = param1.y = this.m_v1.a * this.m_v1._SafeStr_2507.y + this.m_v2.a * this.m_v2._SafeStr_2507.y + this.m_v3.a * this.m_v3._SafeStr_2507.y;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function _SafeStr_793() : Number
      {
         switch(this._SafeStr_2284)
         {
            case 0:
               b2Settings.b2Assert(false);
               return 0;
            case 1:
               return 0;
            case 2:
               return b2Math._SafeStr_2442(this.m_v1.w,this.m_v2.w).Length();
            case 3:
               return b2Math._SafeStr_1001(b2Math._SafeStr_2442(this.m_v2.w,this.m_v1.w),b2Math._SafeStr_2442(this.m_v3.w,this.m_v1.w));
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
      
      public function Solve2() : void
      {
         var _loc1_:b2Vec2 = this.m_v1.w;
         var _loc2_:b2Vec2 = this.m_v2.w;
         var _loc3_:b2Vec2 = b2Math._SafeStr_2442(_loc2_,_loc1_);
         var _loc4_:Number = -(_loc1_.x * _loc3_.x + _loc1_.y * _loc3_.y);
         if(_loc4_ <= 0)
         {
            this.m_v1.a = 1;
            this._SafeStr_2284 = 1;
            return;
         }
         var _loc5_:Number = _loc2_.x * _loc3_.x + _loc2_.y * _loc3_.y;
         if(_loc5_ <= 0)
         {
            this.m_v2.a = 1;
            this._SafeStr_2284 = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         var _loc6_:Number = 1 / (_loc5_ + _loc4_);
         this.m_v1.a = _loc5_ * _loc6_;
         this.m_v2.a = _loc4_ * _loc6_;
         this._SafeStr_2284 = 2;
      }
      
      public function Solve3() : void
      {
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.w;
         var _loc2_:b2Vec2 = this.m_v2.w;
         var _loc3_:b2Vec2 = this.m_v3.w;
         var _loc4_:b2Vec2 = b2Math._SafeStr_2442(_loc2_,_loc1_);
         var _loc5_:Number = b2Math._SafeCls_184(_loc1_,_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = b2Math._SafeCls_184(_loc2_,_loc4_);
         var _loc8_:Number = -_loc5_;
         var _loc9_:b2Vec2 = b2Math._SafeStr_2442(_loc3_,_loc1_);
         var _loc10_:Number = b2Math._SafeCls_184(_loc1_,_loc9_);
         var _loc11_:Number;
         var _loc12_:Number = _loc11_ = b2Math._SafeCls_184(_loc3_,_loc9_);
         var _loc13_:Number = -_loc10_;
         var _loc14_:b2Vec2 = b2Math._SafeStr_2442(_loc3_,_loc2_);
         var _loc15_:Number = b2Math._SafeCls_184(_loc2_,_loc14_);
         var _loc16_:Number;
         var _loc17_:Number = _loc16_ = b2Math._SafeCls_184(_loc3_,_loc14_);
         var _loc18_:Number = -_loc15_;
         var _loc19_:Number = b2Math._SafeStr_1001(_loc4_,_loc9_);
         var _loc20_:Number = _loc19_ * b2Math._SafeStr_1001(_loc2_,_loc3_);
         var _loc21_:Number = _loc19_ * b2Math._SafeStr_1001(_loc3_,_loc1_);
         var _loc22_:Number = _loc19_ * b2Math._SafeStr_1001(_loc1_,_loc2_);
         if(_loc8_ <= 0 && _loc13_ <= 0)
         {
            this.m_v1.a = 1;
            this._SafeStr_2284 = 1;
            return;
         }
         if(_loc7_ > 0 && _loc8_ > 0 && _loc22_ <= 0)
         {
            _loc24_ = 1 / (_loc7_ + _loc8_);
            this.m_v1.a = _loc7_ * _loc24_;
            this.m_v2.a = _loc8_ * _loc24_;
            this._SafeStr_2284 = 2;
            return;
         }
         if(_loc12_ > 0 && _loc13_ > 0 && _loc21_ <= 0)
         {
            _loc25_ = 1 / (_loc12_ + _loc13_);
            this.m_v1.a = _loc12_ * _loc25_;
            this.m_v3.a = _loc13_ * _loc25_;
            this._SafeStr_2284 = 2;
            this.m_v2.Set(this.m_v3);
            return;
         }
         if(_loc7_ <= 0 && _loc18_ <= 0)
         {
            this.m_v2.a = 1;
            this._SafeStr_2284 = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         if(_loc12_ <= 0 && _loc17_ <= 0)
         {
            this.m_v3.a = 1;
            this._SafeStr_2284 = 1;
            this.m_v1.Set(this.m_v3);
            return;
         }
         if(_loc17_ > 0 && _loc18_ > 0 && _loc20_ <= 0)
         {
            _loc26_ = 1 / (_loc17_ + _loc18_);
            this.m_v2.a = _loc17_ * _loc26_;
            this.m_v3.a = _loc18_ * _loc26_;
            this._SafeStr_2284 = 2;
            this.m_v1.Set(this.m_v3);
            return;
         }
         var _loc23_:Number = 1 / (_loc20_ + _loc21_ + _loc22_);
         this.m_v1.a = _loc20_ * _loc23_;
         this.m_v2.a = _loc21_ * _loc23_;
         this.m_v3.a = _loc22_ * _loc23_;
         this._SafeStr_2284 = 3;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_429 = "_-X4"
 * @identifier _SafeStr_447 = "_-5b"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_516 = "_-cs"
 * @identifier _SafeStr_714 = "_-dS"
 * @identifier _SafeStr_793 = "_-B4"
 * @identifier _SafeStr_1001 = "_-HQ"
 * @identifier _SafeStr_1143 = "_-FK"
 * @identifier _SafeStr_1254 = "_-Cr"
 * @identifier _SafeStr_1438 = "_-8v"
 * @identifier _SafeStr_1495 = "_-11"
 * @identifier _SafeStr_1512 = "_-fY"
 * @identifier _SafeStr_1532 = "_-F"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_2107 = "_-UP"
 * @identifier _SafeStr_2172 = "_-cN"
 * @identifier _SafeStr_2284 = "_-VU"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2507 = "_-JZ"
 * @identifier _SafeStr_2579 = "_-2d"
 * @identifier _SafeStr_2600 = "_-XM"
 */
