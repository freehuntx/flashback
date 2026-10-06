package _SafePkg_43
{
   public class _SafeCls_42
   {
      
      private static var _SafeStr_418:String = "0123456789abcdef";
      
      public function _SafeCls_42()
      {
         super();
      }
      
      public static function _SafeStr_1208(param1:int, param2:int) : int
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      public static function _SafeStr_1266(param1:int, param2:int) : uint
      {
         var _loc3_:int = 32 - param2;
         return param1 << _loc3_ | param1 >>> 32 - _loc3_;
      }
      
      public static function _SafeStr_651(param1:int, param2:Boolean = false) : String
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:String = "";
         if(param2)
         {
            _loc4_ = 0;
            while(_loc4_ < 4)
            {
               _loc3_ += _SafeStr_418.charAt(param1 >> (3 - _loc4_) * 8 + 4 & 0x0F) + _SafeStr_418.charAt(param1 >> (3 - _loc4_) * 8 & 0x0F);
               _loc4_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < 4)
            {
               _loc3_ += _SafeStr_418.charAt(param1 >> _loc5_ * 8 + 4 & 0x0F) + _SafeStr_418.charAt(param1 >> _loc5_ * 8 & 0x0F);
               _loc5_++;
            }
         }
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_42 = "`+"
 * @identifier _SafePkg_43 = "<F"
 * @identifier _SafeStr_418 = "<!"
 * @identifier _SafeStr_651 = "[4"
 * @identifier _SafeStr_1208 = ";D"
 * @identifier _SafeStr_1266 = "package"
 */
