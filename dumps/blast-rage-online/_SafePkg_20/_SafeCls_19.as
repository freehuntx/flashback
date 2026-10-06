package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   import flash.geom.Point;
   import murray._SafeCls_17;
   
   public class _SafeCls_19
   {
      
      public var x:int;
      
      public var y:int;
      
      public var r:int;
      
      public var _SafeStr_248:int;
      
      public var _SafeStr_247:int;
      
      public var _SafeStr_645:int;
      
      public var t:int;
      
      public function _SafeCls_19()
      {
         super();
      }
      
      public static function _SafeStr_357(param1:_SafeCls_17, param2:int) : _SafeCls_19
      {
         var _loc3_:_SafeCls_19 = new _SafeCls_19();
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         _loc3_.r = param1.rotation;
         _loc3_._SafeStr_248 = param1._SafeStr_133;
         _loc3_._SafeStr_247 = param1._SafeStr_132;
         _loc3_._SafeStr_645 = _SafeStr_855(param1._SafeStr_140);
         _loc3_.t = param2;
         return _loc3_;
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_19
      {
         var _loc2_:_SafeCls_19 = new _SafeCls_19();
         _loc2_.x = _SafeCls_40._SafeStr_115(param1.substr(1,5));
         _loc2_.y = _SafeCls_40._SafeStr_115(param1.substr(6,5));
         _loc2_.r = _SafeCls_40._SafeStr_115(param1.substr(11,2));
         _loc2_._SafeStr_248 = _SafeCls_40._SafeStr_115(param1.substr(13,3)) - 4000;
         _loc2_._SafeStr_247 = _SafeCls_40._SafeStr_115(param1.substr(16,3)) - 4000;
         _loc2_._SafeStr_645 = _SafeCls_40._SafeStr_115(param1.substr(19,1));
         _loc2_.t = _SafeCls_40._SafeStr_115(param1.substr(20,3));
         return _loc2_;
      }
      
      public static function _SafeStr_855(param1:Point) : int
      {
         var _loc2_:int = 0;
         if(param1.y < 0)
         {
            _loc2_ |= 1;
         }
         if(param1.x > 0)
         {
            _loc2_ |= 2;
         }
         if(param1.y > 0)
         {
            _loc2_ |= 4;
         }
         if(param1.x < 0)
         {
            _loc2_ |= 8;
         }
         return _loc2_;
      }
      
      public static function _SafeStr_1102(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         if(param1 & 1)
         {
            --_loc2_.y;
         }
         if(param1 & 2)
         {
            ++_loc2_.x;
         }
         if(param1 & 4)
         {
            ++_loc2_.y;
         }
         if(param1 & 8)
         {
            --_loc2_.x;
         }
         return _loc2_;
      }
      
      public function toString() : String
      {
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_634,1) + _SafeCls_40._SafeStr_106(this.x,5) + _SafeCls_40._SafeStr_106(this.y,5) + _SafeCls_40._SafeStr_106(this.r,2) + _SafeCls_40._SafeStr_106(this._SafeStr_248 + 4000,3) + _SafeCls_40._SafeStr_106(this._SafeStr_247 + 4000,3) + _SafeCls_40._SafeStr_106(this._SafeStr_645,1) + _SafeCls_40._SafeStr_106(this.t,3);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_19 = "+@"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_132 = "!0"
 * @identifier _SafeStr_133 = "6\""
 * @identifier _SafeStr_140 = "super"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_247 = ";4"
 * @identifier _SafeStr_248 = "0H"
 * @identifier _SafeStr_357 = "<#"
 * @identifier _SafeStr_634 = "\'N"
 * @identifier _SafeStr_645 = ">%"
 * @identifier _SafeStr_855 = "6,"
 * @identifier _SafeStr_1102 = ">O"
 */
