package _SafePkg_87
{
   import _SafePkg_28._SafeCls_107;
   import _SafePkg_111._SafeCls_140;
   import flash.events.Event;
   
   public class _SafeCls_86 extends Event
   {
      
      public static const _SafeStr_285:String = "userAuthChanged";
      
      private var _SafeStr_1249:_SafeCls_140;
      
      private var _SafeStr_411:String;
      
      private var _userID:int;
      
      private var _errors:_SafeCls_107;
      
      public function _SafeCls_86(param1:String, param2:int, param3:String, param4:_SafeCls_140, param5:_SafeCls_107, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this._SafeStr_411 = param3;
         this._userID = param2;
         this._SafeStr_1249 = param4;
         this._errors = param5;
      }
      
      public function get _SafeStr_1683() : _SafeCls_140
      {
         return this._SafeStr_1249;
      }
      
      public function get _SafeStr_280() : String
      {
         return this._SafeStr_411;
      }
      
      public function get userID() : int
      {
         return this._userID;
      }
      
      public function get errors() : _SafeCls_107
      {
         return this._errors;
      }
      
      public function get _SafeStr_1039() : String
      {
         return this._userID + ":" + this._SafeStr_411;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_86 = "_-aO"
 * @identifier _SafeCls_107 = "_-Qr"
 * @identifier _SafeCls_140 = "_-f6"
 * @identifier _SafePkg_28 = "_-RM"
 * @identifier _SafePkg_87 = "_-6f"
 * @identifier _SafePkg_111 = "_-Xo"
 * @identifier _SafeStr_280 = "_-RW"
 * @identifier _SafeStr_285 = "_-VO"
 * @identifier _SafeStr_411 = "_-hT"
 * @identifier _SafeStr_1039 = "_-26"
 * @identifier _SafeStr_1249 = "_-aG"
 * @identifier _SafeStr_1683 = "_-TO"
 */
