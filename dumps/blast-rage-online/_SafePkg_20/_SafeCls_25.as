package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_25
   {
      
      public var x:int;
      
      public var y:int;
      
      public function _SafeCls_25(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_25
      {
         var _loc2_:int = _SafeCls_40._SafeStr_115(param1.substr(1,4));
         var _loc3_:int = _SafeCls_40._SafeStr_115(param1.substr(5,4));
         return new _SafeCls_25(_loc2_,_loc3_);
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_627,1) + _SafeCls_40._SafeStr_106(this.x,4) + _SafeCls_40._SafeStr_106(this.y,4);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_25 = "0L"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_627 = "<="
 */
