package _SafePkg_261
{
   import _SafePkg_16._SafeCls_191;
   import _SafePkg_124.Particle2D;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _SafeCls_260 extends _SafeCls_191
   {
      
      protected static var _SafeStr_2333:Point = new Point(0,0);
      
      protected var _SafeStr_614:Bitmap;
      
      protected var _SafeStr_1670:BitmapData;
      
      protected var _SafeStr_1287:Array;
      
      protected var _SafeStr_1235:Array;
      
      protected var _SafeStr_1371:Array;
      
      protected var _smoothing:Boolean;
      
      protected var _SafeStr_802:Rectangle;
      
      protected var _SafeStr_2238:Boolean;
      
      public function _SafeCls_260(param1:Rectangle, param2:Boolean = false)
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
         this._smoothing = param2;
         this._SafeStr_1287 = new Array();
         this._SafeStr_1235 = new Array();
         this._SafeStr_802 = param1;
         this._SafeStr_1409();
         this._SafeStr_2238 = true;
      }
      
      public function addFilter(param1:BitmapFilter, param2:Boolean = false) : void
      {
         if(param2)
         {
            this._SafeStr_1235.push(param1);
         }
         else
         {
            this._SafeStr_1287.push(param1);
         }
      }
      
      public function _SafeStr_1606(param1:BitmapFilter) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_1287.length)
         {
            if(this._SafeStr_1287[_loc2_] == param1)
            {
               this._SafeStr_1287.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1235.length)
         {
            if(this._SafeStr_1235[_loc2_] == param1)
            {
               this._SafeStr_1235.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get _SafeStr_1654() : Array
      {
         return this._SafeStr_1287.slice();
      }
      
      public function set _SafeStr_1654(param1:Array) : void
      {
         var _loc2_:BitmapFilter = null;
         for each(_loc2_ in this._SafeStr_1287)
         {
            this._SafeStr_1606(_loc2_);
         }
         for each(_loc2_ in param1)
         {
            this.addFilter(_loc2_,false);
         }
      }
      
      public function get _SafeStr_2621() : Array
      {
         return this._SafeStr_1235.slice();
      }
      
      public function set _SafeStr_2621(param1:Array) : void
      {
         var _loc2_:BitmapFilter = null;
         for each(_loc2_ in this._SafeStr_1235)
         {
            this._SafeStr_1606(_loc2_);
         }
         for each(_loc2_ in param1)
         {
            this.addFilter(_loc2_,true);
         }
      }
      
      public function _SafeStr_2065(param1:Array = null, param2:Array = null, param3:Array = null, param4:Array = null) : void
      {
         this._SafeStr_1371 = new Array(4);
         this._SafeStr_1371[0] = param4;
         this._SafeStr_1371[1] = param1;
         this._SafeStr_1371[2] = param2;
         this._SafeStr_1371[3] = param3;
      }
      
      public function _SafeStr_2461() : void
      {
         this._SafeStr_1371 = null;
      }
      
      protected function _SafeStr_1409() : void
      {
         if(!this._SafeStr_802)
         {
            return;
         }
         if(Boolean(this._SafeStr_614) && Boolean(this._SafeStr_1670))
         {
            this._SafeStr_1670.dispose();
            this._SafeStr_1670 = null;
         }
         if(this._SafeStr_614)
         {
            removeChild(this._SafeStr_614);
            this._SafeStr_614 = null;
         }
         this._SafeStr_614 = new Bitmap(null,"auto",this._smoothing);
         this._SafeStr_1670 = new BitmapData(Math.ceil(this._SafeStr_802.width),Math.ceil(this._SafeStr_802.height),true,0);
         this._SafeStr_614.bitmapData = this._SafeStr_1670;
         addChild(this._SafeStr_614);
         this._SafeStr_614.x = this._SafeStr_802.x;
         this._SafeStr_614.y = this._SafeStr_802.y;
      }
      
      public function get _SafeStr_1783() : Rectangle
      {
         return this._SafeStr_802;
      }
      
      public function set _SafeStr_1783(param1:Rectangle) : void
      {
         this._SafeStr_802 = param1;
         this._SafeStr_1409();
      }
      
      public function get _SafeStr_483() : Boolean
      {
         return this._SafeStr_2238;
      }
      
      public function set _SafeStr_483(param1:Boolean) : void
      {
         this._SafeStr_2238 = param1;
      }
      
      public function get smoothing() : Boolean
      {
         return this._smoothing;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this._smoothing = param1;
         if(this._SafeStr_614)
         {
            this._SafeStr_614.smoothing = param1;
         }
      }
      
      override protected function _SafeStr_403(param1:Array) : void
      {
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(!this._SafeStr_614)
         {
            return;
         }
         this._SafeStr_1670.lock();
         _loc3_ = int(this._SafeStr_1287.length);
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this._SafeStr_1670.applyFilter(this._SafeStr_1670,this._SafeStr_1670.rect,_SafeCls_260._SafeStr_2333,this._SafeStr_1287[_loc2_]);
            _loc2_++;
         }
         if(this._SafeStr_2238 && _loc3_ == 0)
         {
            this._SafeStr_1670.fillRect(this._SafeStr_614.bitmapData.rect,0);
         }
         _loc3_ = int(param1.length);
         if(_loc3_)
         {
            _loc2_ = _loc3_;
            while(_loc2_--)
            {
               this._SafeStr_509(Particle2D(param1[_loc2_]));
            }
         }
         _loc3_ = int(this._SafeStr_1235.length);
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this._SafeStr_1670.applyFilter(this._SafeStr_1670,this._SafeStr_1670.rect,_SafeCls_260._SafeStr_2333,this._SafeStr_1235[_loc2_]);
            _loc2_++;
         }
         if(this._SafeStr_1371)
         {
            this._SafeStr_1670.paletteMap(this._SafeStr_1670,this._SafeStr_1670.rect,_SafeStr_2333,this._SafeStr_1371[1],this._SafeStr_1371[2],this._SafeStr_1371[3],this._SafeStr_1371[0]);
         }
         this._SafeStr_1670.unlock();
      }
      
      protected function _SafeStr_509(param1:Particle2D) : void
      {
         var _loc2_:Matrix = null;
         _loc2_ = param1._SafeStr_1600;
         _loc2_.translate(-this._SafeStr_802.x,-this._SafeStr_802.y);
         this._SafeStr_1670.draw(param1._SafeStr_2185,_loc2_,param1.colorTransform,DisplayObject(param1._SafeStr_2185).blendMode,null,this._smoothing);
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._SafeStr_1670;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_191 = "_-2c"
 * @identifier _SafeCls_260 = "_-2D"
 * @identifier _SafePkg_16 = "_-Am"
 * @identifier _SafePkg_124 = "_-jL"
 * @identifier _SafePkg_261 = "_-Wd"
 * @identifier _SafeStr_403 = "_-Uf"
 * @identifier _SafeStr_483 = "_-Jy"
 * @identifier _SafeStr_509 = "_-W0"
 * @identifier _SafeStr_614 = "_-Mq"
 * @identifier _SafeStr_802 = "_-1"
 * @identifier _SafeStr_1235 = "_-Ko"
 * @identifier _SafeStr_1287 = "_-Ro"
 * @identifier _SafeStr_1371 = "_-Us"
 * @identifier _SafeStr_1409 = "_-Ll"
 * @identifier _SafeStr_1600 = "_-Yv"
 * @identifier _SafeStr_1606 = "_-X7"
 * @identifier _SafeStr_1654 = "_-Bb"
 * @identifier _SafeStr_1670 = "_-PF"
 * @identifier _SafeStr_1783 = "_-ML"
 * @identifier _SafeStr_2065 = "_-WO"
 * @identifier _SafeStr_2185 = "_-eb"
 * @identifier _SafeStr_2238 = "_-gF"
 * @identifier _SafeStr_2333 = "_-c6"
 * @identifier _SafeStr_2461 = "_-82"
 * @identifier _SafeStr_2621 = "_-By"
 */
