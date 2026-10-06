package _SafePkg_41
{
   public class _SafeCls_40
   {
      
      public static const _SafeStr_465:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=";
      
      public static const _SafeStr_533:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-=";
      
      public function _SafeCls_40()
      {
         super();
      }
      
      public static function _SafeStr_106(param1:int, param2:int) : String
      {
         if(param1 > (1 << 6 * param2) - 1 && param1 != 0)
         {
            trace("WARNING: Number exceeds container bad things abound to happen!");
         }
         else if(param1 < 0)
         {
            trace("WARNING: Number negative! bad things abound to happen!");
         }
         var _loc3_:String = "";
         while(param2 > 0)
         {
            _loc3_ += _SafeStr_465.charAt((param1 >> (param2 - 1) * 6 & 0x3F) % _SafeStr_465.length);
            param2--;
         }
         return _loc3_;
      }
      
      public static function _SafeStr_115(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += _SafeStr_465.indexOf(param1.substr(_loc3_,1)) << 6 * (param1.length - 1 - _loc3_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function shift(param1:String, param2:int) : String
      {
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_ += _SafeStr_533.charAt(_SafeStr_465.indexOf(param1.charAt(_loc4_)) + param2);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function _SafeStr_1205(param1:String, param2:int) : String
      {
         if(param2 == 0)
         {
            return param1;
         }
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_ += _SafeStr_533.charAt(_SafeStr_533.lastIndexOf(param1.charAt(_loc4_)) - param2);
            _loc4_++;
         }
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_465 = "8U"
 * @identifier _SafeStr_533 = "@O"
 * @identifier _SafeStr_1205 = "%S"
 */
