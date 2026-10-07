package _SafePkg_19
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_20.*;
   import _SafePkg_8.*;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var _SafeStr_2074:uint = 1;
      
      b2internal static var _SafeStr_1978:uint = 2;
      
      b2internal static var _SafeStr_2131:uint = 4;
      
      b2internal static var _SafeStr_1729:uint = 8;
      
      b2internal static var _SafeStr_985:uint = 16;
      
      b2internal static var _SafeStr_1889:uint = 32;
      
      b2internal static var _SafeStr_307:uint = 64;
      
      private static var _SafeStr_1726:b2TOIInput = new b2TOIInput();
      
      b2internal var _SafeStr_1043:uint;
      
      b2internal var _SafeStr_2380:b2Contact;
      
      b2internal var _SafeStr_2195:b2Contact;
      
      b2internal var _SafeStr_2382:b2ContactEdge = new b2ContactEdge();
      
      b2internal var _SafeStr_2085:b2ContactEdge = new b2ContactEdge();
      
      b2internal var _SafeStr_1281:b2Fixture;
      
      b2internal var _SafeStr_384:b2Fixture;
      
      b2internal var _SafeStr_1059:b2Manifold = new b2Manifold();
      
      b2internal var _SafeStr_309:b2Manifold = new b2Manifold();
      
      b2internal var _SafeStr_1108:Number;
      
      public function b2Contact()
      {
         super();
      }
      
      public function _SafeStr_456() : b2Manifold
      {
         return this._SafeStr_1059;
      }
      
      public function _SafeStr_1364(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this._SafeStr_1281.GetBody();
         var _loc3_:b2Body = this._SafeStr_384.GetBody();
         var _loc4_:b2Shape = this._SafeStr_1281._SafeStr_745();
         var _loc5_:b2Shape = this._SafeStr_384._SafeStr_745();
         param1._SafeStr_2347(this._SafeStr_1059,_loc2_.GetTransform(),_loc4_._SafeStr_874,_loc3_.GetTransform(),_loc5_._SafeStr_874);
      }
      
      public function IsTouching() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_985) == b2internal::_SafeStr_985;
      }
      
      public function _SafeStr_2373() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_1978) == b2internal::_SafeStr_1978;
      }
      
      public function _SafeStr_1673(param1:Boolean) : void
      {
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_2074;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_2074;
         }
      }
      
      public function _SafeStr_1563() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_2074) == b2internal::_SafeStr_2074;
      }
      
      public function _SafeStr_983(param1:Boolean) : void
      {
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_1889;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_1889;
         }
      }
      
      public function _SafeStr_1618() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_1889) == b2internal::_SafeStr_1889;
      }
      
      public function _SafeStr_1023() : b2Contact
      {
         return this._SafeStr_2195;
      }
      
      public function _SafeStr_665() : b2Fixture
      {
         return this._SafeStr_1281;
      }
      
      public function _SafeStr_2320() : b2Fixture
      {
         return this._SafeStr_384;
      }
      
      public function FlagForFiltering() : void
      {
         this._SafeStr_1043 |= b2internal::_SafeStr_307;
      }
      
      b2internal function _SafeStr_944(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this._SafeStr_1043 = b2internal::_SafeStr_1889;
         if(!param1 || !param2)
         {
            this._SafeStr_1281 = null;
            this._SafeStr_384 = null;
            return;
         }
         if(param1._SafeStr_1563() || param2._SafeStr_1563())
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_2074;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_._SafeStr_978() != b2Body.b2_dynamicBody || _loc3_._SafeStr_1467() || _loc4_._SafeStr_978() != b2Body.b2_dynamicBody || _loc4_._SafeStr_1467())
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_1978;
         }
         this._SafeStr_1281 = param1;
         this._SafeStr_384 = param2;
         this._SafeStr_1059._SafeStr_848 = 0;
         this._SafeStr_2380 = null;
         this._SafeStr_2195 = null;
         this._SafeStr_2382._SafeStr_919 = null;
         this._SafeStr_2382._SafeStr_2150 = null;
         this._SafeStr_2382.next = null;
         this._SafeStr_2382.other = null;
         this._SafeStr_2085._SafeStr_919 = null;
         this._SafeStr_2085._SafeStr_2150 = null;
         this._SafeStr_2085.next = null;
         this._SafeStr_2085.other = null;
      }
      
      b2internal function _SafeStr_2614(param1:b2ContactListener) : void
      {
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this._SafeStr_309;
         this._SafeStr_309 = this._SafeStr_1059;
         this._SafeStr_1059 = _loc2_;
         this._SafeStr_1043 |= b2internal::_SafeStr_1889;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = (this._SafeStr_1043 & b2internal::_SafeStr_985) == b2internal::_SafeStr_985;
         var _loc5_:b2Body = this._SafeStr_1281._SafeStr_2654;
         var _loc6_:b2Body = this._SafeStr_384._SafeStr_2654;
         var _loc7_:Boolean = this._SafeStr_1281._SafeStr_930._SafeStr_444(this._SafeStr_384._SafeStr_930);
         if(this._SafeStr_1043 & b2internal::_SafeStr_2074)
         {
            if(_loc7_)
            {
               _loc8_ = this._SafeStr_1281._SafeStr_745();
               _loc9_ = this._SafeStr_384._SafeStr_745();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = b2Shape._SafeStr_444(_loc8_,_loc10_,_loc9_,_loc11_);
            }
            this._SafeStr_1059._SafeStr_848 = 0;
         }
         else
         {
            if(_loc5_._SafeStr_978() != b2Body.b2_dynamicBody || _loc5_._SafeStr_1467() || _loc6_._SafeStr_978() != b2Body.b2_dynamicBody || _loc6_._SafeStr_1467())
            {
               this._SafeStr_1043 |= b2internal::_SafeStr_1978;
            }
            else
            {
               this._SafeStr_1043 &= ~b2internal::_SafeStr_1978;
            }
            if(_loc7_)
            {
               this._SafeStr_1939();
               _loc3_ = this._SafeStr_1059._SafeStr_848 > 0;
               _loc12_ = 0;
               while(_loc12_ < this._SafeStr_1059._SafeStr_848)
               {
                  _loc13_ = this._SafeStr_1059._SafeStr_2110[_loc12_];
                  _loc13_._SafeStr_2423 = 0;
                  _loc13_._SafeStr_1931 = 0;
                  _loc14_ = _loc13_._SafeStr_1658;
                  _loc15_ = 0;
                  while(_loc15_ < this._SafeStr_309._SafeStr_848)
                  {
                     _loc16_ = this._SafeStr_309._SafeStr_2110[_loc15_];
                     if(_loc16_._SafeStr_1658.key == _loc14_.key)
                     {
                        _loc13_._SafeStr_2423 = _loc16_._SafeStr_2423;
                        _loc13_._SafeStr_1931 = _loc16_._SafeStr_1931;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this._SafeStr_1059._SafeStr_848 = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_._SafeStr_1589(true);
               _loc6_._SafeStr_1589(true);
            }
         }
         if(_loc3_)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_985;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_985;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1._SafeStr_2319(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1._SafeStr_586(this);
         }
         if((this._SafeStr_1043 & b2internal::_SafeStr_2074) == 0)
         {
            param1._SafeStr_1328(this,this._SafeStr_309);
         }
      }
      
      b2internal function _SafeStr_1939() : void
      {
      }
      
      b2internal function _SafeStr_1412(param1:b2Sweep, param2:b2Sweep) : Number
      {
         _SafeStr_1726._SafeStr_1619.Set(this._SafeStr_1281._SafeStr_745());
         _SafeStr_1726._SafeStr_1814.Set(this._SafeStr_384._SafeStr_745());
         _SafeStr_1726._SafeStr_527 = param1;
         _SafeStr_1726._SafeStr_1476 = param2;
         _SafeStr_1726._SafeStr_2546 = b2Settings.b2_linearSlop;
         return b2TimeOfImpact._SafeStr_1822(_SafeStr_1726);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_307 = "_-D5"
 * @identifier _SafeStr_309 = "_-Qd"
 * @identifier _SafeStr_384 = "_-Wi"
 * @identifier _SafeStr_444 = "_-86"
 * @identifier _SafeStr_456 = "_-Xh"
 * @identifier _SafeStr_527 = "_-e7"
 * @identifier _SafeStr_586 = "_-SL"
 * @identifier _SafeStr_665 = "_-DF"
 * @identifier _SafeStr_745 = "_-KP"
 * @identifier _SafeStr_848 = "_-UK"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_919 = "_-bD"
 * @identifier _SafeStr_930 = "_-Hj"
 * @identifier _SafeStr_944 = "_-3"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_983 = "_-C1"
 * @identifier _SafeStr_985 = "_-29"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1043 = "_-iv"
 * @identifier _SafeStr_1059 = "_-c"
 * @identifier _SafeStr_1108 = "_-a8"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1328 = "_-5A"
 * @identifier _SafeStr_1364 = "_-e"
 * @identifier _SafeStr_1412 = "_-cX"
 * @identifier _SafeStr_1467 = "_-Jr"
 * @identifier _SafeStr_1476 = "_-4s"
 * @identifier _SafeStr_1563 = "_-XH"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1618 = "_-1N"
 * @identifier _SafeStr_1619 = "_-4F"
 * @identifier _SafeStr_1658 = "_-XE"
 * @identifier _SafeStr_1673 = "_-eD"
 * @identifier _SafeStr_1726 = "_-Qa"
 * @identifier _SafeStr_1729 = "_-BQ"
 * @identifier _SafeStr_1814 = "_-FJ"
 * @identifier _SafeStr_1822 = "_-3c"
 * @identifier _SafeStr_1889 = "_-eH"
 * @identifier _SafeStr_1931 = "_-At"
 * @identifier _SafeStr_1939 = "_-XJ"
 * @identifier _SafeStr_1978 = "_-9W"
 * @identifier _SafeStr_2074 = "_-3W"
 * @identifier _SafeStr_2085 = "_-7N"
 * @identifier _SafeStr_2110 = "_-Zp"
 * @identifier _SafeStr_2131 = "_-5R"
 * @identifier _SafeStr_2150 = "_-1O"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2319 = "_-Z5"
 * @identifier _SafeStr_2320 = "_-ga"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2373 = "_-Ru"
 * @identifier _SafeStr_2380 = "_-36"
 * @identifier _SafeStr_2382 = "_-ge"
 * @identifier _SafeStr_2423 = "_-1A"
 * @identifier _SafeStr_2546 = "_-Tb"
 * @identifier _SafeStr_2614 = "_-Yf"
 * @identifier _SafeStr_2654 = "_-jK"
 */
