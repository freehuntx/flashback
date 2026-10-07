package _SafePkg_171
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_118._SafeCls_141;
   import _SafePkg_124.Particle2D;
   
   public class _SafeCls_172 extends _SafeCls_141
   {
      
      public function _SafeCls_172()
      {
         super();
      }
      
      override public function update(param1:_SafeCls_130, param2:_SafeCls_29, param3:Number) : void
      {
         var _loc4_:Particle2D = Particle2D(param2);
         _loc4_.rotation = Math.atan2(_loc4_._SafeStr_348,_loc4_._SafeStr_1392);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_141 = "_-9c"
 * @identifier _SafeCls_172 = "_-UI"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_118 = "_-S1"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafePkg_171 = "_-YL"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_1392 = "_-17"
 */
