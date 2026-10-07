package _SafePkg_124
{
   import _SafePkg_55._SafeCls_54;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_30._SafeCls_33;
   
   public class ParticleCreator2D implements _SafeCls_33
   {
      
      private var _SafeStr_1124:Vector.<_SafeCls_29>;
      
      public function ParticleCreator2D()
      {
         super();
         this._SafeStr_1124 = new Vector.<_SafeCls_29>();
      }
      
      public function _SafeStr_405() : _SafeCls_29
      {
         ++_SafeCls_54._SafeStr_2467;
         if(this._SafeStr_1124.length)
         {
            return this._SafeStr_1124.pop();
         }
         return new Particle2D();
      }
      
      public function _SafeStr_1072(param1:_SafeCls_29) : void
      {
         --_SafeCls_54._SafeStr_2467;
         if(param1 is Particle2D)
         {
            param1.initialize();
            this._SafeStr_1124.push(param1);
         }
      }
      
      public function _SafeStr_1310() : void
      {
         this._SafeStr_1124 = new Vector.<_SafeCls_29>();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_33 = "_-Y5"
 * @identifier _SafeCls_54 = "_-jx"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_55 = "_-9d"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafeStr_405 = "_-56"
 * @identifier _SafeStr_1072 = "_-LB"
 * @identifier _SafeStr_1124 = "_-e1"
 * @identifier _SafeStr_1310 = "_-iZ"
 * @identifier _SafeStr_2467 = "_-2E"
 */
