package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_102 extends Event
   {
      
      public static const _SafeStr_1591:String = "player_avatar_status";
      
      public static const ERROR:String = "player_error";
      
      private var _data:*;
      
      public function _SafeCls_102(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
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
         return new _SafeCls_102(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_102 = "_-Y2"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_1591 = "_-it"
 */
