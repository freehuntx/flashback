package _SafePkg_261
{
   import _SafePkg_16._SafeCls_191;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_124.Particle2D;
   import flash.display.DisplayObject;
   
   public class _SafeCls_262 extends _SafeCls_191
   {
      
      public function _SafeCls_262()
      {
         super();
      }
      
      override protected function _SafeStr_403(param1:Array) : void
      {
         var _loc2_:Particle2D = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = Particle2D(param1[_loc5_]);
            _loc3_ = _loc2_._SafeStr_2185;
            _loc3_.transform.colorTransform = _loc2_.colorTransform;
            _loc3_.transform.matrix = _loc2_._SafeStr_1600;
            _loc5_++;
         }
      }
      
      override protected function _SafeStr_366(param1:_SafeCls_29) : void
      {
         super._SafeStr_366(param1);
         var _loc2_:Particle2D = param1 as Particle2D;
         addChildAt(_loc2_._SafeStr_2185,0);
         var _loc3_:DisplayObject = _loc2_._SafeStr_2185;
         _loc3_.transform.colorTransform = _loc2_.colorTransform;
         _loc3_.transform.matrix = _loc2_._SafeStr_1600;
      }
      
      override protected function removeParticle(param1:_SafeCls_29) : void
      {
         removeChild(param1._SafeStr_2185);
         super.removeParticle(param1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_191 = "_-2c"
 * @identifier _SafeCls_262 = "_-R7"
 * @identifier _SafePkg_16 = "_-Am"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafePkg_261 = "_-Wd"
 * @identifier _SafeStr_366 = "_-25"
 * @identifier _SafeStr_403 = "_-Uf"
 * @identifier _SafeStr_1600 = "_-Yv"
 * @identifier _SafeStr_2185 = "_-eb"
 */
