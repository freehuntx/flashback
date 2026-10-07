package _SafePkg_0
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_20.*;
   import _SafePkg_9.*;
   import _SafePkg_19.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var _SafeStr_475:b2ContactImpulse = new b2ContactImpulse();
      
      private var _SafeStr_1004:*;
      
      private var _SafeStr_1452:b2ContactListener;
      
      private var _SafeStr_1693:b2ContactSolver;
      
      b2internal var _SafeStr_940:Vector.<b2Body>;
      
      b2internal var _SafeStr_1396:Vector.<b2Contact>;
      
      b2internal var _SafeStr_1786:Vector.<b2Joint>;
      
      b2internal var _SafeStr_498:int;
      
      b2internal var _SafeStr_659:int;
      
      b2internal var _SafeStr_493:int;
      
      private var _SafeStr_374:int;
      
      b2internal var _SafeStr_1799:int;
      
      b2internal var _SafeStr_1417:int;
      
      public function b2Island()
      {
         super();
         this._SafeStr_940 = new Vector.<b2Body>();
         this._SafeStr_1396 = new Vector.<b2Contact>();
         this._SafeStr_1786 = new Vector.<b2Joint>();
      }
      
      public function _SafeStr_2347(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this._SafeStr_374 = param1;
         this._SafeStr_1799 = param2;
         this._SafeStr_1417 = param3;
         this._SafeStr_498 = 0;
         this._SafeStr_493 = 0;
         this._SafeStr_659 = 0;
         this._SafeStr_1004 = param4;
         this._SafeStr_1452 = param5;
         this._SafeStr_1693 = param6;
         _loc7_ = int(this._SafeStr_940.length);
         while(_loc7_ < param1)
         {
            this._SafeStr_940[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = int(this._SafeStr_1396.length);
         while(_loc7_ < param2)
         {
            this._SafeStr_1396[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = int(this._SafeStr_1786.length);
         while(_loc7_ < param3)
         {
            this._SafeStr_1786[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function _SafeStr_1836() : void
      {
         this._SafeStr_498 = 0;
         this._SafeStr_493 = 0;
         this._SafeStr_659 = 0;
      }
      
      public function _SafeStr_761(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_498)
         {
            _loc6_ = this._SafeStr_940[_loc4_];
            if(_loc6_._SafeStr_978() == b2Body.b2_dynamicBody)
            {
               _loc6_._SafeStr_1234.x += param1._SafeStr_1607 * (param2.x + _loc6_._SafeStr_615 * _loc6_._SafeStr_616.x);
               _loc6_._SafeStr_1234.y += param1._SafeStr_1607 * (param2.y + _loc6_._SafeStr_615 * _loc6_._SafeStr_616.y);
               _loc6_._SafeStr_1846 += param1._SafeStr_1607 * _loc6_._SafeStr_882 * _loc6_._SafeStr_1515;
               _loc6_._SafeStr_1234.Multiply(b2Math._SafeStr_392(1 - param1._SafeStr_1607 * _loc6_.m_linearDamping,0,1));
               _loc6_._SafeStr_1846 *= b2Math._SafeStr_392(1 - param1._SafeStr_1607 * _loc6_.m_angularDamping,0,1);
            }
            _loc4_++;
         }
         this._SafeStr_1693._SafeStr_2347(param1,this._SafeStr_1396,this._SafeStr_493,this._SafeStr_1004);
         var _loc8_:b2ContactSolver = this._SafeStr_1693;
         _loc8_._SafeStr_849(param1);
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_659)
         {
            _loc7_ = this._SafeStr_1786[_loc4_];
            _loc7_._SafeStr_849(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1._SafeStr_1064)
         {
            _loc5_ = 0;
            while(_loc5_ < this._SafeStr_659)
            {
               _loc7_ = this._SafeStr_1786[_loc5_];
               _loc7_._SafeStr_1028(param1);
               _loc5_++;
            }
            _loc8_._SafeStr_1028();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_659)
         {
            _loc7_ = this._SafeStr_1786[_loc4_];
            _loc7_._SafeStr_938();
            _loc4_++;
         }
         _loc8_._SafeStr_938();
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_498)
         {
            _loc6_ = this._SafeStr_940[_loc4_];
            if(_loc6_._SafeStr_978() != b2Body.b2_staticBody)
            {
               _loc9_ = param1._SafeStr_1607 * _loc6_._SafeStr_1234.x;
               _loc10_ = param1._SafeStr_1607 * _loc6_._SafeStr_1234.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_._SafeStr_1234.Normalize();
                  _loc6_._SafeStr_1234.x *= b2Settings.b2_maxTranslation * param1._SafeStr_2148;
                  _loc6_._SafeStr_1234.y *= b2Settings.b2_maxTranslation * param1._SafeStr_2148;
               }
               _loc11_ = param1._SafeStr_1607 * _loc6_._SafeStr_1846;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_._SafeStr_1846 < 0)
                  {
                     _loc6_._SafeStr_1846 = -b2Settings.b2_maxRotation * param1._SafeStr_2148;
                  }
                  else
                  {
                     _loc6_._SafeStr_1846 = b2Settings.b2_maxRotation * param1._SafeStr_2148;
                  }
               }
               _loc6_._SafeStr_2025.c0._SafeStr_1679(_loc6_._SafeStr_2025.c);
               _loc6_._SafeStr_2025.a0 = _loc6_._SafeStr_2025.a;
               _loc6_._SafeStr_2025.c.x += param1._SafeStr_1607 * _loc6_._SafeStr_1234.x;
               _loc6_._SafeStr_2025.c.y += param1._SafeStr_1607 * _loc6_._SafeStr_1234.y;
               _loc6_._SafeStr_2025.a += param1._SafeStr_1607 * _loc6_._SafeStr_1846;
               _loc6_._SafeStr_2018();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1._SafeStr_1492)
         {
            _loc12_ = _loc8_._SafeStr_547(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this._SafeStr_659)
            {
               _loc7_ = this._SafeStr_1786[_loc5_];
               _loc14_ = _loc7_._SafeStr_547(b2Settings.b2_contactBaumgarte);
               _loc13_ &&= _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this._SafeStr_455(_loc8_._SafeStr_1320);
         if(param3)
         {
            _loc15_ = Number(Number.MAX_VALUE);
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this._SafeStr_498)
            {
               _loc6_ = this._SafeStr_940[_loc4_];
               if(_loc6_._SafeStr_978() != b2Body.b2_staticBody)
               {
                  if((_loc6_._SafeStr_1043 & b2Body._SafeStr_2219) == 0)
                  {
                     _loc6_._SafeStr_584 = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_._SafeStr_1043 & b2Body._SafeStr_2219) == 0 || _loc6_._SafeStr_1846 * _loc6_._SafeStr_1846 > _loc17_ || b2Math._SafeCls_184(_loc6_._SafeStr_1234,_loc6_._SafeStr_1234) > _loc16_)
                  {
                     _loc6_._SafeStr_584 = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_._SafeStr_584 += param1._SafeStr_1607;
                     _loc15_ = b2Math._SafeStr_1704(_loc15_,_loc6_._SafeStr_584);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this._SafeStr_498)
               {
                  _loc6_ = this._SafeStr_940[_loc4_];
                  _loc6_._SafeStr_1589(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function _SafeStr_1386(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         this._SafeStr_1693._SafeStr_2347(param1,this._SafeStr_1396,this._SafeStr_493,this._SafeStr_1004);
         var _loc4_:b2ContactSolver = this._SafeStr_1693;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_659)
         {
            this._SafeStr_1786[_loc2_]._SafeStr_849(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1._SafeStr_1064)
         {
            _loc4_._SafeStr_1028();
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_659)
            {
               this._SafeStr_1786[_loc3_]._SafeStr_1028(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_498)
         {
            _loc6_ = this._SafeStr_940[_loc2_];
            if(_loc6_._SafeStr_978() != b2Body.b2_staticBody)
            {
               _loc7_ = param1._SafeStr_1607 * _loc6_._SafeStr_1234.x;
               _loc8_ = param1._SafeStr_1607 * _loc6_._SafeStr_1234.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_._SafeStr_1234.Normalize();
                  _loc6_._SafeStr_1234.x *= b2Settings.b2_maxTranslation * param1._SafeStr_2148;
                  _loc6_._SafeStr_1234.y *= b2Settings.b2_maxTranslation * param1._SafeStr_2148;
               }
               _loc9_ = param1._SafeStr_1607 * _loc6_._SafeStr_1846;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_._SafeStr_1846 < 0)
                  {
                     _loc6_._SafeStr_1846 = -b2Settings.b2_maxRotation * param1._SafeStr_2148;
                  }
                  else
                  {
                     _loc6_._SafeStr_1846 = b2Settings.b2_maxRotation * param1._SafeStr_2148;
                  }
               }
               _loc6_._SafeStr_2025.c0._SafeStr_1679(_loc6_._SafeStr_2025.c);
               _loc6_._SafeStr_2025.a0 = _loc6_._SafeStr_2025.a;
               _loc6_._SafeStr_2025.c.x += param1._SafeStr_1607 * _loc6_._SafeStr_1234.x;
               _loc6_._SafeStr_2025.c.y += param1._SafeStr_1607 * _loc6_._SafeStr_1234.y;
               _loc6_._SafeStr_2025.a += param1._SafeStr_1607 * _loc6_._SafeStr_1846;
               _loc6_._SafeStr_2018();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1._SafeStr_1492)
         {
            _loc10_ = _loc4_._SafeStr_547(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_659)
            {
               _loc12_ = this._SafeStr_1786[_loc3_]._SafeStr_547(b2Settings.b2_contactBaumgarte);
               _loc11_ &&= _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this._SafeStr_455(_loc4_._SafeStr_1320);
      }
      
      public function _SafeStr_455(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this._SafeStr_1452 == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_493)
         {
            _loc3_ = this._SafeStr_1396[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_._SafeStr_1033)
            {
               _SafeStr_475.normalImpulses[_loc5_] = _loc4_._SafeStr_2095[_loc5_].normalImpulse;
               _SafeStr_475._SafeStr_2630[_loc5_] = _loc4_._SafeStr_2095[_loc5_]._SafeStr_1765;
               _loc5_++;
            }
            this._SafeStr_1452._SafeStr_2433(_loc3_,_SafeStr_475);
            _loc2_++;
         }
      }
      
      public function AddBody(param1:b2Body) : void
      {
         param1._SafeStr_2226 = this._SafeStr_498;
         this._SafeStr_940[this._SafeStr_498++] = param1;
      }
      
      public function _SafeStr_698(param1:b2Contact) : void
      {
         this._SafeStr_1396[this._SafeStr_493++] = param1;
      }
      
      public function _SafeStr_466(param1:b2Joint) : void
      {
         this._SafeStr_1786[this._SafeStr_659++] = param1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_374 = "_-NN"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_455 = "_-Fe"
 * @identifier _SafeStr_466 = "_-OH"
 * @identifier _SafeStr_475 = "_-19"
 * @identifier _SafeStr_493 = "_-Xy"
 * @identifier _SafeStr_498 = "_-Xn"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_584 = "_-aX"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_616 = "_-3y"
 * @identifier _SafeStr_659 = "_-dZ"
 * @identifier _SafeStr_698 = "_-aL"
 * @identifier _SafeStr_761 = "_-EF"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_938 = "_-Dg"
 * @identifier _SafeStr_940 = "_-7U"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1004 = "_-3C"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1033 = "_-i3"
 * @identifier _SafeStr_1043 = "_-iv"
 * @identifier _SafeStr_1064 = "_-CY"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1320 = "_-Np"
 * @identifier _SafeStr_1386 = "_-Ni"
 * @identifier _SafeStr_1396 = "_-BZ"
 * @identifier _SafeStr_1417 = "_-gl"
 * @identifier _SafeStr_1452 = "_-TP"
 * @identifier _SafeStr_1492 = "_-RC"
 * @identifier _SafeStr_1515 = "_-U4"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1693 = "_-A2"
 * @identifier _SafeStr_1704 = "_-RD"
 * @identifier _SafeStr_1765 = "_-Qo"
 * @identifier _SafeStr_1786 = "_-Jx"
 * @identifier _SafeStr_1799 = "_-3D"
 * @identifier _SafeStr_1836 = "_-AX"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2095 = "_-Pj"
 * @identifier _SafeStr_2148 = "_-G8"
 * @identifier _SafeStr_2219 = "_-Na"
 * @identifier _SafeStr_2226 = "_-Ms"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2433 = "_-EL"
 * @identifier _SafeStr_2630 = "_-TF"
 */
