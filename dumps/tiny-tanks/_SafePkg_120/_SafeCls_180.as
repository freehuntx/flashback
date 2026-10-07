package _SafePkg_120
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import org.flintparticles.common.utils.interpolateColors;
   
   public class _SafeCls_180 extends _SafeCls_142
   {
      
      private var _SafeStr_700:uint;
      
      private var _SafeStr_1040:uint;
      
      public function _SafeCls_180(param1:uint = 16777215, param2:uint = 16777215)
      {
         super();
         this._SafeStr_700 = param1;
         this._SafeStr_1040 = param2;
      }
      
      public function get _SafeStr_1659() : uint
      {
         return this._SafeStr_700;
      }
      
      public function set _SafeStr_1659(param1:uint) : void
      {
         this._SafeStr_700 = param1;
      }
      
      public function get _SafeStr_1680() : uint
      {
         return this._SafeStr_1040;
      }
      
      public function set _SafeStr_1680(param1:uint) : void
      {
         this._SafeStr_1040 = param1;
      }
      
      public function get color() : uint
      {
         return this._SafeStr_700 == this._SafeStr_1040 ? this._SafeStr_700 : interpolateColors(this._SafeStr_1040,this._SafeStr_700,0.5);
      }
      
      public function set color(param1:uint) : void
      {
         this._SafeStr_1040 = this._SafeStr_700 = param1;
      }
      
      override public function initialize(param1:_SafeCls_130, param2:_SafeCls_29) : void
      {
         if(this._SafeStr_1040 == this._SafeStr_700)
         {
            param2.color = this._SafeStr_700;
         }
         else
         {
            param2.color = interpolateColors(this._SafeStr_700,this._SafeStr_1040,Math.random());
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_142 = "_-L4"
 * @identifier _SafeCls_180 = "_-Hg"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_700 = "_-MH"
 * @identifier _SafeStr_1040 = "_-8Q"
 * @identifier _SafeStr_1659 = "_-FD"
 * @identifier _SafeStr_1680 = "_-e9"
 */
