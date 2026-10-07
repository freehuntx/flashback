package com.miniclip.gamemanager
{
   import _SafePkg_46.AvatarRegistration;
   import _SafePkg_46._SafeCls_61;
   import _SafePkg_85._SafeCls_94;
   import com.miniclip.logger;
   import flash.display.Graphics;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.system.LoaderContext;
   
   public class YoMe extends Sprite implements _SafeCls_83
   {
      
      private var _SafeStr_694:_SafeCls_61;
      
      private var _SafeStr_275:LoaderContext;
      
      private var _loader:Loader;
      
      private var _SafeStr_531:Boolean;
      
      private var _ready:Boolean;
      
      private var _SafeStr_660:Sprite;
      
      private var _container:*;
      
      private var _SafeStr_376:Boolean;
      
      private var _SafeStr_2123:Sprite;
      
      private var _SafeStr_710:Sprite;
      
      public function YoMe(param1:_SafeCls_61, param2:LoaderContext = null)
      {
         super();
         this._SafeStr_694 = param1;
         this._SafeStr_275 = param2;
         this._SafeStr_376 = param1._SafeStr_2198;
         this._SafeStr_531 = false;
         this._ready = false;
         if(this._SafeStr_376)
         {
            this._SafeStr_2123 = this._SafeStr_1518();
            this._SafeStr_710 = this._SafeStr_1518(16711680);
         }
         this.init();
      }
      
      private function init() : void
      {
         this._loader = new Loader();
         addChild(this._loader);
         this._SafeStr_728();
         this.load();
      }
      
      private function _SafeStr_1518(param1:Number = 16763904, param2:Number = 1) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.clear();
         _loc4_.beginFill(param1,param2);
         _loc4_.drawRect(-5,-5,10,10);
         _loc4_.endFill();
         _loc4_.lineStyle(1,0);
         _loc4_.moveTo(0,-12);
         _loc4_.lineTo(0,12);
         _loc4_.moveTo(-12,0);
         _loc4_.lineTo(12,0);
         _loc4_.endFill();
         return _loc3_;
      }
      
      private function _SafeStr_2453() : void
      {
         if(this._SafeStr_710)
         {
            this._SafeStr_710.x = this._loader.x;
            this._SafeStr_710.y = this._loader.y;
            if(!contains(this._SafeStr_710))
            {
               addChild(this._SafeStr_710);
            }
         }
         if(this._SafeStr_2123)
         {
            this._SafeStr_2123.x = 0;
            this._SafeStr_2123.y = 0;
            addChild(this._SafeStr_2123);
         }
      }
      
      private function _SafeStr_728() : void
      {
         this._loader.contentLoaderInfo.addEventListener(Event.INIT,this.onComplete);
         this._loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,this._SafeStr_1286);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._loader.contentLoaderInfo.addEventListener(Event.OPEN,this._SafeStr_957);
         this._loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this._SafeStr_393);
         this._loader.contentLoaderInfo.addEventListener(Event.UNLOAD,this._SafeStr_2456);
      }
      
      private function _SafeStr_1504() : void
      {
         this._loader.contentLoaderInfo.removeEventListener(Event.INIT,this.onComplete);
         this._loader.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this._SafeStr_1286);
         this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this._loader.contentLoaderInfo.removeEventListener(Event.OPEN,this._SafeStr_957);
         this._loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this._SafeStr_393);
         this._loader.contentLoaderInfo.removeEventListener(Event.UNLOAD,this._SafeStr_2456);
      }
      
      private function load() : void
      {
         dispatchEvent(new _SafeCls_94(_SafeCls_94.READY,this));
         if(this._SafeStr_275)
         {
            this._loader.load(this.createRequest(),this._SafeStr_275);
         }
         else
         {
            this._loader.load(this.createRequest());
         }
      }
      
      private function createRequest() : URLRequest
      {
         var _loc1_:URLRequest = new URLRequest(this._SafeStr_694.url);
         var _loc2_:URLVariables = new URLVariables();
         _loc2_["glow"] = int(this._SafeStr_694._SafeStr_489);
         _loc2_["loader"] = int(this._SafeStr_694._SafeStr_1788);
         _loc2_["userid"] = this._SafeStr_694.userID;
         if(this._SafeStr_694._SafeStr_552)
         {
            _loc2_["rnd"] = int(Math.random() * 10000);
         }
         _loc1_.data = _loc2_;
         return _loc1_;
      }
      
      private function onComplete(param1:Event) : void
      {
         this._SafeStr_660 = this._loader.content as Sprite;
         if(this._SafeStr_660)
         {
            this._SafeStr_660.addEventListener(Event.COMPLETE,this._SafeStr_2266);
            this._SafeStr_660.addEventListener(_SafeCls_94.ERROR,this._SafeStr_1643);
            this._SafeStr_531 = true;
         }
         else
         {
            dispatchEvent(new _SafeCls_94(_SafeCls_94.ERROR));
         }
      }
      
      private function onAddedToStage(param1:Event = null) : void
      {
      }
      
      private function _SafeStr_1286(param1:HTTPStatusEvent) : void
      {
         logger.debug("YoMe.onHTTPStatus()");
         logger.info("Dispatched when a network request is made over HTTP and an HTTP status code can be detected.");
      }
      
      private function _SafeStr_992(param1:Event) : void
      {
         logger.debug("YoMe.onInit()");
         logger.info("Dispatched when the properties and methods of a loaded SWF file are accessible and ready for use.");
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         logger.debug("YoMe.onIOError()");
         logger.info("Dispatched when an input or output error occurs that causes a load operation to fail.");
      }
      
      private function _SafeStr_957(param1:Event) : void
      {
         logger.debug("YoMe.onOpen()");
         logger.info("Dispatched when a load operation starts.");
      }
      
      private function _SafeStr_393(param1:ProgressEvent) : void
      {
         logger.debug("YoMe.onProgress()");
         logger.info("Dispatched when data is received as the download operation progresses.");
      }
      
      private function _SafeStr_2456(param1:Event) : void
      {
         logger.debug("YoMe.onUnload()");
         logger.info("Dispatched by a LoaderInfo object whenever a loaded object is removed by using the unload() method of the Loader object, or when a second load is performed by the same Loader object and the original content is removed prior to the load beginning.");
      }
      
      private function _SafeStr_1643(param1:_SafeCls_94) : void
      {
         logger.debug("YoMe.onAvatarError( " + param1 + " )");
         logger.error(param1.data);
         dispatchEvent(param1);
      }
      
      private function _SafeStr_2266(param1:Event) : void
      {
         logger.debug("YoMe.onAvatarComplete()");
         this._SafeStr_660.removeEventListener(Event.COMPLETE,this._SafeStr_2266);
         this._SafeStr_660.removeEventListener(_SafeCls_94.ERROR,this._SafeStr_1643);
         this._SafeStr_1504();
         if(this._SafeStr_376)
         {
            this._SafeStr_2453();
         }
         this._ready = true;
         dispatchEvent(new _SafeCls_94(_SafeCls_94.READY,this));
      }
      
      public function get skeleton() : *
      {
         if(Boolean(this._loader) && Boolean(this._loader.content) && Boolean(this._loader.content["skeleton"]))
         {
            return this._loader.content["skeleton"];
         }
         return null;
      }
      
      public function get id() : uint
      {
         return this._SafeStr_694.userID;
      }
      
      public function get ready() : Boolean
      {
         return this._ready;
      }
      
      public function get version() : String
      {
         if(!this._SafeStr_660)
         {
            return "";
         }
         return this._SafeStr_660["version"] as String;
      }
      
      public function get _SafeStr_1295() : Point
      {
         return new Point(this._loader.x,this._loader.y);
      }
      
      override public function get width() : Number
      {
         if(!this._SafeStr_660)
         {
            return NaN;
         }
         return this._SafeStr_660.width;
      }
      
      override public function set width(param1:Number) : void
      {
         if(!this._SafeStr_660)
         {
            return;
         }
         this._SafeStr_660.width = param1;
      }
      
      override public function get height() : Number
      {
         if(!this._SafeStr_660)
         {
            return NaN;
         }
         return this._SafeStr_660.height;
      }
      
      override public function set height(param1:Number) : void
      {
         if(!this._SafeStr_660)
         {
            return;
         }
         this._SafeStr_660.height = param1;
      }
      
      public function get background() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["background"] as Sprite;
         }
         return null;
      }
      
      public function get bottom() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["bottom"] as Sprite;
         }
         return null;
      }
      
      public function get skin() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["skin"] as Sprite;
         }
         return null;
      }
      
      public function get top() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["top"] as Sprite;
         }
         return null;
      }
      
      public function get shoes() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["shoes"] as Sprite;
         }
         return null;
      }
      
      public function get eyes() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["eyes"] as Sprite;
         }
         return null;
      }
      
      public function get mouth() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["mouth"] as Sprite;
         }
         return null;
      }
      
      public function get hair() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["hair"] as Sprite;
         }
         return null;
      }
      
      public function get glasses() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["glasses"] as Sprite;
         }
         return null;
      }
      
      public function get extra1() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["extra1"] as Sprite;
         }
         return null;
      }
      
      public function get extra2() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["extra2"] as Sprite;
         }
         return null;
      }
      
      public function get extra3() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["extra3"] as Sprite;
         }
         return null;
      }
      
      public function get extra4() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["extra4"] as Sprite;
         }
         return null;
      }
      
      public function get extra5() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["extra5"] as Sprite;
         }
         return null;
      }
      
      public function get pet() : Sprite
      {
         if(this._SafeStr_660)
         {
            return this._SafeStr_660["pet"] as Sprite;
         }
         return null;
      }
      
      public function getExtra(param1:uint) : Sprite
      {
         if(Boolean(this._SafeStr_660) && this._SafeStr_660["getExtra"] is Function)
         {
            this._SafeStr_660["getExtra"](param1) as Sprite;
         }
         return null;
      }
      
      public function hide(... rest) : void
      {
         if(Boolean(this._SafeStr_660) && this._SafeStr_660["hide"] is Function)
         {
            this._SafeStr_660["hide"]["apply"](this._SafeStr_660,rest);
         }
      }
      
      public function show(... rest) : void
      {
         if(Boolean(this._SafeStr_660) && this._SafeStr_660["show"] is Function)
         {
            this._SafeStr_660["show"]["apply"](this._SafeStr_660,rest);
         }
      }
      
      public function _SafeStr_1015(param1:Number, param2:Number) : void
      {
         this.x = param1;
         this.y = param2;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         if(Boolean(this._SafeStr_660) && this._SafeStr_660["setSize"] is Function)
         {
            this._SafeStr_660["setSize"]["call"](this._SafeStr_660,param1,param2);
         }
      }
      
      public function _SafeStr_855(param1:*, param2:* = null) : void
      {
         var _loc3_:Point = null;
         if(param1 is AvatarRegistration)
         {
            _loc3_ = new Point(param1.x,param1.y);
         }
         else if(param1 is Point)
         {
            _loc3_ = param1;
         }
         else
         {
            if(!(param1 is Number && param2 is Number))
            {
               return;
            }
            _loc3_ = new Point(param1,param2);
         }
         this._loader.x = -_loc3_.x;
         this._loader.y = -_loc3_.y;
         if(this._SafeStr_376)
         {
            this._SafeStr_2453();
         }
      }
      
      public function destroy() : void
      {
         this._ready = false;
         if(this._SafeStr_660)
         {
            this._SafeStr_660["destroy"]();
         }
         this._SafeStr_660 = null;
         if(this._loader.hasOwnProperty("unloadAndStop"))
         {
            this._loader["unloadAndStop"]();
         }
         else
         {
            this._loader.unload();
         }
         if(Boolean(this._SafeStr_710) && Boolean(contains(this._SafeStr_710)))
         {
            removeChild(this._SafeStr_710);
         }
         if(Boolean(this._SafeStr_2123) && Boolean(contains(this._SafeStr_2123)))
         {
            removeChild(this._SafeStr_2123);
         }
         if(this.contains(this._loader))
         {
            removeChild(this._loader);
         }
         this._loader = null;
         this._SafeStr_710 = null;
         this._SafeStr_2123 = null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_61 = "_-MR"
 * @identifier _SafeCls_83 = "_-cI"
 * @identifier _SafeCls_94 = "_-Hc"
 * @identifier _SafePkg_46 = "_-8"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_275 = "_-Wn"
 * @identifier _SafeStr_376 = "_-3v"
 * @identifier _SafeStr_393 = "_-5t"
 * @identifier _SafeStr_489 = "_-fI"
 * @identifier _SafeStr_531 = "_-cE"
 * @identifier _SafeStr_552 = "_-Ua"
 * @identifier _SafeStr_660 = "_-2C"
 * @identifier _SafeStr_694 = "_-Dz"
 * @identifier _SafeStr_710 = "_-ER"
 * @identifier _SafeStr_728 = "_-bc"
 * @identifier _SafeStr_855 = "_-g1"
 * @identifier _SafeStr_957 = "_-Ih"
 * @identifier _SafeStr_992 = "_-Gl"
 * @identifier _SafeStr_1015 = "_-OW"
 * @identifier _SafeStr_1286 = "_-Mh"
 * @identifier _SafeStr_1295 = "_-K1"
 * @identifier _SafeStr_1504 = "_-KJ"
 * @identifier _SafeStr_1518 = "_-R6"
 * @identifier _SafeStr_1643 = "_-fG"
 * @identifier _SafeStr_1788 = "_-jM"
 * @identifier _SafeStr_2123 = "_-7i"
 * @identifier _SafeStr_2198 = "_-Q0"
 * @identifier _SafeStr_2266 = "_-FN"
 * @identifier _SafeStr_2453 = "_-Hr"
 * @identifier _SafeStr_2456 = "_-Ri"
 */
