package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_99 extends Event
   {
      
      public static const CLOSE:String = "alertbox_close";
      
      public static const _SafeStr_1649:String = "alertbox_yes";
      
      public static const _SafeStr_881:String = "alertbox_no";
      
      private var _data:*;
      
      public function _SafeCls_99(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
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
         return new _SafeCls_99(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_99 = "_-Sd"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_881 = "_-SI"
 * @identifier _SafeStr_1649 = "_-k7"
 */
