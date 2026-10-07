package _SafePkg_42
{
   import flash.net.SharedObject;
   
   public class _SafeCls_41
   {
      
      private static var _SafeStr_2086:SharedObject;
      
      private static var _SafeStr_2499:Number;
      
      private static var _SafeStr_829:Boolean;
      
      public function _SafeCls_41()
      {
         super();
      }
      
      public static function initialize(param1:String, param2:Number = 0) : void
      {
         _SafeStr_2086 = SharedObject.getLocal(param1,"/");
         _SafeStr_2499 = param2;
         _SafeStr_829 = true;
      }
      
      public static function getValue(param1:String, param2:* = null, param3:Number = 0) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         if(_SafeStr_829)
         {
            _loc5_ = _SafeStr_2086.data[param1];
            if(_loc5_)
            {
               _loc4_ = isValid(_loc5_,param3) ? _loc5_.value : null;
            }
            else if(param2)
            {
               _loc4_ = setValue(param1,param2);
            }
         }
         return _loc4_;
      }
      
      public static function setValue(param1:String, param2:*) : *
      {
         if(_SafeStr_829)
         {
            _SafeStr_2086.data[param1] = {
               "timestamp":new Date().time / 60000,
               "value":param2
            };
         }
         return param2;
      }
      
      private static function isValid(param1:Object, param2:Number = 0) : Boolean
      {
         var _loc3_:Number = new Date().time / 60000 - param1.timestamp;
         return _loc3_ < (param2 || _SafeStr_2499);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_41 = "_-Pi"
 * @identifier _SafePkg_42 = "_-fg"
 * @identifier _SafeStr_829 = "_-Bi"
 * @identifier _SafeStr_2086 = "_-3f"
 * @identifier _SafeStr_2499 = "_-IJ"
 */
