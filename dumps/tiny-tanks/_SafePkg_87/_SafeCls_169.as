package _SafePkg_87
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class _SafeCls_169 extends ErrorEvent
   {
      
      public static const ERROR:String = "error";
      
      public function _SafeCls_169(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "", param5:int = 0)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_169(type,bubbles,cancelable,text,errorID);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_169 = "_-Lt"
 * @identifier _SafePkg_87 = "_-6f"
 */
