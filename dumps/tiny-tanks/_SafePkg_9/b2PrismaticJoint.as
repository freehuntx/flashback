package _SafePkg_9
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Mat33;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.Math.b2Vec3;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var m_localXAxis1:b2Vec2;
      
      private var m_localYAxis1:b2Vec2;
      
      private var m_refAngle:Number;
      
      private var _SafeStr_1917:b2Vec2;
      
      private var _SafeStr_818:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var _SafeStr_1483:b2Mat33;
      
      private var _SafeStr_460:b2Vec3;
      
      private var _SafeStr_719:Number;
      
      private var _SafeStr_396:Number;
      
      private var _SafeStr_1117:Number;
      
      private var _SafeStr_359:Number;
      
      private var _SafeStr_989:Number;
      
      private var m_motorSpeed:Number;
      
      private var _SafeStr_299:Boolean;
      
      private var _SafeStr_319:Boolean;
      
      private var _SafeStr_530:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_localXAxis1 = new b2Vec2();
         this.m_localYAxis1 = new b2Vec2();
         this._SafeStr_1917 = new b2Vec2();
         this._SafeStr_818 = new b2Vec2();
         this._SafeStr_1483 = new b2Mat33();
         this._SafeStr_460 = new b2Vec3();
         super(param1);
         this.m_localAnchor1._SafeStr_1679(param1._SafeStr_1627);
         this.m_localAnchor2._SafeStr_1679(param1._SafeStr_1876);
         this.m_localXAxis1._SafeStr_1679(param1._SafeStr_1757);
         this.m_localYAxis1.x = -this.m_localXAxis1.y;
         this.m_localYAxis1.y = this.m_localXAxis1.x;
         this.m_refAngle = param1.referenceAngle;
         this._SafeStr_460._SafeStr_1807();
         this._SafeStr_719 = 0;
         this._SafeStr_396 = 0;
         this._SafeStr_1117 = param1._SafeStr_2448;
         this._SafeStr_359 = param1._SafeStr_1042;
         this._SafeStr_989 = param1._SafeStr_1985;
         this.m_motorSpeed = param1.motorSpeed;
         this._SafeStr_299 = param1._SafeStr_2301;
         this._SafeStr_319 = param1._SafeStr_2246;
         this._SafeStr_530 = b2internal::_SafeStr_1946;
         this._SafeStr_1917._SafeStr_1807();
         this._SafeStr_818._SafeStr_1807();
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
         return new b2Vec2(param1 * (this._SafeStr_460.x * this._SafeStr_818.x + (this._SafeStr_396 + this._SafeStr_460.z) * this._SafeStr_1917.x),param1 * (this._SafeStr_460.x * this._SafeStr_818.y + (this._SafeStr_396 + this._SafeStr_460.z) * this._SafeStr_1917.y));
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return param1 * this._SafeStr_460.y;
      }
      
      public function _SafeStr_604() : Number
      {
         var _loc1_:b2Body = b2internal::_SafeStr_496;
         var _loc2_:b2Body = b2internal::_SafeStr_907;
         var _loc4_:b2Vec2 = _loc1_._SafeStr_2376(this.m_localAnchor1);
         var _loc5_:b2Vec2 = _loc2_._SafeStr_2376(this.m_localAnchor2);
         var _loc6_:Number = _loc5_.x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2 = _loc1_._SafeStr_1488(this.m_localXAxis1);
         return _loc8_.x * _loc6_ + _loc8_.y * _loc7_;
      }
      
      public function GetJointSpeed() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_SafeStr_496;
         var _loc2_:b2Body = b2internal::_SafeStr_907;
         _loc3_ = _loc1_._SafeStr_1473._SafeStr_945;
         var _loc4_:Number = this.m_localAnchor1.x - _loc1_._SafeStr_2025._SafeStr_1721.x;
         var _loc5_:Number = this.m_localAnchor1.y - _loc1_._SafeStr_2025._SafeStr_1721.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc7_:Number = this.m_localAnchor2.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
         var _loc8_:Number = this.m_localAnchor2.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         _loc8_ = _loc3_.col1.y * _loc7_ + _loc3_.col2.y * _loc8_;
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_._SafeStr_2025.c.x + _loc4_;
         var _loc10_:Number = _loc1_._SafeStr_2025.c.y + _loc5_;
         var _loc11_:Number = _loc2_._SafeStr_2025.c.x + _loc7_;
         var _loc12_:Number = _loc2_._SafeStr_2025.c.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_._SafeStr_1488(this.m_localXAxis1);
         var _loc16_:b2Vec2 = _loc1_._SafeStr_1234;
         var _loc17_:b2Vec2 = _loc2_._SafeStr_1234;
         var _loc18_:Number = _loc1_._SafeStr_1846;
         var _loc19_:Number = _loc2_._SafeStr_1846;
         return _loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_));
      }
      
      public function _SafeStr_1725() : Boolean
      {
         return this._SafeStr_299;
      }
      
      public function _SafeStr_1517(param1:Boolean) : void
      {
         b2internal::_SafeStr_496._SafeStr_1589(true);
         b2internal::_SafeStr_907._SafeStr_1589(true);
         this._SafeStr_299 = param1;
      }
      
      public function _SafeStr_966() : Number
      {
         return this._SafeStr_1117;
      }
      
      public function _SafeStr_883() : Number
      {
         return this._SafeStr_359;
      }
      
      public function _SafeStr_1247(param1:Number, param2:Number) : void
      {
         b2internal::_SafeStr_496._SafeStr_1589(true);
         b2internal::_SafeStr_907._SafeStr_1589(true);
         this._SafeStr_1117 = param1;
         this._SafeStr_359 = param2;
      }
      
      public function _SafeStr_345() : Boolean
      {
         return this._SafeStr_319;
      }
      
      public function _SafeStr_2048(param1:Boolean) : void
      {
         b2internal::_SafeStr_496._SafeStr_1589(true);
         b2internal::_SafeStr_907._SafeStr_1589(true);
         this._SafeStr_319 = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::_SafeStr_496._SafeStr_1589(true);
         b2internal::_SafeStr_907._SafeStr_1589(true);
         this.m_motorSpeed = param1;
      }
      
      public function GetMotorSpeed() : Number
      {
         return this.m_motorSpeed;
      }
      
      public function _SafeStr_1694(param1:Number) : void
      {
         b2internal::_SafeStr_496._SafeStr_1589(true);
         b2internal::_SafeStr_907._SafeStr_1589(true);
         this._SafeStr_989 = param1;
      }
      
      public function _SafeStr_935() : Number
      {
         return this._SafeStr_396;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::_SafeStr_496;
         var _loc3_:b2Body = b2internal::_SafeStr_907;
         b2internal::_SafeStr_664._SafeStr_1679(_loc2_._SafeStr_933());
         b2internal::_SafeStr_266._SafeStr_1679(_loc3_._SafeStr_933());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_SafeStr_664.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_SafeStr_664.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_SafeStr_266.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_SafeStr_266.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_._SafeStr_2025.c.x + _loc10_ - _loc2_._SafeStr_2025.c.x - _loc8_;
         var _loc13_:Number = _loc3_._SafeStr_2025.c.y + _loc11_ - _loc2_._SafeStr_2025.c.y - _loc9_;
         _SafeStr_1267 = _loc2_._SafeStr_615;
         _SafeStr_2043 = _loc3_._SafeStr_615;
         _SafeStr_2629 = _loc2_._SafeStr_882;
         _SafeStr_557 = _loc3_._SafeStr_882;
         this._SafeStr_1917._SafeStr_1679(b2Math._SafeStr_734(_loc6_._SafeStr_945,this.m_localXAxis1));
         this.m_a1 = (_loc12_ + _loc8_) * this._SafeStr_1917.y - (_loc13_ + _loc9_) * this._SafeStr_1917.x;
         this.m_a2 = _loc10_ * this._SafeStr_1917.y - _loc11_ * this._SafeStr_1917.x;
         this._SafeStr_719 = b2internal::_SafeStr_1267 + b2internal::_SafeStr_2043 + b2internal::_SafeStr_2629 * this.m_a1 * this.m_a1 + b2internal::_SafeStr_557 * this.m_a2 * this.m_a2;
         if(this._SafeStr_719 > Number.MIN_VALUE)
         {
            this._SafeStr_719 = 1 / this._SafeStr_719;
         }
         this._SafeStr_818._SafeStr_1679(b2Math._SafeStr_734(_loc6_._SafeStr_945,this.m_localYAxis1));
         this.m_s1 = (_loc12_ + _loc8_) * this._SafeStr_818.y - (_loc13_ + _loc9_) * this._SafeStr_818.x;
         this.m_s2 = _loc10_ * this._SafeStr_818.y - _loc11_ * this._SafeStr_818.x;
         var _loc14_:Number = b2internal::_SafeStr_1267;
         var _loc15_:Number = b2internal::_SafeStr_2043;
         var _loc16_:Number = b2internal::_SafeStr_2629;
         var _loc17_:Number = b2internal::_SafeStr_557;
         this._SafeStr_1483.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this._SafeStr_1483.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this._SafeStr_1483.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this._SafeStr_1483.col2.x = this._SafeStr_1483.col1.y;
         this._SafeStr_1483.col2.y = _loc16_ + _loc17_;
         this._SafeStr_1483.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this._SafeStr_1483.col3.x = this._SafeStr_1483.col1.z;
         this._SafeStr_1483.col3.y = this._SafeStr_1483.col2.z;
         this._SafeStr_1483.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this._SafeStr_299)
         {
            _loc18_ = this._SafeStr_1917.x * _loc12_ + this._SafeStr_1917.y * _loc13_;
            if(b2Math._SafeStr_283(this._SafeStr_359 - this._SafeStr_1117) < 2 * b2Settings.b2_linearSlop)
            {
               this._SafeStr_530 = b2internal::_SafeStr_1905;
            }
            else if(_loc18_ <= this._SafeStr_1117)
            {
               if(this._SafeStr_530 != b2internal::_SafeStr_1017)
               {
                  this._SafeStr_530 = b2internal::_SafeStr_1017;
                  this._SafeStr_460.z = 0;
               }
            }
            else if(_loc18_ >= this._SafeStr_359)
            {
               if(this._SafeStr_530 != b2internal::_SafeStr_2351)
               {
                  this._SafeStr_530 = b2internal::_SafeStr_2351;
                  this._SafeStr_460.z = 0;
               }
            }
            else
            {
               this._SafeStr_530 = b2internal::_SafeStr_1946;
               this._SafeStr_460.z = 0;
            }
         }
         else
         {
            this._SafeStr_530 = b2internal::_SafeStr_1946;
         }
         if(this._SafeStr_319 == false)
         {
            this._SafeStr_396 = 0;
         }
         if(param1.warmStarting)
         {
            this._SafeStr_460.x *= param1._SafeStr_889;
            this._SafeStr_460.y *= param1._SafeStr_889;
            this._SafeStr_396 *= param1._SafeStr_889;
            _loc19_ = this._SafeStr_460.x * this._SafeStr_818.x + (this._SafeStr_396 + this._SafeStr_460.z) * this._SafeStr_1917.x;
            _loc20_ = this._SafeStr_460.x * this._SafeStr_818.y + (this._SafeStr_396 + this._SafeStr_460.z) * this._SafeStr_1917.y;
            _loc21_ = this._SafeStr_460.x * this.m_s1 + this._SafeStr_460.y + (this._SafeStr_396 + this._SafeStr_460.z) * this.m_a1;
            _loc22_ = this._SafeStr_460.x * this.m_s2 + this._SafeStr_460.y + (this._SafeStr_396 + this._SafeStr_460.z) * this.m_a2;
            _loc2_._SafeStr_1234.x -= b2internal::_SafeStr_1267 * _loc19_;
            _loc2_._SafeStr_1234.y -= b2internal::_SafeStr_1267 * _loc20_;
            _loc2_._SafeStr_1846 -= b2internal::_SafeStr_2629 * _loc21_;
            _loc3_._SafeStr_1234.x += b2internal::_SafeStr_2043 * _loc19_;
            _loc3_._SafeStr_1234.y += b2internal::_SafeStr_2043 * _loc20_;
            _loc3_._SafeStr_1846 += b2internal::_SafeStr_557 * _loc22_;
         }
         else
         {
            this._SafeStr_460._SafeStr_1807();
            this._SafeStr_396 = 0;
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::_SafeStr_496;
         var _loc3_:b2Body = b2internal::_SafeStr_907;
         var _loc4_:b2Vec2 = _loc2_._SafeStr_1234;
         var _loc5_:Number = _loc2_._SafeStr_1846;
         var _loc6_:b2Vec2 = _loc3_._SafeStr_1234;
         var _loc7_:Number = _loc3_._SafeStr_1846;
         if(this._SafeStr_319 && this._SafeStr_530 != b2internal::_SafeStr_1905)
         {
            _loc14_ = this._SafeStr_1917.x * (_loc6_.x - _loc4_.x) + this._SafeStr_1917.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this._SafeStr_719 * (this.m_motorSpeed - _loc14_);
            _loc16_ = this._SafeStr_396;
            _loc17_ = param1._SafeStr_1607 * this._SafeStr_989;
            this._SafeStr_396 = b2Math._SafeStr_392(this._SafeStr_396 + _loc15_,-_loc17_,_loc17_);
            _loc15_ = this._SafeStr_396 - _loc16_;
            _loc8_ = _loc15_ * this._SafeStr_1917.x;
            _loc9_ = _loc15_ * this._SafeStr_1917.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::_SafeStr_1267 * _loc8_;
            _loc4_.y -= b2internal::_SafeStr_1267 * _loc9_;
            _loc5_ -= b2internal::_SafeStr_2629 * _loc10_;
            _loc6_.x += b2internal::_SafeStr_2043 * _loc8_;
            _loc6_.y += b2internal::_SafeStr_2043 * _loc9_;
            _loc7_ += b2internal::_SafeStr_557 * _loc11_;
         }
         var _loc12_:Number = this._SafeStr_818.x * (_loc6_.x - _loc4_.x) + this._SafeStr_818.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this._SafeStr_299 && this._SafeStr_530 != b2internal::_SafeStr_1946)
         {
            _loc18_ = this._SafeStr_1917.x * (_loc6_.x - _loc4_.x) + this._SafeStr_1917.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this._SafeStr_460._SafeStr_2396();
            _loc20_ = this._SafeStr_1483.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this._SafeStr_460.Add(_loc20_);
            if(this._SafeStr_530 == b2internal::_SafeStr_1017)
            {
               this._SafeStr_460.z = b2Math._SafeStr_2143(this._SafeStr_460.z,0);
            }
            else if(this._SafeStr_530 == b2internal::_SafeStr_2351)
            {
               this._SafeStr_460.z = b2Math._SafeStr_1704(this._SafeStr_460.z,0);
            }
            _loc21_ = -_loc12_ - (this._SafeStr_460.z - _loc19_.z) * this._SafeStr_1483.col3.x;
            _loc22_ = -_loc13_ - (this._SafeStr_460.z - _loc19_.z) * this._SafeStr_1483.col3.y;
            _loc23_ = this._SafeStr_1483.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this._SafeStr_460.x = _loc23_.x;
            this._SafeStr_460.y = _loc23_.y;
            _loc20_.x = this._SafeStr_460.x - _loc19_.x;
            _loc20_.y = this._SafeStr_460.y - _loc19_.y;
            _loc20_.z = this._SafeStr_460.z - _loc19_.z;
            _loc8_ = _loc20_.x * this._SafeStr_818.x + _loc20_.z * this._SafeStr_1917.x;
            _loc9_ = _loc20_.x * this._SafeStr_818.y + _loc20_.z * this._SafeStr_1917.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::_SafeStr_1267 * _loc8_;
            _loc4_.y -= b2internal::_SafeStr_1267 * _loc9_;
            _loc5_ -= b2internal::_SafeStr_2629 * _loc10_;
            _loc6_.x += b2internal::_SafeStr_2043 * _loc8_;
            _loc6_.y += b2internal::_SafeStr_2043 * _loc9_;
            _loc7_ += b2internal::_SafeStr_557 * _loc11_;
         }
         else
         {
            _loc24_ = this._SafeStr_1483.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this._SafeStr_460.x += _loc24_.x;
            this._SafeStr_460.y += _loc24_.y;
            _loc8_ = _loc24_.x * this._SafeStr_818.x;
            _loc9_ = _loc24_.x * this._SafeStr_818.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::_SafeStr_1267 * _loc8_;
            _loc4_.y -= b2internal::_SafeStr_1267 * _loc9_;
            _loc5_ -= b2internal::_SafeStr_2629 * _loc10_;
            _loc6_.x += b2internal::_SafeStr_2043 * _loc8_;
            _loc6_.y += b2internal::_SafeStr_2043 * _loc9_;
            _loc7_ += b2internal::_SafeStr_557 * _loc11_;
         }
         _loc2_._SafeStr_1234._SafeStr_1679(_loc4_);
         _loc2_._SafeStr_1846 = _loc5_;
         _loc3_._SafeStr_1234._SafeStr_1679(_loc6_);
         _loc3_._SafeStr_1846 = _loc7_;
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:b2Vec2 = null;
         var _loc4_:b2Body = b2internal::_SafeStr_496;
         var _loc5_:b2Body = b2internal::_SafeStr_907;
         var _loc6_:b2Vec2 = _loc4_._SafeStr_2025.c;
         var _loc7_:Number = _loc4_._SafeStr_2025.a;
         var _loc8_:b2Vec2 = _loc5_._SafeStr_2025.c;
         var _loc9_:Number = _loc5_._SafeStr_2025.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.FromAngle(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.FromAngle(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_SafeStr_664.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_SafeStr_664.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_SafeStr_266.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_SafeStr_266.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this._SafeStr_299)
         {
            this._SafeStr_1917 = b2Math._SafeStr_734(_loc20_,this.m_localXAxis1);
            this.m_a1 = (_loc26_ + _loc22_) * this._SafeStr_1917.y - (_loc27_ + _loc23_) * this._SafeStr_1917.x;
            this.m_a2 = _loc24_ * this._SafeStr_1917.y - _loc25_ * this._SafeStr_1917.x;
            _loc35_ = this._SafeStr_1917.x * _loc26_ + this._SafeStr_1917.y * _loc27_;
            if(b2Math._SafeStr_283(this._SafeStr_359 - this._SafeStr_1117) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math._SafeStr_392(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math._SafeStr_283(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this._SafeStr_1117)
            {
               _loc19_ = b2Math._SafeStr_392(_loc35_ - this._SafeStr_1117 + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this._SafeStr_1117 - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this._SafeStr_359)
            {
               _loc19_ = b2Math._SafeStr_392(_loc35_ - this._SafeStr_359 + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this._SafeStr_359;
               _loc18_ = true;
            }
         }
         this._SafeStr_818 = b2Math._SafeStr_734(_loc20_,this.m_localYAxis1);
         this.m_s1 = (_loc26_ + _loc22_) * this._SafeStr_818.y - (_loc27_ + _loc23_) * this._SafeStr_818.x;
         this.m_s2 = _loc24_ * this._SafeStr_818.y - _loc25_ * this._SafeStr_818.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this._SafeStr_818.x * _loc26_ + this._SafeStr_818.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.m_refAngle;
         _loc16_ = b2Math._SafeStr_2143(_loc16_,b2Math._SafeStr_283(_loc29_));
         _loc17_ = b2Math._SafeStr_283(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::_SafeStr_1267;
            _loc13_ = b2internal::_SafeStr_2043;
            _loc14_ = b2internal::_SafeStr_2629;
            _loc15_ = b2internal::_SafeStr_557;
            this._SafeStr_1483.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this._SafeStr_1483.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this._SafeStr_1483.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this._SafeStr_1483.col2.x = this._SafeStr_1483.col1.y;
            this._SafeStr_1483.col2.y = _loc14_ + _loc15_;
            this._SafeStr_1483.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this._SafeStr_1483.col3.x = this._SafeStr_1483.col1.z;
            this._SafeStr_1483.col3.y = this._SafeStr_1483.col2.z;
            this._SafeStr_1483.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this._SafeStr_1483.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_SafeStr_1267;
            _loc13_ = b2internal::_SafeStr_2043;
            _loc14_ = b2internal::_SafeStr_2629;
            _loc15_ = b2internal::_SafeStr_557;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this._SafeStr_1483.col1.Set(_loc36_,_loc37_,0);
            this._SafeStr_1483.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this._SafeStr_1483.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this._SafeStr_818.x + _loc28_.z * this._SafeStr_1917.x;
         var _loc32_:Number = _loc28_.x * this._SafeStr_818.y + _loc28_.z * this._SafeStr_1917.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::_SafeStr_1267 * _loc31_;
         _loc6_.y -= b2internal::_SafeStr_1267 * _loc32_;
         _loc7_ -= b2internal::_SafeStr_2629 * _loc33_;
         _loc8_.x += b2internal::_SafeStr_2043 * _loc31_;
         _loc8_.y += b2internal::_SafeStr_2043 * _loc32_;
         _loc9_ += b2internal::_SafeStr_557 * _loc34_;
         _loc4_._SafeStr_2025.a = _loc7_;
         _loc5_._SafeStr_2025.a = _loc9_;
         _loc4_._SafeStr_2018();
         _loc5_._SafeStr_2018();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_266 = "_-4Z"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_299 = "_-cd"
 * @identifier _SafeStr_319 = "_-Z1"
 * @identifier _SafeStr_345 = "_-5O"
 * @identifier _SafeStr_359 = "_-V9"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_396 = "_-C5"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_530 = "_-iO"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_557 = "_-B7"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_604 = "_-Nq"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_664 = "_-N3"
 * @identifier _SafeStr_719 = "_-MC"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_818 = "_-Dc"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_883 = "_-cZ"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_933 = "_-QP"
 * @identifier _SafeStr_935 = "_-HI"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_966 = "_-Cs"
 * @identifier _SafeStr_989 = "_-H"
 * @identifier _SafeStr_1017 = "_-OZ"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1042 = "_-i4"
 * @identifier _SafeStr_1117 = "_-Ik"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1247 = "_-8w"
 * @identifier _SafeStr_1267 = "_-Wm"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1483 = "_-Xc"
 * @identifier _SafeStr_1488 = "_-2j"
 * @identifier _SafeStr_1517 = "_-bQ"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1694 = "_-WP"
 * @identifier _SafeStr_1704 = "_-RD"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1725 = "_-et"
 * @identifier _SafeStr_1757 = "_-gk"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_1905 = "_-OR"
 * @identifier _SafeStr_1917 = "_-9l"
 * @identifier _SafeStr_1946 = "_-Gf"
 * @identifier _SafeStr_1985 = "_-2p"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2043 = "_-ME"
 * @identifier _SafeStr_2048 = "_-34"
 * @identifier _SafeStr_2143 = "_-bx"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2246 = "_-Vx"
 * @identifier _SafeStr_2301 = "_-6K"
 * @identifier _SafeStr_2351 = "_-Vc"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2448 = "_-aj"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2629 = "_-Nz"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
