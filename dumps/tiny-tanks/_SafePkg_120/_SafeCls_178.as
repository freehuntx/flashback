package _SafePkg_120
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import flash.display.DisplayObject;
   
   public class _SafeCls_178 extends _SafeCls_142
   {
      
      private var _SafeStr_2194:DisplayObject;
      
      public function _SafeCls_178(param1:DisplayObject = null)
      {
         super();
         this._SafeStr_2194 = param1;
      }
      
      public function get _SafeStr_2185() : DisplayObject
      {
         return this._SafeStr_2194;
      }
      
      public function set _SafeStr_2185(param1:DisplayObject) : void
      {
         this._SafeStr_2194 = param1;
      }
      
      override public function initialize(param1:_SafeCls_130, param2:_SafeCls_29) : void
      {
         param2._SafeStr_2185 = this._SafeStr_2194;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_142 = "_-L4"
 * @identifier _SafeCls_178 = "_-g3"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_2185 = "_-eb"
 * @identifier _SafeStr_2194 = "_-Sj"
 */
