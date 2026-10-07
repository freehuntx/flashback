package _SafePkg_31
{
   import flash.events.Event;
   
   public class _SafeCls_93 extends Event
   {
      
      public static const _SafeStr_1860:String = "log";
      
      private var _SafeStr_398:String;
      
      private var _SafeStr_2250:String;
      
      private var _SafeStr_1896:String;
      
      public function _SafeCls_93(param1:String, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this._SafeStr_398 = param2;
         this._SafeStr_2250 = param3;
         this._SafeStr_1896 = param4;
      }
      
      public function get _SafeStr_1223() : String
      {
         return this._SafeStr_398;
      }
      
      public function get _SafeStr_315() : String
      {
         return this._SafeStr_2250;
      }
      
      public function get _SafeStr_674() : String
      {
         return this._SafeStr_1896;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_93(type,this._SafeStr_2250,this._SafeStr_398,this._SafeStr_1896,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return Logger._SafeStr_958(this._SafeStr_398,this._SafeStr_2250,this._SafeStr_1896);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_93 = "_-Mi"
 * @identifier _SafePkg_31 = "_-6z"
 * @identifier _SafeStr_315 = "_-2l"
 * @identifier _SafeStr_398 = "_-aN"
 * @identifier _SafeStr_674 = "_-Wc"
 * @identifier _SafeStr_958 = "_-JV"
 * @identifier _SafeStr_1223 = "_-LK"
 * @identifier _SafeStr_1860 = "_-FM"
 * @identifier _SafeStr_1896 = "_-X0"
 * @identifier _SafeStr_2250 = "_-Vl"
 */
