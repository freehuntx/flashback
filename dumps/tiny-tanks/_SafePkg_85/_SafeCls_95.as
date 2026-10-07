package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_95 extends Event
   {
      
      public static const READY:String = "ready";
      
      public static const ERROR:String = "error";
      
      public function _SafeCls_95(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_95(type,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_95 = "_-M9"
 * @identifier _SafePkg_85 = "_-c4"
 */
