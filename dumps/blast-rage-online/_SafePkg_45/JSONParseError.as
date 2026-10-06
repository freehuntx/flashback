package _SafePkg_45
{
   public class JSONParseError extends Error
   {
      
      private var _SafeStr_997:int;
      
      private var _SafeStr_987:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         super(param1);
         name = "JSONParseError";
         this._SafeStr_997 = param2;
         this._SafeStr_987 = param3;
      }
      
      public function get _SafeStr_1248() : int
      {
         return this._SafeStr_997;
      }
      
      public function get text() : String
      {
         return this._SafeStr_987;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafeStr_987 = "6P"
 * @identifier _SafeStr_997 = "+<"
 * @identifier _SafeStr_1248 = "1\'"
 */
