package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_31
   {
      
      public var _SafeStr_375:int;
      
      public function _SafeCls_31(param1:int)
      {
         super();
         this._SafeStr_375 = param1;
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_31
      {
         return new _SafeCls_31(_SafeCls_40._SafeStr_115(param1.substr(1,1)));
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_659,1) + _SafeCls_40._SafeStr_106(this._SafeStr_375,1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_31 = "6J"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_375 = ",6"
 * @identifier _SafeStr_659 = ">I"
 */
