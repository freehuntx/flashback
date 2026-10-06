package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   import murray._SafeCls_17;
   
   public class _SafeCls_21
   {
      
      public var x:int;
      
      public var y:int;
      
      public var _SafeStr_248:int;
      
      public var _SafeStr_247:int;
      
      public var weapon:int;
      
      public var _SafeStr_171:int;
      
      public var r:int;
      
      public var _SafeStr_203:_SafeCls_17;
      
      public function _SafeCls_21()
      {
         super();
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_21
      {
         var _loc2_:_SafeCls_21 = new _SafeCls_21();
         _loc2_.x = _SafeCls_40._SafeStr_115(param1.substr(1,4));
         _loc2_.y = _SafeCls_40._SafeStr_115(param1.substr(5,4));
         _loc2_._SafeStr_248 = _SafeCls_40._SafeStr_115(param1.substr(9,3)) - 4000;
         _loc2_._SafeStr_247 = _SafeCls_40._SafeStr_115(param1.substr(12,3)) - 4000;
         _loc2_.weapon = _SafeCls_40._SafeStr_115(param1.substr(15,2));
         _loc2_._SafeStr_171 = _SafeCls_40._SafeStr_115(param1.substr(17,3));
         _loc2_.r = _SafeCls_40._SafeStr_115(param1.substr(20,2));
         return _loc2_;
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_586,1) + _SafeCls_40._SafeStr_106(this.x,4) + _SafeCls_40._SafeStr_106(this.y,4) + _SafeCls_40._SafeStr_106(this._SafeStr_248 + 4000,3) + _SafeCls_40._SafeStr_106(this._SafeStr_247 + 4000,3) + _SafeCls_40._SafeStr_106(this.weapon,2) + _SafeCls_40._SafeStr_106(this._SafeStr_171,3) + _SafeCls_40._SafeStr_106(this.r,2);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_21 = ",="
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_171 = "true "
 * @identifier _SafeStr_203 = "]5"
 * @identifier _SafeStr_247 = ";4"
 * @identifier _SafeStr_248 = "0H"
 * @identifier _SafeStr_586 = "3<"
 */
