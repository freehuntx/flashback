package _SafePkg_87
{
   import _SafePkg_53._SafeCls_79;
   import flash.events.Event;
   
   public class _SafeCls_92 extends Event
   {
      
      public static const _SafeStr_2267:String = "metadata";
      
      public static const _SafeStr_448:String = "loaded";
      
      public static const _SafeStr_702:String = "started";
      
      public static const _SafeStr_724:String = "stopped";
      
      public static const _SafeStr_2632:String = "completed";
      
      public static const _SafeStr_1252:String = "paused";
      
      public static const _SafeStr_313:String = "resumed";
      
      public static const _SafeStr_1372:String = "skippablestatechanged";
      
      public static const _SafeStr_1448:String = "systempolicychanged";
      
      private var _SafeStr_274:_SafeCls_79;
      
      public function _SafeCls_92(param1:String, param2:_SafeCls_79, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._SafeStr_274 = param2;
      }
      
      public function get _SafeStr_2521() : _SafeCls_79
      {
         return this._SafeStr_274;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_92(type,this._SafeStr_274,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_79 = "_-ci"
 * @identifier _SafeCls_92 = "_-OA"
 * @identifier _SafePkg_53 = "_-59"
 * @identifier _SafePkg_87 = "_-6f"
 * @identifier _SafeStr_274 = "_-Ho"
 * @identifier _SafeStr_313 = "_-5d"
 * @identifier _SafeStr_448 = "_-ZQ"
 * @identifier _SafeStr_702 = "_-hw"
 * @identifier _SafeStr_724 = "_-Cp"
 * @identifier _SafeStr_1252 = "_-8C"
 * @identifier _SafeStr_1372 = "_-AT"
 * @identifier _SafeStr_1448 = "_-ca"
 * @identifier _SafeStr_2267 = "_-UJ"
 * @identifier _SafeStr_2521 = "_-NF"
 * @identifier _SafeStr_2632 = "_-B2"
 */
