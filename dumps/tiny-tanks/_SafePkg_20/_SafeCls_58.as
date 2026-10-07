package _SafePkg_20
{
   import Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class _SafeCls_58
   {
      
      b2internal var _SafeStr_1019:int;
      
      b2internal var _SafeStr_2308:int;
      
      b2internal var _SafeStr_1129:int;
      
      b2internal var _SafeStr_1105:int;
      
      b2internal var _SafeStr_1075:b2ContactID;
      
      public function _SafeCls_58()
      {
         super();
      }
      
      public function get _SafeStr_809() : int
      {
         return this._SafeStr_1019;
      }
      
      public function set _SafeStr_809(param1:int) : void
      {
         this._SafeStr_1019 = param1;
         this._SafeStr_1075._key = this._SafeStr_1075._key & 0xFFFFFF00 | this._SafeStr_1019 & 0xFF;
      }
      
      public function get _SafeStr_1536() : int
      {
         return this._SafeStr_2308;
      }
      
      public function set _SafeStr_1536(param1:int) : void
      {
         this._SafeStr_2308 = param1;
         this._SafeStr_1075._key = this._SafeStr_1075._key & 0xFFFF00FF | this._SafeStr_2308 << 8 & 0xFF00;
      }
      
      public function get _SafeStr_458() : int
      {
         return this._SafeStr_1129;
      }
      
      public function set _SafeStr_458(param1:int) : void
      {
         this._SafeStr_1129 = param1;
         this._SafeStr_1075._key = this._SafeStr_1075._key & 0xFF00FFFF | this._SafeStr_1129 << 16 & 0xFF0000;
      }
      
      public function get _SafeStr_794() : int
      {
         return this._SafeStr_1105;
      }
      
      public function set _SafeStr_794(param1:int) : void
      {
         this._SafeStr_1105 = param1;
         this._SafeStr_1075._key = this._SafeStr_1075._key & 0xFFFFFF | this._SafeStr_1105 << 24 & 0xFF000000;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_58 = "_-TH"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_458 = "_-Hf"
 * @identifier _SafeStr_794 = "_-Jn"
 * @identifier _SafeStr_809 = "_-bB"
 * @identifier _SafeStr_1019 = "_-dY"
 * @identifier _SafeStr_1075 = "_-Hz"
 * @identifier _SafeStr_1105 = "_-iw"
 * @identifier _SafeStr_1129 = "_-U7"
 * @identifier _SafeStr_1536 = "_-H4"
 * @identifier _SafeStr_2308 = "_-SY"
 */
