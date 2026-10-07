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
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var _SafeStr_2564:b2Vec2 = new b2Vec2();
      
      private var _SafeStr_672:b2Mat22 = new b2Mat22();
      
      private var K1:b2Mat22 = new b2Mat22();
      
      private var K2:b2Mat22 = new b2Mat22();
      
      private var K3:b2Mat22 = new b2Mat22();
      
      private var impulse3:b2Vec3 = new b2Vec3();
      
      private var impulse2:b2Vec2 = new b2Vec2();
      
      private var _SafeStr_2102:b2Vec2 = new b2Vec2();
      
      b2internal var m_localAnchor1:b2Vec2 = new b2Vec2();
      
      b2internal var m_localAnchor2:b2Vec2 = new b2Vec2();
      
      private var _SafeStr_460:b2Vec3 = new b2Vec3();
      
      private var _SafeStr_396:Number;
      
      private var _SafeStr_399:b2Mat33 = new b2Mat33();
      
      private var _SafeStr_719:Number;
      
      private var _SafeStr_319:Boolean;
      
      private var _SafeStr_1352:Number;
      
      private var m_motorSpeed:Number;
      
      private var _SafeStr_299:Boolean;
      
      private var m_referenceAngle:Number;
      
      private var m_lowerAngle:Number;
      
      private var m_upperAngle:Number;
      
      private var _SafeStr_530:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         super(param1);
         this.m_localAnchor1._SafeStr_1679(param1._SafeStr_1627);
         this.m_localAnchor2._SafeStr_1679(param1._SafeStr_1876);
         this.m_referenceAngle = param1.referenceAngle;
         this._SafeStr_460._SafeStr_1807();
         this._SafeStr_396 = 0;
         this.m_lowerAngle = param1.lowerAngle;
         this.m_upperAngle = param1.upperAngle;
         this._SafeStr_1352 = param1._SafeStr_1457;
         this.m_motorSpeed = param1.motorSpeed;
         this._SafeStr_299 = param1._SafeStr_2301;
         this._SafeStr_319 = param1._SafeStr_2246;
         this._SafeStr_530 = b2internal::_SafeStr_1946;
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
         return new b2Vec2(param1 * this._SafeStr_460.x,param1 * this._SafeStr_460.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return param1 * this._SafeStr_460.z;
      }
      
      public function GetJointAngle() : Number
      {
         return b2internal::_SafeStr_907._SafeStr_2025.a - b2internal::_SafeStr_496._SafeStr_2025.a - this.m_referenceAngle;
      }
      
      public function GetJointSpeed() : Number
      {
         return b2internal::_SafeStr_907._SafeStr_1846 - b2internal::_SafeStr_496._SafeStr_1846;
      }
      
      public function _SafeStr_1725() : Boolean
      {
         return this._SafeStr_299;
      }
      
      public function _SafeStr_1517(param1:Boolean) : void
      {
         this._SafeStr_299 = param1;
      }
      
      public function _SafeStr_966() : Number
      {
         return this.m_lowerAngle;
      }
      
      public function _SafeStr_883() : Number
      {
         return this.m_upperAngle;
      }
      
      public function _SafeStr_1247(param1:Number, param2:Number) : void
      {
         this.m_lowerAngle = param1;
         this.m_upperAngle = param2;
      }
      
      public function _SafeStr_345() : Boolean
      {
         b2internal::_SafeStr_496._SafeStr_1589(true);
         b2internal::_SafeStr_907._SafeStr_1589(true);
         return this._SafeStr_319;
      }
      
      public function _SafeStr_2048(param1:Boolean) : void
      {
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
      
      public function _SafeStr_2030(param1:Number) : void
      {
         this._SafeStr_1352 = param1;
      }
      
      public function _SafeStr_1365() : Number
      {
         return this._SafeStr_1352;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = b2internal::_SafeStr_496;
         _loc3_ = b2internal::_SafeStr_907;
         if(this._SafeStr_319 || this._SafeStr_299)
         {
         }
         _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_._SafeStr_615;
         var _loc11_:Number = _loc3_._SafeStr_615;
         var _loc12_:Number = _loc2_._SafeStr_882;
         var _loc13_:Number = _loc3_._SafeStr_882;
         this._SafeStr_399.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this._SafeStr_399.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this._SafeStr_399.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this._SafeStr_399.col1.y = this._SafeStr_399.col2.x;
         this._SafeStr_399.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this._SafeStr_399.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this._SafeStr_399.col1.z = this._SafeStr_399.col3.x;
         this._SafeStr_399.col2.z = this._SafeStr_399.col3.y;
         this._SafeStr_399.col3.z = _loc12_ + _loc13_;
         this._SafeStr_719 = 1 / (_loc12_ + _loc13_);
         if(this._SafeStr_319 == false)
         {
            this._SafeStr_396 = 0;
         }
         if(this._SafeStr_299)
         {
            _loc14_ = _loc3_._SafeStr_2025.a - _loc2_._SafeStr_2025.a - this.m_referenceAngle;
            if(b2Math._SafeStr_283(this.m_upperAngle - this.m_lowerAngle) < 2 * b2Settings.b2_angularSlop)
            {
               this._SafeStr_530 = b2internal::_SafeStr_1905;
            }
            else if(_loc14_ <= this.m_lowerAngle)
            {
               if(this._SafeStr_530 != b2internal::_SafeStr_1017)
               {
                  this._SafeStr_460.z = 0;
               }
               this._SafeStr_530 = b2internal::_SafeStr_1017;
            }
            else if(_loc14_ >= this.m_upperAngle)
            {
               if(this._SafeStr_530 != b2internal::_SafeStr_2351)
               {
                  this._SafeStr_460.z = 0;
               }
               this._SafeStr_530 = b2internal::_SafeStr_2351;
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
         if(param1.warmStarting)
         {
            this._SafeStr_460.x *= param1._SafeStr_889;
            this._SafeStr_460.y *= param1._SafeStr_889;
            this._SafeStr_396 *= param1._SafeStr_889;
            _loc15_ = this._SafeStr_460.x;
            _loc16_ = this._SafeStr_460.y;
            _loc2_._SafeStr_1234.x -= _loc10_ * _loc15_;
            _loc2_._SafeStr_1234.y -= _loc10_ * _loc16_;
            _loc2_._SafeStr_1846 -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this._SafeStr_396 + this._SafeStr_460.z);
            _loc3_._SafeStr_1234.x += _loc11_ * _loc15_;
            _loc3_._SafeStr_1234.y += _loc11_ * _loc16_;
            _loc3_._SafeStr_1846 += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this._SafeStr_396 + this._SafeStr_460.z);
         }
         else
         {
            this._SafeStr_460._SafeStr_1807();
            this._SafeStr_396 = 0;
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = b2internal::_SafeStr_496;
         var _loc3_:b2Body = b2internal::_SafeStr_907;
         var _loc11_:b2Vec2 = _loc2_._SafeStr_1234;
         var _loc12_:Number = _loc2_._SafeStr_1846;
         var _loc13_:b2Vec2 = _loc3_._SafeStr_1234;
         var _loc14_:Number = _loc3_._SafeStr_1846;
         var _loc15_:Number = _loc2_._SafeStr_615;
         var _loc16_:Number = _loc3_._SafeStr_615;
         var _loc17_:Number = _loc2_._SafeStr_882;
         var _loc18_:Number = _loc3_._SafeStr_882;
         if(this._SafeStr_319 && this._SafeStr_530 != b2internal::_SafeStr_1905)
         {
            _loc19_ = _loc14_ - _loc12_ - this.m_motorSpeed;
            _loc20_ = this._SafeStr_719 * -_loc19_;
            _loc21_ = this._SafeStr_396;
            _loc22_ = param1._SafeStr_1607 * this._SafeStr_1352;
            this._SafeStr_396 = b2Math._SafeStr_392(this._SafeStr_396 + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this._SafeStr_396 - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this._SafeStr_299 && this._SafeStr_530 != b2internal::_SafeStr_1946)
         {
            _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
            _loc7_ = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
            _loc9_ = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc25_ = _loc14_ - _loc12_;
            this._SafeStr_399.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this._SafeStr_530 == b2internal::_SafeStr_1905)
            {
               this._SafeStr_460.Add(this.impulse3);
            }
            else if(this._SafeStr_530 == b2internal::_SafeStr_1017)
            {
               _loc6_ = this._SafeStr_460.z + this.impulse3.z;
               if(_loc6_ < 0)
               {
                  this._SafeStr_399.Solve22(this._SafeStr_2102,-_loc23_,-_loc24_);
                  this.impulse3.x = this._SafeStr_2102.x;
                  this.impulse3.y = this._SafeStr_2102.y;
                  this.impulse3.z = -this._SafeStr_460.z;
                  this._SafeStr_460.x += this._SafeStr_2102.x;
                  this._SafeStr_460.y += this._SafeStr_2102.y;
                  this._SafeStr_460.z = 0;
               }
            }
            else if(this._SafeStr_530 == b2internal::_SafeStr_2351)
            {
               _loc6_ = this._SafeStr_460.z + this.impulse3.z;
               if(_loc6_ > 0)
               {
                  this._SafeStr_399.Solve22(this._SafeStr_2102,-_loc23_,-_loc24_);
                  this.impulse3.x = this._SafeStr_2102.x;
                  this.impulse3.y = this._SafeStr_2102.y;
                  this.impulse3.z = -this._SafeStr_460.z;
                  this._SafeStr_460.x += this._SafeStr_2102.x;
                  this._SafeStr_460.y += this._SafeStr_2102.y;
                  this._SafeStr_460.z = 0;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
            _loc7_ = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
            _loc9_ = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc26_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc27_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this._SafeStr_399.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this._SafeStr_460.x += this.impulse2.x;
            this._SafeStr_460.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_._SafeStr_1234._SafeStr_1679(_loc11_);
         _loc2_._SafeStr_1846 = _loc12_;
         _loc3_._SafeStr_1234._SafeStr_1679(_loc13_);
         _loc3_._SafeStr_1846 = _loc14_;
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = b2internal::_SafeStr_496;
         var _loc6_:b2Body = b2internal::_SafeStr_907;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this._SafeStr_299 && this._SafeStr_530 != b2internal::_SafeStr_1946)
         {
            _loc25_ = _loc6_._SafeStr_2025.a - _loc5_._SafeStr_2025.a - this.m_referenceAngle;
            _loc26_ = 0;
            if(this._SafeStr_530 == b2internal::_SafeStr_1905)
            {
               _loc3_ = b2Math._SafeStr_392(_loc25_ - this.m_lowerAngle,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this._SafeStr_719 * _loc3_;
               _loc7_ = b2Math._SafeStr_283(_loc3_);
            }
            else if(this._SafeStr_530 == b2internal::_SafeStr_1017)
            {
               _loc3_ = _loc25_ - this.m_lowerAngle;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math._SafeStr_392(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this._SafeStr_719 * _loc3_;
            }
            else if(this._SafeStr_530 == b2internal::_SafeStr_2351)
            {
               _loc3_ = _loc25_ - this.m_upperAngle;
               _loc7_ = _loc3_;
               _loc3_ = b2Math._SafeStr_392(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this._SafeStr_719 * _loc3_;
            }
            _loc5_._SafeStr_2025.a -= _loc5_._SafeStr_882 * _loc26_;
            _loc6_._SafeStr_2025.a += _loc6_._SafeStr_882 * _loc26_;
            _loc5_._SafeStr_2018();
            _loc6_._SafeStr_2018();
         }
         _loc4_ = _loc5_._SafeStr_1473._SafeStr_945;
         var _loc12_:Number = this.m_localAnchor1.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
         var _loc13_:Number = this.m_localAnchor1.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_._SafeStr_1473._SafeStr_945;
         var _loc14_:Number = this.m_localAnchor2.x - _loc6_._SafeStr_2025._SafeStr_1721.x;
         var _loc15_:Number = this.m_localAnchor2.y - _loc6_._SafeStr_2025._SafeStr_1721.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         _loc15_ = _loc4_.col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_._SafeStr_2025.c.x + _loc14_ - _loc5_._SafeStr_2025.c.x - _loc12_;
         var _loc17_:Number = _loc6_._SafeStr_2025.c.y + _loc15_ - _loc5_._SafeStr_2025.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Number(Math.sqrt(_loc18_));
         var _loc20_:Number = _loc5_._SafeStr_615;
         var _loc21_:Number = _loc6_._SafeStr_615;
         var _loc22_:Number = _loc5_._SafeStr_882;
         var _loc23_:Number = _loc6_._SafeStr_882;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc30_ = 1 / _loc29_;
            _loc10_ = _loc30_ * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_._SafeStr_2025.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_._SafeStr_2025.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_._SafeStr_2025.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_._SafeStr_2025.c.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_._SafeStr_2025.c.x + _loc14_ - _loc5_._SafeStr_2025.c.x - _loc12_;
            _loc17_ = _loc6_._SafeStr_2025.c.y + _loc15_ - _loc5_._SafeStr_2025.c.y - _loc13_;
         }
         this.K1.col1.x = _loc20_ + _loc21_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc20_ + _loc21_;
         this.K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         this.K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         this.K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         this.K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col2.y = _loc23_ * _loc14_ * _loc14_;
         this._SafeStr_672._SafeStr_2130(this.K1);
         this._SafeStr_672._SafeStr_2378(this.K2);
         this._SafeStr_672._SafeStr_2378(this.K3);
         this._SafeStr_672._SafeStr_761(_SafeStr_2564,-_loc16_,-_loc17_);
         _loc10_ = _SafeStr_2564.x;
         _loc11_ = _SafeStr_2564.y;
         _loc5_._SafeStr_2025.c.x -= _loc5_._SafeStr_615 * _loc10_;
         _loc5_._SafeStr_2025.c.y -= _loc5_._SafeStr_615 * _loc11_;
         _loc5_._SafeStr_2025.a -= _loc5_._SafeStr_882 * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_._SafeStr_2025.c.x += _loc6_._SafeStr_615 * _loc10_;
         _loc6_._SafeStr_2025.c.y += _loc6_._SafeStr_615 * _loc11_;
         _loc6_._SafeStr_2025.a += _loc6_._SafeStr_882 * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_._SafeStr_2018();
         _loc6_._SafeStr_2018();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_299 = "_-cd"
 * @identifier _SafeStr_319 = "_-Z1"
 * @identifier _SafeStr_345 = "_-5O"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_396 = "_-C5"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_530 = "_-iO"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_672 = "_-RF"
 * @identifier _SafeStr_719 = "_-MC"
 * @identifier _SafeStr_761 = "_-EF"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_883 = "_-cZ"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_966 = "_-Cs"
 * @identifier _SafeStr_1017 = "_-OZ"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1247 = "_-8w"
 * @identifier _SafeStr_1352 = "_-IW"
 * @identifier _SafeStr_1365 = "_-Q7"
 * @identifier _SafeStr_1457 = "_-SO"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1517 = "_-bQ"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1725 = "_-et"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_1905 = "_-OR"
 * @identifier _SafeStr_1946 = "_-Gf"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2030 = "_-F8"
 * @identifier _SafeStr_2048 = "_-34"
 * @identifier _SafeStr_2102 = "_-L2"
 * @identifier _SafeStr_2130 = "_-gz"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2246 = "_-Vx"
 * @identifier _SafeStr_2301 = "_-6K"
 * @identifier _SafeStr_2351 = "_-Vc"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2378 = "_-2y"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2564 = "_-c2"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
