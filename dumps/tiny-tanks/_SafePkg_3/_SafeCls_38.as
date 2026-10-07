package _SafePkg_3
{
   public class _SafeCls_38
   {
      
      public function _SafeCls_38()
      {
         super();
      }
      
      public static function _SafeStr_632(param1:Number) : Number
      {
         return (param1 & 0xFF0000) >> 16;
      }
      
      public static function _SafeStr_1769(param1:Number) : Number
      {
         return (param1 & 0xFF00) >> 8;
      }
      
      public static function _SafeStr_2346(param1:Number) : Number
      {
         return param1 & 0xFF;
      }
      
      public static function getObjectLength(param1:Object) : uint
      {
         var _loc3_:String = null;
         var _loc2_:uint = 0;
         for(_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function _SafeStr_1098(... rest) : Object
      {
         var _loc3_:Object = null;
         var _loc5_:String = null;
         var _loc2_:Object = {};
         var _loc4_:int = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ = rest[_loc4_];
            for(_loc5_ in _loc3_)
            {
               if(_loc3_[_loc5_] == null)
               {
                  delete _loc2_[_loc5_];
               }
               else
               {
                  _loc2_[_loc5_] = _loc3_[_loc5_];
               }
            }
            _loc4_++;
         }
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_38 = "_-jH"
 * @identifier _SafePkg_3 = "_-7L"
 * @identifier _SafeStr_632 = "_-JD"
 * @identifier _SafeStr_1098 = "_-JO"
 * @identifier _SafeStr_1769 = "_-Tp"
 * @identifier _SafeStr_2346 = "_-VJ"
 */
