package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_8.*;
   
   internal class b2SeparationFunction
   {
      
      public static const _SafeStr_1819:int = 1;
      
      public static const _SafeStr_1593:int = 2;
      
      public static const _SafeStr_2313:int = 4;
      
      public var _SafeStr_1598:b2DistanceProxy;
      
      public var _SafeStr_1222:b2DistanceProxy;
      
      public var _SafeStr_972:int;
      
      public var _SafeStr_2485:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1917:b2Vec2 = new b2Vec2();
      
      public function b2SeparationFunction()
      {
         super();
      }
      
      public function _SafeStr_2347(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Mat22 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc25_:b2Vec2 = null;
         var _loc26_:b2Vec2 = null;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:b2Vec2 = null;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         this._SafeStr_1598 = param2;
         this._SafeStr_1222 = param4;
         var _loc6_:int = int(param1.count);
         b2Settings.b2Assert(0 < _loc6_ && _loc6_ < 3);
         if(_loc6_ == 1)
         {
            this._SafeStr_972 = _SafeStr_1819;
            _loc7_ = this._SafeStr_1598._SafeStr_1254(param1._SafeStr_1143[0]);
            _loc10_ = this._SafeStr_1222._SafeStr_1254(param1._SafeStr_1512[0]);
            _loc20_ = _loc7_;
            _loc19_ = param3._SafeStr_945;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc10_;
            _loc19_ = param5._SafeStr_945;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            this._SafeStr_1917.x = _loc15_ - _loc13_;
            this._SafeStr_1917.y = _loc16_ - _loc14_;
            this._SafeStr_1917.Normalize();
         }
         else if(param1._SafeStr_1512[0] == param1._SafeStr_1512[1])
         {
            this._SafeStr_972 = _SafeStr_1593;
            _loc8_ = this._SafeStr_1598._SafeStr_1254(param1._SafeStr_1143[0]);
            _loc9_ = this._SafeStr_1598._SafeStr_1254(param1._SafeStr_1143[1]);
            _loc10_ = this._SafeStr_1222._SafeStr_1254(param1._SafeStr_1512[0]);
            this._SafeStr_2485.x = 0.5 * (_loc8_.x + _loc9_.x);
            this._SafeStr_2485.y = 0.5 * (_loc8_.y + _loc9_.y);
            this._SafeStr_1917 = b2Math._SafeStr_2600(b2Math._SafeStr_2442(_loc9_,_loc8_),1);
            this._SafeStr_1917.Normalize();
            _loc20_ = this._SafeStr_1917;
            _loc19_ = param3._SafeStr_945;
            _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
            _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
            _loc20_ = this._SafeStr_2485;
            _loc19_ = param3._SafeStr_945;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc10_;
            _loc19_ = param5._SafeStr_945;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc21_ = (_loc15_ - _loc13_) * _loc17_ + (_loc16_ - _loc14_) * _loc18_;
            if(_loc21_ < 0)
            {
               this._SafeStr_1917._SafeStr_762();
            }
         }
         else if(param1._SafeStr_1143[0] == param1._SafeStr_1143[0])
         {
            this._SafeStr_972 = _SafeStr_2313;
            _loc11_ = this._SafeStr_1222._SafeStr_1254(param1._SafeStr_1512[0]);
            _loc12_ = this._SafeStr_1222._SafeStr_1254(param1._SafeStr_1512[1]);
            _loc7_ = this._SafeStr_1598._SafeStr_1254(param1._SafeStr_1143[0]);
            this._SafeStr_2485.x = 0.5 * (_loc11_.x + _loc12_.x);
            this._SafeStr_2485.y = 0.5 * (_loc11_.y + _loc12_.y);
            this._SafeStr_1917 = b2Math._SafeStr_2600(b2Math._SafeStr_2442(_loc12_,_loc11_),1);
            this._SafeStr_1917.Normalize();
            _loc20_ = this._SafeStr_1917;
            _loc19_ = param5._SafeStr_945;
            _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
            _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
            _loc20_ = this._SafeStr_2485;
            _loc19_ = param5._SafeStr_945;
            _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc20_ = _loc7_;
            _loc19_ = param3._SafeStr_945;
            _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
            _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
            _loc21_ = (_loc13_ - _loc15_) * _loc17_ + (_loc14_ - _loc16_) * _loc18_;
            if(_loc21_ < 0)
            {
               this._SafeStr_1917._SafeStr_762();
            }
         }
         else
         {
            _loc8_ = this._SafeStr_1598._SafeStr_1254(param1._SafeStr_1143[0]);
            _loc9_ = this._SafeStr_1598._SafeStr_1254(param1._SafeStr_1143[1]);
            _loc11_ = this._SafeStr_1222._SafeStr_1254(param1._SafeStr_1512[0]);
            _loc12_ = this._SafeStr_1222._SafeStr_1254(param1._SafeStr_1512[1]);
            _loc23_ = b2Math._SafeStr_457(param3,_loc7_);
            _loc24_ = b2Math._SafeStr_734(param3._SafeStr_945,b2Math._SafeStr_2442(_loc9_,_loc8_));
            _loc25_ = b2Math._SafeStr_457(param5,_loc10_);
            _loc26_ = b2Math._SafeStr_734(param5._SafeStr_945,b2Math._SafeStr_2442(_loc12_,_loc11_));
            _loc27_ = _loc24_.x * _loc24_.x + _loc24_.y * _loc24_.y;
            _loc28_ = _loc26_.x * _loc26_.x + _loc26_.y * _loc26_.y;
            _loc29_ = b2Math._SafeStr_2442(_loc26_,_loc24_);
            _loc30_ = _loc24_.x * _loc29_.x + _loc24_.y * _loc29_.y;
            _loc31_ = _loc26_.x * _loc29_.x + _loc26_.y * _loc29_.y;
            _loc32_ = _loc24_.x * _loc26_.x + _loc24_.y * _loc26_.y;
            _loc33_ = _loc27_ * _loc28_ - _loc32_ * _loc32_;
            _loc21_ = 0;
            if(_loc33_ != 0)
            {
               _loc21_ = b2Math._SafeStr_392((_loc32_ * _loc31_ - _loc30_ * _loc28_) / _loc33_,0,1);
            }
            _loc34_ = (_loc32_ * _loc21_ + _loc31_) / _loc28_;
            if(_loc34_ < 0)
            {
               _loc34_ = 0;
               _loc21_ = b2Math._SafeStr_392((_loc32_ - _loc30_) / _loc27_,0,1);
            }
            _loc7_ = new b2Vec2();
            _loc7_.x = _loc8_.x + _loc21_ * (_loc9_.x - _loc8_.x);
            _loc7_.y = _loc8_.y + _loc21_ * (_loc9_.y - _loc8_.y);
            _loc10_ = new b2Vec2();
            _loc10_.x = _loc11_.x + _loc21_ * (_loc12_.x - _loc11_.x);
            _loc10_.y = _loc11_.y + _loc21_ * (_loc12_.y - _loc11_.y);
            if(_loc21_ == 0 || _loc21_ == 1)
            {
               this._SafeStr_972 = _SafeStr_2313;
               this._SafeStr_1917 = b2Math._SafeStr_2600(b2Math._SafeStr_2442(_loc12_,_loc11_),1);
               this._SafeStr_1917.Normalize();
               this._SafeStr_2485 = _loc10_;
               _loc20_ = this._SafeStr_1917;
               _loc19_ = param5._SafeStr_945;
               _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
               _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
               _loc20_ = this._SafeStr_2485;
               _loc19_ = param5._SafeStr_945;
               _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc20_ = _loc7_;
               _loc19_ = param3._SafeStr_945;
               _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc22_ = (_loc13_ - _loc15_) * _loc17_ + (_loc14_ - _loc16_) * _loc18_;
               if(_loc21_ < 0)
               {
                  this._SafeStr_1917._SafeStr_762();
               }
            }
            else
            {
               this._SafeStr_972 = _SafeStr_1593;
               this._SafeStr_1917 = b2Math._SafeStr_2600(b2Math._SafeStr_2442(_loc9_,_loc8_),1);
               this._SafeStr_2485 = _loc7_;
               _loc20_ = this._SafeStr_1917;
               _loc19_ = param3._SafeStr_945;
               _loc17_ = _loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y;
               _loc18_ = _loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y;
               _loc20_ = this._SafeStr_2485;
               _loc19_ = param3._SafeStr_945;
               _loc13_ = param3.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc14_ = param3.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc20_ = _loc10_;
               _loc19_ = param5._SafeStr_945;
               _loc15_ = param5.position.x + (_loc19_.col1.x * _loc20_.x + _loc19_.col2.x * _loc20_.y);
               _loc16_ = param5.position.y + (_loc19_.col1.y * _loc20_.x + _loc19_.col2.y * _loc20_.y);
               _loc22_ = (_loc15_ - _loc13_) * _loc17_ + (_loc16_ - _loc14_) * _loc18_;
               if(_loc21_ < 0)
               {
                  this._SafeStr_1917._SafeStr_762();
               }
            }
         }
      }
      
      public function _SafeStr_1939(param1:b2Transform, param2:b2Transform) : Number
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc10_:b2Vec2 = null;
         switch(this._SafeStr_972)
         {
            case _SafeStr_1819:
               _loc3_ = b2Math._SafeStr_1496(param1._SafeStr_945,this._SafeStr_1917);
               _loc4_ = b2Math._SafeStr_1496(param2._SafeStr_945,this._SafeStr_1917._SafeStr_714());
               _loc5_ = this._SafeStr_1598._SafeStr_1113(_loc3_);
               _loc6_ = this._SafeStr_1222._SafeStr_1113(_loc4_);
               _loc7_ = b2Math._SafeStr_457(param1,_loc5_);
               _loc8_ = b2Math._SafeStr_457(param2,_loc6_);
               return (_loc8_.x - _loc7_.x) * this._SafeStr_1917.x + (_loc8_.y - _loc7_.y) * this._SafeStr_1917.y;
            case _SafeStr_1593:
               _loc10_ = b2Math._SafeStr_734(param1._SafeStr_945,this._SafeStr_1917);
               _loc7_ = b2Math._SafeStr_457(param1,this._SafeStr_2485);
               _loc4_ = b2Math._SafeStr_1496(param2._SafeStr_945,_loc10_._SafeStr_714());
               _loc6_ = this._SafeStr_1222._SafeStr_1113(_loc4_);
               _loc8_ = b2Math._SafeStr_457(param2,_loc6_);
               return (_loc8_.x - _loc7_.x) * _loc10_.x + (_loc8_.y - _loc7_.y) * _loc10_.y;
            case _SafeStr_2313:
               _loc10_ = b2Math._SafeStr_734(param2._SafeStr_945,this._SafeStr_1917);
               _loc8_ = b2Math._SafeStr_457(param2,this._SafeStr_2485);
               _loc3_ = b2Math._SafeStr_1496(param1._SafeStr_945,_loc10_._SafeStr_714());
               _loc5_ = this._SafeStr_1598._SafeStr_1113(_loc3_);
               _loc7_ = b2Math._SafeStr_457(param1,_loc5_);
               return (_loc7_.x - _loc8_.x) * _loc10_.x + (_loc7_.y - _loc8_.y) * _loc10_.y;
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_714 = "_-dS"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_762 = "_-br"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1113 = "_-g9"
 * @identifier _SafeStr_1143 = "_-FK"
 * @identifier _SafeStr_1222 = "_-PJ"
 * @identifier _SafeStr_1254 = "_-Cr"
 * @identifier _SafeStr_1496 = "_-1o"
 * @identifier _SafeStr_1512 = "_-fY"
 * @identifier _SafeStr_1593 = "_-FT"
 * @identifier _SafeStr_1598 = "_-Yl"
 * @identifier _SafeStr_1819 = "_-BF"
 * @identifier _SafeStr_1917 = "_-9l"
 * @identifier _SafeStr_1939 = "_-XJ"
 * @identifier _SafeStr_2313 = "_-LY"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2485 = "_-Ab"
 * @identifier _SafeStr_2600 = "_-XM"
 */
