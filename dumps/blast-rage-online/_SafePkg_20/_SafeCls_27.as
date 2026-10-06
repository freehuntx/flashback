package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_27
   {
      
      public var _SafeStr_796:int;
      
      public var _SafeStr_716:int;
      
      public function _SafeCls_27()
      {
         super();
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_27
      {
         var _loc2_:_SafeCls_27 = new _SafeCls_27();
         _loc2_._SafeStr_796 = _SafeCls_40._SafeStr_115(param1.substr(1,2));
         _loc2_._SafeStr_716 = _SafeCls_40._SafeStr_115(param1.substr(3,2));
         return _loc2_;
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_679,1) + _SafeCls_40._SafeStr_106(this._SafeStr_796,2) + _SafeCls_40._SafeStr_106(this._SafeStr_716,2);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_27 = ";T"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_679 = "=%"
 * @identifier _SafeStr_716 = "0J"
 * @identifier _SafeStr_796 = "]L"
 */
