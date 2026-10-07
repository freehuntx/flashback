package _SafePkg_20
{
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Sweep;
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var _SafeStr_2324:b2SimplexCache = new b2SimplexCache();
      
      private static var _SafeStr_465:b2DistanceInput = new b2DistanceInput();
      
      private static var _SafeStr_1712:b2Transform = new b2Transform();
      
      private static var _SafeStr_2212:b2Transform = new b2Transform();
      
      private static var _SafeStr_598:b2SeparationFunction = new b2SeparationFunction();
      
      private static var _SafeStr_1951:b2DistanceOutput = new b2DistanceOutput();
      
      public function b2TimeOfImpact()
      {
         super();
      }
      
      public static function _SafeStr_1822(param1:b2TOIInput) : Number
      {
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         ++b2_toiCalls;
         var _loc2_:b2DistanceProxy = param1._SafeStr_1619;
         var _loc3_:b2DistanceProxy = param1._SafeStr_1814;
         var _loc4_:b2Sweep = param1._SafeStr_527;
         var _loc5_:b2Sweep = param1._SafeStr_1476;
         b2Settings.b2Assert(_loc4_.t0 == _loc5_.t0);
         b2Settings.b2Assert(1 - _loc4_.t0 > Number.MIN_VALUE);
         var _loc6_:Number = _loc2_._SafeStr_874 + _loc3_._SafeStr_874;
         var _loc7_:Number = param1._SafeStr_2546;
         var _loc8_:Number = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = 0;
         _SafeStr_2324.count = 0;
         _SafeStr_465._SafeStr_951 = false;
         do
         {
            _loc4_.GetTransform(_SafeStr_1712,_loc8_);
            _loc5_.GetTransform(_SafeStr_2212,_loc8_);
            _SafeStr_465._SafeStr_1619 = _loc2_;
            _SafeStr_465._SafeStr_1814 = _loc3_;
            _SafeStr_465._SafeStr_2032 = _SafeStr_1712;
            _SafeStr_465._SafeStr_2350 = _SafeStr_2212;
            b2Distance.Distance(_SafeStr_1951,_SafeStr_2324,_SafeStr_465);
            if(_SafeStr_1951.distance <= 0)
            {
               _loc8_ = 1;
               break;
            }
            _SafeStr_598._SafeStr_2347(_SafeStr_2324,_loc2_,_SafeStr_1712,_loc3_,_SafeStr_2212);
            _loc12_ = _SafeStr_598._SafeStr_1939(_SafeStr_1712,_SafeStr_2212);
            if(_loc12_ <= 0)
            {
               _loc8_ = 1;
               break;
            }
            if(_loc10_ == 0)
            {
               if(_loc12_ > _loc6_)
               {
                  _loc11_ = b2Math._SafeStr_2143(_loc6_ - _loc7_,0.75 * _loc6_);
               }
               else
               {
                  _loc11_ = b2Math._SafeStr_2143(_loc12_ - _loc7_,0.02 * _loc6_);
               }
            }
            if(_loc12_ - _loc11_ < 0.5 * _loc7_)
            {
               if(_loc10_ == 0)
               {
                  _loc8_ = 1;
               }
               break;
            }
            _loc13_ = _loc8_;
            _loc14_ = _loc8_;
            _loc15_ = 1;
            _loc16_ = _loc12_;
            _loc4_.GetTransform(_SafeStr_1712,_loc15_);
            _loc5_.GetTransform(_SafeStr_2212,_loc15_);
            _loc17_ = _SafeStr_598._SafeStr_1939(_SafeStr_1712,_SafeStr_2212);
            if(_loc17_ >= _loc11_)
            {
               _loc8_ = 1;
               break;
            }
            _loc18_ = 0;
            do
            {
               if(_loc18_ & 1)
               {
                  _loc19_ = _loc14_ + (_loc11_ - _loc16_) * (_loc15_ - _loc14_) / (_loc17_ - _loc16_);
               }
               else
               {
                  _loc19_ = 0.5 * (_loc14_ + _loc15_);
               }
               _loc4_.GetTransform(_SafeStr_1712,_loc19_);
               _loc5_.GetTransform(_SafeStr_2212,_loc19_);
               _loc20_ = _SafeStr_598._SafeStr_1939(_SafeStr_1712,_SafeStr_2212);
               if(b2Math._SafeStr_283(_loc20_ - _loc11_) < 0.025 * _loc7_)
               {
                  _loc13_ = _loc19_;
                  break;
               }
               if(_loc20_ > _loc11_)
               {
                  _loc14_ = _loc19_;
                  _loc16_ = _loc20_;
               }
               else
               {
                  _loc15_ = _loc19_;
                  _loc17_ = _loc20_;
               }
               _loc18_++;
               ++b2_toiRootIters;
            }
            while(_loc18_ != 50);
            b2_toiMaxRootIters = b2Math._SafeStr_2143(b2_toiMaxRootIters,_loc18_);
            if(_loc13_ < (1 + 100 * Number.MIN_VALUE) * _loc8_)
            {
               break;
            }
            _loc8_ = _loc13_;
            _loc10_++;
            ++b2_toiIters;
         }
         while(_loc10_ != 1000);
         b2_toiMaxIters = b2Math._SafeStr_2143(b2_toiMaxIters,_loc10_);
         return _loc8_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_465 = "_-KB"
 * @identifier _SafeStr_527 = "_-e7"
 * @identifier _SafeStr_598 = "_-Jq"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_951 = "_-8S"
 * @identifier _SafeStr_1476 = "_-4s"
 * @identifier _SafeStr_1619 = "_-4F"
 * @identifier _SafeStr_1712 = "_-ZJ"
 * @identifier _SafeStr_1814 = "_-FJ"
 * @identifier _SafeStr_1822 = "_-3c"
 * @identifier _SafeStr_1939 = "_-XJ"
 * @identifier _SafeStr_1951 = "_-ZD"
 * @identifier _SafeStr_2032 = "_-iF"
 * @identifier _SafeStr_2143 = "_-bx"
 * @identifier _SafeStr_2212 = "_-R"
 * @identifier _SafeStr_2324 = "_-JC"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2350 = "_-FY"
 * @identifier _SafeStr_2546 = "_-Tb"
 */
