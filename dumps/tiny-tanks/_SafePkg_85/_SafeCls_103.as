package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_103 extends Event
   {
      
      public static const _SafeStr_448:String = "chat_loaded";
      
      public static const _SafeStr_1839:String = "chat_loaderror";
      
      public static const _SafeStr_1433:String = "chat_submitted";
      
      public static const _SafeStr_1570:String = "chat_submiterror";
      
      public function _SafeCls_103(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_103(type,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_103 = "_-OX"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_448 = "_-ZQ"
 * @identifier _SafeStr_1433 = "_-E2"
 * @identifier _SafeStr_1570 = "_-df"
 * @identifier _SafeStr_1839 = "_-Cu"
 */
