package _SafePkg_118
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import org.flintparticles.common.easing._SafeCls_44;
   
   public class _SafeCls_174 extends _SafeCls_141
   {
      
      private var _easing:Function;
      
      public function _SafeCls_174(param1:Function = null)
      {
         super();
         if(param1 == null)
         {
            this._easing = _SafeCls_44._SafeStr_2199;
         }
         else
         {
            this._easing = param1;
         }
      }
      
      public function get easing() : Function
      {
         return this._easing;
      }
      
      public function set easing(param1:Function) : void
      {
         this._easing = param1;
      }
      
      override public function update(param1:_SafeCls_130, param2:_SafeCls_29, param3:Number) : void
      {
         param2._SafeStr_2270 += param3;
         if(param2._SafeStr_2270 >= param2.lifetime)
         {
            param2._SafeStr_1966 = 0;
            param2._SafeStr_1747 = true;
         }
         else
         {
            param2._SafeStr_1966 = this._easing(param2._SafeStr_2270,1,-1,param2.lifetime);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_44 = "_-I"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_141 = "_-9c"
 * @identifier _SafeCls_174 = "_-XC"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_118 = "_-S1"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_1747 = "_-No"
 * @identifier _SafeStr_1966 = "_-VS"
 * @identifier _SafeStr_2199 = "_-73"
 * @identifier _SafeStr_2270 = "_-hK"
 */
