package _SafePkg_19
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_20.*;
   import _SafePkg_8.b2Shape;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var _SafeStr_601:b2WorldManifold = new b2WorldManifold();
      
      private static var _SafeStr_2537:b2PositionSolverManifold = new b2PositionSolverManifold();
      
      private var _SafeStr_1207:b2TimeStep = new b2TimeStep();
      
      private var _SafeStr_1004:*;
      
      b2internal var _SafeStr_1320:Vector.<b2ContactConstraint> = new Vector.<b2ContactConstraint>();
      
      private var _SafeStr_2001:int;
      
      public function b2ContactSolver()
      {
         super();
      }
      
      public function _SafeStr_2347(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         var _loc5_:b2Contact = null;
         var _loc6_:int = 0;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc11_:b2Shape = null;
         var _loc12_:b2Shape = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:b2Body = null;
         var _loc16_:b2Body = null;
         var _loc17_:b2Manifold = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:b2ContactConstraint = null;
         var _loc29_:uint = 0;
         var _loc30_:b2ManifoldPoint = null;
         var _loc31_:b2ContactConstraintPoint = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:b2ContactConstraintPoint = null;
         var _loc49_:b2ContactConstraintPoint = null;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc61_:Number = NaN;
         this._SafeStr_1207.Set(param1);
         this._SafeStr_1004 = param4;
         this._SafeStr_2001 = param3;
         while(this._SafeStr_1320.length < this._SafeStr_2001)
         {
            this._SafeStr_1320[this._SafeStr_1320.length] = new b2ContactConstraint();
         }
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            _loc5_ = param2[_loc6_];
            _loc9_ = _loc5_._SafeStr_1281;
            _loc10_ = _loc5_._SafeStr_384;
            _loc11_ = _loc9_._SafeStr_1674;
            _loc12_ = _loc10_._SafeStr_1674;
            _loc13_ = _loc11_._SafeStr_874;
            _loc14_ = _loc12_._SafeStr_874;
            _loc15_ = _loc9_._SafeStr_2654;
            _loc16_ = _loc10_._SafeStr_2654;
            _loc17_ = _loc5_._SafeStr_456();
            _loc18_ = b2Settings.b2MixFriction(_loc9_._SafeStr_1833(),_loc10_._SafeStr_1833());
            _loc19_ = b2Settings.b2MixRestitution(_loc9_._SafeStr_1829(),_loc10_._SafeStr_1829());
            _loc20_ = _loc15_._SafeStr_1234.x;
            _loc21_ = _loc15_._SafeStr_1234.y;
            _loc22_ = _loc16_._SafeStr_1234.x;
            _loc23_ = _loc16_._SafeStr_1234.y;
            _loc24_ = _loc15_._SafeStr_1846;
            _loc25_ = _loc16_._SafeStr_1846;
            b2Settings.b2Assert(_loc17_._SafeStr_848 > 0);
            _SafeStr_601._SafeStr_2347(_loc17_,_loc15_._SafeStr_1473,_loc13_,_loc16_._SafeStr_1473,_loc14_);
            _loc26_ = _SafeStr_601._SafeStr_2098.x;
            _loc27_ = _SafeStr_601._SafeStr_2098.y;
            _loc28_ = this._SafeStr_1320[_loc6_];
            _loc28_._SafeStr_1255 = _loc15_;
            _loc28_._SafeStr_1005 = _loc16_;
            _loc28_._SafeStr_991 = _loc17_;
            _loc28_.normal.x = _loc26_;
            _loc28_.normal.y = _loc27_;
            _loc28_._SafeStr_1033 = _loc17_._SafeStr_848;
            _loc28_.friction = _loc18_;
            _loc28_.restitution = _loc19_;
            _loc28_.localPlaneNormal.x = _loc17_.m_localPlaneNormal.x;
            _loc28_.localPlaneNormal.y = _loc17_.m_localPlaneNormal.y;
            _loc28_._SafeStr_2475.x = _loc17_._SafeStr_2485.x;
            _loc28_._SafeStr_2475.y = _loc17_._SafeStr_2485.y;
            _loc28_._SafeStr_417 = _loc13_ + _loc14_;
            _loc28_.type = _loc17_._SafeStr_972;
            _loc29_ = 0;
            while(_loc29_ < _loc28_._SafeStr_1033)
            {
               _loc30_ = _loc17_._SafeStr_2110[_loc29_];
               _loc31_ = _loc28_._SafeStr_2095[_loc29_];
               _loc31_.normalImpulse = _loc30_._SafeStr_2423;
               _loc31_._SafeStr_1765 = _loc30_._SafeStr_1931;
               _loc31_._SafeStr_2475._SafeStr_1679(_loc30_._SafeStr_2485);
               _loc32_ = _loc31_._SafeStr_886.x = _SafeStr_601._SafeStr_2110[_loc29_].x - _loc15_._SafeStr_2025.c.x;
               _loc33_ = _loc31_._SafeStr_886.y = _SafeStr_601._SafeStr_2110[_loc29_].y - _loc15_._SafeStr_2025.c.y;
               _loc34_ = _loc31_._SafeStr_1101.x = _SafeStr_601._SafeStr_2110[_loc29_].x - _loc16_._SafeStr_2025.c.x;
               _loc35_ = _loc31_._SafeStr_1101.y = _SafeStr_601._SafeStr_2110[_loc29_].y - _loc16_._SafeStr_2025.c.y;
               _loc36_ = _loc32_ * _loc27_ - _loc33_ * _loc26_;
               _loc37_ = _loc34_ * _loc27_ - _loc35_ * _loc26_;
               _loc36_ *= _loc36_;
               _loc37_ *= _loc37_;
               _loc38_ = _loc15_._SafeStr_615 + _loc16_._SafeStr_615 + _loc15_._SafeStr_882 * _loc36_ + _loc16_._SafeStr_882 * _loc37_;
               _loc31_.normalMass = 1 / _loc38_;
               _loc39_ = _loc15_._SafeStr_399 * _loc15_._SafeStr_615 + _loc16_._SafeStr_399 * _loc16_._SafeStr_615;
               _loc39_ = _loc39_ + (_loc15_._SafeStr_399 * _loc15_._SafeStr_882 * _loc36_ + _loc16_._SafeStr_399 * _loc16_._SafeStr_882 * _loc37_);
               _loc31_._SafeStr_2207 = 1 / _loc39_;
               _loc40_ = _loc27_;
               _loc41_ = -_loc26_;
               _loc42_ = _loc32_ * _loc41_ - _loc33_ * _loc40_;
               _loc43_ = _loc34_ * _loc41_ - _loc35_ * _loc40_;
               _loc42_ *= _loc42_;
               _loc43_ *= _loc43_;
               _loc44_ = _loc15_._SafeStr_615 + _loc16_._SafeStr_615 + _loc15_._SafeStr_882 * _loc42_ + _loc16_._SafeStr_882 * _loc43_;
               _loc31_._SafeStr_2260 = 1 / _loc44_;
               _loc31_._SafeStr_1647 = 0;
               _loc45_ = _loc22_ + -_loc25_ * _loc35_ - _loc20_ - -_loc24_ * _loc33_;
               _loc46_ = _loc23_ + _loc25_ * _loc34_ - _loc21_ - _loc24_ * _loc32_;
               _loc47_ = _loc28_.normal.x * _loc45_ + _loc28_.normal.y * _loc46_;
               if(_loc47_ < -b2Settings.b2_velocityThreshold)
               {
                  _loc31_._SafeStr_1647 += -_loc28_.restitution * _loc47_;
               }
               _loc29_++;
            }
            if(_loc28_._SafeStr_1033 == 2)
            {
               _loc48_ = _loc28_._SafeStr_2095[0];
               _loc49_ = _loc28_._SafeStr_2095[1];
               _loc50_ = _loc15_._SafeStr_615;
               _loc51_ = _loc15_._SafeStr_882;
               _loc52_ = _loc16_._SafeStr_615;
               _loc53_ = _loc16_._SafeStr_882;
               _loc54_ = _loc48_._SafeStr_886.x * _loc27_ - _loc48_._SafeStr_886.y * _loc26_;
               _loc55_ = _loc48_._SafeStr_1101.x * _loc27_ - _loc48_._SafeStr_1101.y * _loc26_;
               _loc56_ = _loc49_._SafeStr_886.x * _loc27_ - _loc49_._SafeStr_886.y * _loc26_;
               _loc57_ = _loc49_._SafeStr_1101.x * _loc27_ - _loc49_._SafeStr_1101.y * _loc26_;
               _loc58_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc54_ + _loc53_ * _loc55_ * _loc55_;
               _loc59_ = _loc50_ + _loc52_ + _loc51_ * _loc56_ * _loc56_ + _loc53_ * _loc57_ * _loc57_;
               _loc60_ = _loc50_ + _loc52_ + _loc51_ * _loc54_ * _loc56_ + _loc53_ * _loc55_ * _loc57_;
               _loc61_ = 100;
               if(_loc58_ * _loc58_ < _loc61_ * (_loc58_ * _loc59_ - _loc60_ * _loc60_))
               {
                  _loc28_._SafeStr_672.col1.Set(_loc58_,_loc60_);
                  _loc28_._SafeStr_672.col2.Set(_loc60_,_loc59_);
                  _loc28_._SafeStr_672._SafeStr_2352(_loc28_.normalMass);
               }
               else
               {
                  _loc28_._SafeStr_1033 = 1;
               }
            }
            _loc6_++;
         }
      }
      
      public function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         while(_loc5_ < this._SafeStr_2001)
         {
            _loc6_ = this._SafeStr_1320[_loc5_];
            _loc7_ = _loc6_._SafeStr_1255;
            _loc8_ = _loc6_._SafeStr_1005;
            _loc9_ = _loc7_._SafeStr_615;
            _loc10_ = _loc7_._SafeStr_882;
            _loc11_ = _loc8_._SafeStr_615;
            _loc12_ = _loc8_._SafeStr_882;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(param1.warmStarting)
            {
               _loc19_ = _loc6_._SafeStr_1033;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_._SafeStr_2095[_loc18_];
                  _loc20_.normalImpulse *= param1._SafeStr_889;
                  _loc20_._SafeStr_1765 *= param1._SafeStr_889;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_._SafeStr_1765 * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_._SafeStr_1765 * _loc16_;
                  _loc7_._SafeStr_1846 -= _loc10_ * (_loc20_._SafeStr_886.x * _loc22_ - _loc20_._SafeStr_886.y * _loc21_);
                  _loc7_._SafeStr_1234.x -= _loc9_ * _loc21_;
                  _loc7_._SafeStr_1234.y -= _loc9_ * _loc22_;
                  _loc8_._SafeStr_1846 += _loc12_ * (_loc20_._SafeStr_1101.x * _loc22_ - _loc20_._SafeStr_1101.y * _loc21_);
                  _loc8_._SafeStr_1234.x += _loc11_ * _loc21_;
                  _loc8_._SafeStr_1234.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_._SafeStr_1033;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc23_ = _loc6_._SafeStr_2095[_loc18_];
                  _loc23_.normalImpulse = 0;
                  _loc23_._SafeStr_1765 = 0;
                  _loc18_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function _SafeStr_1028() : void
      {
         var _loc1_:int = 0;
         var _loc2_:b2ContactConstraintPoint = null;
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
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:b2Mat22 = null;
         var _loc25_:b2ContactConstraint = null;
         var _loc26_:b2Body = null;
         var _loc27_:b2Body = null;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:b2Vec2 = null;
         var _loc31_:b2Vec2 = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:int = 0;
         var _loc43_:b2ContactConstraintPoint = null;
         var _loc44_:b2ContactConstraintPoint = null;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Number = NaN;
         var _loc48_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc57_:Number = NaN;
         var _loc24_:int = 0;
         while(_loc24_ < this._SafeStr_2001)
         {
            _loc25_ = this._SafeStr_1320[_loc24_];
            _loc26_ = _loc25_._SafeStr_1255;
            _loc27_ = _loc25_._SafeStr_1005;
            _loc28_ = _loc26_._SafeStr_1846;
            _loc29_ = _loc27_._SafeStr_1846;
            _loc30_ = _loc26_._SafeStr_1234;
            _loc31_ = _loc27_._SafeStr_1234;
            _loc32_ = _loc26_._SafeStr_615;
            _loc33_ = _loc26_._SafeStr_882;
            _loc34_ = _loc27_._SafeStr_615;
            _loc35_ = _loc27_._SafeStr_882;
            _loc36_ = _loc25_.normal.x;
            _loc38_ = _loc37_ = _loc25_.normal.y;
            _loc39_ = -_loc36_;
            _loc40_ = _loc25_.friction;
            _loc1_ = 0;
            while(_loc1_ < _loc25_._SafeStr_1033)
            {
               _loc2_ = _loc25_._SafeStr_2095[_loc1_];
               _loc7_ = _loc31_.x - _loc29_ * _loc2_._SafeStr_1101.y - _loc30_.x + _loc28_ * _loc2_._SafeStr_886.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_._SafeStr_1101.x - _loc30_.y - _loc28_ * _loc2_._SafeStr_886.x;
               _loc10_ = _loc7_ * _loc38_ + _loc8_ * _loc39_;
               _loc11_ = _loc2_._SafeStr_2260 * -_loc10_;
               _loc12_ = _loc40_ * _loc2_.normalImpulse;
               _loc13_ = b2Math._SafeStr_392(_loc2_._SafeStr_1765 + _loc11_,-_loc12_,_loc12_);
               _loc11_ = _loc13_ - _loc2_._SafeStr_1765;
               _loc14_ = _loc11_ * _loc38_;
               _loc15_ = _loc11_ * _loc39_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_._SafeStr_886.x * _loc15_ - _loc2_._SafeStr_886.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_._SafeStr_1101.x * _loc15_ - _loc2_._SafeStr_1101.y * _loc14_);
               _loc2_._SafeStr_1765 = _loc13_;
               _loc1_++;
            }
            _loc42_ = _loc25_._SafeStr_1033;
            if(_loc25_._SafeStr_1033 == 1)
            {
               _loc2_ = _loc25_._SafeStr_2095[0];
               _loc7_ = _loc31_.x + -_loc29_ * _loc2_._SafeStr_1101.y - _loc30_.x - -_loc28_ * _loc2_._SafeStr_886.y;
               _loc8_ = _loc31_.y + _loc29_ * _loc2_._SafeStr_1101.x - _loc30_.y - _loc28_ * _loc2_._SafeStr_886.x;
               _loc9_ = _loc7_ * _loc36_ + _loc8_ * _loc37_;
               _loc11_ = -_loc2_.normalMass * (_loc9_ - _loc2_._SafeStr_1647);
               _loc13_ = _loc2_.normalImpulse + _loc11_;
               _loc13_ = _loc13_ > 0 ? _loc13_ : 0;
               _loc11_ = _loc13_ - _loc2_.normalImpulse;
               _loc14_ = _loc11_ * _loc36_;
               _loc15_ = _loc11_ * _loc37_;
               _loc30_.x -= _loc32_ * _loc14_;
               _loc30_.y -= _loc32_ * _loc15_;
               _loc28_ -= _loc33_ * (_loc2_._SafeStr_886.x * _loc15_ - _loc2_._SafeStr_886.y * _loc14_);
               _loc31_.x += _loc34_ * _loc14_;
               _loc31_.y += _loc34_ * _loc15_;
               _loc29_ += _loc35_ * (_loc2_._SafeStr_1101.x * _loc15_ - _loc2_._SafeStr_1101.y * _loc14_);
               _loc2_.normalImpulse = _loc13_;
            }
            else
            {
               _loc43_ = _loc25_._SafeStr_2095[0];
               _loc44_ = _loc25_._SafeStr_2095[1];
               _loc45_ = _loc43_.normalImpulse;
               _loc46_ = _loc44_.normalImpulse;
               _loc47_ = _loc31_.x - _loc29_ * _loc43_._SafeStr_1101.y - _loc30_.x + _loc28_ * _loc43_._SafeStr_886.y;
               _loc48_ = _loc31_.y + _loc29_ * _loc43_._SafeStr_1101.x - _loc30_.y - _loc28_ * _loc43_._SafeStr_886.x;
               _loc49_ = _loc31_.x - _loc29_ * _loc44_._SafeStr_1101.y - _loc30_.x + _loc28_ * _loc44_._SafeStr_886.y;
               _loc50_ = _loc31_.y + _loc29_ * _loc44_._SafeStr_1101.x - _loc30_.y - _loc28_ * _loc44_._SafeStr_886.x;
               _loc51_ = _loc47_ * _loc36_ + _loc48_ * _loc37_;
               _loc52_ = _loc49_ * _loc36_ + _loc50_ * _loc37_;
               _loc53_ = _loc51_ - _loc43_._SafeStr_1647;
               _loc54_ = _loc52_ - _loc44_._SafeStr_1647;
               _loc22_ = _loc25_._SafeStr_672;
               _loc53_ -= _loc22_.col1.x * _loc45_ + _loc22_.col2.x * _loc46_;
               _loc54_ -= _loc22_.col1.y * _loc45_ + _loc22_.col2.y * _loc46_;
               _loc55_ = 0.001;
               _loc22_ = _loc25_.normalMass;
               _loc56_ = -(_loc22_.col1.x * _loc53_ + _loc22_.col2.x * _loc54_);
               _loc57_ = -(_loc22_.col1.y * _loc53_ + _loc22_.col2.y * _loc54_);
               if(_loc56_ >= 0 && _loc57_ >= 0)
               {
                  _loc16_ = _loc56_ - _loc45_;
                  _loc17_ = _loc57_ - _loc46_;
                  _loc18_ = _loc16_ * _loc36_;
                  _loc19_ = _loc16_ * _loc37_;
                  _loc20_ = _loc17_ * _loc36_;
                  _loc21_ = _loc17_ * _loc37_;
                  _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                  _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                  _loc28_ -= _loc33_ * (_loc43_._SafeStr_886.x * _loc19_ - _loc43_._SafeStr_886.y * _loc18_ + _loc44_._SafeStr_886.x * _loc21_ - _loc44_._SafeStr_886.y * _loc20_);
                  _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                  _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                  _loc29_ += _loc35_ * (_loc43_._SafeStr_1101.x * _loc19_ - _loc43_._SafeStr_1101.y * _loc18_ + _loc44_._SafeStr_1101.x * _loc21_ - _loc44_._SafeStr_1101.y * _loc20_);
                  _loc43_.normalImpulse = _loc56_;
                  _loc44_.normalImpulse = _loc57_;
               }
               else
               {
                  _loc56_ = -_loc43_.normalMass * _loc53_;
                  _loc57_ = 0;
                  _loc51_ = 0;
                  _loc52_ = _loc25_._SafeStr_672.col1.y * _loc56_ + _loc54_;
                  if(_loc56_ >= 0 && _loc52_ >= 0)
                  {
                     _loc16_ = _loc56_ - _loc45_;
                     _loc17_ = _loc57_ - _loc46_;
                     _loc18_ = _loc16_ * _loc36_;
                     _loc19_ = _loc16_ * _loc37_;
                     _loc20_ = _loc17_ * _loc36_;
                     _loc21_ = _loc17_ * _loc37_;
                     _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                     _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                     _loc28_ -= _loc33_ * (_loc43_._SafeStr_886.x * _loc19_ - _loc43_._SafeStr_886.y * _loc18_ + _loc44_._SafeStr_886.x * _loc21_ - _loc44_._SafeStr_886.y * _loc20_);
                     _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                     _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                     _loc29_ += _loc35_ * (_loc43_._SafeStr_1101.x * _loc19_ - _loc43_._SafeStr_1101.y * _loc18_ + _loc44_._SafeStr_1101.x * _loc21_ - _loc44_._SafeStr_1101.y * _loc20_);
                     _loc43_.normalImpulse = _loc56_;
                     _loc44_.normalImpulse = _loc57_;
                  }
                  else
                  {
                     _loc56_ = 0;
                     _loc57_ = -_loc44_.normalMass * _loc54_;
                     _loc51_ = _loc25_._SafeStr_672.col2.x * _loc57_ + _loc53_;
                     _loc52_ = 0;
                     if(_loc57_ >= 0 && _loc51_ >= 0)
                     {
                        _loc16_ = _loc56_ - _loc45_;
                        _loc17_ = _loc57_ - _loc46_;
                        _loc18_ = _loc16_ * _loc36_;
                        _loc19_ = _loc16_ * _loc37_;
                        _loc20_ = _loc17_ * _loc36_;
                        _loc21_ = _loc17_ * _loc37_;
                        _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                        _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                        _loc28_ -= _loc33_ * (_loc43_._SafeStr_886.x * _loc19_ - _loc43_._SafeStr_886.y * _loc18_ + _loc44_._SafeStr_886.x * _loc21_ - _loc44_._SafeStr_886.y * _loc20_);
                        _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                        _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                        _loc29_ += _loc35_ * (_loc43_._SafeStr_1101.x * _loc19_ - _loc43_._SafeStr_1101.y * _loc18_ + _loc44_._SafeStr_1101.x * _loc21_ - _loc44_._SafeStr_1101.y * _loc20_);
                        _loc43_.normalImpulse = _loc56_;
                        _loc44_.normalImpulse = _loc57_;
                     }
                     else
                     {
                        _loc56_ = 0;
                        _loc57_ = 0;
                        _loc51_ = _loc53_;
                        _loc52_ = _loc54_;
                        if(_loc51_ >= 0 && _loc52_ >= 0)
                        {
                           _loc16_ = _loc56_ - _loc45_;
                           _loc17_ = _loc57_ - _loc46_;
                           _loc18_ = _loc16_ * _loc36_;
                           _loc19_ = _loc16_ * _loc37_;
                           _loc20_ = _loc17_ * _loc36_;
                           _loc21_ = _loc17_ * _loc37_;
                           _loc30_.x -= _loc32_ * (_loc18_ + _loc20_);
                           _loc30_.y -= _loc32_ * (_loc19_ + _loc21_);
                           _loc28_ -= _loc33_ * (_loc43_._SafeStr_886.x * _loc19_ - _loc43_._SafeStr_886.y * _loc18_ + _loc44_._SafeStr_886.x * _loc21_ - _loc44_._SafeStr_886.y * _loc20_);
                           _loc31_.x += _loc34_ * (_loc18_ + _loc20_);
                           _loc31_.y += _loc34_ * (_loc19_ + _loc21_);
                           _loc29_ += _loc35_ * (_loc43_._SafeStr_1101.x * _loc19_ - _loc43_._SafeStr_1101.y * _loc18_ + _loc44_._SafeStr_1101.x * _loc21_ - _loc44_._SafeStr_1101.y * _loc20_);
                           _loc43_.normalImpulse = _loc56_;
                           _loc44_.normalImpulse = _loc57_;
                        }
                     }
                  }
               }
            }
            _loc26_._SafeStr_1846 = _loc28_;
            _loc27_._SafeStr_1846 = _loc29_;
            _loc24_++;
         }
      }
      
      public function _SafeStr_938() : void
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this._SafeStr_2001)
         {
            _loc2_ = this._SafeStr_1320[_loc1_];
            _loc3_ = _loc2_._SafeStr_991;
            _loc4_ = 0;
            while(_loc4_ < _loc2_._SafeStr_1033)
            {
               _loc5_ = _loc3_._SafeStr_2110[_loc4_];
               _loc6_ = _loc2_._SafeStr_2095[_loc4_];
               _loc5_._SafeStr_2423 = _loc6_.normalImpulse;
               _loc5_._SafeStr_1931 = _loc6_._SafeStr_1765;
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_2001)
         {
            _loc4_ = this._SafeStr_1320[_loc3_];
            _loc5_ = _loc4_._SafeStr_1255;
            _loc6_ = _loc4_._SafeStr_1005;
            _loc7_ = _loc5_._SafeStr_399 * _loc5_._SafeStr_615;
            _loc8_ = _loc5_._SafeStr_399 * _loc5_._SafeStr_882;
            _loc9_ = _loc6_._SafeStr_399 * _loc6_._SafeStr_615;
            _loc10_ = _loc6_._SafeStr_399 * _loc6_._SafeStr_882;
            _SafeStr_2537._SafeStr_2347(_loc4_);
            _loc11_ = _SafeStr_2537._SafeStr_2098;
            _loc12_ = 0;
            while(_loc12_ < _loc4_._SafeStr_1033)
            {
               _loc13_ = _loc4_._SafeStr_2095[_loc12_];
               _loc14_ = _SafeStr_2537._SafeStr_2110[_loc12_];
               _loc15_ = _SafeStr_2537._SafeStr_878[_loc12_];
               _loc16_ = _loc14_.x - _loc5_._SafeStr_2025.c.x;
               _loc17_ = _loc14_.y - _loc5_._SafeStr_2025.c.y;
               _loc18_ = _loc14_.x - _loc6_._SafeStr_2025.c.x;
               _loc19_ = _loc14_.y - _loc6_._SafeStr_2025.c.y;
               _loc2_ = _loc2_ < _loc15_ ? _loc2_ : _loc15_;
               _loc20_ = b2Math._SafeStr_392(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               _loc21_ = -_loc13_._SafeStr_2207 * _loc20_;
               _loc22_ = _loc21_ * _loc11_.x;
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_._SafeStr_2025.c.x -= _loc7_ * _loc22_;
               _loc5_._SafeStr_2025.c.y -= _loc7_ * _loc23_;
               _loc5_._SafeStr_2025.a -= _loc8_ * (_loc16_ * _loc23_ - _loc17_ * _loc22_);
               _loc5_._SafeStr_2018();
               _loc6_._SafeStr_2025.c.x += _loc9_ * _loc22_;
               _loc6_._SafeStr_2025.c.y += _loc9_ * _loc23_;
               _loc6_._SafeStr_2025.a += _loc10_ * (_loc18_ * _loc23_ - _loc19_ * _loc22_);
               _loc6_._SafeStr_2018();
               _loc12_++;
            }
            _loc3_++;
         }
         return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
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
 * @identifier _SafeStr_384 = "_-Wi"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_417 = "_-95"
 * @identifier _SafeStr_456 = "_-Xh"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_601 = "_-QS"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_672 = "_-RF"
 * @identifier _SafeStr_848 = "_-UK"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_878 = "_-3z"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_886 = "_-ea"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_938 = "_-Dg"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_991 = "_-CW"
 * @identifier _SafeStr_1004 = "_-3C"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1033 = "_-i3"
 * @identifier _SafeStr_1101 = "_-Ij"
 * @identifier _SafeStr_1207 = "_-Ep"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1320 = "_-Np"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1647 = "_-2O"
 * @identifier _SafeStr_1674 = "_-SR"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1765 = "_-Qo"
 * @identifier _SafeStr_1829 = "_-9u"
 * @identifier _SafeStr_1833 = "_-f"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1931 = "_-At"
 * @identifier _SafeStr_2001 = "_-SE"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2095 = "_-Pj"
 * @identifier _SafeStr_2098 = "_-dB"
 * @identifier _SafeStr_2110 = "_-Zp"
 * @identifier _SafeStr_2207 = "_-jZ"
 * @identifier _SafeStr_2260 = "_-o"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2352 = "_-aC"
 * @identifier _SafeStr_2423 = "_-1A"
 * @identifier _SafeStr_2475 = "_-1c"
 * @identifier _SafeStr_2485 = "_-Ab"
 * @identifier _SafeStr_2537 = "_-jT"
 * @identifier _SafeStr_2654 = "_-jK"
 */
