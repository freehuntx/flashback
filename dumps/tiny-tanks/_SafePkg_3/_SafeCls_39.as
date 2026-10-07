package _SafePkg_3
{
   public class _SafeCls_39
   {
      
      public function _SafeCls_39()
      {
         super();
         trace("Equations is a static class and should not be instantiated.");
      }
      
      public static function init() : void
      {
         _SafeCls_2._SafeStr_402("easenone",_SafeStr_2199);
         _SafeCls_2._SafeStr_402("linear",_SafeStr_2199);
         _SafeCls_2._SafeStr_402("easeinquad",_SafeStr_2031);
         _SafeCls_2._SafeStr_402("easeoutquad",_SafeStr_1664);
         _SafeCls_2._SafeStr_402("easeinoutquad",_SafeStr_2436);
         _SafeCls_2._SafeStr_402("easeoutinquad",_SafeStr_1527);
         _SafeCls_2._SafeStr_402("easeincubic",_SafeStr_813);
         _SafeCls_2._SafeStr_402("easeoutcubic",_SafeStr_911);
         _SafeCls_2._SafeStr_402("easeinoutcubic",_SafeStr_1357);
         _SafeCls_2._SafeStr_402("easeoutincubic",_SafeStr_354);
         _SafeCls_2._SafeStr_402("easeinquart",_SafeStr_591);
         _SafeCls_2._SafeStr_402("easeoutquart",_SafeStr_346);
         _SafeCls_2._SafeStr_402("easeinoutquart",_SafeStr_286);
         _SafeCls_2._SafeStr_402("easeoutinquart",_SafeStr_1208);
         _SafeCls_2._SafeStr_402("easeinquint",_SafeStr_2175);
         _SafeCls_2._SafeStr_402("easeoutquint",_SafeStr_2026);
         _SafeCls_2._SafeStr_402("easeinoutquint",_SafeStr_2375);
         _SafeCls_2._SafeStr_402("easeoutinquint",_SafeStr_1085);
         _SafeCls_2._SafeStr_402("easeinsine",_SafeStr_872);
         _SafeCls_2._SafeStr_402("easeoutsine",_SafeStr_962);
         _SafeCls_2._SafeStr_402("easeinoutsine",_SafeStr_2584);
         _SafeCls_2._SafeStr_402("easeoutinsine",_SafeStr_1102);
         _SafeCls_2._SafeStr_402("easeincirc",_SafeStr_1080);
         _SafeCls_2._SafeStr_402("easeoutcirc",_SafeStr_1840);
         _SafeCls_2._SafeStr_402("easeinoutcirc",_SafeStr_2245);
         _SafeCls_2._SafeStr_402("easeoutincirc",_SafeStr_1397);
         _SafeCls_2._SafeStr_402("easeinexpo",_SafeStr_795);
         _SafeCls_2._SafeStr_402("easeoutexpo",_SafeStr_497);
         _SafeCls_2._SafeStr_402("easeinoutexpo",_SafeStr_1511);
         _SafeCls_2._SafeStr_402("easeoutinexpo",_SafeStr_308);
         _SafeCls_2._SafeStr_402("easeinelastic",_SafeStr_2293);
         _SafeCls_2._SafeStr_402("easeoutelastic",_SafeStr_996);
         _SafeCls_2._SafeStr_402("easeinoutelastic",_SafeStr_1280);
         _SafeCls_2._SafeStr_402("easeoutinelastic",_SafeStr_644);
         _SafeCls_2._SafeStr_402("easeinback",_SafeStr_2252);
         _SafeCls_2._SafeStr_402("easeoutback",_SafeStr_1472);
         _SafeCls_2._SafeStr_402("easeinoutback",_SafeStr_2283);
         _SafeCls_2._SafeStr_402("easeoutinback",_SafeStr_1652);
         _SafeCls_2._SafeStr_402("easeinbounce",_SafeStr_1531);
         _SafeCls_2._SafeStr_402("easeoutbounce",_SafeStr_2495);
         _SafeCls_2._SafeStr_402("easeinoutbounce",_SafeStr_1933);
         _SafeCls_2._SafeStr_402("easeoutinbounce",_SafeStr_1943);
      }
      
      public static function _SafeStr_2199(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * param1 / param4 + param2;
      }
      
      public static function _SafeStr_2031(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 + param2;
      }
      
      public static function _SafeStr_1664(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * (param1 = param1 / param4) * (param1 - 2) + param2;
      }
      
      public static function _SafeStr_2436(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return param3 / 2 * param1 * param1 + param2;
         }
         return -param3 / 2 * (--param1 * (param1 - 2) - 1) + param2;
      }
      
      public static function _SafeStr_1527(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_1664(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_2031(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_813(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * param1 + param2;
      }
      
      public static function _SafeStr_911(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * ((param1 = param1 / param4 - 1) * param1 * param1 + 1) + param2;
      }
      
      public static function _SafeStr_1357(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return param3 / 2 * param1 * param1 * param1 + param2;
         }
         return param3 / 2 * ((param1 = param1 - 2) * param1 * param1 + 2) + param2;
      }
      
      public static function _SafeStr_354(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_911(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_813(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_591(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * param1 * param1 + param2;
      }
      
      public static function _SafeStr_346(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * ((param1 = param1 / param4 - 1) * param1 * param1 * param1 - 1) + param2;
      }
      
      public static function _SafeStr_286(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return param3 / 2 * param1 * param1 * param1 * param1 + param2;
         }
         return -param3 / 2 * ((param1 = param1 - 2) * param1 * param1 * param1 - 2) + param2;
      }
      
      public static function _SafeStr_1208(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_346(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_591(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_2175(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * (param1 = param1 / param4) * param1 * param1 * param1 * param1 + param2;
      }
      
      public static function _SafeStr_2026(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * ((param1 = param1 / param4 - 1) * param1 * param1 * param1 * param1 + 1) + param2;
      }
      
      public static function _SafeStr_2375(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return param3 / 2 * param1 * param1 * param1 * param1 * param1 + param2;
         }
         return param3 / 2 * ((param1 = param1 - 2) * param1 * param1 * param1 * param1 + 2) + param2;
      }
      
      public static function _SafeStr_1085(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_2026(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_2175(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_872(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * Math.cos(param1 / param4 * (Math.PI / 2)) + param3 + param2;
      }
      
      public static function _SafeStr_962(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * Math.sin(param1 / param4 * (Math.PI / 2)) + param2;
      }
      
      public static function _SafeStr_2584(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 / 2 * (Math.cos(Math.PI * param1 / param4) - 1) + param2;
      }
      
      public static function _SafeStr_1102(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_962(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_872(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_795(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param1 == 0 ? param2 : param3 * Math.pow(2,10 * (param1 / param4 - 1)) + param2 - param3 * 0.001;
      }
      
      public static function _SafeStr_497(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param1 == param4 ? param2 + param3 : param3 * 1.001 * (-Math.pow(2,-10 * param1 / param4) + 1) + param2;
      }
      
      public static function _SafeStr_1511(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 == 0)
         {
            return param2;
         }
         if(param1 == param4)
         {
            return param2 + param3;
         }
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return param3 / 2 * Math.pow(2,10 * (param1 - 1)) + param2 - param3 * 0.0005;
         }
         return param3 / 2 * 1.0005 * (-Math.pow(2,-10 * --param1) + 2) + param2;
      }
      
      public static function _SafeStr_308(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_497(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_795(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_1080(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return -param3 * (Math.sqrt(1 - (param1 = param1 / param4) * param1) - 1) + param2;
      }
      
      public static function _SafeStr_1840(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 * Math.sqrt(1 - (param1 = param1 / param4 - 1) * param1) + param2;
      }
      
      public static function _SafeStr_2245(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return -param3 / 2 * (Math.sqrt(1 - param1 * param1) - 1) + param2;
         }
         return param3 / 2 * (Math.sqrt(1 - (param1 = param1 - 2) * param1) + 1) + param2;
      }
      
      public static function _SafeStr_1397(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_1840(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_1080(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_2293(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / param4;
         if(param1 == 1)
         {
            return param2 + param3;
         }
         var _loc6_:Number = !Boolean(param5) || Boolean(isNaN(param5.period)) ? param4 * 0.3 : Number(param5.period);
         var _loc8_:Number = !Boolean(param5) || Boolean(isNaN(param5.amplitude)) ? 0 : Number(param5.amplitude);
         if(!Boolean(_loc8_) || _loc8_ < Math.abs(param3))
         {
            _loc8_ = param3;
            _loc7_ = _loc6_ / 4;
         }
         else
         {
            _loc7_ = _loc6_ / (2 * Math.PI) * Math.asin(param3 / _loc8_);
         }
         return -(_loc8_ * Math.pow(2,10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_)) + param2;
      }
      
      public static function _SafeStr_996(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / param4;
         if(param1 == 1)
         {
            return param2 + param3;
         }
         var _loc6_:Number = !Boolean(param5) || Boolean(isNaN(param5.period)) ? param4 * 0.3 : Number(param5.period);
         var _loc8_:Number = !Boolean(param5) || Boolean(isNaN(param5.amplitude)) ? 0 : Number(param5.amplitude);
         if(!Boolean(_loc8_) || _loc8_ < Math.abs(param3))
         {
            _loc8_ = param3;
            _loc7_ = _loc6_ / 4;
         }
         else
         {
            _loc7_ = _loc6_ / (2 * Math.PI) * Math.asin(param3 / _loc8_);
         }
         return _loc8_ * Math.pow(2,-10 * param1) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_) + param3 + param2;
      }
      
      public static function _SafeStr_1280(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc7_:Number = NaN;
         if(param1 == 0)
         {
            return param2;
         }
         param1 = param1 / (param4 / 2);
         if(param1 == 2)
         {
            return param2 + param3;
         }
         var _loc6_:Number = !Boolean(param5) || Boolean(isNaN(param5.period)) ? param4 * (0.3 * 1.5) : Number(param5.period);
         var _loc8_:Number = !Boolean(param5) || Boolean(isNaN(param5.amplitude)) ? 0 : Number(param5.amplitude);
         if(!Boolean(_loc8_) || _loc8_ < Math.abs(param3))
         {
            _loc8_ = param3;
            _loc7_ = _loc6_ / 4;
         }
         else
         {
            _loc7_ = _loc6_ / (2 * Math.PI) * Math.asin(param3 / _loc8_);
         }
         if(param1 < 1)
         {
            return -0.5 * (_loc8_ * Math.pow(2,10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_)) + param2;
         }
         return _loc8_ * Math.pow(2,-10 * (param1 = param1 - 1)) * Math.sin((param1 * param4 - _loc7_) * (2 * Math.PI) / _loc6_) * 0.5 + param3 + param2;
      }
      
      public static function _SafeStr_644(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_996(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_2293(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_2252(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc6_:Number = !Boolean(param5) || Boolean(isNaN(param5.overshoot)) ? 1.70158 : Number(param5.overshoot);
         return param3 * (param1 = param1 / param4) * param1 * ((_loc6_ + 1) * param1 - _loc6_) + param2;
      }
      
      public static function _SafeStr_1472(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc6_:Number = !Boolean(param5) || Boolean(isNaN(param5.overshoot)) ? 1.70158 : Number(param5.overshoot);
         return param3 * ((param1 = param1 / param4 - 1) * param1 * ((_loc6_ + 1) * param1 + _loc6_) + 1) + param2;
      }
      
      public static function _SafeStr_2283(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         var _loc6_:Number = !Boolean(param5) || Boolean(isNaN(param5.overshoot)) ? 1.70158 : Number(param5.overshoot);
         param1 = param1 / (param4 / 2);
         if(param1 < 1)
         {
            return param3 / 2 * (param1 * param1 * (((_loc6_ = _loc6_ * 1.525) + 1) * param1 - _loc6_)) + param2;
         }
         return param3 / 2 * ((param1 = param1 - 2) * param1 * (((_loc6_ = _loc6_ * 1.525) + 1) * param1 + _loc6_) + 2) + param2;
      }
      
      public static function _SafeStr_1652(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_1472(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_2252(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
      
      public static function _SafeStr_1531(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         return param3 - _SafeStr_2495(param4 - param1,0,param3,param4) + param2;
      }
      
      public static function _SafeStr_2495(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         param1 = param1 / param4;
         if(param1 < 1 / 2.75)
         {
            return param3 * (7.5625 * param1 * param1) + param2;
         }
         if(param1 < 2 / 2.75)
         {
            return param3 * (7.5625 * (param1 = param1 - 1.5 / 2.75) * param1 + 0.75) + param2;
         }
         if(param1 < 2.5 / 2.75)
         {
            return param3 * (7.5625 * (param1 = param1 - 2.25 / 2.75) * param1 + 0.9375) + param2;
         }
         return param3 * (7.5625 * (param1 = param1 - 2.625 / 2.75) * param1 + 0.984375) + param2;
      }
      
      public static function _SafeStr_1933(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_1531(param1 * 2,0,param3,param4) * 0.5 + param2;
         }
         return _SafeStr_2495(param1 * 2 - param4,0,param3,param4) * 0.5 + param3 * 0.5 + param2;
      }
      
      public static function _SafeStr_1943(param1:Number, param2:Number, param3:Number, param4:Number, param5:Object = null) : Number
      {
         if(param1 < param4 / 2)
         {
            return _SafeStr_2495(param1 * 2,param2,param3 / 2,param4,param5);
         }
         return _SafeStr_1531(param1 * 2 - param4,param2 + param3 / 2,param3 / 2,param4,param5);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-Tk"
 * @identifier _SafeCls_39 = "_-G6"
 * @identifier _SafePkg_3 = "_-7L"
 * @identifier _SafeStr_286 = "_-Fb"
 * @identifier _SafeStr_308 = "_-Lz"
 * @identifier _SafeStr_346 = "_-LA"
 * @identifier _SafeStr_354 = "_-GI"
 * @identifier _SafeStr_402 = "_-3G"
 * @identifier _SafeStr_497 = "_-6V"
 * @identifier _SafeStr_591 = "_-ho"
 * @identifier _SafeStr_644 = "_-4G"
 * @identifier _SafeStr_795 = "_-Pu"
 * @identifier _SafeStr_813 = "_-PS"
 * @identifier _SafeStr_872 = "_-4j"
 * @identifier _SafeStr_911 = "_-Gz"
 * @identifier _SafeStr_962 = "_-WG"
 * @identifier _SafeStr_996 = "_-Ka"
 * @identifier _SafeStr_1080 = "_-eR"
 * @identifier _SafeStr_1085 = "_-N9"
 * @identifier _SafeStr_1102 = "_-d2"
 * @identifier _SafeStr_1208 = "_-Ax"
 * @identifier _SafeStr_1280 = "_-WH"
 * @identifier _SafeStr_1357 = "_-Vy"
 * @identifier _SafeStr_1397 = "_-Ws"
 * @identifier _SafeStr_1472 = "_-R3"
 * @identifier _SafeStr_1511 = "_-5s"
 * @identifier _SafeStr_1527 = "_-1L"
 * @identifier _SafeStr_1531 = "_-Zy"
 * @identifier _SafeStr_1652 = "_-EE"
 * @identifier _SafeStr_1664 = "_-YZ"
 * @identifier _SafeStr_1840 = "_-IE"
 * @identifier _SafeStr_1933 = "_-hb"
 * @identifier _SafeStr_1943 = "_-2"
 * @identifier _SafeStr_2026 = "_-es"
 * @identifier _SafeStr_2031 = "_-iP"
 * @identifier _SafeStr_2175 = "_-e6"
 * @identifier _SafeStr_2199 = "_-73"
 * @identifier _SafeStr_2245 = "_-ON"
 * @identifier _SafeStr_2252 = "_-GR"
 * @identifier _SafeStr_2283 = "_-IU"
 * @identifier _SafeStr_2293 = "_-8Y"
 * @identifier _SafeStr_2375 = "_-6A"
 * @identifier _SafeStr_2436 = "_-MY"
 * @identifier _SafeStr_2495 = "_-N1"
 * @identifier _SafeStr_2584 = "_-F5"
 */
