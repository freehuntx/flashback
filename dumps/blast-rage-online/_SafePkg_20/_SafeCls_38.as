package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_38
   {
      
      public var index:int;
      
      public var _SafeStr_944:int;
      
      public function _SafeCls_38()
      {
         super();
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_38
      {
         var _loc2_:_SafeCls_38 = new _SafeCls_38();
         _loc2_.index = _SafeCls_40._SafeStr_115(param1.substr(1,1));
         _loc2_._SafeStr_944 = _SafeCls_40._SafeStr_115(param1.substr(2,4));
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_38 = "72"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_944 = "const"
 */
