package com.jaludo
{
   import _SafePkg_87._SafeCls_86;
   import _SafePkg_7._SafeCls_108;
   import _SafePkg_31.Logger;
   import _SafePkg_31._SafeCls_32;
   import _SafePkg_67._SafeCls_78;
   import _SafePkg_28._SafeCls_107;
   import _SafePkg_28._SafeCls_27;
   import _SafePkg_42._SafeCls_196;
   import _SafePkg_42._SafeCls_41;
   import flash.display.Stage;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class Jaludo extends EventDispatcher
   {
      
      private static var _instance:Jaludo;
      
      private static var _SafeStr_658:_SafeCls_78;
      
      private static var _SafeStr_829:Boolean;
      
      private static const _SafeStr_269:String = "1.0";
      
      public static const _SafeStr_278:int = 1;
      
      public static const _SafeStr_1686:int = 3;
      
      public static const _SafeStr_993:String = "7a65d81";
      
      public static const _SafeStr_865:String = "http://dac." + "api" + ".jaludo.com/api/" + _SafeStr_269 + "/config/";
      
      public static const _SafeStr_1920:String = "www.speeleiland.nl";
      
      public static var useInternalCaching:Boolean = false;
      
      private static const _SafeStr_2344:String = "window.location.hostname.toString";
      
      private var _SafeStr_1442:Function;
      
      private var _loader:_SafeCls_196;
      
      private var _SafeStr_1604:_SafeCls_32;
      
      private var _SafeStr_1565:URLLoader;
      
      private var _SafeStr_505:Stage;
      
      private var _SafeStr_1138:Logger;
      
      private var _SafeStr_2386:String;
      
      private var _SafeStr_401:String;
      
      public function Jaludo(param1:SingletonKey = null)
      {
         super();
         if(!param1)
         {
            throw new Error("This class is a Singleton; use the instance property instead.");
         }
         this._SafeStr_1138 = Logger._SafeStr_1727(this);
         this._SafeStr_1138.debug("Jaludo API v" + version);
         if(useInternalCaching)
         {
            _SafeCls_41.initialize("com.jaludo.asapi",60);
         }
      }
      
      public static function get instance() : Jaludo
      {
         if(!_instance)
         {
            _instance = new Jaludo(new SingletonKey());
         }
         return _instance;
      }
      
      public static function get version() : String
      {
         return _SafeStr_278 + "." + _SafeStr_1686 + ":" + _SafeStr_993;
      }
      
      public static function get initialized() : Boolean
      {
         return _SafeStr_829;
      }
      
      public function get _SafeStr_2594() : Stage
      {
         return this._SafeStr_505;
      }
      
      public function addRequest(param1:String, param2:String, param3:Function, ... rest) : int
      {
         return _SafeStr_658.addRequest.apply(null,[param1,param2,param3].concat(rest));
      }
      
      public function _SafeStr_1341(param1:String, param2:String, ... rest) : *
      {
         return _SafeStr_658._SafeStr_1341.apply(null,[param1,param2].concat(rest));
      }
      
      public function validate(param1:String, param2:Function, param3:int, param4:*, param5:Boolean) : void
      {
         _SafeStr_658.validate.apply(null,[param1,param2,param3,param4,param5]);
      }
      
      public function initialize(param1:Stage, param2:String, param3:Function) : void
      {
         this._SafeStr_1138.log("Connecting to Jaludo API with key:" + param2);
         this._SafeStr_505 = param1;
         this._SafeStr_1442 = param3;
         var _loc4_:Object = this._SafeStr_2132(param2);
         this._SafeStr_2386 = _loc4_.api_key + "-" + _loc4_.secret_key;
         this._SafeStr_401 = "dac." + "api" + "/" + _SafeStr_269 + "/" + param2;
         var _loc5_:String = _SafeCls_41.getValue(this._SafeStr_401);
         if(_loc5_)
         {
            this._SafeStr_1071(_loc5_);
         }
         else
         {
            this.loadConfig(this._SafeStr_2386);
         }
      }
      
      private function loadConfig(param1:String) : void
      {
         this._SafeStr_1565 = new URLLoader();
         var _loc2_:URLRequest = new URLRequest(_SafeStr_865 + param1.split("-")[0] + "?nocache=" + String(Math.round(Math.random() * 100000)));
         this._SafeStr_1565.addEventListener(Event.COMPLETE,this._SafeStr_295);
         this._SafeStr_1565.addEventListener(ErrorEvent.ERROR,this.error);
         this._SafeStr_1565.addEventListener(IOErrorEvent.IO_ERROR,this.error);
         this._SafeStr_1565.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityError);
         this._SafeStr_1565.load(_loc2_);
      }
      
      private function _SafeStr_295(param1:Event) : void
      {
         _SafeCls_41.setValue(this._SafeStr_401,param1.target.data);
         this._SafeStr_1071(param1.target.data);
      }
      
      private function _SafeStr_1071(param1:String) : void
      {
         var _loc3_:XML = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc2_.errors)
         {
            if(_loc2_.config)
            {
               _loc3_ = XML(_loc2_.config);
               this._SafeStr_1604 = new _SafeCls_32(_loc3_);
               Security.loadPolicyFile(this._SafeStr_1604._SafeStr_1349 + "../crossdomain.xml");
               Security.allowDomain(this._SafeStr_1604._SafeStr_1349 + "*");
               this._SafeStr_928(this._SafeStr_1604.coreLocation);
            }
            else
            {
               this._SafeStr_1952(new _SafeCls_27("20002","Server returned empty config."));
            }
         }
      }
      
      private function _SafeStr_2222() : String
      {
         var returnValue:String = _SafeStr_1920;
         try
         {
            returnValue = ExternalInterface.call(_SafeStr_2344);
         }
         catch(error:Error)
         {
            _SafeStr_1138.error(error.message);
         }
         return returnValue;
      }
      
      private function _SafeStr_928(param1:String = "") : void
      {
         var request:URLRequest;
         var context:LoaderContext;
         var coreLocation:String = param1;
         this._loader = new _SafeCls_196();
         request = new URLRequest(coreLocation);
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this._SafeStr_982);
         this._loader.contentLoaderInfo.addEventListener(ErrorEvent.ERROR,this.error);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_1568);
         this._loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityError);
         context = new LoaderContext(true,ApplicationDomain.currentDomain,SecurityDomain.currentDomain);
         try
         {
            this._loader.load(request,context);
         }
         catch(error:SecurityError)
         {
            _SafeStr_1138.error(error.message);
            _SafeStr_1952(new _SafeCls_27("20001","You cannot connect to the Jaludo API locally.","Hosting your application on a local server should solve this problem. This server cannot be named \"localhost.\" Also make sure allowscriptaccess is set to \"always\""));
         }
      }
      
      private function securityError(param1:SecurityErrorEvent) : void
      {
         this._SafeStr_1138.error(param1.toString());
         this._SafeStr_1952(new _SafeCls_27("20001","You cannot connect to the Jaludo API locally.","Hosting your application on a local server should solve this problem. This server cannot be named \"localhost.\" Also make sure allowscriptaccess is set to \"always\""));
      }
      
      private function error(param1:ErrorEvent) : void
      {
         this._SafeStr_1138.error(param1.toString());
         this._SafeStr_1952(_SafeCls_27._SafeStr_1468(param1));
      }
      
      private function _SafeStr_1568(param1:IOErrorEvent) : void
      {
         this._SafeStr_1138.error("The Jaludo API Core could not be loaded");
         this._SafeStr_1952(_SafeCls_27._SafeStr_1468(param1));
         this._SafeStr_1138.error(param1.toString());
      }
      
      private function _SafeStr_982(param1:Event) : void
      {
         _SafeStr_658 = _SafeCls_78(param1.target.content);
         _SafeStr_658.addEventListener(_SafeCls_86._SafeStr_285,this._SafeStr_1623);
         _SafeStr_658.initialize(this._SafeStr_1604,this._SafeStr_2386,this._SafeStr_1542);
      }
      
      private function _SafeStr_1623(param1:_SafeCls_86) : void
      {
         _instance.dispatchEvent(new _SafeCls_86(_SafeCls_86._SafeStr_285,param1.userID,param1._SafeStr_280,param1._SafeStr_1683,param1.errors,true));
      }
      
      private function _SafeStr_1542() : void
      {
         _SafeStr_829 = true;
         this._SafeStr_1952();
      }
      
      private function _SafeStr_1952(... rest) : void
      {
         var _loc2_:_SafeCls_107 = null;
         var _loc3_:_SafeCls_108 = null;
         if(rest.length)
         {
            _loc2_ = _SafeCls_107._SafeStr_1446(rest);
         }
         else
         {
            _loc3_ = new _SafeCls_108();
         }
         this._SafeStr_1442(_loc3_,_loc2_);
      }
      
      private function _SafeStr_2132(param1:String) : Object
      {
         var _loc4_:String = null;
         var _loc7_:int = 0;
         var _loc2_:String = "";
         var _loc3_:String = "";
         var _loc5_:Boolean = false;
         var _loc6_:String = "";
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         while(true)
         {
            _loc4_ = param1.charAt(_loc8_++);
            if(isNaN(Number(_loc4_)))
            {
               break;
            }
            _loc6_ += _loc4_;
         }
         _loc7_ = int(int(_loc6_));
         _loc9_ = _loc8_ % 2 ? 1 : 0;
         while(_loc8_ < param1.length)
         {
            _loc4_ = param1.charAt(_loc8_);
            if(_loc3_.length < 40 && (Boolean(_loc5_) || Boolean((_loc8_ + _loc9_) % 2)))
            {
               _loc3_ += _loc4_;
            }
            else
            {
               _loc2_ += _loc4_;
               _loc5_ = _loc2_.length == _loc7_;
            }
            _loc8_++;
         }
         return {
            "api_key":_loc2_,
            "secret_key":_loc3_
         };
      }
   }
}

class SingletonKey
{
   
   public function SingletonKey()
   {
      super();
   }
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_27 = "_-eV"
 * @identifier _SafeCls_32 = "_-ar"
 * @identifier _SafeCls_41 = "_-Pi"
 * @identifier _SafeCls_78 = "_-XQ"
 * @identifier _SafeCls_86 = "_-aO"
 * @identifier _SafeCls_107 = "_-Qr"
 * @identifier _SafeCls_108 = "_-D7"
 * @identifier _SafeCls_196 = "_-CI"
 * @identifier _SafePkg_7 = "_-6y"
 * @identifier _SafePkg_28 = "_-RM"
 * @identifier _SafePkg_31 = "_-6z"
 * @identifier _SafePkg_42 = "_-fg"
 * @identifier _SafePkg_67 = "_-Gn"
 * @identifier _SafePkg_87 = "_-6f"
 * @identifier _SafeStr_269 = "_-g5"
 * @identifier _SafeStr_278 = "_-9N"
 * @identifier _SafeStr_280 = "_-RW"
 * @identifier _SafeStr_285 = "_-VO"
 * @identifier _SafeStr_295 = "_-bu"
 * @identifier _SafeStr_401 = "_-VN"
 * @identifier _SafeStr_505 = "_-Vi"
 * @identifier _SafeStr_658 = "_-L1"
 * @identifier _SafeStr_829 = "_-Bi"
 * @identifier _SafeStr_865 = "_-HK"
 * @identifier _SafeStr_928 = "_-23"
 * @identifier _SafeStr_982 = "_-dk"
 * @identifier _SafeStr_993 = "_-Xf"
 * @identifier _SafeStr_1071 = "_-Yc"
 * @identifier _SafeStr_1138 = "_-5B"
 * @identifier _SafeStr_1341 = "_-8G"
 * @identifier _SafeStr_1349 = "_-hu"
 * @identifier _SafeStr_1442 = "_-T"
 * @identifier _SafeStr_1446 = "_-g7"
 * @identifier _SafeStr_1468 = "_-2K"
 * @identifier _SafeStr_1542 = "_-Kg"
 * @identifier _SafeStr_1565 = "_-Bj"
 * @identifier _SafeStr_1568 = "_-7w"
 * @identifier _SafeStr_1604 = "_-Oq"
 * @identifier _SafeStr_1623 = "_-i"
 * @identifier _SafeStr_1683 = "_-TO"
 * @identifier _SafeStr_1686 = "_-Ne"
 * @identifier _SafeStr_1727 = "_-e8"
 * @identifier _SafeStr_1920 = "_-C7"
 * @identifier _SafeStr_1952 = "_-4f"
 * @identifier _SafeStr_2132 = "_-AF"
 * @identifier _SafeStr_2222 = "_-Yr"
 * @identifier _SafeStr_2344 = "_-1Y"
 * @identifier _SafeStr_2386 = "_-OB"
 * @identifier _SafeStr_2594 = "_-Ov"
 */
