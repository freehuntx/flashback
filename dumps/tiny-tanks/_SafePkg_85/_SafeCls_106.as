package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_106 extends Event
   {
      
      public static const _SafeStr_448:String = "loaded";
      
      public static const _SafeStr_2648:String = "saved";
      
      public function _SafeCls_106(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_106(type,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_106 = "_-1g"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_448 = "_-ZQ"
 * @identifier _SafeStr_2648 = "_-eX"
 */
