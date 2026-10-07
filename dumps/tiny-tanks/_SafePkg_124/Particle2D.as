package _SafePkg_124
{
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_30._SafeCls_33;
   import flash.geom.Matrix;
   
   public class Particle2D extends _SafeCls_29
   {
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var _SafeStr_2289:Number = 0;
      
      public var _SafeStr_917:Number = 0;
      
      public var _SafeStr_1392:Number = 0;
      
      public var _SafeStr_348:Number = 0;
      
      public var rotation:Number = 0;
      
      public var _SafeStr_1651:Number = 0;
      
      private var _SafeStr_824:Number;
      
      private var _SafeStr_2047:Number;
      
      private var _SafeStr_1021:Number;
      
      public var sortID:int = -1;
      
      public function Particle2D()
      {
         super();
      }
      
      public function get _SafeStr_1913() : Number
      {
         if(_SafeStr_1106 != this._SafeStr_824 || _SafeStr_1309 != this._SafeStr_2047)
         {
            this._SafeStr_1021 = _SafeStr_1106 * _SafeStr_1309 * _SafeStr_1309 * 0.5;
            this._SafeStr_824 = _SafeStr_1106;
            this._SafeStr_2047 = _SafeStr_1309;
         }
         return this._SafeStr_1021;
      }
      
      override public function initialize() : void
      {
         super.initialize();
         this.x = 0;
         this.y = 0;
         this._SafeStr_2289 = 0;
         this._SafeStr_917 = 0;
         this._SafeStr_1392 = 0;
         this._SafeStr_348 = 0;
         this.rotation = 0;
         this._SafeStr_1651 = 0;
         this.sortID = -1;
      }
      
      public function get _SafeStr_1600() : Matrix
      {
         var _loc1_:Number = scale * Math.cos(this.rotation);
         var _loc2_:Number = scale * Math.sin(this.rotation);
         return new Matrix(_loc1_,_loc2_,-_loc2_,_loc1_,this.x,this.y);
      }
      
      override public function clone(param1:_SafeCls_33 = null) : _SafeCls_29
      {
         var _loc2_:Particle2D = null;
         if(param1)
         {
            _loc2_ = param1._SafeStr_405() as Particle2D;
         }
         else
         {
            _loc2_ = new Particle2D();
         }
         _SafeStr_2538(_loc2_);
         _loc2_.x = this.x;
         _loc2_.y = this.y;
         _loc2_._SafeStr_1392 = this._SafeStr_1392;
         _loc2_._SafeStr_348 = this._SafeStr_348;
         _loc2_.rotation = this.rotation;
         _loc2_._SafeStr_1651 = this._SafeStr_1651;
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_33 = "_-Y5"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafeStr_348 = "_-VM"
 * @identifier _SafeStr_405 = "_-56"
 * @identifier _SafeStr_824 = "_-Ti"
 * @identifier _SafeStr_917 = "_-CP"
 * @identifier _SafeStr_1021 = "_-iQ"
 * @identifier _SafeStr_1106 = "_-Y8"
 * @identifier _SafeStr_1309 = "_-YC"
 * @identifier _SafeStr_1392 = "_-17"
 * @identifier _SafeStr_1600 = "_-Yv"
 * @identifier _SafeStr_1651 = "_-5e"
 * @identifier _SafeStr_1913 = "_-Ir"
 * @identifier _SafeStr_2047 = "_-Mx"
 * @identifier _SafeStr_2289 = "_-H0"
 * @identifier _SafeStr_2538 = "_-Rl"
 */
