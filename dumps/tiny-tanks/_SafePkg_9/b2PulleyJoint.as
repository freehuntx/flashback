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
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const b2_minPulleyLength:Number = 2;
      
      private var m_ground:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var _SafeStr_1155:Number;
      
      private var _SafeStr_541:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var _SafeStr_1739:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var _SafeStr_460:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var _SafeStr_533:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.m_u1 = new b2Vec2();
         this.m_u2 = new b2Vec2();
         super(param1);
         this.m_ground = b2internal::_SafeStr_496._SafeStr_729.m_groundBody;
         this.m_groundAnchor1.x = param1._SafeStr_1331.x - this.m_ground._SafeStr_1473.position.x;
         this.m_groundAnchor1.y = param1._SafeStr_1331.y - this.m_ground._SafeStr_1473.position.y;
         this.m_groundAnchor2.x = param1._SafeStr_394.x - this.m_ground._SafeStr_1473.position.x;
         this.m_groundAnchor2.y = param1._SafeStr_394.y - this.m_ground._SafeStr_1473.position.y;
         this.m_localAnchor1._SafeStr_1679(param1._SafeStr_1627);
         this.m_localAnchor2._SafeStr_1679(param1._SafeStr_1876);
         this._SafeStr_541 = param1._SafeStr_2548;
         this._SafeStr_1155 = param1._SafeStr_1632 + this._SafeStr_541 * param1._SafeStr_1873;
         this.m_maxLength1 = b2Math._SafeStr_1704(param1._SafeStr_1304,this._SafeStr_1155 - this._SafeStr_541 * b2internal::b2_minPulleyLength);
         this.m_maxLength2 = b2Math._SafeStr_1704(param1._SafeStr_950,(this._SafeStr_1155 - b2internal::b2_minPulleyLength) / this._SafeStr_541);
         this._SafeStr_460 = 0;
         this.m_limitImpulse1 = 0;
         this.m_limitImpulse2 = 0;
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
         return new b2Vec2(param1 * this._SafeStr_460 * this.m_u2.x,param1 * this._SafeStr_460 * this.m_u2.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         return 0;
      }
      
      public function _SafeStr_1298() : b2Vec2
      {
         var _loc1_:b2Vec2 = this.m_ground._SafeStr_1473.position._SafeStr_2396();
         _loc1_.Add(this.m_groundAnchor1);
         return _loc1_;
      }
      
      public function _SafeStr_960() : b2Vec2
      {
         var _loc1_:b2Vec2 = this.m_ground._SafeStr_1473.position._SafeStr_2396();
         _loc1_.Add(this.m_groundAnchor2);
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc1_:b2Vec2 = b2internal::_SafeStr_496._SafeStr_2376(this.m_localAnchor1);
         var _loc2_:Number = this.m_ground._SafeStr_1473.position.x + this.m_groundAnchor1.x;
         var _loc3_:Number = this.m_ground._SafeStr_1473.position.y + this.m_groundAnchor1.y;
         var _loc4_:Number = _loc1_.x - _loc2_;
         var _loc5_:Number = _loc1_.y - _loc3_;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function GetLength2() : Number
      {
         var _loc1_:b2Vec2 = b2internal::_SafeStr_907._SafeStr_2376(this.m_localAnchor2);
         var _loc2_:Number = this.m_ground._SafeStr_1473.position.x + this.m_groundAnchor2.x;
         var _loc3_:Number = this.m_ground._SafeStr_1473.position.y + this.m_groundAnchor2.y;
         var _loc4_:Number = _loc1_.x - _loc2_;
         var _loc5_:Number = _loc1_.y - _loc3_;
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function _SafeStr_776() : Number
      {
         return this._SafeStr_541;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         _loc2_ = b2internal::_SafeStr_496;
         _loc3_ = b2internal::_SafeStr_907;
         _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc5_:Number = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
         _loc6_ = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
         var _loc7_:Number = _loc4_.col1.x * _loc5_ + _loc4_.col2.x * _loc6_;
         _loc6_ = _loc4_.col1.y * _loc5_ + _loc4_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
         _loc7_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         var _loc10_:Number = _loc2_._SafeStr_2025.c.x + _loc5_;
         var _loc11_:Number = _loc2_._SafeStr_2025.c.y + _loc6_;
         var _loc12_:Number = _loc3_._SafeStr_2025.c.x + _loc8_;
         var _loc13_:Number = _loc3_._SafeStr_2025.c.y + _loc9_;
         var _loc14_:Number = this.m_ground._SafeStr_1473.position.x + this.m_groundAnchor1.x;
         var _loc15_:Number = this.m_ground._SafeStr_1473.position.y + this.m_groundAnchor1.y;
         var _loc16_:Number = this.m_ground._SafeStr_1473.position.x + this.m_groundAnchor2.x;
         var _loc17_:Number = this.m_ground._SafeStr_1473.position.y + this.m_groundAnchor2.y;
         this.m_u1.Set(_loc10_ - _loc14_,_loc11_ - _loc15_);
         this.m_u2.Set(_loc12_ - _loc16_,_loc13_ - _loc17_);
         var _loc18_:Number = this.m_u1.Length();
         var _loc19_:Number = this.m_u2.Length();
         if(_loc18_ > b2Settings.b2_linearSlop)
         {
            this.m_u1.Multiply(1 / _loc18_);
         }
         else
         {
            this.m_u1._SafeStr_1807();
         }
         if(_loc19_ > b2Settings.b2_linearSlop)
         {
            this.m_u2.Multiply(1 / _loc19_);
         }
         else
         {
            this.m_u2._SafeStr_1807();
         }
         var _loc20_:Number = this._SafeStr_1155 - _loc18_ - this._SafeStr_541 * _loc19_;
         if(_loc20_ > 0)
         {
            this._SafeStr_533 = b2internal::_SafeStr_1946;
            this._SafeStr_460 = 0;
         }
         else
         {
            this._SafeStr_533 = b2internal::_SafeStr_2351;
         }
         if(_loc18_ < this.m_maxLength1)
         {
            this.m_limitState1 = b2internal::_SafeStr_1946;
            this.m_limitImpulse1 = 0;
         }
         else
         {
            this.m_limitState1 = b2internal::_SafeStr_2351;
         }
         if(_loc19_ < this.m_maxLength2)
         {
            this.m_limitState2 = b2internal::_SafeStr_1946;
            this.m_limitImpulse2 = 0;
         }
         else
         {
            this.m_limitState2 = b2internal::_SafeStr_2351;
         }
         var _loc21_:Number = _loc5_ * this.m_u1.y - _loc6_ * this.m_u1.x;
         var _loc22_:Number = _loc8_ * this.m_u2.y - _loc9_ * this.m_u2.x;
         this.m_limitMass1 = _loc2_._SafeStr_615 + _loc2_._SafeStr_882 * _loc21_ * _loc21_;
         this.m_limitMass2 = _loc3_._SafeStr_615 + _loc3_._SafeStr_882 * _loc22_ * _loc22_;
         this._SafeStr_1739 = this.m_limitMass1 + this._SafeStr_541 * this._SafeStr_541 * this.m_limitMass2;
         this.m_limitMass1 = 1 / this.m_limitMass1;
         this.m_limitMass2 = 1 / this.m_limitMass2;
         this._SafeStr_1739 = 1 / this._SafeStr_1739;
         if(param1.warmStarting)
         {
            this._SafeStr_460 *= param1._SafeStr_889;
            this.m_limitImpulse1 *= param1._SafeStr_889;
            this.m_limitImpulse2 *= param1._SafeStr_889;
            _loc23_ = (-this._SafeStr_460 - this.m_limitImpulse1) * this.m_u1.x;
            _loc24_ = (-this._SafeStr_460 - this.m_limitImpulse1) * this.m_u1.y;
            _loc25_ = (-this._SafeStr_541 * this._SafeStr_460 - this.m_limitImpulse2) * this.m_u2.x;
            _loc26_ = (-this._SafeStr_541 * this._SafeStr_460 - this.m_limitImpulse2) * this.m_u2.y;
            _loc2_._SafeStr_1234.x += _loc2_._SafeStr_615 * _loc23_;
            _loc2_._SafeStr_1234.y += _loc2_._SafeStr_615 * _loc24_;
            _loc2_._SafeStr_1846 += _loc2_._SafeStr_882 * (_loc5_ * _loc24_ - _loc6_ * _loc23_);
            _loc3_._SafeStr_1234.x += _loc3_._SafeStr_615 * _loc25_;
            _loc3_._SafeStr_1234.y += _loc3_._SafeStr_615 * _loc26_;
            _loc3_._SafeStr_1846 += _loc3_._SafeStr_882 * (_loc8_ * _loc26_ - _loc9_ * _loc25_);
         }
         else
         {
            this._SafeStr_460 = 0;
            this.m_limitImpulse1 = 0;
            this.m_limitImpulse2 = 0;
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
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
         var _loc2_:b2Body = b2internal::_SafeStr_496;
         var _loc3_:b2Body = b2internal::_SafeStr_907;
         _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
         var _loc5_:Number = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
         var _loc6_:Number = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
         var _loc7_:Number = _loc4_.col1.x * _loc5_ + _loc4_.col2.x * _loc6_;
         _loc6_ = _loc4_.col1.y * _loc5_ + _loc4_.col2.y * _loc6_;
         _loc5_ = _loc7_;
         _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
         _loc7_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc7_;
         if(this._SafeStr_533 == b2internal::_SafeStr_2351)
         {
            _loc10_ = _loc2_._SafeStr_1234.x + -_loc2_._SafeStr_1846 * _loc6_;
            _loc11_ = _loc2_._SafeStr_1234.y + _loc2_._SafeStr_1846 * _loc5_;
            _loc12_ = _loc3_._SafeStr_1234.x + -_loc3_._SafeStr_1846 * _loc9_;
            _loc13_ = _loc3_._SafeStr_1234.y + _loc3_._SafeStr_1846 * _loc8_;
            _loc18_ = -(this.m_u1.x * _loc10_ + this.m_u1.y * _loc11_) - this._SafeStr_541 * (this.m_u2.x * _loc12_ + this.m_u2.y * _loc13_);
            _loc19_ = this._SafeStr_1739 * -_loc18_;
            _loc20_ = this._SafeStr_460;
            this._SafeStr_460 = b2Math._SafeStr_2143(0,this._SafeStr_460 + _loc19_);
            _loc19_ = this._SafeStr_460 - _loc20_;
            _loc14_ = -_loc19_ * this.m_u1.x;
            _loc15_ = -_loc19_ * this.m_u1.y;
            _loc16_ = -this._SafeStr_541 * _loc19_ * this.m_u2.x;
            _loc17_ = -this._SafeStr_541 * _loc19_ * this.m_u2.y;
            _loc2_._SafeStr_1234.x += _loc2_._SafeStr_615 * _loc14_;
            _loc2_._SafeStr_1234.y += _loc2_._SafeStr_615 * _loc15_;
            _loc2_._SafeStr_1846 += _loc2_._SafeStr_882 * (_loc5_ * _loc15_ - _loc6_ * _loc14_);
            _loc3_._SafeStr_1234.x += _loc3_._SafeStr_615 * _loc16_;
            _loc3_._SafeStr_1234.y += _loc3_._SafeStr_615 * _loc17_;
            _loc3_._SafeStr_1846 += _loc3_._SafeStr_882 * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
         }
         if(this.m_limitState1 == b2internal::_SafeStr_2351)
         {
            _loc10_ = _loc2_._SafeStr_1234.x + -_loc2_._SafeStr_1846 * _loc6_;
            _loc11_ = _loc2_._SafeStr_1234.y + _loc2_._SafeStr_1846 * _loc5_;
            _loc18_ = -(this.m_u1.x * _loc10_ + this.m_u1.y * _loc11_);
            _loc19_ = -this.m_limitMass1 * _loc18_;
            _loc20_ = this.m_limitImpulse1;
            this.m_limitImpulse1 = b2Math._SafeStr_2143(0,this.m_limitImpulse1 + _loc19_);
            _loc19_ = this.m_limitImpulse1 - _loc20_;
            _loc14_ = -_loc19_ * this.m_u1.x;
            _loc15_ = -_loc19_ * this.m_u1.y;
            _loc2_._SafeStr_1234.x += _loc2_._SafeStr_615 * _loc14_;
            _loc2_._SafeStr_1234.y += _loc2_._SafeStr_615 * _loc15_;
            _loc2_._SafeStr_1846 += _loc2_._SafeStr_882 * (_loc5_ * _loc15_ - _loc6_ * _loc14_);
         }
         if(this.m_limitState2 == b2internal::_SafeStr_2351)
         {
            _loc12_ = _loc3_._SafeStr_1234.x + -_loc3_._SafeStr_1846 * _loc9_;
            _loc13_ = _loc3_._SafeStr_1234.y + _loc3_._SafeStr_1846 * _loc8_;
            _loc18_ = -(this.m_u2.x * _loc12_ + this.m_u2.y * _loc13_);
            _loc19_ = -this.m_limitMass2 * _loc18_;
            _loc20_ = this.m_limitImpulse2;
            this.m_limitImpulse2 = b2Math._SafeStr_2143(0,this.m_limitImpulse2 + _loc19_);
            _loc19_ = this.m_limitImpulse2 - _loc20_;
            _loc16_ = -_loc19_ * this.m_u2.x;
            _loc17_ = -_loc19_ * this.m_u2.y;
            _loc3_._SafeStr_1234.x += _loc3_._SafeStr_615 * _loc16_;
            _loc3_._SafeStr_1234.y += _loc3_._SafeStr_615 * _loc17_;
            _loc3_._SafeStr_1846 += _loc3_._SafeStr_882 * (_loc8_ * _loc17_ - _loc9_ * _loc16_);
         }
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc4_:b2Mat22 = null;
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
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:b2Body = b2internal::_SafeStr_496;
         var _loc3_:b2Body = b2internal::_SafeStr_907;
         var _loc5_:Number = this.m_ground._SafeStr_1473.position.x + this.m_groundAnchor1.x;
         var _loc6_:Number = this.m_ground._SafeStr_1473.position.y + this.m_groundAnchor1.y;
         var _loc7_:Number = this.m_ground._SafeStr_1473.position.x + this.m_groundAnchor2.x;
         var _loc8_:Number = this.m_ground._SafeStr_1473.position.y + this.m_groundAnchor2.y;
         var _loc24_:Number = 0;
         if(this._SafeStr_533 == b2internal::_SafeStr_2351)
         {
            _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
            _loc9_ = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
            _loc10_ = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
            _loc23_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc23_;
            _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
            _loc11_ = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
            _loc12_ = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
            _loc23_ = _loc4_.col1.x * _loc11_ + _loc4_.col2.x * _loc12_;
            _loc12_ = _loc4_.col1.y * _loc11_ + _loc4_.col2.y * _loc12_;
            _loc11_ = _loc23_;
            _loc13_ = _loc2_._SafeStr_2025.c.x + _loc9_;
            _loc14_ = _loc2_._SafeStr_2025.c.y + _loc10_;
            _loc15_ = _loc3_._SafeStr_2025.c.x + _loc11_;
            _loc16_ = _loc3_._SafeStr_2025.c.y + _loc12_;
            this.m_u1.Set(_loc13_ - _loc5_,_loc14_ - _loc6_);
            this.m_u2.Set(_loc15_ - _loc7_,_loc16_ - _loc8_);
            _loc17_ = this.m_u1.Length();
            _loc18_ = this.m_u2.Length();
            if(_loc17_ > b2Settings.b2_linearSlop)
            {
               this.m_u1.Multiply(1 / _loc17_);
            }
            else
            {
               this.m_u1._SafeStr_1807();
            }
            if(_loc18_ > b2Settings.b2_linearSlop)
            {
               this.m_u2.Multiply(1 / _loc18_);
            }
            else
            {
               this.m_u2._SafeStr_1807();
            }
            _loc19_ = this._SafeStr_1155 - _loc17_ - this._SafeStr_541 * _loc18_;
            _loc24_ = b2Math._SafeStr_2143(_loc24_,-_loc19_);
            _loc19_ = b2Math._SafeStr_392(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc20_ = -this._SafeStr_1739 * _loc19_;
            _loc13_ = -_loc20_ * this.m_u1.x;
            _loc14_ = -_loc20_ * this.m_u1.y;
            _loc15_ = -this._SafeStr_541 * _loc20_ * this.m_u2.x;
            _loc16_ = -this._SafeStr_541 * _loc20_ * this.m_u2.y;
            _loc2_._SafeStr_2025.c.x += _loc2_._SafeStr_615 * _loc13_;
            _loc2_._SafeStr_2025.c.y += _loc2_._SafeStr_615 * _loc14_;
            _loc2_._SafeStr_2025.a += _loc2_._SafeStr_882 * (_loc9_ * _loc14_ - _loc10_ * _loc13_);
            _loc3_._SafeStr_2025.c.x += _loc3_._SafeStr_615 * _loc15_;
            _loc3_._SafeStr_2025.c.y += _loc3_._SafeStr_615 * _loc16_;
            _loc3_._SafeStr_2025.a += _loc3_._SafeStr_882 * (_loc11_ * _loc16_ - _loc12_ * _loc15_);
            _loc2_._SafeStr_2018();
            _loc3_._SafeStr_2018();
         }
         if(this.m_limitState1 == b2internal::_SafeStr_2351)
         {
            _loc4_ = _loc2_._SafeStr_1473._SafeStr_945;
            _loc9_ = this.m_localAnchor1.x - _loc2_._SafeStr_2025._SafeStr_1721.x;
            _loc10_ = this.m_localAnchor1.y - _loc2_._SafeStr_2025._SafeStr_1721.y;
            _loc23_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc23_;
            _loc13_ = _loc2_._SafeStr_2025.c.x + _loc9_;
            _loc14_ = _loc2_._SafeStr_2025.c.y + _loc10_;
            this.m_u1.Set(_loc13_ - _loc5_,_loc14_ - _loc6_);
            _loc17_ = this.m_u1.Length();
            if(_loc17_ > b2Settings.b2_linearSlop)
            {
               this.m_u1.x *= 1 / _loc17_;
               this.m_u1.y *= 1 / _loc17_;
            }
            else
            {
               this.m_u1._SafeStr_1807();
            }
            _loc19_ = this.m_maxLength1 - _loc17_;
            _loc24_ = b2Math._SafeStr_2143(_loc24_,-_loc19_);
            _loc19_ = b2Math._SafeStr_392(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc20_ = -this.m_limitMass1 * _loc19_;
            _loc13_ = -_loc20_ * this.m_u1.x;
            _loc14_ = -_loc20_ * this.m_u1.y;
            _loc2_._SafeStr_2025.c.x += _loc2_._SafeStr_615 * _loc13_;
            _loc2_._SafeStr_2025.c.y += _loc2_._SafeStr_615 * _loc14_;
            _loc2_._SafeStr_2025.a += _loc2_._SafeStr_882 * (_loc9_ * _loc14_ - _loc10_ * _loc13_);
            _loc2_._SafeStr_2018();
         }
         if(this.m_limitState2 == b2internal::_SafeStr_2351)
         {
            _loc4_ = _loc3_._SafeStr_1473._SafeStr_945;
            _loc11_ = this.m_localAnchor2.x - _loc3_._SafeStr_2025._SafeStr_1721.x;
            _loc12_ = this.m_localAnchor2.y - _loc3_._SafeStr_2025._SafeStr_1721.y;
            _loc23_ = _loc4_.col1.x * _loc11_ + _loc4_.col2.x * _loc12_;
            _loc12_ = _loc4_.col1.y * _loc11_ + _loc4_.col2.y * _loc12_;
            _loc11_ = _loc23_;
            _loc15_ = _loc3_._SafeStr_2025.c.x + _loc11_;
            _loc16_ = _loc3_._SafeStr_2025.c.y + _loc12_;
            this.m_u2.Set(_loc15_ - _loc7_,_loc16_ - _loc8_);
            _loc18_ = this.m_u2.Length();
            if(_loc18_ > b2Settings.b2_linearSlop)
            {
               this.m_u2.x *= 1 / _loc18_;
               this.m_u2.y *= 1 / _loc18_;
            }
            else
            {
               this.m_u2._SafeStr_1807();
            }
            _loc19_ = this.m_maxLength2 - _loc18_;
            _loc24_ = b2Math._SafeStr_2143(_loc24_,-_loc19_);
            _loc19_ = b2Math._SafeStr_392(_loc19_ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
            _loc20_ = -this.m_limitMass2 * _loc19_;
            _loc15_ = -_loc20_ * this.m_u2.x;
            _loc16_ = -_loc20_ * this.m_u2.y;
            _loc3_._SafeStr_2025.c.x += _loc3_._SafeStr_615 * _loc15_;
            _loc3_._SafeStr_2025.c.y += _loc3_._SafeStr_615 * _loc16_;
            _loc3_._SafeStr_2025.a += _loc3_._SafeStr_882 * (_loc11_ * _loc16_ - _loc12_ * _loc15_);
            _loc3_._SafeStr_2018();
         }
         return _loc24_ < b2Settings.b2_linearSlop;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_394 = "_-ZG"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_533 = "_-Ma"
 * @identifier _SafeStr_541 = "_-6D"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_729 = "_-MM"
 * @identifier _SafeStr_776 = "_-cz"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_950 = "_-QE"
 * @identifier _SafeStr_960 = "_-EB"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1155 = "_-gY"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1298 = "_-9F"
 * @identifier _SafeStr_1304 = "_-EH"
 * @identifier _SafeStr_1331 = "_-Un"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1632 = "_-Iy"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1704 = "_-RD"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1739 = "_-GM"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1873 = "_-Va"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_1946 = "_-Gf"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2143 = "_-bx"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2351 = "_-Vc"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2548 = "_-Fx"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
