package _SafePkg_0
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Sweep;
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_1.b2ControllerEdge;
   import _SafePkg_20._SafeCls_21;
   import _SafePkg_9.b2JointEdge;
   import _SafePkg_8.b2EdgeShape;
   import _SafePkg_8.b2MassData;
   import _SafePkg_8.b2Shape;
   import _SafePkg_19.b2Contact;
   import _SafePkg_19.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var s_xf1:b2Transform = new b2Transform();
      
      b2internal static var _SafeStr_2131:uint = 1;
      
      b2internal static var _SafeStr_1487:uint = 2;
      
      b2internal static var _SafeStr_2219:uint = 4;
      
      b2internal static var _SafeStr_474:uint = 8;
      
      b2internal static var _SafeStr_431:uint = 16;
      
      b2internal static var _SafeStr_718:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      b2internal var _SafeStr_1043:uint;
      
      b2internal var _SafeStr_972:int;
      
      b2internal var _SafeStr_2226:int;
      
      b2internal var _SafeStr_1473:b2Transform = new b2Transform();
      
      b2internal var _SafeStr_2025:b2Sweep = new b2Sweep();
      
      b2internal var _SafeStr_1234:b2Vec2 = new b2Vec2();
      
      b2internal var _SafeStr_1846:Number;
      
      b2internal var _SafeStr_616:b2Vec2 = new b2Vec2();
      
      b2internal var _SafeStr_1515:Number;
      
      b2internal var _SafeStr_729:b2World;
      
      b2internal var _SafeStr_2380:b2Body;
      
      b2internal var _SafeStr_2195:b2Body;
      
      b2internal var m_fixtureList:b2Fixture;
      
      b2internal var _SafeStr_564:int;
      
      b2internal var m_controllerList:b2ControllerEdge;
      
      b2internal var _SafeStr_1193:int;
      
      b2internal var m_jointList:b2JointEdge;
      
      b2internal var m_contactList:b2ContactEdge;
      
      b2internal var _SafeStr_399:Number;
      
      b2internal var _SafeStr_615:Number;
      
      b2internal var _SafeStr_773:Number;
      
      b2internal var _SafeStr_882:Number;
      
      b2internal var _SafeStr_708:Number;
      
      b2internal var m_linearDamping:Number;
      
      b2internal var m_angularDamping:Number;
      
      b2internal var _SafeStr_584:Number;
      
      private var _SafeStr_961:*;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         super();
         this._SafeStr_1043 = 0;
         if(param1.bullet)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_474;
         }
         if(param1._SafeStr_2361)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_431;
         }
         if(param1.allowSleep)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_2219;
         }
         if(param1._SafeStr_338)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_1487;
         }
         if(param1.active)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_718;
         }
         this._SafeStr_729 = param2;
         this._SafeStr_1473.position._SafeStr_1679(param1.position);
         this._SafeStr_1473._SafeStr_945.Set(param1.angle);
         this._SafeStr_2025._SafeStr_1721._SafeStr_1807();
         this._SafeStr_2025.t0 = 1;
         this._SafeStr_2025.a0 = this._SafeStr_2025.a = param1.angle;
         var _loc3_:b2Mat22 = this._SafeStr_1473._SafeStr_945;
         var _loc4_:b2Vec2 = this._SafeStr_2025._SafeStr_1721;
         this._SafeStr_2025.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this._SafeStr_2025.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this._SafeStr_2025.c.x += this._SafeStr_1473.position.x;
         this._SafeStr_2025.c.y += this._SafeStr_1473.position.y;
         this._SafeStr_2025.c0._SafeStr_1679(this._SafeStr_2025.c);
         this.m_jointList = null;
         this.m_controllerList = null;
         this.m_contactList = null;
         this._SafeStr_1193 = 0;
         this._SafeStr_2380 = null;
         this._SafeStr_2195 = null;
         this._SafeStr_1234._SafeStr_1679(param1.linearVelocity);
         this._SafeStr_1846 = param1._SafeStr_2355;
         this.m_linearDamping = param1.linearDamping;
         this.m_angularDamping = param1.angularDamping;
         this._SafeStr_616.Set(0,0);
         this._SafeStr_1515 = 0;
         this._SafeStr_584 = 0;
         this._SafeStr_972 = param1.type;
         if(this._SafeStr_972 == b2_dynamicBody)
         {
            this._SafeStr_399 = 1;
            this._SafeStr_615 = 1;
         }
         else
         {
            this._SafeStr_399 = 0;
            this._SafeStr_615 = 0;
         }
         this._SafeStr_773 = 0;
         this._SafeStr_882 = 0;
         this._SafeStr_708 = param1._SafeStr_1147;
         this._SafeStr_961 = param1.userData;
         this.m_fixtureList = null;
         this._SafeStr_564 = 0;
      }
      
      private function _SafeStr_730(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Number(Math.atan2(param2._SafeStr_510().y,param2._SafeStr_510().x));
         var _loc5_:Number = Number(Math.tan((_loc4_ - param3) * 0.5));
         var _loc6_:b2Vec2 = b2Math._SafeStr_357(_loc5_,param2._SafeStr_510());
         _loc6_ = b2Math._SafeStr_2442(_loc6_,param2._SafeStr_2296());
         _loc6_ = b2Math._SafeStr_357(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math._SafeStr_1063(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2 = b2Math._SafeStr_1063(param1._SafeStr_510(),param2._SafeStr_510());
         _loc7_.Normalize();
         var _loc8_:Boolean = b2Math._SafeCls_184(param1._SafeStr_510(),param2._SafeStr_2296()) > 0;
         param1._SafeStr_1681(param2,_loc6_,_loc7_,_loc8_);
         param2._SafeStr_1828(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:_SafeCls_21 = null;
         if(this._SafeStr_729._SafeStr_321() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.Create(this,this._SafeStr_1473,param1);
         if(this._SafeStr_1043 & b2internal::_SafeStr_718)
         {
            _loc3_ = this._SafeStr_729._SafeStr_1215._SafeStr_450;
            _loc2_._SafeStr_491(_loc3_,this._SafeStr_1473);
         }
         _loc2_._SafeStr_2195 = this.m_fixtureList;
         this.m_fixtureList = _loc2_;
         ++this._SafeStr_564;
         _loc2_._SafeStr_2654 = this;
         if(_loc2_._SafeStr_1754 > 0)
         {
            this._SafeStr_395();
         }
         this._SafeStr_729._SafeStr_1043 |= b2World._SafeStr_1556;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function _SafeStr_2353(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:_SafeCls_21 = null;
         if(this._SafeStr_729._SafeStr_321() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.m_fixtureList;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_._SafeStr_2195 = param1._SafeStr_2195;
               }
               else
               {
                  this.m_fixtureList = param1._SafeStr_2195;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_._SafeStr_2195;
         }
         var _loc5_:b2ContactEdge = this.m_contactList;
         while(_loc5_)
         {
            _loc6_ = _loc5_._SafeStr_919;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_._SafeStr_665();
            _loc8_ = _loc6_._SafeStr_2320();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this._SafeStr_729._SafeStr_1215.Destroy(_loc6_);
            }
         }
         if(this._SafeStr_1043 & b2internal::_SafeStr_718)
         {
            _loc9_ = this._SafeStr_729._SafeStr_1215._SafeStr_450;
            param1._SafeStr_1535(_loc9_);
         }
         param1.Destroy();
         param1._SafeStr_2654 = null;
         param1._SafeStr_2195 = null;
         --this._SafeStr_564;
         this._SafeStr_395();
      }
      
      public function SetPositionAndAngle(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this._SafeStr_729._SafeStr_321() == true)
         {
            return;
         }
         this._SafeStr_1473._SafeStr_945.Set(param2);
         this._SafeStr_1473.position._SafeStr_1679(param1);
         var _loc4_:b2Mat22 = this._SafeStr_1473._SafeStr_945;
         var _loc5_:b2Vec2 = this._SafeStr_2025._SafeStr_1721;
         this._SafeStr_2025.c.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this._SafeStr_2025.c.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this._SafeStr_2025.c.x += this._SafeStr_1473.position.x;
         this._SafeStr_2025.c.y += this._SafeStr_1473.position.y;
         this._SafeStr_2025.c0._SafeStr_1679(this._SafeStr_2025.c);
         this._SafeStr_2025.a0 = this._SafeStr_2025.a = param2;
         var _loc6_:_SafeCls_21 = this._SafeStr_729._SafeStr_1215._SafeStr_450;
         _loc3_ = this.m_fixtureList;
         while(_loc3_)
         {
            _loc3_._SafeStr_839(_loc6_,this._SafeStr_1473,this._SafeStr_1473);
            _loc3_ = _loc3_._SafeStr_2195;
         }
         this._SafeStr_729._SafeStr_1215._SafeStr_2390();
      }
      
      public function _SafeStr_1720(param1:b2Transform) : void
      {
         this.SetPositionAndAngle(param1.position,param1.GetAngle());
      }
      
      public function GetTransform() : b2Transform
      {
         return this._SafeStr_1473;
      }
      
      public function _SafeStr_1110() : b2Vec2
      {
         return this._SafeStr_1473.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.SetPositionAndAngle(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this._SafeStr_2025.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.SetPositionAndAngle(this._SafeStr_1110(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this._SafeStr_2025.c;
      }
      
      public function _SafeStr_933() : b2Vec2
      {
         return this._SafeStr_2025._SafeStr_1721;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this._SafeStr_972 == b2_staticBody)
         {
            return;
         }
         this._SafeStr_1234._SafeStr_1679(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this._SafeStr_1234;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this._SafeStr_972 == b2_staticBody)
         {
            return;
         }
         this._SafeStr_1846 = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this._SafeStr_1846;
      }
      
      public function _SafeStr_2210() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this._SafeStr_978();
         _loc1_.allowSleep = (this._SafeStr_1043 & b2internal::_SafeStr_2219) == b2internal::_SafeStr_2219;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.m_angularDamping;
         _loc1_._SafeStr_2355 = this._SafeStr_1846;
         _loc1_._SafeStr_2361 = (this._SafeStr_1043 & b2internal::_SafeStr_431) == b2internal::_SafeStr_431;
         _loc1_.bullet = (this._SafeStr_1043 & b2internal::_SafeStr_474) == b2internal::_SafeStr_474;
         _loc1_._SafeStr_338 = (this._SafeStr_1043 & b2internal::_SafeStr_1487) == b2internal::_SafeStr_1487;
         _loc1_.linearDamping = this.m_linearDamping;
         _loc1_.linearVelocity._SafeStr_1679(this.GetLinearVelocity());
         _loc1_.position = this._SafeStr_1110();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this._SafeStr_972 != b2_dynamicBody)
         {
            return;
         }
         if(this._SafeStr_2035() == false)
         {
            this._SafeStr_1589(true);
         }
         this._SafeStr_616.x += param1.x;
         this._SafeStr_616.y += param1.y;
         this._SafeStr_1515 += (param2.x - this._SafeStr_2025.c.x) * param1.y - (param2.y - this._SafeStr_2025.c.y) * param1.x;
      }
      
      public function _SafeStr_647(param1:Number) : void
      {
         if(this._SafeStr_972 != b2_dynamicBody)
         {
            return;
         }
         if(this._SafeStr_2035() == false)
         {
            this._SafeStr_1589(true);
         }
         this._SafeStr_1515 += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this._SafeStr_972 != b2_dynamicBody)
         {
            return;
         }
         if(this._SafeStr_2035() == false)
         {
            this._SafeStr_1589(true);
         }
         this._SafeStr_1234.x += this._SafeStr_615 * param1.x;
         this._SafeStr_1234.y += this._SafeStr_615 * param1.y;
         this._SafeStr_1846 += this._SafeStr_882 * ((param2.x - this._SafeStr_2025.c.x) * param1.y - (param2.y - this._SafeStr_2025.c.y) * param1.x);
      }
      
      public function _SafeStr_2003(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity()._SafeStr_2396();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this._SafeStr_729.CreateBody(this._SafeStr_2210());
         var _loc8_:b2Fixture = _loc5_.m_fixtureList;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_._SafeStr_2195;
               if(_loc7_)
               {
                  _loc7_._SafeStr_2195 = _loc13_;
               }
               else
               {
                  _loc5_.m_fixtureList = _loc13_;
               }
               --_loc5_._SafeStr_564;
               _loc8_._SafeStr_2195 = _loc6_.m_fixtureList;
               _loc6_.m_fixtureList = _loc8_;
               ++_loc6_._SafeStr_564;
               _loc8_._SafeStr_2654 = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_._SafeStr_2195;
            }
         }
         _loc5_._SafeStr_395();
         _loc6_._SafeStr_395();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math._SafeStr_1063(_loc2_,b2Math._SafeStr_429(_loc3_,b2Math._SafeStr_2442(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math._SafeStr_1063(_loc2_,b2Math._SafeStr_429(_loc3_,b2Math._SafeStr_2442(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_._SafeStr_539();
         _loc6_._SafeStr_539();
         return _loc6_;
      }
      
      public function _SafeStr_1245(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.m_fixtureList;
         while(_loc2_)
         {
            _loc11_ = _loc2_._SafeStr_2195;
            --param1._SafeStr_564;
            _loc2_._SafeStr_2195 = this.m_fixtureList;
            this.m_fixtureList = _loc2_;
            ++this._SafeStr_564;
            _loc2_._SafeStr_2654 = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_._SafeStr_564 = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity()._SafeStr_2396();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity()._SafeStr_2396();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_._SafeStr_395();
         this._SafeStr_539();
      }
      
      public function _SafeStr_1885() : Number
      {
         return this._SafeStr_399;
      }
      
      public function _SafeStr_1602() : Number
      {
         return this._SafeStr_773;
      }
      
      public function _SafeStr_760(param1:b2MassData) : void
      {
         param1._SafeStr_1106 = this._SafeStr_399;
         param1.I = this._SafeStr_773;
         param1.center._SafeStr_1679(this._SafeStr_2025._SafeStr_1721);
      }
      
      public function _SafeStr_2183(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this._SafeStr_729._SafeStr_321() == false);
         if(this._SafeStr_729._SafeStr_321() == true)
         {
            return;
         }
         if(this._SafeStr_972 != b2_dynamicBody)
         {
            return;
         }
         this._SafeStr_615 = 0;
         this._SafeStr_773 = 0;
         this._SafeStr_882 = 0;
         this._SafeStr_399 = param1._SafeStr_1106;
         if(this._SafeStr_399 <= 0)
         {
            this._SafeStr_399 = 1;
         }
         this._SafeStr_615 = 1 / this._SafeStr_399;
         if(param1.I > 0 && (this._SafeStr_1043 & b2internal::_SafeStr_431) == 0)
         {
            this._SafeStr_773 = param1.I - this._SafeStr_399 * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this._SafeStr_882 = 1 / this._SafeStr_773;
         }
         var _loc2_:b2Vec2 = this._SafeStr_2025.c._SafeStr_2396();
         this._SafeStr_2025._SafeStr_1721._SafeStr_1679(param1.center);
         this._SafeStr_2025.c0._SafeStr_1679(b2Math._SafeStr_457(this._SafeStr_1473,this._SafeStr_2025._SafeStr_1721));
         this._SafeStr_2025.c._SafeStr_1679(this._SafeStr_2025.c0);
         this._SafeStr_1234.x += this._SafeStr_1846 * -(this._SafeStr_2025.c.y - _loc2_.y);
         this._SafeStr_1234.y += this._SafeStr_1846 * (this._SafeStr_2025.c.x - _loc2_.x);
      }
      
      public function _SafeStr_395() : void
      {
         var _loc4_:b2MassData = null;
         this._SafeStr_399 = 0;
         this._SafeStr_615 = 0;
         this._SafeStr_773 = 0;
         this._SafeStr_882 = 0;
         this._SafeStr_2025._SafeStr_1721._SafeStr_1807();
         if(this._SafeStr_972 == b2_staticBody || this._SafeStr_972 == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2._SafeStr_1859(0,0);
         var _loc2_:b2Fixture = this.m_fixtureList;
         while(_loc2_)
         {
            if(_loc2_._SafeStr_1754 != 0)
            {
               _loc4_ = _loc2_._SafeStr_760();
               this._SafeStr_399 += _loc4_._SafeStr_1106;
               _loc1_.x += _loc4_.center.x * _loc4_._SafeStr_1106;
               _loc1_.y += _loc4_.center.y * _loc4_._SafeStr_1106;
               this._SafeStr_773 += _loc4_.I;
            }
            _loc2_ = _loc2_._SafeStr_2195;
         }
         if(this._SafeStr_399 > 0)
         {
            this._SafeStr_615 = 1 / this._SafeStr_399;
            _loc1_.x *= this._SafeStr_615;
            _loc1_.y *= this._SafeStr_615;
         }
         else
         {
            this._SafeStr_399 = 1;
            this._SafeStr_615 = 1;
         }
         if(this._SafeStr_773 > 0 && (this._SafeStr_1043 & b2internal::_SafeStr_431) == 0)
         {
            this._SafeStr_773 -= this._SafeStr_399 * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this._SafeStr_773 *= this._SafeStr_708;
            b2Settings.b2Assert(this._SafeStr_773 > 0);
            this._SafeStr_882 = 1 / this._SafeStr_773;
         }
         else
         {
            this._SafeStr_773 = 0;
            this._SafeStr_882 = 0;
         }
         var _loc3_:b2Vec2 = this._SafeStr_2025.c._SafeStr_2396();
         this._SafeStr_2025._SafeStr_1721._SafeStr_1679(_loc1_);
         this._SafeStr_2025.c0._SafeStr_1679(b2Math._SafeStr_457(this._SafeStr_1473,this._SafeStr_2025._SafeStr_1721));
         this._SafeStr_2025.c._SafeStr_1679(this._SafeStr_2025.c0);
         this._SafeStr_1234.x += this._SafeStr_1846 * -(this._SafeStr_2025.c.y - _loc3_.y);
         this._SafeStr_1234.y += this._SafeStr_1846 * (this._SafeStr_2025.c.x - _loc3_.x);
      }
      
      public function _SafeStr_2376(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this._SafeStr_1473._SafeStr_945;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this._SafeStr_1473.position.x;
         _loc3_.y += this._SafeStr_1473.position.y;
         return _loc3_;
      }
      
      public function _SafeStr_1488(param1:b2Vec2) : b2Vec2
      {
         return b2Math._SafeStr_734(this._SafeStr_1473._SafeStr_945,param1);
      }
      
      public function _SafeStr_2059(param1:b2Vec2) : b2Vec2
      {
         return b2Math._SafeStr_2122(this._SafeStr_1473,param1);
      }
      
      public function _SafeStr_2287(param1:b2Vec2) : b2Vec2
      {
         return b2Math._SafeStr_1496(this._SafeStr_1473._SafeStr_945,param1);
      }
      
      public function _SafeStr_908(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this._SafeStr_1234.x - this._SafeStr_1846 * (param1.y - this._SafeStr_2025.c.y),this._SafeStr_1234.y + this._SafeStr_1846 * (param1.x - this._SafeStr_2025.c.x));
      }
      
      public function _SafeStr_1293(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this._SafeStr_1473._SafeStr_945;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this._SafeStr_1473.position.x;
         _loc3_.y += this._SafeStr_1473.position.y;
         return new b2Vec2(this._SafeStr_1234.x - this._SafeStr_1846 * (_loc3_.y - this._SafeStr_2025.c.y),this._SafeStr_1234.y + this._SafeStr_1846 * (_loc3_.x - this._SafeStr_2025.c.x));
      }
      
      public function GetLinearDamping() : Number
      {
         return this.m_linearDamping;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.m_linearDamping = param1;
      }
      
      public function GetAngularDamping() : Number
      {
         return this.m_angularDamping;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.m_angularDamping = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this._SafeStr_972 == param1)
         {
            return;
         }
         this._SafeStr_972 = param1;
         this._SafeStr_395();
         if(this._SafeStr_972 == b2_staticBody)
         {
            this._SafeStr_1234._SafeStr_1807();
            this._SafeStr_1846 = 0;
         }
         this._SafeStr_1589(true);
         this._SafeStr_616._SafeStr_1807();
         this._SafeStr_1515 = 0;
         var _loc2_:b2ContactEdge = this.m_contactList;
         while(_loc2_)
         {
            _loc2_._SafeStr_919.FlagForFiltering();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function _SafeStr_978() : uint
      {
         return this._SafeStr_972;
      }
      
      public function _SafeStr_1910(param1:Boolean) : void
      {
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_474;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_474;
         }
      }
      
      public function _SafeStr_1467() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_474) == b2internal::_SafeStr_474;
      }
      
      public function _SafeStr_2468(param1:Boolean) : void
      {
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_2219;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_2219;
            this._SafeStr_1589(true);
         }
      }
      
      public function _SafeStr_1589(param1:Boolean) : void
      {
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_1487;
            this._SafeStr_584 = 0;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_1487;
            this._SafeStr_584 = 0;
            this._SafeStr_1234._SafeStr_1807();
            this._SafeStr_1846 = 0;
            this._SafeStr_616._SafeStr_1807();
            this._SafeStr_1515 = 0;
         }
      }
      
      public function _SafeStr_2035() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_1487) == b2internal::_SafeStr_1487;
      }
      
      public function _SafeStr_2080(param1:Boolean) : void
      {
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_431;
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_431;
         }
         this._SafeStr_395();
      }
      
      public function _SafeStr_1242() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_431) == b2internal::_SafeStr_431;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:_SafeCls_21 = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this._SafeStr_1861())
         {
            return;
         }
         if(param1)
         {
            this._SafeStr_1043 |= b2internal::_SafeStr_718;
            _loc2_ = this._SafeStr_729._SafeStr_1215._SafeStr_450;
            _loc3_ = this.m_fixtureList;
            while(_loc3_)
            {
               _loc3_._SafeStr_491(_loc2_,this._SafeStr_1473);
               _loc3_ = _loc3_._SafeStr_2195;
            }
         }
         else
         {
            this._SafeStr_1043 &= ~b2internal::_SafeStr_718;
            _loc2_ = this._SafeStr_729._SafeStr_1215._SafeStr_450;
            _loc3_ = this.m_fixtureList;
            while(_loc3_)
            {
               _loc3_._SafeStr_1535(_loc2_);
               _loc3_ = _loc3_._SafeStr_2195;
            }
            _loc4_ = this.m_contactList;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this._SafeStr_729._SafeStr_1215.Destroy(_loc5_._SafeStr_919);
            }
            this.m_contactList = null;
         }
      }
      
      public function _SafeStr_1861() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_718) == b2internal::_SafeStr_718;
      }
      
      public function _SafeStr_1540() : Boolean
      {
         return (this._SafeStr_1043 & b2internal::_SafeStr_2219) == b2internal::_SafeStr_2219;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.m_fixtureList;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.m_jointList;
      }
      
      public function GetControllerList() : b2ControllerEdge
      {
         return this.m_controllerList;
      }
      
      public function GetContactList() : b2ContactEdge
      {
         return this.m_contactList;
      }
      
      public function _SafeStr_1023() : b2Body
      {
         return this._SafeStr_2195;
      }
      
      public function GetUserData() : *
      {
         return this._SafeStr_961;
      }
      
      public function SetUserData(param1:*) : void
      {
         this._SafeStr_961 = param1;
      }
      
      public function _SafeStr_1668() : b2World
      {
         return this._SafeStr_729;
      }
      
      b2internal function _SafeStr_539() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = s_xf1;
         _loc1_._SafeStr_945.Set(this._SafeStr_2025.a0);
         var _loc2_:b2Mat22 = _loc1_._SafeStr_945;
         var _loc3_:b2Vec2 = this._SafeStr_2025._SafeStr_1721;
         _loc1_.position.x = this._SafeStr_2025.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this._SafeStr_2025.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:_SafeCls_21 = this._SafeStr_729._SafeStr_1215._SafeStr_450;
         _loc4_ = this.m_fixtureList;
         while(_loc4_)
         {
            _loc4_._SafeStr_839(_loc5_,_loc1_,this._SafeStr_1473);
            _loc4_ = _loc4_._SafeStr_2195;
         }
      }
      
      b2internal function _SafeStr_2018() : void
      {
         this._SafeStr_1473._SafeStr_945.Set(this._SafeStr_2025.a);
         var _loc1_:b2Mat22 = this._SafeStr_1473._SafeStr_945;
         var _loc2_:b2Vec2 = this._SafeStr_2025._SafeStr_1721;
         this._SafeStr_1473.position.x = this._SafeStr_2025.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this._SafeStr_1473.position.y = this._SafeStr_2025.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function _SafeStr_2094(param1:b2Body) : Boolean
      {
         if(this._SafeStr_972 != b2_dynamicBody && param1._SafeStr_972 != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.m_jointList;
         while(_loc2_)
         {
            if(_loc2_.other == param1)
            {
               if(_loc2_._SafeStr_2512._SafeStr_643 == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function _SafeStr_1022(param1:Number) : void
      {
         this._SafeStr_2025._SafeStr_1022(param1);
         this._SafeStr_2025.c._SafeStr_1679(this._SafeStr_2025.c0);
         this._SafeStr_2025.a = this._SafeStr_2025.a0;
         this._SafeStr_2018();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_21 = "_-Ah"
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_1 = "_-8Z"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_321 = "_-QU"
 * @identifier _SafeStr_338 = "_-Zq"
 * @identifier _SafeStr_357 = "_-WV"
 * @identifier _SafeStr_395 = "_-Tu"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_429 = "_-X4"
 * @identifier _SafeStr_431 = "_-GN"
 * @identifier _SafeStr_450 = "_-9U"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_474 = "_-dm"
 * @identifier _SafeStr_491 = "_-b4"
 * @identifier _SafeStr_510 = "_-Tw"
 * @identifier _SafeStr_539 = "_-JK"
 * @identifier _SafeStr_564 = "_-2S"
 * @identifier _SafeStr_584 = "_-aX"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_616 = "_-3y"
 * @identifier _SafeStr_643 = "_-52"
 * @identifier _SafeStr_647 = "_-Sb"
 * @identifier _SafeStr_665 = "_-DF"
 * @identifier _SafeStr_708 = "_-I1"
 * @identifier _SafeStr_718 = "_-31"
 * @identifier _SafeStr_729 = "_-MM"
 * @identifier _SafeStr_730 = "_-EK"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_760 = "_-5Q"
 * @identifier _SafeStr_773 = "_-RJ"
 * @identifier _SafeStr_839 = "_-PU"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_908 = "_-PZ"
 * @identifier _SafeStr_919 = "_-bD"
 * @identifier _SafeStr_933 = "_-QP"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_961 = "_-8N"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1022 = "_-V6"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1043 = "_-iv"
 * @identifier _SafeStr_1063 = "_-EI"
 * @identifier _SafeStr_1106 = "_-Y8"
 * @identifier _SafeStr_1110 = "_-6x"
 * @identifier _SafeStr_1147 = "_-Zg"
 * @identifier _SafeStr_1193 = "_-6p"
 * @identifier _SafeStr_1215 = "_-7n"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1242 = "_-YP"
 * @identifier _SafeStr_1245 = "_-7t"
 * @identifier _SafeStr_1293 = "_-jY"
 * @identifier _SafeStr_1467 = "_-Jr"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1487 = "_-MK"
 * @identifier _SafeStr_1488 = "_-2j"
 * @identifier _SafeStr_1496 = "_-1o"
 * @identifier _SafeStr_1515 = "_-U4"
 * @identifier _SafeStr_1535 = "_-gd"
 * @identifier _SafeStr_1540 = "_-fe"
 * @identifier _SafeStr_1556 = "_-9f"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1602 = "_-22"
 * @identifier _SafeStr_1668 = "_-J5"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1681 = "_-Qb"
 * @identifier _SafeStr_1720 = "_-J8"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1754 = "_-98"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1828 = "_-Rj"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1859 = "_-7g"
 * @identifier _SafeStr_1861 = "_-Mb"
 * @identifier _SafeStr_1885 = "_-OU"
 * @identifier _SafeStr_1910 = "_-HW"
 * @identifier _SafeStr_2003 = "_-8i"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2035 = "_-ZE"
 * @identifier _SafeStr_2059 = "_-Sf"
 * @identifier _SafeStr_2080 = "_-W"
 * @identifier _SafeStr_2094 = "_-5Z"
 * @identifier _SafeStr_2122 = "_-6E"
 * @identifier _SafeStr_2131 = "_-5R"
 * @identifier _SafeStr_2183 = "_-Jg"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2210 = "_-Bo"
 * @identifier _SafeStr_2219 = "_-Na"
 * @identifier _SafeStr_2226 = "_-Ms"
 * @identifier _SafeStr_2287 = "_-65"
 * @identifier _SafeStr_2296 = "_-WX"
 * @identifier _SafeStr_2320 = "_-ga"
 * @identifier _SafeStr_2353 = "_-El"
 * @identifier _SafeStr_2355 = "_-3K"
 * @identifier _SafeStr_2361 = "_-7Q"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2380 = "_-36"
 * @identifier _SafeStr_2390 = "_-bd"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2468 = "_-Ct"
 * @identifier _SafeStr_2512 = "_-Kj"
 * @identifier _SafeStr_2654 = "_-jK"
 */
