package _SafePkg_31
{
   import _SafePkg_67._SafeCls_66;
   
   public final class _SafeCls_59
   {
      
      public static const _SafeStr_368:String = "true";
      
      public static const _SafeStr_697:String = "false";
      
      public static const _SafeStr_2093:String = "optional";
      
      private var _SafeStr_1202:String;
      
      private var _SafeStr_2637:XML;
      
      private var _SafeStr_1851:XML;
      
      private var _SafeStr_529:String;
      
      private var _SafeStr_2328:String;
      
      private var _type:String;
      
      private var _SafeStr_901:Function;
      
      private var _SafeStr_1054:Function;
      
      public function _SafeCls_59(param1:XML = null, param2:XML = null, param3:String = "false", param4:String = null)
      {
         super();
         this._SafeStr_2637 = param1;
         this._SafeStr_1851 = param2;
         this._SafeStr_1202 = param3 || _SafeStr_697;
         this._type = param4 || _SafeCls_66._SafeStr_1315;
      }
      
      public function get httpMethod() : String
      {
         return this._SafeStr_2328;
      }
      
      public function set httpMethod(param1:String) : void
      {
         this._SafeStr_2328 = param1;
      }
      
      public function get validationFunction() : Function
      {
         return this._SafeStr_1054;
      }
      
      public function set validationFunction(param1:Function) : void
      {
         this._SafeStr_1054 = param1;
      }
      
      public function get internalFunction() : Function
      {
         return this._SafeStr_901;
      }
      
      public function set internalFunction(param1:Function) : void
      {
         this._SafeStr_901 = param1;
      }
      
      public function set _SafeStr_1224(param1:String) : void
      {
         this._SafeStr_529 = param1;
      }
      
      public function get _SafeStr_1224() : String
      {
         return this._SafeStr_529;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get _SafeStr_977() : XML
      {
         return this._SafeStr_2637;
      }
      
      public function set _SafeStr_977(param1:XML) : void
      {
         this._SafeStr_2637 = param1;
      }
      
      public function get _SafeStr_1862() : XML
      {
         return this._SafeStr_1851;
      }
      
      public function set _SafeStr_1862(param1:XML) : void
      {
         this._SafeStr_1851 = param1;
      }
      
      public function get _SafeStr_2412() : String
      {
         return this._SafeStr_1202;
      }
      
      public function get returnType() : Class
      {
         return this._SafeStr_1851.postprocessor.attribute("return-type").toString() as Class;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_59 = "_-d"
 * @identifier _SafeCls_66 = "_-Dm"
 * @identifier _SafePkg_31 = "_-6z"
 * @identifier _SafePkg_67 = "_-Gn"
 * @identifier _SafeStr_368 = "_-h4"
 * @identifier _SafeStr_529 = "_-bR"
 * @identifier _SafeStr_697 = "_-Zu"
 * @identifier _SafeStr_901 = "_-6k"
 * @identifier _SafeStr_977 = "_-Kx"
 * @identifier _SafeStr_1054 = "_-PP"
 * @identifier _SafeStr_1202 = "_-FV"
 * @identifier _SafeStr_1224 = "_-Lw"
 * @identifier _SafeStr_1315 = "_-D4"
 * @identifier _SafeStr_1851 = "_-bU"
 * @identifier _SafeStr_1862 = "_-V7"
 * @identifier _SafeStr_2093 = "_-d3"
 * @identifier _SafeStr_2328 = "_-E9"
 * @identifier _SafeStr_2412 = "_-TR"
 * @identifier _SafeStr_2637 = "_-BC"
 */
