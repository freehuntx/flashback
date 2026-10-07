package _SafePkg_19
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_20.*;
   
   use namespace b2internal;
   
   internal class b2PositionSolverManifold
   {
      
      private static var _SafeStr_777:b2Vec2 = new b2Vec2();
      
      private static var _SafeStr_2362:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2098:b2Vec2;
      
      public var _SafeStr_2110:Vector.<b2Vec2>;
      
      public var _SafeStr_878:Vector.<Number>;
      
      public function b2PositionSolverManifold()
      {
         super();
         this._SafeStr_2098 = new b2Vec2();
         this._SafeStr_878 = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
         this._SafeStr_2110 = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this._SafeStr_2110[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function _SafeStr_2347(param1:b2ContactConstraint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
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
         b2Settings.b2Assert(param1._SafeStr_1033 > 0);
         switch(param1.type)
         {
            case b2Manifold._SafeStr_1804:
               _loc5_ = param1._SafeStr_1255._SafeStr_1473._SafeStr_945;
               _loc6_ = param1._SafeStr_2475;
               _loc9_ = param1._SafeStr_1255._SafeStr_1473.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc10_ = param1._SafeStr_1255._SafeStr_1473.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1._SafeStr_1005._SafeStr_1473._SafeStr_945;
               _loc6_ = param1._SafeStr_2095[0]._SafeStr_2475;
               _loc11_ = param1._SafeStr_1005._SafeStr_1473.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc12_ = param1._SafeStr_1005._SafeStr_1473.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc13_ = _loc11_ - _loc9_;
               _loc14_ = _loc12_ - _loc10_;
               _loc15_ = _loc13_ * _loc13_ + _loc14_ * _loc14_;
               if(_loc15_ > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Number(Math.sqrt(_loc15_));
                  this._SafeStr_2098.x = _loc13_ / _loc16_;
                  this._SafeStr_2098.y = _loc14_ / _loc16_;
               }
               else
               {
                  this._SafeStr_2098.x = 1;
                  this._SafeStr_2098.y = 0;
               }
               this._SafeStr_2110[0].x = 0.5 * (_loc9_ + _loc11_);
               this._SafeStr_2110[0].y = 0.5 * (_loc10_ + _loc12_);
               this._SafeStr_878[0] = _loc13_ * this._SafeStr_2098.x + _loc14_ * this._SafeStr_2098.y - param1._SafeStr_417;
               break;
            case b2Manifold._SafeStr_1593:
               _loc5_ = param1._SafeStr_1255._SafeStr_1473._SafeStr_945;
               _loc6_ = param1.localPlaneNormal;
               this._SafeStr_2098.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this._SafeStr_2098.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1._SafeStr_1255._SafeStr_1473._SafeStr_945;
               _loc6_ = param1._SafeStr_2475;
               _loc7_ = param1._SafeStr_1255._SafeStr_1473.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1._SafeStr_1255._SafeStr_1473.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1._SafeStr_1005._SafeStr_1473._SafeStr_945;
               _loc2_ = 0;
               while(_loc2_ < param1._SafeStr_1033)
               {
                  _loc6_ = param1._SafeStr_2095[_loc2_]._SafeStr_2475;
                  _loc3_ = param1._SafeStr_1005._SafeStr_1473.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1._SafeStr_1005._SafeStr_1473.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this._SafeStr_878[_loc2_] = (_loc3_ - _loc7_) * this._SafeStr_2098.x + (_loc4_ - _loc8_) * this._SafeStr_2098.y - param1._SafeStr_417;
                  this._SafeStr_2110[_loc2_].x = _loc3_;
                  this._SafeStr_2110[_loc2_].y = _loc4_;
                  _loc2_++;
               }
               break;
            case b2Manifold._SafeStr_2313:
               _loc5_ = param1._SafeStr_1005._SafeStr_1473._SafeStr_945;
               _loc6_ = param1.localPlaneNormal;
               this._SafeStr_2098.x = _loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y;
               this._SafeStr_2098.y = _loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y;
               _loc5_ = param1._SafeStr_1005._SafeStr_1473._SafeStr_945;
               _loc6_ = param1._SafeStr_2475;
               _loc7_ = param1._SafeStr_1005._SafeStr_1473.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
               _loc8_ = param1._SafeStr_1005._SafeStr_1473.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
               _loc5_ = param1._SafeStr_1255._SafeStr_1473._SafeStr_945;
               _loc2_ = 0;
               while(_loc2_ < param1._SafeStr_1033)
               {
                  _loc6_ = param1._SafeStr_2095[_loc2_]._SafeStr_2475;
                  _loc3_ = param1._SafeStr_1255._SafeStr_1473.position.x + (_loc5_.col1.x * _loc6_.x + _loc5_.col2.x * _loc6_.y);
                  _loc4_ = param1._SafeStr_1255._SafeStr_1473.position.y + (_loc5_.col1.y * _loc6_.x + _loc5_.col2.y * _loc6_.y);
                  this._SafeStr_878[_loc2_] = (_loc3_ - _loc7_) * this._SafeStr_2098.x + (_loc4_ - _loc8_) * this._SafeStr_2098.y - param1._SafeStr_417;
                  this._SafeStr_2110[_loc2_].Set(_loc3_,_loc4_);
                  _loc2_++;
               }
               this._SafeStr_2098.x *= -1;
               this._SafeStr_2098.y *= -1;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_417 = "_-95"
 * @identifier _SafeStr_777 = "_-UW"
 * @identifier _SafeStr_878 = "_-3z"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1033 = "_-i3"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1593 = "_-FT"
 * @identifier _SafeStr_1804 = "_-DD"
 * @identifier _SafeStr_2095 = "_-Pj"
 * @identifier _SafeStr_2098 = "_-dB"
 * @identifier _SafeStr_2110 = "_-Zp"
 * @identifier _SafeStr_2313 = "_-LY"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2362 = "_-Ba"
 * @identifier _SafeStr_2475 = "_-1c"
 */
