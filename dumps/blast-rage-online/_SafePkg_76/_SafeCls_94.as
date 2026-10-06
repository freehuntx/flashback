package _SafePkg_76
{
   import _SafePkg_74._SafeCls_73;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class _SafeCls_94 extends _SafeCls_75
   {
      
      public var loader:URLLoader;
      
      public function _SafeCls_94(param1:URLRequest, param2:String, param3:String)
      {
         super(param1,param2,param3);
      }
      
      override public function _parseOptions(param1:Object) : Array
      {
         return super._parseOptions(param1);
      }
      
      override public function load() : void
      {
         super.load();
         this.loader = new URLLoader();
         this.loader.dataFormat = URLLoaderDataFormat.BINARY;
         this.loader.addEventListener(ProgressEvent.PROGRESS,_SafeStr_266,false,0,true);
         this.loader.addEventListener(Event.COMPLETE,this.onCompleteHandler,false,0,true);
         this.loader.addEventListener(IOErrorEvent.IO_ERROR,this.onErrorHandler,false,0,true);
         this.loader.addEventListener(HTTPStatusEvent.HTTP_STATUS,super._SafeStr_354,false,0,true);
         this.loader.addEventListener(Event.OPEN,this.onStartedHandler,false,0,true);
         this.loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,super._SafeStr_187,false,0,true);
         try
         {
            this.loader.load(url);
         }
         catch(e:SecurityError)
         {
            _SafeStr_187(_SafeStr_205(e));
         }
      }
      
      override public function onErrorHandler(param1:ErrorEvent) : void
      {
         super.onErrorHandler(param1);
      }
      
      override public function onStartedHandler(param1:Event) : void
      {
         super.onStartedHandler(param1);
      }
      
      override public function onCompleteHandler(param1:Event) : void
      {
         _SafeStr_131 = param1.target.data;
         super.onCompleteHandler(param1);
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
      
      override public function cleanListeners() : void
      {
         if(this.loader)
         {
            this.loader.removeEventListener(ProgressEvent.PROGRESS,_SafeStr_266,false);
            this.loader.removeEventListener(Event.COMPLETE,this.onCompleteHandler,false);
            this.loader.removeEventListener(IOErrorEvent.IO_ERROR,this.onErrorHandler,false);
            this.loader.removeEventListener(_SafeCls_73.OPEN,this.onStartedHandler,false);
            this.loader.removeEventListener(HTTPStatusEvent.HTTP_STATUS,super._SafeStr_354,false);
            this.loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,super._SafeStr_187,false);
         }
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
 * @identifier _SafeCls_94 = "8D"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafePkg_76 = "48"
 * @identifier _SafeStr_131 = "each"
 * @identifier _SafeStr_187 = "!@"
 * @identifier _SafeStr_205 = ">P"
 * @identifier _SafeStr_266 = "!C"
 * @identifier _SafeStr_354 = "3E"
 */
