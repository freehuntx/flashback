package _SafePkg_30
{
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   
   public class _SafeCls_29
   {
      
      public var color:uint = 4294967295;
      
      private var _SafeStr_1079:ColorTransform = null;
      
      private var _SafeStr_667:uint;
      
      public var scale:Number = 1;
      
      public var _SafeStr_1106:Number = 1;
      
      public var _SafeStr_1309:Number = 1;
      
      public var _SafeStr_2185:* = null;
      
      public var lifetime:Number = 0;
      
      public var _SafeStr_2270:Number = 0;
      
      public var _SafeStr_1966:Number = 1;
      
      public var _SafeStr_1747:Boolean = false;
      
      private var _SafeStr_1441:Dictionary = null;
      
      public function _SafeCls_29()
      {
         super();
      }
      
      public function get _SafeStr_751() : Dictionary
      {
         if(this._SafeStr_1441 == null)
         {
            this._SafeStr_1441 = new Dictionary(true);
         }
         return this._SafeStr_1441;
      }
      
      public function initialize() : void
      {
         this.color = 4294967295;
         this.scale = 1;
         this._SafeStr_1106 = 1;
         this._SafeStr_1309 = 1;
         this.lifetime = 0;
         this._SafeStr_2270 = 0;
         this._SafeStr_1966 = 1;
         this._SafeStr_1747 = false;
         this._SafeStr_2185 = null;
         this._SafeStr_1441 = null;
         this._SafeStr_1079 = null;
      }
      
      public function get colorTransform() : ColorTransform
      {
         if(!this._SafeStr_1079 || this._SafeStr_667 != this.color)
         {
            this._SafeStr_1079 = new ColorTransform((this.color >>> 16 & 0xFF) / 255,(this.color >>> 8 & 0xFF) / 255,(this.color & 0xFF) / 255,(this.color >>> 24 & 0xFF) / 255,0,0,0,0);
            this._SafeStr_667 = this.color;
         }
         return this._SafeStr_1079;
      }
      
      public function get alpha() : Number
      {
         return ((this.color & 0xFF000000) >>> 24) / 255;
      }
      
      protected function _SafeStr_2538(param1:_SafeCls_29) : _SafeCls_29
      {
         var _loc2_:Object = null;
         param1.color = this.color;
         param1.scale = this.scale;
         param1._SafeStr_1106 = this._SafeStr_1106;
         param1._SafeStr_1309 = this._SafeStr_1309;
         param1.lifetime = this.lifetime;
         param1._SafeStr_2270 = this._SafeStr_2270;
         param1._SafeStr_1966 = this._SafeStr_1966;
         param1._SafeStr_1747 = this._SafeStr_1747;
         param1._SafeStr_2185 = this._SafeStr_2185;
         if(this._SafeStr_1441)
         {
            param1._SafeStr_1441 = new Dictionary(true);
            for(_loc2_ in this._SafeStr_1441)
            {
               param1._SafeStr_1441[_loc2_] = this._SafeStr_1441[_loc2_];
            }
         }
         return param1;
      }
      
      public function clone(param1:_SafeCls_33 = null) : _SafeCls_29
      {
         var _loc2_:_SafeCls_29 = null;
         if(param1)
         {
            _loc2_ = param1._SafeStr_405();
         }
         else
         {
            _loc2_ = new _SafeCls_29();
         }
         return this._SafeStr_2538(_loc2_);
      }
      
      public function _SafeStr_1734() : void
      {
         this.lifetime = 0;
         this._SafeStr_2270 = 0;
         this._SafeStr_1966 = 1;
         this._SafeStr_1747 = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_33 = "_-Y5"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafeStr_405 = "_-56"
 * @identifier _SafeStr_667 = "_-DY"
 * @identifier _SafeStr_751 = "_-MF"
 * @identifier _SafeStr_1079 = "_-Vb"
 * @identifier _SafeStr_1106 = "_-Y8"
 * @identifier _SafeStr_1309 = "_-YC"
 * @identifier _SafeStr_1441 = "_-A9"
 * @identifier _SafeStr_1734 = "_-ba"
 * @identifier _SafeStr_1747 = "_-No"
 * @identifier _SafeStr_1966 = "_-VS"
 * @identifier _SafeStr_2185 = "_-eb"
 * @identifier _SafeStr_2270 = "_-hK"
 * @identifier _SafeStr_2538 = "_-Rl"
 */
