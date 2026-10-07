package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
      
      public var _SafeStr_2098:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2110:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         super();
         this._SafeStr_2110 = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this._SafeStr_2110[_loc1_] = new b2Vec2();
            _loc1_++;
         }
      }
      
      public function _SafeStr_2347(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
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
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(param1._SafeStr_848 == 0)
         {
            return;
         }
         switch(param1._SafeStr_972)
         {
            case b2Manifold._SafeStr_1804:
               _loc8_ = param2._SafeStr_945;
               _loc7_ = param1._SafeStr_2485;
               _loc15_ = param2.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
               _loc16_ = param2.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
               _loc8_ = param4._SafeStr_945;
               _loc7_ = param1._SafeStr_2110[0]._SafeStr_2485;
               _loc17_ = param4.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
               _loc18_ = param4.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
               _loc19_ = _loc17_ - _loc15_;
               _loc20_ = _loc18_ - _loc16_;
               _loc21_ = _loc19_ * _loc19_ + _loc20_ * _loc20_;
               if(_loc21_ > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc26_ = Number(Math.sqrt(_loc21_));
                  this._SafeStr_2098.x = _loc19_ / _loc26_;
                  this._SafeStr_2098.y = _loc20_ / _loc26_;
               }
               else
               {
                  this._SafeStr_2098.x = 1;
                  this._SafeStr_2098.y = 0;
               }
               _loc22_ = _loc15_ + param3 * this._SafeStr_2098.x;
               _loc23_ = _loc16_ + param3 * this._SafeStr_2098.y;
               _loc24_ = _loc17_ - param5 * this._SafeStr_2098.x;
               _loc25_ = _loc18_ - param5 * this._SafeStr_2098.y;
               this._SafeStr_2110[0].x = 0.5 * (_loc22_ + _loc24_);
               this._SafeStr_2110[0].y = 0.5 * (_loc23_ + _loc25_);
               break;
            case b2Manifold._SafeStr_1593:
               _loc8_ = param2._SafeStr_945;
               _loc7_ = param1.m_localPlaneNormal;
               _loc9_ = _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
               _loc10_ = _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
               _loc8_ = param2._SafeStr_945;
               _loc7_ = param1._SafeStr_2485;
               _loc11_ = param2.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
               _loc12_ = param2.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
               this._SafeStr_2098.x = _loc9_;
               this._SafeStr_2098.y = _loc10_;
               _loc6_ = 0;
               while(_loc6_ < param1._SafeStr_848)
               {
                  _loc8_ = param4._SafeStr_945;
                  _loc7_ = param1._SafeStr_2110[_loc6_]._SafeStr_2485;
                  _loc13_ = param4.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                  _loc14_ = param4.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
                  this._SafeStr_2110[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                  this._SafeStr_2110[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                  _loc6_++;
               }
               break;
            case b2Manifold._SafeStr_2313:
               _loc8_ = param4._SafeStr_945;
               _loc7_ = param1.m_localPlaneNormal;
               _loc9_ = _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
               _loc10_ = _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
               _loc8_ = param4._SafeStr_945;
               _loc7_ = param1._SafeStr_2485;
               _loc11_ = param4.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
               _loc12_ = param4.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
               this._SafeStr_2098.x = -_loc9_;
               this._SafeStr_2098.y = -_loc10_;
               _loc6_ = 0;
               while(_loc6_ < param1._SafeStr_848)
               {
                  _loc8_ = param2._SafeStr_945;
                  _loc7_ = param1._SafeStr_2110[_loc6_]._SafeStr_2485;
                  _loc13_ = param2.position.x + _loc8_.col1.x * _loc7_.x + _loc8_.col2.x * _loc7_.y;
                  _loc14_ = param2.position.y + _loc8_.col1.y * _loc7_.x + _loc8_.col2.y * _loc7_.y;
                  this._SafeStr_2110[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                  this._SafeStr_2110[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                  _loc6_++;
               }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_848 = "_-UK"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1593 = "_-FT"
 * @identifier _SafeStr_1804 = "_-DD"
 * @identifier _SafeStr_2098 = "_-dB"
 * @identifier _SafeStr_2110 = "_-Zp"
 * @identifier _SafeStr_2313 = "_-LY"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2485 = "_-Ab"
 */
