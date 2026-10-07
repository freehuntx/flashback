package _SafePkg_193
{
   import com.miniclip.IDisposable;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   
   public class _SafeCls_192 extends Sprite implements IDisposable
   {
      
      private var _url:String;
      
      private var loader:Loader;
      
      private var _SafeStr_1126:Boolean = false;
      
      public function _SafeCls_192(param1:String, param2:Number, param3:Number)
      {
         super();
         this._url = param1;
         this.draw(param2,param3);
      }
      
      public function get isDisposed() : Boolean
      {
         return this._SafeStr_1126;
      }
      
      public function init() : void
      {
         this.load();
      }
      
      private function load() : void
      {
         this.loader = new Loader();
         addChild(this.loader);
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this._SafeStr_1337);
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2342);
         this.loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_2342);
         if(this._url != "")
         {
            this.loader.load(new URLRequest(this._url));
         }
      }
      
      private function _SafeStr_1337(param1:Event) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function _SafeStr_2342(param1:Event) : void
      {
         if(this.hasEventListener(ErrorEvent.ERROR))
         {
            dispatchEvent(new ErrorEvent(ErrorEvent.ERROR,false,false," Icon not loaded"));
         }
      }
      
      private function draw(param1:Number, param2:Number) : void
      {
         this.graphics.lineStyle(1,0,0);
         if(this._url != "")
         {
            this.graphics.beginFill(16711680,0);
         }
         else
         {
            this.graphics.beginFill(65280,0.5);
         }
         this.graphics.drawRect(0,0,param1,param2);
         this.graphics.endFill();
      }
      
      public function dispose() : void
      {
         if(this.loader.contentLoaderInfo.hasEventListener(Event.COMPLETE))
         {
            this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this._SafeStr_1337);
         }
         if(this.loader.contentLoaderInfo.hasEventListener(IOErrorEvent.IO_ERROR))
         {
            this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2342);
         }
         if(this.loader.contentLoaderInfo.hasEventListener(SecurityErrorEvent.SECURITY_ERROR))
         {
            this.loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_2342);
         }
         while(this.numChildren > 0)
         {
            this.removeChildAt(0);
         }
         if(this.loader != null)
         {
            this.loader.unloadAndStop();
            this.loader = null;
         }
         this._SafeStr_1126 = true;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_192 = "_-2I"
 * @identifier _SafePkg_193 = "_-7h"
 * @identifier _SafeStr_1126 = "_-fz"
 * @identifier _SafeStr_1337 = "_-ZR"
 * @identifier _SafeStr_2342 = "_-JT"
 */
