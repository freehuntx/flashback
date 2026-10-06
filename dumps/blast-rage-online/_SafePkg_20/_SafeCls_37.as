package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_37
   {
      
      public var kills:int;
      
      public var _SafeStr_161:int;
      
      public var score:int;
      
      public function _SafeCls_37()
      {
         super();
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_37
      {
         var _loc2_:_SafeCls_37 = new _SafeCls_37();
         _loc2_.kills = _SafeCls_40._SafeStr_115(param1.substr(1,2));
         _loc2_._SafeStr_161 = _SafeCls_40._SafeStr_115(param1.substr(3,2));
         _loc2_.score = _SafeCls_40._SafeStr_115(param1.substr(5,4));
         return _loc2_;
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_678,1) + _SafeCls_40._SafeStr_106(this.kills,2) + _SafeCls_40._SafeStr_106(this._SafeStr_161,2) + _SafeCls_40._SafeStr_106(this.score,4);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_37 = "9E"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_161 = ">J"
 * @identifier _SafeStr_678 = ">3"
 */
