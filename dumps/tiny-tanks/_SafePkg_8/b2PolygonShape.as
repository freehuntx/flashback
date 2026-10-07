package _SafePkg_8
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_20.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var _SafeStr_438:b2Mat22 = new b2Mat22();
      
      b2internal var _SafeStr_1009:b2Vec2;
      
      b2internal var _SafeStr_447:Vector.<b2Vec2>;
      
      b2internal var _SafeStr_1435:Vector.<b2Vec2>;
      
      b2internal var _SafeStr_1784:int;
      
      public function b2PolygonShape()
      {
         super();
         b2internal::_SafeStr_972 = b2internal::_SafeStr_1854;
         this._SafeStr_1009 = new b2Vec2();
         this._SafeStr_447 = new Vector.<b2Vec2>();
         this._SafeStr_1435 = new Vector.<b2Vec2>();
      }
      
      public static function _SafeStr_2300(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.SetAsArray(param1,param2);
         return _loc3_;
      }
      
      public static function _SafeStr_504(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_._SafeStr_1900(param1,param2);
         return _loc3_;
      }
      
      public static function _SafeStr_2184(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.SetAsBox(param1,param2);
         return _loc3_;
      }
      
      public static function _SafeStr_2572(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape = new b2PolygonShape();
         _loc5_._SafeStr_1194(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function _SafeStr_691(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_._SafeStr_2239(param1,param2);
         return _loc3_;
      }
      
      public static function _SafeStr_322(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         var _loc7_:Number = NaN;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         var _loc4_:Number = 0;
         _loc7_ = 1 / 3;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
            _loc11_ = _loc9_.x - 0;
            _loc12_ = _loc9_.y - 0;
            _loc13_ = _loc10_.x - 0;
            _loc14_ = _loc10_.y - 0;
            _loc15_ = _loc11_ * _loc14_ - _loc12_ * _loc13_;
            _loc16_ = 0.5 * _loc15_;
            _loc4_ += _loc16_;
            _loc3_.x += _loc16_ * _loc7_ * (0 + _loc9_.x + _loc10_.x);
            _loc3_.y += _loc16_ * _loc7_ * (0 + _loc9_.y + _loc10_.y);
            _loc8_++;
         }
         _loc3_.x *= 1 / _loc4_;
         _loc3_.y *= 1 / _loc4_;
         return _loc3_;
      }
      
      b2internal static function _SafeStr_1560(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         _loc4_ = 0;
         while(_loc4_ < param3)
         {
            _loc5_[_loc4_] = param2[_loc4_];
            _loc4_++;
         }
         _loc5_[param3] = _loc5_[0];
         var _loc6_:Number = Number(Number.MAX_VALUE);
         _loc4_ = 1;
         while(_loc4_ <= param3)
         {
            _loc7_ = _loc5_[int(_loc4_ - 1)];
            _loc8_ = _loc5_[_loc4_].x - _loc7_.x;
            _loc9_ = _loc5_[_loc4_].y - _loc7_.y;
            _loc10_ = Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
            _loc8_ /= _loc10_;
            _loc9_ /= _loc10_;
            _loc11_ = -_loc9_;
            _loc12_ = _loc8_;
            _loc13_ = Number(Number.MAX_VALUE);
            _loc14_ = Number(Number.MAX_VALUE);
            _loc15_ = -Number.MAX_VALUE;
            _loc16_ = -Number.MAX_VALUE;
            _loc17_ = 0;
            while(_loc17_ < param3)
            {
               _loc19_ = _loc5_[_loc17_].x - _loc7_.x;
               _loc20_ = _loc5_[_loc17_].y - _loc7_.y;
               _loc21_ = _loc8_ * _loc19_ + _loc9_ * _loc20_;
               _loc22_ = _loc11_ * _loc19_ + _loc12_ * _loc20_;
               if(_loc21_ < _loc13_)
               {
                  _loc13_ = _loc21_;
               }
               if(_loc22_ < _loc14_)
               {
                  _loc14_ = _loc22_;
               }
               if(_loc21_ > _loc15_)
               {
                  _loc15_ = _loc21_;
               }
               if(_loc22_ > _loc16_)
               {
                  _loc16_ = _loc22_;
               }
               _loc17_++;
            }
            _loc18_ = (_loc15_ - _loc13_) * (_loc16_ - _loc14_);
            if(_loc18_ < 0.95 * _loc6_)
            {
               _loc6_ = _loc18_;
               param1._SafeStr_945.col1.x = _loc8_;
               param1._SafeStr_945.col1.y = _loc9_;
               param1._SafeStr_945.col2.x = _loc11_;
               param1._SafeStr_945.col2.y = _loc12_;
               _loc23_ = 0.5 * (_loc13_ + _loc15_);
               _loc24_ = 0.5 * (_loc14_ + _loc16_);
               _loc25_ = param1._SafeStr_945;
               param1.center.x = _loc7_.x + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_);
               param1.center.y = _loc7_.y + (_loc25_.col1.y * _loc23_ + _loc25_.col2.y * _loc24_);
               param1._SafeStr_609.x = 0.5 * (_loc15_ - _loc13_);
               param1._SafeStr_609.y = 0.5 * (_loc16_ - _loc14_);
            }
            _loc4_++;
         }
      }
      
      override public function _SafeStr_2396() : b2Shape
      {
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         _loc1_.Set(this);
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         super.Set(param1);
         if(param1 is b2PolygonShape)
         {
            _loc2_ = param1 as b2PolygonShape;
            this._SafeStr_1009._SafeStr_1679(_loc2_._SafeStr_1009);
            this._SafeStr_1784 = _loc2_._SafeStr_1784;
            this._SafeStr_785(this._SafeStr_1784);
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_1784)
            {
               this._SafeStr_447[_loc3_]._SafeStr_1679(_loc2_._SafeStr_447[_loc3_]);
               this._SafeStr_1435[_loc3_]._SafeStr_1679(_loc2_._SafeStr_1435[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function SetAsArray(param1:Array, param2:Number = 0) : void
      {
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            _loc3_.push(_loc4_);
         }
         this._SafeStr_1900(_loc3_,param2);
      }
      
      public function _SafeStr_1900(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(param2 == 0)
         {
            param2 = Number(param1.length);
         }
         b2Settings.b2Assert(2 <= param2);
         this._SafeStr_1784 = param2;
         this._SafeStr_785(param2);
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1784)
         {
            this._SafeStr_447[_loc3_]._SafeStr_1679(param1[_loc3_]);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1784)
         {
            _loc4_ = _loc3_;
            _loc5_ = _loc3_ + 1 < this._SafeStr_1784 ? int(_loc3_ + 1) : 0;
            _loc6_ = b2Math._SafeStr_2442(this._SafeStr_447[_loc5_],this._SafeStr_447[_loc4_]);
            b2Settings.b2Assert(_loc6_._SafeStr_731() > Number.MIN_VALUE);
            this._SafeStr_1435[_loc3_]._SafeStr_1679(b2Math._SafeStr_2600(_loc6_,1));
            this._SafeStr_1435[_loc3_].Normalize();
            _loc3_++;
         }
         this._SafeStr_1009 = _SafeStr_322(this._SafeStr_447,this._SafeStr_1784);
      }
      
      public function SetAsBox(param1:Number, param2:Number) : void
      {
         this._SafeStr_1784 = 4;
         this._SafeStr_785(4);
         this._SafeStr_447[0].Set(-param1,-param2);
         this._SafeStr_447[1].Set(param1,-param2);
         this._SafeStr_447[2].Set(param1,param2);
         this._SafeStr_447[3].Set(-param1,param2);
         this._SafeStr_1435[0].Set(0,-1);
         this._SafeStr_1435[1].Set(1,0);
         this._SafeStr_1435[2].Set(0,1);
         this._SafeStr_1435[3].Set(-1,0);
         this._SafeStr_1009._SafeStr_1807();
      }
      
      public function _SafeStr_1194(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0) : void
      {
         this._SafeStr_1784 = 4;
         this._SafeStr_785(4);
         this._SafeStr_447[0].Set(-param1,-param2);
         this._SafeStr_447[1].Set(param1,-param2);
         this._SafeStr_447[2].Set(param1,param2);
         this._SafeStr_447[3].Set(-param1,param2);
         this._SafeStr_1435[0].Set(0,-1);
         this._SafeStr_1435[1].Set(1,0);
         this._SafeStr_1435[2].Set(0,1);
         this._SafeStr_1435[3].Set(-1,0);
         this._SafeStr_1009 = param3;
         var _loc5_:b2Transform = new b2Transform();
         _loc5_.position = param3;
         _loc5_._SafeStr_945.Set(param4);
         var _loc6_:int = 0;
         while(_loc6_ < this._SafeStr_1784)
         {
            this._SafeStr_447[_loc6_] = b2Math._SafeStr_457(_loc5_,this._SafeStr_447[_loc6_]);
            this._SafeStr_1435[_loc6_] = b2Math._SafeStr_734(_loc5_._SafeStr_945,this._SafeStr_1435[_loc6_]);
            _loc6_++;
         }
      }
      
      public function _SafeStr_2239(param1:b2Vec2, param2:b2Vec2) : void
      {
         this._SafeStr_1784 = 2;
         this._SafeStr_785(2);
         this._SafeStr_447[0]._SafeStr_1679(param1);
         this._SafeStr_447[1]._SafeStr_1679(param2);
         this._SafeStr_1009.x = 0.5 * (param1.x + param2.x);
         this._SafeStr_1009.y = 0.5 * (param1.y + param2.y);
         this._SafeStr_1435[0] = b2Math._SafeStr_2600(b2Math._SafeStr_2442(param2,param1),1);
         this._SafeStr_1435[0].Normalize();
         this._SafeStr_1435[1].x = -this._SafeStr_1435[0].x;
         this._SafeStr_1435[1].y = -this._SafeStr_1435[0].y;
      }
      
      override public function _SafeStr_1865(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc4_:b2Mat22 = param1._SafeStr_945;
         var _loc5_:Number = param2.x - param1.position.x;
         var _loc6_:Number = param2.y - param1.position.y;
         var _loc7_:Number = _loc5_ * _loc4_.col1.x + _loc6_ * _loc4_.col1.y;
         var _loc8_:Number = _loc5_ * _loc4_.col2.x + _loc6_ * _loc4_.col2.y;
         var _loc9_:int = 0;
         while(_loc9_ < this._SafeStr_1784)
         {
            _loc3_ = this._SafeStr_447[_loc9_];
            _loc5_ = _loc7_ - _loc3_.x;
            _loc6_ = _loc8_ - _loc3_.y;
            _loc3_ = this._SafeStr_1435[_loc9_];
            _loc10_ = _loc3_.x * _loc5_ + _loc3_.y * _loc6_;
            if(_loc10_ > 0)
            {
               return false;
            }
            _loc9_++;
         }
         return true;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc4_:Number = 0;
         var _loc5_:Number = param2._SafeStr_1595;
         _loc6_ = param2.p1.x - param3.position.x;
         _loc7_ = param2.p1.y - param3.position.y;
         _loc8_ = param3._SafeStr_945;
         var _loc10_:Number = _loc6_ * _loc8_.col1.x + _loc7_ * _loc8_.col1.y;
         var _loc11_:Number = _loc6_ * _loc8_.col2.x + _loc7_ * _loc8_.col2.y;
         _loc6_ = param2.p2.x - param3.position.x;
         _loc7_ = param2.p2.y - param3.position.y;
         _loc8_ = param3._SafeStr_945;
         var _loc12_:Number = _loc6_ * _loc8_.col1.x + _loc7_ * _loc8_.col1.y;
         var _loc13_:Number = _loc6_ * _loc8_.col2.x + _loc7_ * _loc8_.col2.y;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:Number = _loc13_ - _loc11_;
         var _loc16_:int = -1;
         var _loc17_:int = 0;
         while(_loc17_ < this._SafeStr_1784)
         {
            _loc9_ = this._SafeStr_447[_loc17_];
            _loc6_ = _loc9_.x - _loc10_;
            _loc7_ = _loc9_.y - _loc11_;
            _loc9_ = this._SafeStr_1435[_loc17_];
            _loc18_ = _loc9_.x * _loc6_ + _loc9_.y * _loc7_;
            _loc19_ = _loc9_.x * _loc14_ + _loc9_.y * _loc15_;
            if(_loc19_ == 0)
            {
               if(_loc18_ < 0)
               {
                  return false;
               }
            }
            else if(_loc19_ < 0 && _loc18_ < _loc4_ * _loc19_)
            {
               _loc4_ = _loc18_ / _loc19_;
               _loc16_ = _loc17_;
            }
            else if(_loc19_ > 0 && _loc18_ < _loc5_ * _loc19_)
            {
               _loc5_ = _loc18_ / _loc19_;
            }
            if(_loc5_ < _loc4_ - Number.MIN_VALUE)
            {
               return false;
            }
            _loc17_++;
         }
         if(_loc16_ >= 0)
         {
            param1._SafeStr_2571 = _loc4_;
            _loc8_ = param3._SafeStr_945;
            _loc9_ = this._SafeStr_1435[_loc16_];
            param1.normal.x = _loc8_.col1.x * _loc9_.x + _loc8_.col2.x * _loc9_.y;
            param1.normal.y = _loc8_.col1.y * _loc9_.x + _loc8_.col2.y * _loc9_.y;
            return true;
         }
         return false;
      }
      
      override public function _SafeStr_2297(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2._SafeStr_945;
         var _loc4_:b2Vec2 = this._SafeStr_447[0];
         var _loc5_:Number = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
         var _loc6_:Number = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
         var _loc7_:Number = _loc5_;
         var _loc8_:Number = _loc6_;
         var _loc9_:int = 1;
         while(_loc9_ < this._SafeStr_1784)
         {
            _loc4_ = this._SafeStr_447[_loc9_];
            _loc10_ = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
            _loc11_ = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
            _loc5_ = _loc5_ < _loc10_ ? _loc5_ : _loc10_;
            _loc6_ = _loc6_ < _loc11_ ? _loc6_ : _loc11_;
            _loc7_ = _loc7_ > _loc10_ ? _loc7_ : _loc10_;
            _loc8_ = _loc8_ > _loc11_ ? _loc8_ : _loc11_;
            _loc9_++;
         }
         param1.lowerBound.x = _loc5_ - b2internal::_SafeStr_874;
         param1.lowerBound.y = _loc6_ - b2internal::_SafeStr_874;
         param1.upperBound.x = _loc7_ + b2internal::_SafeStr_874;
         param1.upperBound.y = _loc8_ + b2internal::_SafeStr_874;
      }
      
      override public function _SafeStr_1244(param1:b2MassData, param2:Number) : void
      {
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
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
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(this._SafeStr_1784 == 2)
         {
            param1.center.x = 0.5 * (this._SafeStr_447[0].x + this._SafeStr_447[1].x);
            param1.center.y = 0.5 * (this._SafeStr_447[0].y + this._SafeStr_447[1].y);
            param1._SafeStr_1106 = 0;
            param1.I = 0;
            return;
         }
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc9_:Number = 1 / 3;
         var _loc10_:int = 0;
         while(_loc10_ < this._SafeStr_1784)
         {
            _loc11_ = this._SafeStr_447[_loc10_];
            _loc12_ = _loc10_ + 1 < this._SafeStr_1784 ? this._SafeStr_447[int(_loc10_ + 1)] : this._SafeStr_447[0];
            _loc13_ = _loc11_.x - 0;
            _loc14_ = _loc11_.y - 0;
            _loc15_ = _loc12_.x - 0;
            _loc16_ = _loc12_.y - 0;
            _loc17_ = _loc13_ * _loc16_ - _loc14_ * _loc15_;
            _loc18_ = 0.5 * _loc17_;
            _loc5_ += _loc18_;
            _loc3_ += _loc18_ * _loc9_ * (0 + _loc11_.x + _loc12_.x);
            _loc4_ += _loc18_ * _loc9_ * (0 + _loc11_.y + _loc12_.y);
            _loc19_ = 0;
            _loc20_ = 0;
            _loc21_ = _loc13_;
            _loc22_ = _loc14_;
            _loc23_ = _loc15_;
            _loc24_ = _loc16_;
            _loc25_ = _loc9_ * (0.25 * (_loc21_ * _loc21_ + _loc23_ * _loc21_ + _loc23_ * _loc23_) + (_loc19_ * _loc21_ + _loc19_ * _loc23_)) + 0.5 * _loc19_ * _loc19_;
            _loc26_ = _loc9_ * (0.25 * (_loc22_ * _loc22_ + _loc24_ * _loc22_ + _loc24_ * _loc24_) + (_loc20_ * _loc22_ + _loc20_ * _loc24_)) + 0.5 * _loc20_ * _loc20_;
            _loc6_ += _loc17_ * (_loc25_ + _loc26_);
            _loc10_++;
         }
         param1._SafeStr_1106 = param2 * _loc5_;
         _loc3_ *= 1 / _loc5_;
         _loc4_ *= 1 / _loc5_;
         param1.center.Set(_loc3_,_loc4_);
         param1.I = param2 * _loc6_;
      }
      
      override public function _SafeStr_662(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc12_:int = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:Boolean = false;
         var _loc24_:b2MassData = null;
         var _loc25_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math._SafeStr_1496(param3._SafeStr_945,param1);
         var _loc6_:Number = param2 - b2Math._SafeCls_184(param1,param3.position);
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:int = -1;
         var _loc10_:int = -1;
         var _loc11_:Boolean = false;
         _loc12_ = 0;
         while(_loc12_ < this._SafeStr_1784)
         {
            _loc7_[_loc12_] = b2Math._SafeCls_184(_loc5_,this._SafeStr_447[_loc12_]) - _loc6_;
            _loc23_ = _loc7_[_loc12_] < -Number.MIN_VALUE;
            if(_loc12_ > 0)
            {
               if(_loc23_)
               {
                  if(!_loc11_)
                  {
                     _loc9_ = _loc12_ - 1;
                     _loc8_++;
                  }
               }
               else if(_loc11_)
               {
                  _loc10_ = _loc12_ - 1;
                  _loc8_++;
               }
            }
            _loc11_ = _loc23_;
            _loc12_++;
         }
         switch(_loc8_)
         {
            case 0:
               if(_loc11_)
               {
                  _loc24_ = new b2MassData();
                  this._SafeStr_1244(_loc24_,1);
                  param4._SafeStr_1679(b2Math._SafeStr_457(param3,_loc24_.center));
                  return _loc24_._SafeStr_1106;
               }
               return 0;
               break;
            case 1:
               if(_loc9_ == -1)
               {
                  _loc9_ = this._SafeStr_1784 - 1;
                  break;
               }
               _loc10_ = this._SafeStr_1784 - 1;
         }
         var _loc13_:int = (_loc9_ + 1) % this._SafeStr_1784;
         var _loc14_:int = (_loc10_ + 1) % this._SafeStr_1784;
         var _loc15_:Number = (0 - _loc7_[_loc9_]) / (_loc7_[_loc13_] - _loc7_[_loc9_]);
         var _loc16_:Number = (0 - _loc7_[_loc10_]) / (_loc7_[_loc14_] - _loc7_[_loc10_]);
         var _loc17_:b2Vec2 = new b2Vec2(this._SafeStr_447[_loc9_].x * (1 - _loc15_) + this._SafeStr_447[_loc13_].x * _loc15_,this._SafeStr_447[_loc9_].y * (1 - _loc15_) + this._SafeStr_447[_loc13_].y * _loc15_);
         var _loc18_:b2Vec2 = new b2Vec2(this._SafeStr_447[_loc10_].x * (1 - _loc16_) + this._SafeStr_447[_loc14_].x * _loc16_,this._SafeStr_447[_loc10_].y * (1 - _loc16_) + this._SafeStr_447[_loc14_].y * _loc16_);
         var _loc19_:Number = 0;
         var _loc20_:b2Vec2 = new b2Vec2();
         var _loc21_:b2Vec2 = this._SafeStr_447[_loc13_];
         _loc12_ = _loc13_;
         while(_loc12_ != _loc14_)
         {
            _loc12_ = (_loc12_ + 1) % this._SafeStr_1784;
            if(_loc12_ == _loc14_)
            {
               _loc22_ = _loc18_;
            }
            else
            {
               _loc22_ = this._SafeStr_447[_loc12_];
            }
            _loc25_ = 0.5 * ((_loc21_.x - _loc17_.x) * (_loc22_.y - _loc17_.y) - (_loc21_.y - _loc17_.y) * (_loc22_.x - _loc17_.x));
            _loc19_ += _loc25_;
            _loc20_.x += _loc25_ * (_loc17_.x + _loc21_.x + _loc22_.x) / 3;
            _loc20_.y += _loc25_ * (_loc17_.y + _loc21_.y + _loc22_.y) / 3;
            _loc21_ = _loc22_;
         }
         _loc20_.Multiply(1 / _loc19_);
         param4._SafeStr_1679(b2Math._SafeStr_457(param3,_loc20_));
         return _loc19_;
      }
      
      public function _SafeStr_1485() : int
      {
         return this._SafeStr_1784;
      }
      
      public function _SafeStr_1388() : Vector.<b2Vec2>
      {
         return this._SafeStr_447;
      }
      
      public function _SafeStr_1787() : Vector.<b2Vec2>
      {
         return this._SafeStr_1435;
      }
      
      public function _SafeStr_1486(param1:b2Vec2) : int
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this._SafeStr_447[0].x * param1.x + this._SafeStr_447[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this._SafeStr_1784)
         {
            _loc5_ = this._SafeStr_447[_loc4_].x * param1.x + this._SafeStr_447[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function _SafeStr_1113(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this._SafeStr_447[0].x * param1.x + this._SafeStr_447[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this._SafeStr_1784)
         {
            _loc5_ = this._SafeStr_447[_loc4_].x * param1.x + this._SafeStr_447[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this._SafeStr_447[_loc2_];
      }
      
      private function _SafeStr_1182() : Boolean
      {
         return false;
      }
      
      private function _SafeStr_785(param1:int) : void
      {
         var _loc2_:int = int(this._SafeStr_447.length);
         while(_loc2_ < param1)
         {
            this._SafeStr_447[_loc2_] = new b2Vec2();
            this._SafeStr_1435[_loc2_] = new b2Vec2();
            _loc2_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_322 = "_-ab"
 * @identifier _SafeStr_438 = "_-KV"
 * @identifier _SafeStr_447 = "_-5b"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_504 = "_-DK"
 * @identifier _SafeStr_609 = "_-Lu"
 * @identifier _SafeStr_662 = "_-5X"
 * @identifier _SafeStr_691 = "_-DX"
 * @identifier _SafeStr_731 = "_-Fl"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_785 = "_-9r"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1009 = "_-9C"
 * @identifier _SafeStr_1106 = "_-Y8"
 * @identifier _SafeStr_1113 = "_-g9"
 * @identifier _SafeStr_1182 = "_-H8"
 * @identifier _SafeStr_1194 = "_-3b"
 * @identifier _SafeStr_1244 = "_-cm"
 * @identifier _SafeStr_1388 = "_-bG"
 * @identifier _SafeStr_1435 = "_-1z"
 * @identifier _SafeStr_1485 = "_-S9"
 * @identifier _SafeStr_1486 = "_-g4"
 * @identifier _SafeStr_1496 = "_-1o"
 * @identifier _SafeStr_1560 = "_-Pq"
 * @identifier _SafeStr_1595 = "_-9G"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1784 = "_-MB"
 * @identifier _SafeStr_1787 = "_-XK"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1854 = "_-4p"
 * @identifier _SafeStr_1865 = "_-aW"
 * @identifier _SafeStr_1900 = "_-Wa"
 * @identifier _SafeStr_2184 = "_-46"
 * @identifier _SafeStr_2239 = "_-az"
 * @identifier _SafeStr_2297 = "_-5a"
 * @identifier _SafeStr_2300 = "_-ND"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2571 = "_-Eb"
 * @identifier _SafeStr_2572 = "_-9E"
 * @identifier _SafeStr_2600 = "_-XM"
 */
