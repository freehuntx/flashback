package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_36
   {
      
      public var _SafeStr_723:int;
      
      public var _SafeStr_778:int;
      
      public var _SafeStr_843:int;
      
      public var _SafeStr_995:int;
      
      public function _SafeCls_36(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this._SafeStr_723 = param1;
         this._SafeStr_778 = param2;
         this._SafeStr_843 = param3;
         this._SafeStr_995 = param4;
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_36
      {
         var _loc2_:int = _SafeCls_40._SafeStr_115(param1.substr(1,4));
         var _loc3_:int = _SafeCls_40._SafeStr_115(param1.substr(5,4));
         var _loc4_:int = _SafeCls_40._SafeStr_115(param1.substr(9,1));
         var _loc5_:int = _SafeCls_40._SafeStr_115(param1.substr(10,1));
         return new _SafeCls_36(_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_606,1) + _SafeCls_40._SafeStr_106(this._SafeStr_723,4) + _SafeCls_40._SafeStr_106(this._SafeStr_778,4) + _SafeCls_40._SafeStr_106(this._SafeStr_843,1) + _SafeCls_40._SafeStr_106(this._SafeStr_995,1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_36 = " 3"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_606 = "\"4"
 * @identifier _SafeStr_723 = "[U"
 * @identifier _SafeStr_778 = "#?"
 * @identifier _SafeStr_843 = "break"
 * @identifier _SafeStr_995 = "<;"
 */
