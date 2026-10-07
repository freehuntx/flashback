package _SafePkg_28
{
   import flash.utils.*;
   
   use namespace flash_proxy;
   
   public dynamic class _SafeCls_107 extends Proxy
   {
      
      private var _errors:Vector.<_SafeCls_27>;
      
      public var _SafeStr_1719:uint;
      
      public function _SafeCls_107(... rest)
      {
         super();
         this._errors = Vector.<_SafeCls_27>(rest);
      }
      
      public static function _SafeStr_752(... rest) : _SafeCls_107
      {
         var _loc2_:_SafeCls_107 = null;
         _loc2_ = new _SafeCls_107();
         _loc2_._errors = Vector.<_SafeCls_27>(rest.slice());
         return _loc2_;
      }
      
      public static function _SafeStr_2023(param1:Vector.<_SafeCls_27>) : _SafeCls_107
      {
         var _loc2_:_SafeCls_107 = null;
         _loc2_ = new _SafeCls_107();
         _loc2_._errors = param1.slice();
         return _loc2_;
      }
      
      public static function _SafeStr_1446(param1:Array) : _SafeCls_107
      {
         var _loc2_:_SafeCls_107 = null;
         _loc2_ = new _SafeCls_107();
         _loc2_._errors = Vector.<_SafeCls_27>(param1.slice());
         return _loc2_;
      }
      
      public static function _SafeStr_618(param1:Array) : _SafeCls_107
      {
         var _loc2_:_SafeCls_107 = null;
         var _loc3_:Object = null;
         _loc2_ = new _SafeCls_107();
         _loc2_._errors = new Vector.<_SafeCls_27>();
         for each(_loc3_ in param1)
         {
            _loc2_._errors.push(_SafeCls_27._SafeStr_743(_loc3_));
         }
         return _loc2_;
      }
      
      public function get length() : uint
      {
         return this._errors == null ? 0 : uint(this._errors.length);
      }
      
      public function toString() : String
      {
         var _loc2_:_SafeCls_27 = null;
         var _loc1_:String = "";
         for each(_loc2_ in this._errors)
         {
            _loc1_ += _loc2_.toString() + "\n";
         }
         return _loc1_;
      }
      
      public function _SafeStr_1793() : Vector.<_SafeCls_27>
      {
         return this._errors;
      }
      
      public function push(... rest) : uint
      {
         return this.callProperty.call(null,["push"].concat(rest));
      }
      
      public function concat(... rest) : uint
      {
         return this.callProperty.call(null,["concat"].concat(rest));
      }
      
      override flash_proxy function callProperty(param1:*, ... rest) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Function = null;
         if(this._errors)
         {
            _loc4_ = this._errors[param1] as Function;
            if(_loc4_ != null)
            {
               _loc3_ = _loc4_.apply(this._errors,rest);
            }
         }
         return _loc3_;
      }
      
      override flash_proxy function getProperty(param1:*) : *
      {
         var _loc2_:_SafeCls_27 = null;
         if(!isNaN(param1))
         {
            _loc2_ = this._errors[param1];
         }
         return _loc2_;
      }
      
      override flash_proxy function nextNameIndex(param1:int) : int
      {
         if(param1 < this._errors.length)
         {
            return param1 + 1;
         }
         return 0;
      }
      
      override flash_proxy function nextName(param1:int) : String
      {
         return this._errors[param1 - 1] as String;
      }
      
      override flash_proxy function nextValue(param1:int) : *
      {
         return this._errors[param1 - 1];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_27 = "_-eV"
 * @identifier _SafeCls_107 = "_-Qr"
 * @identifier _SafePkg_28 = "_-RM"
 * @identifier _SafeStr_618 = "_-NR"
 * @identifier _SafeStr_743 = "_-dw"
 * @identifier _SafeStr_752 = "_-6B"
 * @identifier _SafeStr_1446 = "_-g7"
 * @identifier _SafeStr_1719 = "_-LP"
 * @identifier _SafeStr_1793 = "_-Ln"
 * @identifier _SafeStr_2023 = "_-2i"
 */
