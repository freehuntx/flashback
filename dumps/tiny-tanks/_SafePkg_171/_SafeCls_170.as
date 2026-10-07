package _SafePkg_171
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_118._SafeCls_141;
   import _SafePkg_124.Particle2D;
   
   public class _SafeCls_170 extends _SafeCls_141
   {
      
      public function _SafeCls_170()
      {
         super();
         _SafeStr_1667 = -10;
      }
      
      override public function update(param1:_SafeCls_130, param2:_SafeCls_29, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         _loc4_._SafeStr_2289 = _loc4_.x;
         _loc4_._SafeStr_917 = _loc4_.y;
         _loc4_.x += _loc4_._SafeStr_1392 * param3;
         _loc4_.y += _loc4_._SafeStr_348 * param3;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_141 = "_-9c"
 * @identifier _SafeCls_170 = "_-bJ"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_118 = "_-S1"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafePkg_171 = "_-YL"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_917 = "_-CP"
 * @identifier _SafeStr_1392 = "_-17"
 * @identifier _SafeStr_1667 = "_-He"
 * @identifier _SafeStr_2289 = "_-H0"
 */
