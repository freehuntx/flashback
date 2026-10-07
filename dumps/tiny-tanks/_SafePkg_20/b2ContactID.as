package _SafePkg_20
{
   import Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
      
      public var _SafeStr_1353:_SafeCls_58 = new _SafeCls_58();
      
      b2internal var _key:uint;
      
      public function b2ContactID()
      {
         super();
         this._SafeStr_1353._SafeStr_1075 = this;
      }
      
      public function Set(param1:b2ContactID) : void
      {
         this.key = param1._key;
      }
      
      public function _SafeStr_2396() : b2ContactID
      {
         var _loc1_:b2ContactID = new b2ContactID();
         _loc1_.key = this.key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this._key;
      }
      
      public function set key(param1:uint) : void
      {
         this._key = param1;
         this._SafeStr_1353._SafeStr_1019 = this._key & 0xFF;
         this._SafeStr_1353._SafeStr_2308 = (this._key & 0xFF00) >> 8 & 0xFF;
         this._SafeStr_1353._SafeStr_1129 = (this._key & 0xFF0000) >> 16 & 0xFF;
         this._SafeStr_1353._SafeStr_1105 = (this._key & 0xFF000000) >> 24 & 0xFF;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_58 = "_-TH"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_1019 = "_-dY"
 * @identifier _SafeStr_1075 = "_-Hz"
 * @identifier _SafeStr_1105 = "_-iw"
 * @identifier _SafeStr_1129 = "_-U7"
 * @identifier _SafeStr_1353 = "_-3V"
 * @identifier _SafeStr_2308 = "_-SY"
 * @identifier _SafeStr_2396 = "_-2N"
 */
