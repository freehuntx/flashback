package _SafePkg_176
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_120._SafeCls_142;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_14.Zone2D;
   import _SafePkg_124.Particle2D;
   import flash.geom.Point;
   
   public class _SafeCls_179 extends _SafeCls_142
   {
      
      private var _SafeStr_1715:Zone2D;
      
      public function _SafeCls_179(param1:Zone2D = null)
      {
         super();
         this._SafeStr_2454 = param1;
      }
      
      public function get _SafeStr_2454() : Zone2D
      {
         return this._SafeStr_1715;
      }
      
      public function set _SafeStr_2454(param1:Zone2D) : void
      {
         this._SafeStr_1715 = param1;
      }
      
      override public function initialize(param1:_SafeCls_130, param2:_SafeCls_29) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:Particle2D = Particle2D(param2);
         var _loc4_:Point = this._SafeStr_1715._SafeStr_671();
         if(_loc3_.rotation == 0)
         {
            _loc3_._SafeStr_1392 = _loc4_.x;
            _loc3_._SafeStr_348 = _loc4_.y;
         }
         else
         {
            _loc5_ = Number(Math.sin(_loc3_.rotation));
            _loc6_ = Number(Math.cos(_loc3_.rotation));
            _loc3_._SafeStr_1392 = _loc6_ * _loc4_.x - _loc5_ * _loc4_.y;
            _loc3_._SafeStr_348 = _loc6_ * _loc4_.y + _loc5_ * _loc4_.x;
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
 * @identifier _SafeCls_179 = "_-7b"
 * @identifier _SafePkg_14 = "_-hj"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafePkg_176 = "_-AB"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_671 = "_-EC"
 * @identifier _SafeStr_1392 = "_-17"
 * @identifier _SafeStr_1715 = "_-Jb"
 * @identifier _SafeStr_2454 = "_-DL"
 */
