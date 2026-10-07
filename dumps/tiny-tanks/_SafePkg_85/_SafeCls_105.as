package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_105 extends Event
   {
      
      public static const _SafeStr_2388:String = "database";
      
      public static const _SafeStr_1089:String = "login";
      
      public static const _SafeStr_499:String = "validation";
      
      public static const _SafeStr_1932:String = "services";
      
      public static const _SafeStr_1430:String = "timeout";
      
      public static const ERROR:String = "error";
      
      private var _SafeStr_1581:String;
      
      public function _SafeCls_105(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._SafeStr_1581 = param2;
      }
      
      public function get message() : String
      {
         return this._SafeStr_1581;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_105(type,this.message,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_105 = "_-QG"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_499 = "_-G3"
 * @identifier _SafeStr_1089 = "_-A0"
 * @identifier _SafeStr_1430 = "_-gp"
 * @identifier _SafeStr_1581 = "_-Y"
 * @identifier _SafeStr_1932 = "_-IX"
 * @identifier _SafeStr_2388 = "_-B1"
 */
