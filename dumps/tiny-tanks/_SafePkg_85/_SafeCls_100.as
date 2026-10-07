package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_100 extends Event
   {
      
      public static const _SafeStr_1965:String = "awards_success";
      
      public static const _SafeStr_2105:String = "awards_status";
      
      public static const _SafeStr_1370:String = "awards_fail";
      
      public static const ERROR:String = "awards_error";
      
      private var _data:*;
      
      public function _SafeCls_100(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._data = param2;
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_100(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_100 = "_-J2"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_1370 = "_-4M"
 * @identifier _SafeStr_1965 = "_-4n"
 * @identifier _SafeStr_2105 = "_-41"
 */
