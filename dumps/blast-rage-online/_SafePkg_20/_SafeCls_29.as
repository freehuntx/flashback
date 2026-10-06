package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_29
   {
      
      public var _SafeStr_243:int;
      
      public var _SafeStr_171:int;
      
      public var side:int;
      
      public function _SafeCls_29(param1:int, param2:int, param3:int)
      {
         super();
         this._SafeStr_243 = param1;
         this._SafeStr_171 = param2;
         this.side = param3;
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_29
      {
         var _loc2_:int = _SafeCls_40._SafeStr_115(param1.substr(1,4));
         var _loc3_:int = _SafeCls_40._SafeStr_115(param1.substr(5,4));
         var _loc4_:int = _SafeCls_40._SafeStr_115(param1.substr(9,1));
         return new _SafeCls_29(_loc2_,_loc3_,_loc4_);
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_736,1) + _SafeCls_40._SafeStr_106(this._SafeStr_243,4) + _SafeCls_40._SafeStr_106(this._SafeStr_171,4) + _SafeCls_40._SafeStr_106(this.side,1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "0B"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_171 = "true "
 * @identifier _SafeStr_243 = ",>"
 * @identifier _SafeStr_736 = "?G"
 */
