package _SafePkg_28
{
   import flash.events.ErrorEvent;
   
   public class _SafeCls_27
   {
      
      private var _SafeStr_1270:String;
      
      private var _SafeStr_1581:String;
      
      private var _SafeStr_2612:String;
      
      private var _SafeStr_769:int;
      
      private var _reason:String;
      
      public function _SafeCls_27(param1:String, param2:String = "", param3:String = "", param4:int = 0, param5:String = "")
      {
         super();
         this._SafeStr_1270 = param1;
         this._SafeStr_1581 = param2;
         this._SafeStr_2612 = param3;
         this._SafeStr_769 = param4;
         this._reason = param5;
      }
      
      public static function _SafeStr_1468(param1:ErrorEvent) : _SafeCls_27
      {
         return new _SafeCls_27(param1.errorID.toString(),param1.text);
      }
      
      public static function _SafeStr_1096(param1:Error) : _SafeCls_27
      {
         return new _SafeCls_27(param1.errorID.toString(),param1.message);
      }
      
      public static function _SafeStr_743(param1:Object) : _SafeCls_27
      {
         return new _SafeCls_27(String(param1.code),String(param1.error),"",int(int(param1.parameter)) || 0,String(param1.reason) || "");
      }
      
      public function get code() : String
      {
         return this._SafeStr_1270;
      }
      
      public function get message() : String
      {
         return this._SafeStr_1581;
      }
      
      public function get _SafeStr_2623() : String
      {
         return this._SafeStr_2612;
      }
      
      public function get parameter() : int
      {
         return this._SafeStr_769;
      }
      
      public function get reason() : String
      {
         return this._reason;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         _loc1_ = "Jaludo Error #" + this._SafeStr_1270 + ": " + this._SafeStr_1581;
         if(this._reason)
         {
            _loc1_ += "\n\tReason: " + this._reason;
         }
         if(this._SafeStr_2612)
         {
            _loc1_ += "\n\t" + this._SafeStr_2612;
         }
         return _loc1_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_27 = "_-eV"
 * @identifier _SafePkg_28 = "_-RM"
 * @identifier _SafeStr_743 = "_-dw"
 * @identifier _SafeStr_769 = "_-Ck"
 * @identifier _SafeStr_1096 = "_-ax"
 * @identifier _SafeStr_1270 = "_-ig"
 * @identifier _SafeStr_1468 = "_-2K"
 * @identifier _SafeStr_1581 = "_-Y"
 * @identifier _SafeStr_2612 = "_-fy"
 * @identifier _SafeStr_2623 = "_-PV"
 */
