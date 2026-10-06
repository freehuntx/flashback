package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   import murray._SafeCls_24;
   
   public class _SafeCls_22
   {
      
      public var duration:int;
      
      public var _SafeStr_243:int;
      
      public var _SafeStr_294:int;
      
      public var _SafeStr_185:int;
      
      public var _SafeStr_183:int;
      
      public var _SafeStr_171:int;
      
      public var _SafeStr_220:int;
      
      public var _SafeStr_261:int;
      
      public function _SafeCls_22()
      {
         super();
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_22
      {
         var _loc2_:_SafeCls_22 = new _SafeCls_22();
         _loc2_.duration = _SafeCls_40._SafeStr_115(param1.substr(1,4));
         _loc2_._SafeStr_243 = _SafeCls_40._SafeStr_115(param1.substr(5,2));
         _loc2_._SafeStr_185 = _SafeCls_40._SafeStr_115(param1.substr(7,2)) - 2000;
         _loc2_._SafeStr_183 = _SafeCls_40._SafeStr_115(param1.substr(9,2)) - 2000;
         _loc2_._SafeStr_171 = _SafeCls_40._SafeStr_115(param1.substr(11,5));
         _loc2_._SafeStr_294 = _SafeCls_40._SafeStr_115(param1.substr(16,1));
         _loc2_._SafeStr_220 = _SafeCls_40._SafeStr_115(param1.substr(17,1));
         _loc2_._SafeStr_261 = _SafeCls_40._SafeStr_115(param1.substr(18,1));
         return _loc2_;
      }
      
      public static function _SafeStr_1051(param1:_SafeCls_24, param2:int) : _SafeCls_22
      {
         var _loc3_:_SafeCls_22 = new _SafeCls_22();
         _loc3_.duration = param1._SafeStr_201;
         _loc3_._SafeStr_243 = param1._SafeStr_243;
         _loc3_._SafeStr_185 = param1._SafeStr_185;
         _loc3_._SafeStr_183 = param1._SafeStr_183;
         _loc3_._SafeStr_171 = param2;
         _loc3_._SafeStr_294 = param1._SafeStr_294;
         _loc3_._SafeStr_220 = param1._SafeStr_220;
         _loc3_._SafeStr_261 = param1._SafeStr_261;
         return _loc3_;
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_623,1) + _SafeCls_40._SafeStr_106(this.duration,4) + _SafeCls_40._SafeStr_106(this._SafeStr_243,2) + _SafeCls_40._SafeStr_106(this._SafeStr_185 + 2000,2) + _SafeCls_40._SafeStr_106(this._SafeStr_183 + 2000,2) + _SafeCls_40._SafeStr_106(this._SafeStr_171,5) + _SafeCls_40._SafeStr_106(this._SafeStr_294,1) + _SafeCls_40._SafeStr_106(this._SafeStr_220,1) + _SafeCls_40._SafeStr_106(this._SafeStr_261,1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_22 = " 2"
 * @identifier _SafeCls_24 = "^Q"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_171 = "true "
 * @identifier _SafeStr_183 = "@$"
 * @identifier _SafeStr_185 = "]\""
 * @identifier _SafeStr_201 = "20"
 * @identifier _SafeStr_220 = ">7"
 * @identifier _SafeStr_243 = ",>"
 * @identifier _SafeStr_261 = "%"
 * @identifier _SafeStr_294 = "#C"
 * @identifier _SafeStr_623 = "`A"
 * @identifier _SafeStr_1051 = "^N"
 */
