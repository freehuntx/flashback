package _SafePkg_118
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   
   public class _SafeCls_173 extends _SafeCls_141
   {
      
      private var _SafeStr_2655:Number;
      
      private var _SafeStr_2338:Number;
      
      public function _SafeCls_173(param1:Number = 1, param2:Number = 0)
      {
         super();
         _SafeStr_1667 = -5;
         this._SafeStr_2655 = param1 - param2;
         this._SafeStr_2338 = param2;
      }
      
      public function get startAlpha() : Number
      {
         return this._SafeStr_2338 + this._SafeStr_2655;
      }
      
      public function set startAlpha(param1:Number) : void
      {
         this._SafeStr_2655 = param1 - this._SafeStr_2338;
      }
      
      public function get _SafeStr_1835() : Number
      {
         return this._SafeStr_2338;
      }
      
      public function set _SafeStr_1835(param1:Number) : void
      {
         this._SafeStr_2655 = this._SafeStr_2338 + this._SafeStr_2655 - param1;
         this._SafeStr_2338 = param1;
      }
      
      override public function update(param1:_SafeCls_130, param2:_SafeCls_29, param3:Number) : void
      {
         var _loc4_:Number = this._SafeStr_2338 + this._SafeStr_2655 * param2._SafeStr_1966;
         param2.color = param2.color & 0xFFFFFF | Math.round(_loc4_ * 255) << 24;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_141 = "_-9c"
 * @identifier _SafeCls_173 = "_-3i"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_118 = "_-S1"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_1667 = "_-He"
 * @identifier _SafeStr_1835 = "_-fq"
 * @identifier _SafeStr_1966 = "_-VS"
 * @identifier _SafeStr_2338 = "_-MA"
 * @identifier _SafeStr_2655 = "_-FF"
 */
