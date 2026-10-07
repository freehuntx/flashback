package
{
   import _SafePkg_37.Base64;
   
   public class ChazNumber
   {
      
      private var _SafeStr_1906:String;
      
      public function ChazNumber(param1:Number = NaN)
      {
         super();
         this._SafeStr_1906 = Base64._SafeStr_2236(String(param1));
      }
      
      public function get s() : Number
      {
         return Number(Base64.decode(this._SafeStr_1906));
      }
      
      public function set s(param1:Number) : void
      {
         this._SafeStr_1906 = Base64._SafeStr_2236(String(param1));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_37 = "_-bh"
 * @identifier _SafeStr_1906 = "_-HG"
 * @identifier _SafeStr_2236 = "_-fT"
 */
