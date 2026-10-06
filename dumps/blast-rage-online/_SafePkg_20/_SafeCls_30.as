package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_30
   {
      
      public var _SafeStr_582:String;
      
      public function _SafeCls_30(param1:String)
      {
         super();
         this._SafeStr_582 = param1;
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_30
      {
         return new _SafeCls_30(param1.substr(1,3));
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_641,1) + this._SafeStr_582;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_30 = "1<"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_582 = "\'B"
 * @identifier _SafeStr_641 = "\"0"
 */
