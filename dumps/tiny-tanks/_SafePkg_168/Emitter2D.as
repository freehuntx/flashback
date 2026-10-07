package _SafePkg_168
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_30._SafeCls_33;
   import _SafePkg_124.Particle2D;
   import _SafePkg_124.ParticleCreator2D;
   import org.flintparticles.common.utils._SafeCls_43;
   
   public class Emitter2D extends _SafeCls_130
   {
      
      protected static var _SafeStr_796:ParticleCreator2D = new ParticleCreator2D();
      
      protected var _x:Number = 0;
      
      protected var _y:Number = 0;
      
      protected var _SafeStr_2264:Number = 0;
      
      public var _SafeStr_2089:Boolean = false;
      
      public function Emitter2D()
      {
         super();
         _SafeStr_311 = _SafeStr_796;
      }
      
      public static function get _SafeStr_1035() : _SafeCls_33
      {
         return _SafeStr_796;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function set y(param1:Number) : void
      {
         this._y = param1;
      }
      
      public function get rotation() : Number
      {
         return _SafeCls_43._SafeStr_1393(this._SafeStr_2264);
      }
      
      public function set rotation(param1:Number) : void
      {
         this._SafeStr_2264 = _SafeCls_43._SafeStr_1864(param1);
      }
      
      public function get _SafeStr_2556() : Number
      {
         return this._SafeStr_2264;
      }
      
      public function set _SafeStr_2556(param1:Number) : void
      {
         this._SafeStr_2264 = param1;
      }
      
      override protected function _SafeStr_1744(param1:_SafeCls_29) : void
      {
         var _loc2_:Particle2D = Particle2D(param1);
         _loc2_.x = this._x;
         _loc2_.y = this._y;
         _loc2_._SafeStr_2289 = this._x;
         _loc2_._SafeStr_917 = this._y;
         _loc2_.rotation = this._SafeStr_2264;
      }
      
      override protected function _SafeStr_1081() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this._SafeStr_2089)
         {
            _SafeStr_1124.sortOn("x",Array.NUMERIC);
            _loc1_ = int(_SafeStr_1124.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               Particle2D(_SafeStr_1124[_loc2_]).sortID = _loc2_;
               _loc2_++;
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_33 = "_-Y5"
 * @identifier _SafeCls_43 = "_-Ur"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafePkg_168 = "_-SB"
 * @identifier _SafeStr_311 = "_-Yk"
 * @identifier _SafeStr_796 = "_-kD"
 * @identifier _SafeStr_917 = "_-CP"
 * @identifier _SafeStr_1035 = "_-Xd"
 * @identifier _SafeStr_1081 = "_-1E"
 * @identifier _SafeStr_1124 = "_-e1"
 * @identifier _SafeStr_1393 = "_-ac"
 * @identifier _SafeStr_1744 = "_-ht"
 * @identifier _SafeStr_1864 = "_-Kl"
 * @identifier _SafeStr_2089 = "_-Al"
 * @identifier _SafeStr_2264 = "_-HU"
 * @identifier _SafeStr_2289 = "_-H0"
 * @identifier _SafeStr_2556 = "_-ao"
 */
