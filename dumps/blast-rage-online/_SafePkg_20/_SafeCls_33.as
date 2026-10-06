package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   
   public class _SafeCls_33
   {
      
      public var shield_damage:int;
      
      public var _SafeStr_555:int;
      
      public var energy_damage:int;
      
      public var _SafeStr_171:int;
      
      public function _SafeCls_33()
      {
         super();
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_33
      {
         var _loc2_:_SafeCls_33 = new _SafeCls_33();
         _loc2_.shield_damage = _SafeCls_40._SafeStr_115(param1.substr(1,2));
         _loc2_._SafeStr_555 = _SafeCls_40._SafeStr_115(param1.substr(3,2));
         _loc2_.energy_damage = _SafeCls_40._SafeStr_115(param1.substr(5,2));
         _loc2_._SafeStr_171 = _SafeCls_40._SafeStr_115(param1.substr(7,3));
         return _loc2_;
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_670,1) + _SafeCls_40._SafeStr_106(this.shield_damage,2) + _SafeCls_40._SafeStr_106(this._SafeStr_555,2) + _SafeCls_40._SafeStr_106(this.energy_damage,2) + _SafeCls_40._SafeStr_106(this._SafeStr_171,3);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_33 = "1C"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_171 = "true "
 * @identifier _SafeStr_555 = "%&"
 * @identifier _SafeStr_670 = " -"
 */
