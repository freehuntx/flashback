package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_8.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var _SafeStr_2078:b2Simplex = new b2Simplex();
      
      private static var _SafeStr_400:Vector.<int> = new Vector.<int>(3);
      
      private static var _SafeStr_696:Vector.<int> = new Vector.<int>(3);
      
      public function b2Distance()
      {
         super();
      }
      
      public static function Distance(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:Boolean = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         ++b2_gjkCalls;
         var _loc4_:b2DistanceProxy = param3._SafeStr_1619;
         var _loc5_:b2DistanceProxy = param3._SafeStr_1814;
         var _loc6_:b2Transform = param3._SafeStr_2032;
         var _loc7_:b2Transform = param3._SafeStr_2350;
         var _loc8_:b2Simplex = _SafeStr_2078;
         _loc8_._SafeStr_2579(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_._SafeStr_447;
         var _loc11_:Vector.<int> = _SafeStr_400;
         var _loc12_:Vector.<int> = _SafeStr_696;
         var _loc13_:int = 0;
         var _loc14_:b2Vec2 = _loc8_._SafeStr_1438();
         var _loc15_:Number;
         var _loc16_:Number = _loc15_ = _loc14_._SafeStr_731();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_._SafeStr_2284;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_]._SafeStr_1143;
               _loc12_[_loc17_] = _loc9_[_loc17_]._SafeStr_1512;
               _loc17_++;
            }
            switch(_loc8_._SafeStr_2284)
            {
                  _loc8_.Solve2();
                  break;
               case 2:
                  _loc8_.Solve3();
                  break;
               default:
                  b2Settings.b2Assert(false);
                  break;
               case 3:
            }
            if(_loc8_._SafeStr_2284 == 3)
            {
               break;
            }
            _loc18_ = _loc8_._SafeStr_1438();
            _loc16_ = _loc18_._SafeStr_731();
            if(_loc16_ > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            _loc20_ = _loc8_._SafeStr_516();
            if(_loc20_._SafeStr_731() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            _loc21_ = _loc9_[_loc8_._SafeStr_2284];
            _loc21_._SafeStr_1143 = _loc4_._SafeStr_1486(b2Math._SafeStr_1496(_loc6_._SafeStr_945,_loc20_._SafeStr_714()));
            _loc21_._SafeStr_2507 = b2Math._SafeStr_457(_loc6_,_loc4_._SafeStr_1254(_loc21_._SafeStr_1143));
            _loc21_._SafeStr_1512 = _loc5_._SafeStr_1486(b2Math._SafeStr_1496(_loc7_._SafeStr_945,_loc20_));
            _loc21_._SafeStr_2172 = b2Math._SafeStr_457(_loc7_,_loc5_._SafeStr_1254(_loc21_._SafeStr_1512));
            _loc21_.w = b2Math._SafeStr_2442(_loc21_._SafeStr_2172,_loc21_._SafeStr_2507);
            _loc19_++;
            ++b2_gjkIters;
            _loc22_ = false;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               if(_loc21_._SafeStr_1143 == _loc11_[_loc17_] && _loc21_._SafeStr_1512 == _loc12_[_loc17_])
               {
                  _loc22_ = true;
                  break;
               }
               _loc17_++;
            }
            if(_loc22_)
            {
               break;
            }
            ++_loc8_._SafeStr_2284;
         }
         b2_gjkMaxIters = b2Math._SafeStr_2143(b2_gjkMaxIters,_loc19_);
         _loc8_._SafeStr_1495(param1._SafeStr_1214,param1._SafeStr_1538);
         param1.distance = b2Math._SafeStr_2442(param1._SafeStr_1214,param1._SafeStr_1538).Length();
         param1._SafeStr_863 = _loc19_;
         _loc8_._SafeStr_1532(param2);
         if(param3._SafeStr_951)
         {
            _loc23_ = _loc4_._SafeStr_874;
            _loc24_ = _loc5_._SafeStr_874;
            if(param1.distance > _loc23_ + _loc24_ && param1.distance > Number.MIN_VALUE)
            {
               param1.distance -= _loc23_ + _loc24_;
               _loc25_ = b2Math._SafeStr_2442(param1._SafeStr_1538,param1._SafeStr_1214);
               _loc25_.Normalize();
               param1._SafeStr_1214.x += _loc23_ * _loc25_.x;
               param1._SafeStr_1214.y += _loc23_ * _loc25_.y;
               param1._SafeStr_1538.x -= _loc24_ * _loc25_.x;
               param1._SafeStr_1538.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               _loc18_ = new b2Vec2();
               _loc18_.x = 0.5 * (param1._SafeStr_1214.x + param1._SafeStr_1538.x);
               _loc18_.y = 0.5 * (param1._SafeStr_1214.y + param1._SafeStr_1538.y);
               param1._SafeStr_1214.x = param1._SafeStr_1538.x = _loc18_.x;
               param1._SafeStr_1214.y = param1._SafeStr_1538.y = _loc18_.y;
               param1.distance = 0;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_400 = "_-BM"
 * @identifier _SafeStr_447 = "_-5b"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_516 = "_-cs"
 * @identifier _SafeStr_696 = "_-7X"
 * @identifier _SafeStr_714 = "_-dS"
 * @identifier _SafeStr_731 = "_-Fl"
 * @identifier _SafeStr_863 = "_-5D"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_951 = "_-8S"
 * @identifier _SafeStr_1143 = "_-FK"
 * @identifier _SafeStr_1214 = "_-Ap"
 * @identifier _SafeStr_1254 = "_-Cr"
 * @identifier _SafeStr_1438 = "_-8v"
 * @identifier _SafeStr_1486 = "_-g4"
 * @identifier _SafeStr_1495 = "_-11"
 * @identifier _SafeStr_1496 = "_-1o"
 * @identifier _SafeStr_1512 = "_-fY"
 * @identifier _SafeStr_1532 = "_-F"
 * @identifier _SafeStr_1538 = "_-iW"
 * @identifier _SafeStr_1619 = "_-4F"
 * @identifier _SafeStr_1814 = "_-FJ"
 * @identifier _SafeStr_2032 = "_-iF"
 * @identifier _SafeStr_2078 = "_-YX"
 * @identifier _SafeStr_2143 = "_-bx"
 * @identifier _SafeStr_2172 = "_-cN"
 * @identifier _SafeStr_2284 = "_-VU"
 * @identifier _SafeStr_2350 = "_-FY"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2507 = "_-JZ"
 * @identifier _SafeStr_2579 = "_-2d"
 */
