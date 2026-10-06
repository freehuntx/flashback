package _SafePkg_8
{
   import flash.events.Event;
   
   public class _SafeCls_68 extends Event
   {
      
      public static const _SafeStr_209:String = "Authenticate";
      
      public static const _SafeStr_180:String = "Register";
      
      public static const _SafeStr_272:String = "Submit";
      
      public static const _SafeStr_277:String = "Get";
      
      public static const _SafeStr_281:String = "Get All";
      
      public static const _SafeStr_759:String = "Undefined";
      
      public var username:String;
      
      public var password:String;
      
      public var _SafeStr_910:String;
      
      public var value:int;
      
      public var stats:Object;
      
      public var error:String;
      
      public function _SafeCls_68(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:String = null, param6:String = null, param7:int = 0, param8:Object = null, param9:String = null)
      {
         super(param1,param2,param3);
         this.username = param4;
         this.password = param5;
         this._SafeStr_910 = param6;
         this.value = param7;
         this.stats = param8;
         this.error = param9;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_68(type,bubbles,cancelable,this.username,this.password,this._SafeStr_910,this.value,this.stats,this.error);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_68 = "76"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafeStr_180 = "^I"
 * @identifier _SafeStr_209 = "]9"
 * @identifier _SafeStr_272 = "8&"
 * @identifier _SafeStr_277 = "`D"
 * @identifier _SafeStr_281 = "%\'"
 * @identifier _SafeStr_759 = "4O"
 * @identifier _SafeStr_910 = "!J"
 */
