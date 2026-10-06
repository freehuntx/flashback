package _SafePkg_76
{
   import _SafePkg_53._SafeCls_52;
   import _SafePkg_74._SafeCls_73;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class _SafeCls_75 extends EventDispatcher
   {
      
      public static const _SafeStr_343:String = "stopped";
      
      public static const _SafeStr_452:String = "started";
      
      public static const _SafeStr_326:String = "finished";
      
      public static const _SafeStr_283:String = "error";
      
      public var _SafeStr_801:String;
      
      public var url:URLRequest;
      
      public var _SafeStr_460:String;
      
      public var _SafeStr_841:String;
      
      public var _additionIndex:int;
      
      public var _SafeStr_573:int = 0;
      
      public var _SafeStr_360:Boolean;
      
      public var _SafeStr_712:Boolean;
      
      public var status:String;
      
      public var maxTries:int = 3;
      
      public var _SafeStr_509:int = 0;
      
      public var weight:int = 1;
      
      public var preventCache:Boolean;
      
      public var _SafeStr_184:int = -1;
      
      public var _SafeStr_234:int = 0;
      
      public var _SafeStr_510:int = 10000000;
      
      public var _SafeStr_280:Number;
      
      public var _SafeStr_871:Number;
      
      public var _SafeStr_787:int;
      
      public var _SafeStr_441:int;
      
      public var _SafeStr_674:Number;
      
      public var _SafeStr_766:Number;
      
      public var _SafeStr_575:int;
      
      public var _SafeStr_410:Number;
      
      public var _SafeStr_592:Number;
      
      public var _SafeStr_131:*;
      
      public var _SafeStr_624:int = -1;
      
      public var _SafeStr_422:* = null;
      
      public var _SafeStr_738:_SafeCls_52;
      
      public var _SafeStr_301:Array;
      
      public var _SafeStr_800:Array;
      
      public var _SafeStr_633:ErrorEvent;
      
      public function _SafeCls_75(param1:URLRequest, param2:String, param3:String)
      {
         super();
         this._SafeStr_801 = param2;
         this.url = param1;
         this._SafeStr_738 = new _SafeCls_52(param1.url);
         if(!this._SafeStr_301)
         {
            this._SafeStr_301 = [];
         }
         this._SafeStr_841 = param3;
      }
      
      public function _parseOptions(param1:Object) : Array
      {
         var _loc3_:String = null;
         this.preventCache = param1[_SafeCls_73._SafeStr_599];
         this._SafeStr_460 = param1[_SafeCls_73._SafeStr_454];
         this._SafeStr_573 = int(int(param1[_SafeCls_73._SafeStr_572])) || 0;
         this.maxTries = int(param1[_SafeCls_73._SafeStr_640]) || 3;
         this.weight = int(int(param1[_SafeCls_73._SafeStr_680])) || 1;
         var _loc2_:Array = _SafeCls_73._SafeStr_780.concat(this._SafeStr_301);
         this._SafeStr_800 = [];
         for(_loc3_ in param1)
         {
            if(_loc2_.indexOf(_loc3_) == -1)
            {
               this._SafeStr_800.push(this + ": got a wrong property name: " + _loc3_ + ", with value:" + param1[_loc3_]);
            }
         }
         return this._SafeStr_800;
      }
      
      public function get content() : *
      {
         return this._SafeStr_131;
      }
      
      public function load() : void
      {
         var _loc1_:String = null;
         if(this.preventCache)
         {
            _loc1_ = "BulkLoaderNoCache=" + this._SafeStr_841 + "_" + int(Math.random() * 100 * getTimer());
            if(this.url.url.indexOf("?") == -1)
            {
               this.url.url += "?" + _loc1_;
            }
            else
            {
               this.url.url += "&" + _loc1_;
            }
         }
         this._SafeStr_712 = true;
         this._SafeStr_441 = getTimer();
      }
      
      public function _SafeStr_354(param1:HTTPStatusEvent) : void
      {
         this._SafeStr_624 = param1.status;
         dispatchEvent(param1);
      }
      
      public function _SafeStr_266(param1:*) : void
      {
         this._SafeStr_234 = param1.bytesLoaded;
         this._SafeStr_184 = param1.bytesTotal;
         this._SafeStr_510 = this._SafeStr_184 - this.bytesLoaded;
         this._SafeStr_280 = this._SafeStr_234 / this._SafeStr_184;
         this._SafeStr_871 = this._SafeStr_280 * this.weight;
         dispatchEvent(param1);
      }
      
      public function onCompleteHandler(param1:Event) : void
      {
         this._SafeStr_575 = getTimer();
         this._SafeStr_410 = (this._SafeStr_575 - this._SafeStr_674) / 1000;
         if(this._SafeStr_410 == 0)
         {
            this._SafeStr_410 = 0.1;
         }
         this._SafeStr_592 = _SafeCls_73._SafeStr_226(this.bytesTotal / 1024 / this._SafeStr_410);
         this.status = _SafeStr_326;
         this._SafeStr_360 = true;
         dispatchEvent(param1);
         param1.stopPropagation();
      }
      
      public function onErrorHandler(param1:ErrorEvent) : void
      {
         ++this._SafeStr_509;
         param1.stopPropagation();
         if(this._SafeStr_509 < this.maxTries)
         {
            this.status = null;
            this.load();
         }
         else
         {
            this.status = _SafeStr_283;
            this._SafeStr_633 = param1;
            this._SafeStr_865(this._SafeStr_633);
         }
      }
      
      public function _SafeStr_865(param1:ErrorEvent) : void
      {
         this.status = _SafeStr_283;
         dispatchEvent(new ErrorEvent(_SafeCls_73.ERROR,true,false,param1.text));
      }
      
      public function _SafeStr_205(param1:Error) : ErrorEvent
      {
         return new ErrorEvent(_SafeCls_73.ERROR,false,false,param1.message);
      }
      
      public function _SafeStr_187(param1:ErrorEvent) : void
      {
         this.status = _SafeStr_283;
         this._SafeStr_633 = param1 as ErrorEvent;
         param1.stopPropagation();
         this._SafeStr_865(this._SafeStr_633);
      }
      
      public function onStartedHandler(param1:Event) : void
      {
         this._SafeStr_674 = getTimer();
         this._SafeStr_766 = _SafeCls_73._SafeStr_226((this._SafeStr_674 - this._SafeStr_441) / 1000);
         this.status = _SafeStr_452;
         dispatchEvent(param1);
      }
      
      override public function toString() : String
      {
         return "LoadingItem url: " + this.url.url + ", type:" + this._SafeStr_801 + ", status: " + this.status;
      }
      
      public function stop() : void
      {
         if(this._SafeStr_360)
         {
            return;
         }
         this.status = _SafeStr_343;
         this._SafeStr_712 = false;
      }
      
      public function cleanListeners() : void
      {
      }
      
      public function isVideo() : Boolean
      {
         return false;
      }
      
      public function isSound() : Boolean
      {
         return false;
      }
      
      public function isText() : Boolean
      {
         return false;
      }
      
      public function _SafeStr_1240() : Boolean
      {
         return false;
      }
      
      public function isImage() : Boolean
      {
         return false;
      }
      
      public function isSWF() : Boolean
      {
         return false;
      }
      
      public function _SafeStr_1320() : Boolean
      {
         return false;
      }
      
      public function isStreamable() : Boolean
      {
         return false;
      }
      
      public function destroy() : void
      {
         this._SafeStr_131 = null;
      }
      
      public function get bytesTotal() : int
      {
         return this._SafeStr_184;
      }
      
      public function get bytesLoaded() : int
      {
         return this._SafeStr_234;
      }
      
      public function get bytesRemaining() : int
      {
         return this._SafeStr_510;
      }
      
      public function get _SafeStr_433() : Number
      {
         return this._SafeStr_280;
      }
      
      public function get _SafeStr_1242() : Number
      {
         return this._SafeStr_871;
      }
      
      public function get priority() : int
      {
         return this._SafeStr_573;
      }
      
      public function get type() : String
      {
         return this._SafeStr_801;
      }
      
      public function get _SafeStr_1235() : Boolean
      {
         return this._SafeStr_360;
      }
      
      public function get _SafeStr_1295() : int
      {
         return this._SafeStr_787;
      }
      
      public function get _SafeStr_1324() : int
      {
         return this._SafeStr_441;
      }
      
      public function get _SafeStr_1144() : Number
      {
         return this._SafeStr_674;
      }
      
      public function get _SafeStr_1199() : Number
      {
         return this._SafeStr_766;
      }
      
      public function get _SafeStr_653() : int
      {
         return this._SafeStr_575;
      }
      
      public function get _SafeStr_1267() : int
      {
         return this._SafeStr_410;
      }
      
      public function get speed() : Number
      {
         return this._SafeStr_592;
      }
      
      public function get httpStatus() : int
      {
         return this._SafeStr_624;
      }
      
      public function get id() : String
      {
         return this._SafeStr_460;
      }
      
      public function get hostName() : String
      {
         return this._SafeStr_738.host;
      }
      
      public function get _SafeStr_1138() : String
      {
         var _loc1_:Number = this._SafeStr_184 / 1024;
         if(_loc1_ < 1024)
         {
            return int(_loc1_) + " kb";
         }
         return (_loc1_ / 1024).toPrecision(3) + " mb";
      }
      
      public function _SafeStr_734() : String
      {
         return "Item url: " + this.url.url + "(s), total time: " + (this._SafeStr_575 / 1000).toPrecision(3) + "(s), download time: " + this._SafeStr_410.toPrecision(3) + "(s), latency:" + this._SafeStr_766 + "(s), speed: " + this._SafeStr_592 + " kb/s, size: " + this._SafeStr_1138;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_52 = "80"
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_75 = "11"
 * @identifier _SafePkg_53 = "0N"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafePkg_76 = "48"
 * @identifier _SafeStr_131 = "each"
 * @identifier _SafeStr_184 = "[5"
 * @identifier _SafeStr_187 = "!@"
 * @identifier _SafeStr_205 = ">P"
 * @identifier _SafeStr_226 = " set"
 * @identifier _SafeStr_234 = "4%"
 * @identifier _SafeStr_266 = "!C"
 * @identifier _SafeStr_280 = "`,"
 * @identifier _SafeStr_283 = "&9"
 * @identifier _SafeStr_301 = "8="
 * @identifier _SafeStr_326 = "=L"
 * @identifier _SafeStr_343 = "<&"
 * @identifier _SafeStr_354 = "3E"
 * @identifier _SafeStr_360 = "@5"
 * @identifier _SafeStr_410 = "4,"
 * @identifier _SafeStr_422 = "%;"
 * @identifier _SafeStr_433 = "04"
 * @identifier _SafeStr_441 = " 8"
 * @identifier _SafeStr_452 = "&H"
 * @identifier _SafeStr_454 = "9@"
 * @identifier _SafeStr_460 = "\"5"
 * @identifier _SafeStr_509 = "4C"
 * @identifier _SafeStr_510 = "-7"
 * @identifier _SafeStr_572 = "^2"
 * @identifier _SafeStr_573 = "`<"
 * @identifier _SafeStr_575 = "^3"
 * @identifier _SafeStr_592 = "9A"
 * @identifier _SafeStr_599 = "<@"
 * @identifier _SafeStr_624 = "\'4"
 * @identifier _SafeStr_633 = "3B"
 * @identifier _SafeStr_640 = "3T"
 * @identifier _SafeStr_653 = "&8"
 * @identifier _SafeStr_674 = "8?"
 * @identifier _SafeStr_680 = "^O"
 * @identifier _SafeStr_712 = "<-"
 * @identifier _SafeStr_734 = "26"
 * @identifier _SafeStr_738 = "-%"
 * @identifier _SafeStr_766 = "0?"
 * @identifier _SafeStr_780 = "\'7"
 * @identifier _SafeStr_787 = "`H"
 * @identifier _SafeStr_800 = "[M"
 * @identifier _SafeStr_801 = "\"+"
 * @identifier _SafeStr_841 = ";O"
 * @identifier _SafeStr_865 = "\'+"
 * @identifier _SafeStr_871 = " L"
 * @identifier _SafeStr_1138 = "function"
 * @identifier _SafeStr_1144 = "%?"
 * @identifier _SafeStr_1199 = "\"\""
 * @identifier _SafeStr_1235 = "%="
 * @identifier _SafeStr_1240 = "\'@"
 * @identifier _SafeStr_1242 = ">\""
 * @identifier _SafeStr_1267 = "!1"
 * @identifier _SafeStr_1295 = "]?"
 * @identifier _SafeStr_1320 = "-<"
 * @identifier _SafeStr_1324 = "[O"
 */
