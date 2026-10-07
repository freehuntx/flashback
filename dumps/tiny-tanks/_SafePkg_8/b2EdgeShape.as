package _SafePkg_8
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_20.b2AABB;
   import _SafePkg_20.b2RayCastInput;
   import _SafePkg_20.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
      
      private var _SafeStr_2445:b2Vec2 = new b2Vec2();
      
      b2internal var m_v1:b2Vec2 = new b2Vec2();
      
      b2internal var m_v2:b2Vec2 = new b2Vec2();
      
      b2internal var m_coreV1:b2Vec2 = new b2Vec2();
      
      b2internal var m_coreV2:b2Vec2 = new b2Vec2();
      
      b2internal var m_length:Number;
      
      b2internal var _SafeStr_2098:b2Vec2 = new b2Vec2();
      
      b2internal var _SafeStr_337:b2Vec2 = new b2Vec2();
      
      b2internal var m_cornerDir1:b2Vec2 = new b2Vec2();
      
      b2internal var m_cornerDir2:b2Vec2 = new b2Vec2();
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var _SafeStr_1498:b2EdgeShape;
      
      b2internal var _SafeStr_2551:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         super();
         b2internal::_SafeStr_972 = b2internal::_SafeStr_891;
         this._SafeStr_2551 = null;
         this._SafeStr_1498 = null;
         this.m_v1 = param1;
         this.m_v2 = param2;
         this._SafeStr_337.Set(this.m_v2.x - this.m_v1.x,this.m_v2.y - this.m_v1.y);
         this.m_length = this._SafeStr_337.Normalize();
         this._SafeStr_2098.Set(this._SafeStr_337.y,-this._SafeStr_337.x);
         this.m_coreV1.Set(-b2Settings.b2_toiSlop * (this._SafeStr_2098.x - this._SafeStr_337.x) + this.m_v1.x,-b2Settings.b2_toiSlop * (this._SafeStr_2098.y - this._SafeStr_337.y) + this.m_v1.y);
         this.m_coreV2.Set(-b2Settings.b2_toiSlop * (this._SafeStr_2098.x + this._SafeStr_337.x) + this.m_v2.x,-b2Settings.b2_toiSlop * (this._SafeStr_2098.y + this._SafeStr_337.y) + this.m_v2.y);
         this.m_cornerDir1 = this._SafeStr_2098;
         this.m_cornerDir2.Set(-this._SafeStr_2098.x,-this._SafeStr_2098.y);
      }
      
      override public function _SafeStr_1865(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc4_:b2Mat22 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc5_:Number = param2.p2.x - param2.p1.x;
         var _loc6_:Number = param2.p2.y - param2.p1.y;
         _loc4_ = param3._SafeStr_945;
         var _loc7_:Number = param3.position.x + (_loc4_.col1.x * this.m_v1.x + _loc4_.col2.x * this.m_v1.y);
         var _loc8_:Number = param3.position.y + (_loc4_.col1.y * this.m_v1.x + _loc4_.col2.y * this.m_v1.y);
         var _loc9_:Number = param3.position.y + (_loc4_.col1.y * this.m_v2.x + _loc4_.col2.y * this.m_v2.y) - _loc8_;
         var _loc10_:Number = -(param3.position.x + (_loc4_.col1.x * this.m_v2.x + _loc4_.col2.x * this.m_v2.y) - _loc7_);
         var _loc11_:Number = 100 * Number.MIN_VALUE;
         var _loc12_:Number = -(_loc5_ * _loc9_ + _loc6_ * _loc10_);
         if(_loc12_ > _loc11_)
         {
            _loc13_ = param2.p1.x - _loc7_;
            _loc14_ = param2.p1.y - _loc8_;
            _loc15_ = _loc13_ * _loc9_ + _loc14_ * _loc10_;
            if(0 <= _loc15_ && _loc15_ <= param2._SafeStr_1595 * _loc12_)
            {
               _loc16_ = -_loc5_ * _loc14_ + _loc6_ * _loc13_;
               if(-_loc11_ * _loc12_ <= _loc16_ && _loc16_ <= _loc12_ * (1 + _loc11_))
               {
                  _loc15_ /= _loc12_;
                  param1._SafeStr_2571 = _loc15_;
                  _loc17_ = Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_));
                  param1.normal.x = _loc9_ / _loc17_;
                  param1.normal.y = _loc10_ / _loc17_;
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function _SafeStr_2297(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:b2Mat22 = param2._SafeStr_945;
         _loc4_ = param2.position.x + (_loc3_.col1.x * this.m_v1.x + _loc3_.col2.x * this.m_v1.y);
         _loc5_ = param2.position.y + (_loc3_.col1.y * this.m_v1.x + _loc3_.col2.y * this.m_v1.y);
         _loc6_ = param2.position.x + (_loc3_.col1.x * this.m_v2.x + _loc3_.col2.x * this.m_v2.y);
         _loc7_ = param2.position.y + (_loc3_.col1.y * this.m_v2.x + _loc3_.col2.y * this.m_v2.y);
         if(_loc4_ < _loc6_)
         {
            param1.lowerBound.x = _loc4_;
            param1.upperBound.x = _loc6_;
         }
         else
         {
            param1.lowerBound.x = _loc6_;
            param1.upperBound.x = _loc4_;
         }
         if(_loc5_ < _loc7_)
         {
            param1.lowerBound.y = _loc5_;
            param1.upperBound.y = _loc7_;
         }
         else
         {
            param1.lowerBound.y = _loc7_;
            param1.upperBound.y = _loc5_;
         }
      }
      
      override public function _SafeStr_1244(param1:b2MassData, param2:Number) : void
      {
         param1._SafeStr_1106 = 0;
         param1.center._SafeStr_1679(this.m_v1);
         param1.I = 0;
      }
      
      override public function _SafeStr_662(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc5_:b2Vec2 = new b2Vec2(param1.x * param2,param1.y * param2);
         var _loc6_:b2Vec2 = b2Math._SafeStr_457(param3,this.m_v1);
         var _loc7_:b2Vec2 = b2Math._SafeStr_457(param3,this.m_v2);
         var _loc8_:Number = b2Math._SafeCls_184(param1,_loc6_) - param2;
         var _loc9_:Number = b2Math._SafeCls_184(param1,_loc7_) - param2;
         if(_loc8_ > 0)
         {
            if(_loc9_ > 0)
            {
               return 0;
            }
            _loc6_.x = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.x + _loc8_ / (_loc8_ - _loc9_) * _loc7_.x;
            _loc6_.y = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.y + _loc8_ / (_loc8_ - _loc9_) * _loc7_.y;
         }
         else if(_loc9_ > 0)
         {
            _loc7_.x = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.x + _loc8_ / (_loc8_ - _loc9_) * _loc7_.x;
            _loc7_.y = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.y + _loc8_ / (_loc8_ - _loc9_) * _loc7_.y;
         }
         param4.x = (_loc5_.x + _loc6_.x + _loc7_.x) / 3;
         param4.y = (_loc5_.y + _loc6_.y + _loc7_.y) / 3;
         return 0.5 * ((_loc6_.x - _loc5_.x) * (_loc7_.y - _loc5_.y) - (_loc6_.y - _loc5_.y) * (_loc7_.x - _loc5_.x));
      }
      
      public function GetLength() : Number
      {
         return this.m_length;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function _SafeStr_2296() : b2Vec2
      {
         return this._SafeStr_2098;
      }
      
      public function _SafeStr_510() : b2Vec2
      {
         return this._SafeStr_337;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function _SafeStr_331(param1:b2Transform) : b2Vec2
      {
         var _loc2_:b2Mat22 = param1._SafeStr_945;
         return new b2Vec2(param1.position.x + (_loc2_.col1.x * this.m_coreV1.x + _loc2_.col2.x * this.m_coreV1.y),param1.position.y + (_loc2_.col1.y * this.m_coreV1.x + _loc2_.col2.y * this.m_coreV1.y));
      }
      
      public function _SafeStr_407() : b2EdgeShape
      {
         return this._SafeStr_1498;
      }
      
      public function _SafeStr_543() : b2EdgeShape
      {
         return this._SafeStr_2551;
      }
      
      public function _SafeStr_826(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:b2Mat22 = param1._SafeStr_945;
         var _loc5_:Number = param1.position.x + (_loc4_.col1.x * this.m_coreV1.x + _loc4_.col2.x * this.m_coreV1.y);
         var _loc6_:Number = param1.position.y + (_loc4_.col1.y * this.m_coreV1.x + _loc4_.col2.y * this.m_coreV1.y);
         var _loc7_:Number = param1.position.x + (_loc4_.col1.x * this.m_coreV2.x + _loc4_.col2.x * this.m_coreV2.y);
         var _loc8_:Number = param1.position.y + (_loc4_.col1.y * this.m_coreV2.x + _loc4_.col2.y * this.m_coreV2.y);
         if(_loc5_ * param2 + _loc6_ * param3 > _loc7_ * param2 + _loc8_ * param3)
         {
            this._SafeStr_2445.x = _loc5_;
            this._SafeStr_2445.y = _loc6_;
         }
         else
         {
            this._SafeStr_2445.x = _loc7_;
            this._SafeStr_2445.y = _loc8_;
         }
         return this._SafeStr_2445;
      }
      
      b2internal function _SafeStr_1828(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         this._SafeStr_2551 = param1;
         this.m_coreV1 = param2;
         this.m_cornerDir1 = param3;
         this.m_cornerConvex1 = param4;
      }
      
      b2internal function _SafeStr_1681(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         this._SafeStr_1498 = param1;
         this.m_coreV2 = param2;
         this.m_cornerDir2 = param3;
         this.m_cornerConvex2 = param4;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_331 = "_-2r"
 * @identifier _SafeStr_337 = "_-VW"
 * @identifier _SafeStr_407 = "_-20"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_510 = "_-Tw"
 * @identifier _SafeStr_543 = "_-My"
 * @identifier _SafeStr_662 = "_-5X"
 * @identifier _SafeStr_826 = "_-Ii"
 * @identifier _SafeStr_891 = "_-dp"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1106 = "_-Y8"
 * @identifier _SafeStr_1244 = "_-cm"
 * @identifier _SafeStr_1498 = "_-NU"
 * @identifier _SafeStr_1595 = "_-9G"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1681 = "_-Qb"
 * @identifier _SafeStr_1828 = "_-Rj"
 * @identifier _SafeStr_1865 = "_-aW"
 * @identifier _SafeStr_2098 = "_-dB"
 * @identifier _SafeStr_2296 = "_-WX"
 * @identifier _SafeStr_2297 = "_-5a"
 * @identifier _SafeStr_2445 = "_-SJ"
 * @identifier _SafeStr_2551 = "_-Fu"
 * @identifier _SafeStr_2571 = "_-Eb"
 */
