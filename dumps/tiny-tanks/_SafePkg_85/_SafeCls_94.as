package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_94 extends Event
   {
      
      public static const READY:String = "ready";
      
      public static const ERROR:String = "error";
      
      private var _data:*;
      
      public function _SafeCls_94(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
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
         return new _SafeCls_94(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_94 = "_-Hc"
 * @identifier _SafePkg_85 = "_-c4"
 */
