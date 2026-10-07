package com.miniclip.gamemanager
{
   import _SafePkg_46.AvatarBitmapType;
   import _SafePkg_46._SafeCls_61;
   import _SafePkg_85._SafeCls_94;
   import com.miniclip.logger;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   
   public class _SafeCls_194 extends Sprite
   {
      
      private var _SafeStr_694:_SafeCls_61;
      
      private var _SafeStr_2276:URLLoader;
      
      private var _loader:Loader;
      
      private var _SafeStr_2514:BitmapData;
      
      private var _request:URLRequest;
      
      private var _id:uint;
      
      private var _width:Number;
      
      private var _height:Number;
      
      private var _type:AvatarBitmapType;
      
      private var _SafeStr_531:Boolean;
      
      private var _ready:Boolean;
      
      public function _SafeCls_194(param1:_SafeCls_61, param2:Number = 200, param3:Number = 200, param4:AvatarBitmapType = null)
      {
         super();
         this._SafeStr_694 = param1;
         this._width = param2;
         this._height = param3;
         this._type = !param4 ? AvatarBitmapType.cropped : param4;
         this.init();
      }
      
      private function init() : void
      {
         this._SafeStr_2276 = new URLLoader();
         this._SafeStr_2276.dataFormat = URLLoaderDataFormat.BINARY;
         this._SafeStr_531 = false;
         this._ready = false;
         this._SafeStr_728();
         this._SafeStr_2276.load(this.createRequest());
      }
      
      private function _SafeStr_728() : void
      {
         this._SafeStr_2276.addEventListener(Event.COMPLETE,this._SafeStr_1337);
         this._SafeStr_2276.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2173);
         this._SafeStr_2276.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_2100);
      }
      
      private function _SafeStr_1504() : void
      {
         this._SafeStr_2276.removeEventListener(Event.COMPLETE,this._SafeStr_1337);
         this._SafeStr_2276.removeEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2173);
         this._SafeStr_2276.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_2100);
      }
      
      private function createRequest() : URLRequest
      {
         var _loc1_:URLRequest = new URLRequest(this._SafeStr_694.url);
         var _loc2_:URLVariables = new URLVariables();
         _loc2_["uid"] = this._SafeStr_694.userID;
         _loc2_["w"] = this._width;
         _loc2_["h"] = this._height;
         _loc2_["type"] = this._type.value;
         if(this._SafeStr_694._SafeStr_552)
         {
            _loc2_["rnd"] = int(Math.random() * 10000);
         }
         _loc1_.data = _loc2_;
         return _loc1_;
      }
      
      private function _SafeStr_1337(param1:Event) : void
      {
         this._SafeStr_531 = true;
         this._SafeStr_1504();
         var _loc2_:ByteArray = this._SafeStr_2276.data as ByteArray;
         if(Boolean(_loc2_) && _loc2_.length > 1)
         {
            this._loader = new Loader();
            addChild(this._loader);
            this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this._SafeStr_388);
            this._loader.loadBytes(_loc2_);
         }
         else
         {
            dispatchEvent(new _SafeCls_94(_SafeCls_94.ERROR,this));
         }
      }
      
      private function _SafeStr_388(param1:Event) : void
      {
         this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._SafeStr_388);
         var _loc2_:BitmapData = this._loader.content["bitmapData"] as BitmapData;
         if(_loc2_ != null)
         {
            if(_loc2_.width < 1 || _loc2_.height < 1)
            {
               dispatchEvent(new _SafeCls_94(_SafeCls_94.ERROR,this));
            }
            else
            {
               this._SafeStr_2514 = _loc2_.clone();
               dispatchEvent(new _SafeCls_94(_SafeCls_94.READY,this));
            }
         }
         else
         {
            dispatchEvent(new _SafeCls_94(_SafeCls_94.ERROR,this));
         }
      }
      
      private function _SafeStr_2100(param1:SecurityErrorEvent) : void
      {
         logger.error("Could not load " + this._request);
      }
      
      private function _SafeStr_2173(param1:IOErrorEvent) : void
      {
         logger.error("Could not load " + this._request);
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get ready() : Boolean
      {
         return this._ready;
      }
      
      public function get _SafeStr_1743() : Bitmap
      {
         if(this._SafeStr_2514)
         {
            return new Bitmap(this._SafeStr_2514.clone());
         }
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_61 = "_-MR"
 * @identifier _SafeCls_94 = "_-Hc"
 * @identifier _SafeCls_194 = "_-XP"
 * @identifier _SafePkg_46 = "_-8"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_388 = "_-AP"
 * @identifier _SafeStr_531 = "_-cE"
 * @identifier _SafeStr_552 = "_-Ua"
 * @identifier _SafeStr_694 = "_-Dz"
 * @identifier _SafeStr_728 = "_-bc"
 * @identifier _SafeStr_1337 = "_-ZR"
 * @identifier _SafeStr_1504 = "_-KJ"
 * @identifier _SafeStr_1743 = "_-K4"
 * @identifier _SafeStr_2100 = "_-AY"
 * @identifier _SafeStr_2173 = "_-Nk"
 * @identifier _SafeStr_2276 = "_-6r"
 * @identifier _SafeStr_2514 = "_-Gv"
 */
