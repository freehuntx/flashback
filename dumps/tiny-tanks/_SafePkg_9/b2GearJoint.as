package _SafePkg_9
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2GearJoint extends b2Joint
   {
      
      private var m_ground1:b2Body;
      
      private var m_ground2:b2Body;
      
      private var m_revolute1:b2RevoluteJoint;
      
      private var m_prismatic1:b2PrismaticJoint;
      
      private var m_revolute2:b2RevoluteJoint;
      
      private var m_prismatic2:b2PrismaticJoint;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var _SafeStr_1572:b2Jacobian;
      
      private var _SafeStr_1155:Number;
      
      private var _SafeStr_541:Number;
      
      private var _SafeStr_399:Number;
      
      private var _SafeStr_460:Number;
      
      public function b2GearJoint(param1:b2GearJointDef)
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.m_groundAnchor1 = new b2Vec2();
         this.m_groundAnchor2 = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this._SafeStr_1572 = new b2Jacobian();
         super(param1);
         var _loc2_:int = param1.joint1._SafeStr_972;
         var _loc3_:int = param1.joint2._SafeStr_972;
         this.m_revolute1 = null;
         this.m_prismatic1 = null;
         this.m_revolute2 = null;
         this.m_prismatic2 = null;
         this.m_ground1 = param1.joint1._SafeStr_1576();
         b2internal::_SafeStr_496 = param1.joint1._SafeStr_1887();
         if(_loc2_ == b2Joint._SafeStr_2374)
         {
            this.m_revolute1 = param1.joint1 as b2RevoluteJoint;
            this.m_groundAnchor1._SafeStr_1679(this.m_revolute1.m_localAnchor1);
            this.m_localAnchor1._SafeStr_1679(this.m_revolute1.m_localAnchor2);
            _loc4_ = this.m_revolute1.GetJointAngle();
         }
         else
         {
            this.m_prismatic1 = param1.joint1 as b2PrismaticJoint;
            this.m_groundAnchor1._SafeStr_1679(this.m_prismatic1.m_localAnchor1);
            this.m_localAnchor1._SafeStr_1679(this.m_prismatic1.m_localAnchor2);
            _loc4_ = this.m_prismatic1._SafeStr_604();
         }
         this.m_ground2 = param1.joint2._SafeStr_1576();
         b2internal::_SafeStr_907 = param1.joint2._SafeStr_1887();
         if(_loc3_ == b2Joint._SafeStr_2374)
         {
            this.m_revolute2 = param1.joint2 as b2RevoluteJoint;
            this.m_groundAnchor2._SafeStr_1679(this.m_revolute2.m_localAnchor1);
            this.m_localAnchor2._SafeStr_1679(this.m_revolute2.m_localAnchor2);
            _loc5_ = this.m_revolute2.GetJointAngle();
         }
         else
         {
            this.m_prismatic2 = param1.joint2 as b2PrismaticJoint;
            this.m_groundAnchor2._SafeStr_1679(this.m_prismatic2.m_localAnchor1);
            this.m_localAnchor2._SafeStr_1679(this.m_prismatic2.m_localAnchor2);
            _loc5_ = this.m_prismatic2._SafeStr_604();
         }
         this._SafeStr_541 = param1._SafeStr_2548;
         this._SafeStr_1155 = _loc4_ + this._SafeStr_541 * _loc5_;
         this._SafeStr_460 = 0;
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
         return new b2Vec2(param1 * this._SafeStr_460 * this._SafeStr_1572.linearB.x,param1 * this._SafeStr_460 * this._SafeStr_1572.linearB.y);
      }
      
      override public function _SafeStr_2643(param1:Number) : Number
      {
         var _loc2_:b2Mat22 = b2internal::_SafeStr_907._SafeStr_1473._SafeStr_945;
         var _loc3_:Number = this.m_localAnchor1.x - b2internal::_SafeStr_907._SafeStr_2025._SafeStr_1721.x;
         var _loc4_:Number = this.m_localAnchor1.y - b2internal::_SafeStr_907._SafeStr_2025._SafeStr_1721.y;
         var _loc5_:Number = _loc2_.col1.x * _loc3_ + _loc2_.col2.x * _loc4_;
         _loc4_ = _loc2_.col1.y * _loc3_ + _loc2_.col2.y * _loc4_;
         _loc3_ = _loc5_;
         var _loc6_:Number = this._SafeStr_460 * this._SafeStr_1572.linearB.x;
         var _loc7_:Number = this._SafeStr_460 * this._SafeStr_1572.linearB.y;
         return param1 * (this._SafeStr_460 * this._SafeStr_1572._SafeStr_2213 - _loc3_ * _loc7_ + _loc4_ * _loc6_);
      }
      
      public function _SafeStr_776() : Number
      {
         return this._SafeStr_541;
      }
      
      public function _SafeStr_1285(param1:Number) : void
      {
         this._SafeStr_541 = param1;
      }
      
      override b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
         var _loc4_:b2Body = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc2_:b2Body = this.m_ground1;
         var _loc3_:b2Body = this.m_ground2;
         _loc4_ = b2internal::_SafeStr_496;
         var _loc5_:b2Body = b2internal::_SafeStr_907;
         var _loc14_:Number = 0;
         this._SafeStr_1572._SafeStr_1807();
         if(this.m_revolute1)
         {
            this._SafeStr_1572._SafeStr_1903 = -1;
            _loc14_ += _loc4_._SafeStr_882;
         }
         else
         {
            _loc10_ = _loc2_._SafeStr_1473._SafeStr_945;
            _loc11_ = this.m_prismatic1.m_localXAxis1;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc4_._SafeStr_1473._SafeStr_945;
            _loc8_ = this.m_localAnchor1.x - _loc4_._SafeStr_2025._SafeStr_1721.x;
            _loc9_ = this.m_localAnchor1.y - _loc4_._SafeStr_2025._SafeStr_1721.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this._SafeStr_1572.linearA.Set(-_loc6_,-_loc7_);
            this._SafeStr_1572._SafeStr_1903 = -_loc12_;
            _loc14_ += _loc4_._SafeStr_615 + _loc4_._SafeStr_882 * _loc12_ * _loc12_;
         }
         if(this.m_revolute2)
         {
            this._SafeStr_1572._SafeStr_2213 = -this._SafeStr_541;
            _loc14_ += this._SafeStr_541 * this._SafeStr_541 * _loc5_._SafeStr_882;
         }
         else
         {
            _loc10_ = _loc3_._SafeStr_1473._SafeStr_945;
            _loc11_ = this.m_prismatic2.m_localXAxis1;
            _loc6_ = _loc10_.col1.x * _loc11_.x + _loc10_.col2.x * _loc11_.y;
            _loc7_ = _loc10_.col1.y * _loc11_.x + _loc10_.col2.y * _loc11_.y;
            _loc10_ = _loc5_._SafeStr_1473._SafeStr_945;
            _loc8_ = this.m_localAnchor2.x - _loc5_._SafeStr_2025._SafeStr_1721.x;
            _loc9_ = this.m_localAnchor2.y - _loc5_._SafeStr_2025._SafeStr_1721.y;
            _loc13_ = _loc10_.col1.x * _loc8_ + _loc10_.col2.x * _loc9_;
            _loc9_ = _loc10_.col1.y * _loc8_ + _loc10_.col2.y * _loc9_;
            _loc8_ = _loc13_;
            _loc12_ = _loc8_ * _loc7_ - _loc9_ * _loc6_;
            this._SafeStr_1572.linearB.Set(-this._SafeStr_541 * _loc6_,-this._SafeStr_541 * _loc7_);
            this._SafeStr_1572._SafeStr_2213 = -this._SafeStr_541 * _loc12_;
            _loc14_ += this._SafeStr_541 * this._SafeStr_541 * (_loc5_._SafeStr_615 + _loc5_._SafeStr_882 * _loc12_ * _loc12_);
         }
         this._SafeStr_399 = _loc14_ > 0 ? 1 / _loc14_ : 0;
         if(param1.warmStarting)
         {
            _loc4_._SafeStr_1234.x += _loc4_._SafeStr_615 * this._SafeStr_460 * this._SafeStr_1572.linearA.x;
            _loc4_._SafeStr_1234.y += _loc4_._SafeStr_615 * this._SafeStr_460 * this._SafeStr_1572.linearA.y;
            _loc4_._SafeStr_1846 += _loc4_._SafeStr_882 * this._SafeStr_460 * this._SafeStr_1572._SafeStr_1903;
            _loc5_._SafeStr_1234.x += _loc5_._SafeStr_615 * this._SafeStr_460 * this._SafeStr_1572.linearB.x;
            _loc5_._SafeStr_1234.y += _loc5_._SafeStr_615 * this._SafeStr_460 * this._SafeStr_1572.linearB.y;
            _loc5_._SafeStr_1846 += _loc5_._SafeStr_882 * this._SafeStr_460 * this._SafeStr_1572._SafeStr_2213;
         }
         else
         {
            this._SafeStr_460 = 0;
         }
      }
      
      override b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = b2internal::_SafeStr_496;
         var _loc3_:b2Body = b2internal::_SafeStr_907;
         var _loc4_:Number = this._SafeStr_1572._SafeStr_2435(_loc2_._SafeStr_1234,_loc2_._SafeStr_1846,_loc3_._SafeStr_1234,_loc3_._SafeStr_1846);
         var _loc5_:Number = -this._SafeStr_399 * _loc4_;
         this._SafeStr_460 += _loc5_;
         _loc2_._SafeStr_1234.x += _loc2_._SafeStr_615 * _loc5_ * this._SafeStr_1572.linearA.x;
         _loc2_._SafeStr_1234.y += _loc2_._SafeStr_615 * _loc5_ * this._SafeStr_1572.linearA.y;
         _loc2_._SafeStr_1846 += _loc2_._SafeStr_882 * _loc5_ * this._SafeStr_1572._SafeStr_1903;
         _loc3_._SafeStr_1234.x += _loc3_._SafeStr_615 * _loc5_ * this._SafeStr_1572.linearB.x;
         _loc3_._SafeStr_1234.y += _loc3_._SafeStr_615 * _loc5_ * this._SafeStr_1572.linearB.y;
         _loc3_._SafeStr_1846 += _loc3_._SafeStr_882 * _loc5_ * this._SafeStr_1572._SafeStr_2213;
      }
      
      override b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:b2Body = b2internal::_SafeStr_496;
         var _loc4_:b2Body = b2internal::_SafeStr_907;
         if(this.m_revolute1)
         {
            _loc5_ = this.m_revolute1.GetJointAngle();
         }
         else
         {
            _loc5_ = this.m_prismatic1._SafeStr_604();
         }
         if(this.m_revolute2)
         {
            _loc6_ = this.m_revolute2.GetJointAngle();
         }
         else
         {
            _loc6_ = this.m_prismatic2._SafeStr_604();
         }
         var _loc7_:Number = this._SafeStr_1155 - (_loc5_ + this._SafeStr_541 * _loc6_);
         var _loc8_:Number = -this._SafeStr_399 * _loc7_;
         _loc3_._SafeStr_2025.c.x += _loc3_._SafeStr_615 * _loc8_ * this._SafeStr_1572.linearA.x;
         _loc3_._SafeStr_2025.c.y += _loc3_._SafeStr_615 * _loc8_ * this._SafeStr_1572.linearA.y;
         _loc3_._SafeStr_2025.a += _loc3_._SafeStr_882 * _loc8_ * this._SafeStr_1572._SafeStr_1903;
         _loc4_._SafeStr_2025.c.x += _loc4_._SafeStr_615 * _loc8_ * this._SafeStr_1572.linearB.x;
         _loc4_._SafeStr_2025.c.y += _loc4_._SafeStr_615 * _loc8_ * this._SafeStr_1572.linearB.y;
         _loc4_._SafeStr_2025.a += _loc4_._SafeStr_882 * _loc8_ * this._SafeStr_1572._SafeStr_2213;
         _loc3_._SafeStr_2018();
         _loc4_._SafeStr_2018();
         return 0 < b2Settings.b2_linearSlop;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_399 = "_-US"
 * @identifier _SafeStr_460 = "_-Xi"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_541 = "_-6D"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_604 = "_-Nq"
 * @identifier _SafeStr_615 = "_-Ht"
 * @identifier _SafeStr_776 = "_-cz"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_882 = "_-C2"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1155 = "_-gY"
 * @identifier _SafeStr_1234 = "_-S3"
 * @identifier _SafeStr_1285 = "_-il"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1572 = "_-1k"
 * @identifier _SafeStr_1576 = "_-dP"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1846 = "_-EZ"
 * @identifier _SafeStr_1887 = "_-WI"
 * @identifier _SafeStr_1903 = "_-Tc"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2213 = "_-PI"
 * @identifier _SafeStr_2374 = "_-ib"
 * @identifier _SafeStr_2376 = "_-CX"
 * @identifier _SafeStr_2435 = "_-OO"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2548 = "_-Fx"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
