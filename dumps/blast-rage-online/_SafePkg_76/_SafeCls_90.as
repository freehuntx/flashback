package _SafePkg_76
{
   import _SafePkg_74._SafeCls_73;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class _SafeCls_90 extends _SafeCls_75
   {
      
      public var loader:Loader;
      
      public function _SafeCls_90(param1:URLRequest, param2:String, param3:String)
      {
         _SafeStr_301 = [_SafeCls_73._SafeStr_421];
         super(param1,param2,param3);
      }
      
      override public function _parseOptions(param1:Object) : Array
      {
         _SafeStr_422 = param1[_SafeCls_73._SafeStr_421] || null;
         return super._parseOptions(param1);
      }
      
      override public function load() : void
      {
         super.load();
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,_SafeStr_266,false,0,true);
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onCompleteHandler,false,0,true);
         this.loader.contentLoaderInfo.addEventListener(Event.INIT,this._SafeStr_852,false,0,true);
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onErrorHandler,false,100,true);
         this.loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_SafeStr_187,false,0,true);
         this.loader.contentLoaderInfo.addEventListener(Event.OPEN,onStartedHandler,false,0,true);
         this.loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,super._SafeStr_354,false,0,true);
         try
         {
            this.loader.load(url,_SafeStr_422);
         }
         catch(e:SecurityError)
         {
            _SafeStr_187(_SafeStr_205(e));
         }
      }
      
      public function _SafeStr_1254(param1:HTTPStatusEvent) : void
      {
         _SafeStr_624 = param1.status;
         dispatchEvent(param1);
      }
      
      override public function onErrorHandler(param1:ErrorEvent) : void
      {
         super.onErrorHandler(param1);
      }
      
      public function _SafeStr_852(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override public function onCompleteHandler(param1:Event) : void
      {
         var evt:Event = param1;
         try
         {
            _SafeStr_131 = this.loader.content;
            super.onCompleteHandler(evt);
         }
         catch(e:SecurityError)
         {
            _SafeStr_131 = loader;
            super.onCompleteHandler(evt);
         }
      }
      
      override public function stop() : void
      {
         try
         {
            if(this.loader)
            {
               this.loader.close();
            }
         }
         catch(e:Error)
         {
         }
         super.stop();
      }
      
      public function _SafeStr_1273(param1:String) : Object
      {
         if(this.loader.contentLoaderInfo.applicationDomain.hasDefinition(param1))
         {
            return this.loader.contentLoaderInfo.applicationDomain.getDefinition(param1);
         }
         return null;
      }
      
      override public function cleanListeners() : void
      {
         var _loc1_:Object = null;
         if(this.loader)
         {
            _loc1_ = this.loader.contentLoaderInfo;
            _loc1_.removeEventListener(ProgressEvent.PROGRESS,_SafeStr_266,false);
            _loc1_.removeEventListener(Event.COMPLETE,this.onCompleteHandler,false);
            _loc1_.removeEventListener(Event.INIT,this._SafeStr_852,false);
            _loc1_.removeEventListener(IOErrorEvent.IO_ERROR,this.onErrorHandler,false);
            _loc1_.removeEventListener(_SafeCls_73.OPEN,onStartedHandler,false);
            _loc1_.removeEventListener(HTTPStatusEvent.HTTP_STATUS,super._SafeStr_354,false);
         }
      }
      
      override public function isImage() : Boolean
      {
         return type == _SafeCls_73._SafeStr_358;
      }
      
      override public function isSWF() : Boolean
      {
         return type == _SafeCls_73._SafeStr_365;
      }
      
      override public function destroy() : void
      {
         this.stop();
         this.cleanListeners();
         _SafeStr_131 = null;
         this.loader = null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_75 = "11"
 * @identifier _SafeCls_90 = "12"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafePkg_76 = "48"
 * @identifier _SafeStr_131 = "each"
 * @identifier _SafeStr_187 = "!@"
 * @identifier _SafeStr_205 = ">P"
 * @identifier _SafeStr_266 = "!C"
 * @identifier _SafeStr_301 = "8="
 * @identifier _SafeStr_354 = "3E"
 * @identifier _SafeStr_358 = "`%"
 * @identifier _SafeStr_365 = "&B"
 * @identifier _SafeStr_421 = "3&"
 * @identifier _SafeStr_422 = "%;"
 * @identifier _SafeStr_624 = "\'4"
 * @identifier _SafeStr_852 = "3O"
 * @identifier _SafeStr_1254 = "=D"
 * @identifier _SafeStr_1273 = "8E"
 */
