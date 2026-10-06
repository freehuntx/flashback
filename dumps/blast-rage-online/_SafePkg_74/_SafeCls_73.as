package _SafePkg_74
{
   import _SafePkg_76.*;
   import flash.display.*;
   import flash.events.*;
   import flash.media.Sound;
   import flash.net.*;
   import flash.utils.*;
   
   public class _SafeCls_73 extends EventDispatcher
   {
      
      public static var _SafeStr_288:Object;
      
      public static const _SafeStr_463:String = "$Id$";
      
      public static const _SafeStr_753:String = "binary";
      
      public static const _SafeStr_358:String = "image";
      
      public static const _SafeStr_365:String = "movieclip";
      
      public static const _SafeStr_455:String = "sound";
      
      public static const _SafeStr_420:String = "text";
      
      public static const _SafeStr_426:String = "xml";
      
      public static const _SafeStr_450:String = "video";
      
      public static const _SafeStr_495:Array = [_SafeStr_450,_SafeStr_426,_SafeStr_420,_SafeStr_455,_SafeStr_365,_SafeStr_358,_SafeStr_753];
      
      public static var _SafeStr_1010:Array = ["swf","jpg","jpeg","gif","png","flv","mp3","xml","txt","js"];
      
      public static var _SafeStr_688:Array = ["jpg","jpeg","gif","png"];
      
      public static var _SafeStr_643:Array = ["swf"];
      
      public static var _SafeStr_727:Array = ["txt","js","php","asp","py"];
      
      public static var _SafeStr_656:Array = ["flv","f4v","f4p","mp4"];
      
      public static var _SafeStr_649:Array = ["mp3","f4a","f4b"];
      
      public static var _SafeStr_618:Array = ["xml"];
      
      public static const PROGRESS:String = "progress";
      
      public static const COMPLETE:String = "complete";
      
      public static const HTTP_STATUS:String = "httpStatus";
      
      public static const ERROR:String = "error";
      
      public static const SECURITY_ERROR:String = "securityError";
      
      public static const OPEN:String = "open";
      
      public static const _SafeStr_810:String = "canBeginPlaying";
      
      public static const _SafeStr_601:String = "checkPolicyFile";
      
      public static const _SafeStr_599:String = "preventCache";
      
      public static const _SafeStr_529:String = "headers";
      
      public static const _SafeStr_421:String = "context";
      
      public static const _SafeStr_454:String = "id";
      
      public static const _SafeStr_572:String = "priority";
      
      public static const _SafeStr_640:String = "maxTries";
      
      public static const _SafeStr_680:String = "weight";
      
      public static const _SafeStr_597:String = "pausedAtStart";
      
      public static const _SafeStr_780:Array = [_SafeStr_680,_SafeStr_640,_SafeStr_529,_SafeStr_454,_SafeStr_572,_SafeStr_599,"type"];
      
      public static var _SafeStr_321:int = 0;
      
      public static var _SafeStr_232:Object = {};
      
      public static const _SafeStr_984:int = 12;
      
      public static const _SafeStr_366:int = 0;
      
      public static const _SafeStr_325:int = 2;
      
      public static const _SafeStr_671:int = 3;
      
      public static const _SafeStr_296:int = 4;
      
      public static const _SafeStr_959:int = 10;
      
      public static const _SafeStr_886:int = _SafeStr_296;
      
      public static var _SafeStr_664:Object = {
         "image":_SafeCls_90,
         "movieclip":_SafeCls_90,
         "xml":_SafeCls_92,
         "video":_SafeCls_91,
         "sound":_SafeCls_93,
         "text":_SafeCls_89,
         "binary":_SafeCls_94
      };
      
      public var _SafeStr_541:String;
      
      public var _SafeStr_460:int;
      
      public var _SafeStr_166:Array;
      
      public var _SafeStr_486:Dictionary;
      
      public var _additionIndex:int = 0;
      
      public var _SafeStr_802:int = 12;
      
      public var _SafeStr_1004:int = 2;
      
      public var _SafeStr_202:Object;
      
      public var _SafeStr_743:Number = 0;
      
      public var _SafeStr_457:int = 0;
      
      public var _SafeStr_310:int = 0;
      
      public var _SafeStr_393:int = 0;
      
      public var _SafeStr_184:int = 0;
      
      public var _SafeStr_799:int = 0;
      
      public var _SafeStr_234:int = 0;
      
      public var _SafeStr_280:Number = 0;
      
      public var _SafeStr_461:Number;
      
      public var _SafeStr_718:Number;
      
      public var _SafeStr_761:Number;
      
      public var _SafeStr_637:Number;
      
      public var _SafeStr_441:int;
      
      public var _SafeStr_978:int;
      
      public var _SafeStr_779:int;
      
      public var _SafeStr_756:int;
      
      public var _SafeStr_592:Number;
      
      public var _SafeStr_653:Number;
      
      public var logLevel:int = 4;
      
      public var _SafeStr_700:Boolean = false;
      
      public var _SafeStr_536:Boolean;
      
      public var _SafeStr_372:Boolean;
      
      public var _SafeStr_524:Boolean = true;
      
      public var _SafeStr_661:Function;
      
      public var _SafeStr_747:Object;
      
      public function _SafeCls_73(param1:String, param2:int = 12, param3:int = 4)
      {
         var _SafeStr_239:String = param1;
         var _SafeStr_429:int = param2;
         var _SafeCls_22:int = param3;
         this._SafeStr_166 = [];
         this._SafeStr_486 = new Dictionary(true);
         this._SafeStr_661 = trace;
         super();
         if(Boolean(_SafeStr_232[_SafeStr_239]))
         {
            _SafeStr_857();
            throw new Error("BulkLoader with name\'" + _SafeStr_239 + "\' has already been created.");
         }
         if(!_SafeStr_239)
         {
            throw new Error("Cannot create a BulkLoader instance without a name");
         }
         _SafeStr_232[_SafeStr_239] = this;
         if(_SafeStr_429 > 0)
         {
            this._SafeStr_802 = _SafeStr_429;
         }
         this.logLevel = _SafeCls_22;
         this._SafeStr_541 = _SafeStr_239;
         ++_SafeStr_321;
         this._SafeStr_460 = _SafeStr_321;
         this._additionIndex = 0;
         addEventListener(_SafeCls_73.ERROR,function(param1:Event):void
         {
         },false,1,true);
      }
      
      public static function _SafeStr_1300(param1:int = 12, param2:int = 4) : _SafeCls_73
      {
         return new _SafeCls_73(_SafeCls_73._SafeStr_1129(),param1,param2);
      }
      
      public static function _SafeStr_1129() : String
      {
         return "BulkLoader-" + _SafeStr_321;
      }
      
      public static function _SafeStr_1311(param1:String) : _SafeCls_73
      {
         return _SafeCls_73._SafeStr_232[param1] as _SafeCls_73;
      }
      
      public static function _SafeStr_782(param1:*, param2:_SafeCls_73) : Boolean
      {
         var _loc3_:_SafeCls_75 = param2._SafeStr_259(param1);
         if(_loc3_)
         {
            return true;
         }
         return false;
      }
      
      public static function _SafeStr_1269(param1:*) : _SafeCls_73
      {
         var _loc2_:_SafeCls_73 = null;
         for each(_loc2_ in _SafeStr_232)
         {
            if(_SafeCls_73._SafeStr_782(param1,_loc2_))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function _SafeStr_1345(param1:String, param2:String, param3:Class = null) : Boolean
      {
         var _loc4_:Array = null;
         if(param1.charAt(0) == ".")
         {
            param1 = param1.substring(1);
         }
         if(!_SafeStr_288)
         {
            _SafeStr_288 = {};
         }
         if(_SafeStr_495.indexOf(param2) == -1)
         {
            if(!Boolean(param3))
            {
               throw new Error("[BulkLoader]: When adding a new type and extension, you must determine which class to use");
            }
            _SafeStr_664[param2] = param3;
            if(!_SafeStr_288[param2])
            {
               _SafeStr_288[param2] = [];
               _SafeStr_495.push(param2);
            }
            _SafeStr_288[param2].push(param1);
            return true;
         }
         if(_SafeStr_288[param2])
         {
            _SafeStr_288[param2].push(param1);
         }
         var _loc5_:Object = {};
         _loc5_[_SafeStr_358] = _SafeStr_688;
         _loc5_[_SafeStr_365] = _SafeStr_643;
         _loc5_[_SafeStr_450] = _SafeStr_656;
         _loc5_[_SafeStr_455] = _SafeStr_649;
         _loc5_[_SafeStr_420] = _SafeStr_727;
         _loc5_[_SafeStr_426] = _SafeStr_618;
         _loc4_ = _loc5_[param2];
         if((Boolean(_loc4_)) && _loc4_.indexOf(param1) == -1)
         {
            _loc4_.push(param1);
            return true;
         }
         return false;
      }
      
      public static function _SafeStr_1291() : void
      {
         var _loc1_:_SafeCls_73 = null;
         for each(_loc1_ in _SafeStr_232)
         {
            _loc1_._SafeStr_837();
            _loc1_.clear();
            _loc1_ = null;
         }
         _SafeStr_232 = {};
      }
      
      public static function _SafeStr_1347() : void
      {
         var _loc1_:_SafeCls_73 = null;
         for each(_loc1_ in _SafeStr_232)
         {
            _loc1_._SafeStr_1195();
         }
      }
      
      public static function _SafeStr_226(param1:Number, param2:int = 2) : Number
      {
         var _loc3_:int = int(Math.pow(10,param2));
         return Math.round(param1 * _loc3_) / _loc3_;
      }
      
      public static function _SafeStr_976(param1:String) : String
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:String = param1.indexOf("?") > -1 ? param1.substring(0,param1.indexOf("?")) : param1;
         var _loc3_:String = _loc2_.substring(_loc2_.lastIndexOf("/"));
         var _loc4_:String = _loc3_.substring(_loc3_.lastIndexOf(".") + 1).toLowerCase();
         if(!Boolean(_loc4_))
         {
            _loc4_ = _SafeCls_73._SafeStr_420;
         }
         if(_loc4_ == _SafeCls_73._SafeStr_358 || _SafeCls_73._SafeStr_688.indexOf(_loc4_) > -1)
         {
            _loc5_ = _SafeCls_73._SafeStr_358;
         }
         else if(_loc4_ == _SafeCls_73._SafeStr_455 || _SafeCls_73._SafeStr_649.indexOf(_loc4_) > -1)
         {
            _loc5_ = _SafeCls_73._SafeStr_455;
         }
         else if(_loc4_ == _SafeCls_73._SafeStr_450 || _SafeCls_73._SafeStr_656.indexOf(_loc4_) > -1)
         {
            _loc5_ = _SafeCls_73._SafeStr_450;
         }
         else if(_loc4_ == _SafeCls_73._SafeStr_426 || _SafeCls_73._SafeStr_618.indexOf(_loc4_) > -1)
         {
            _loc5_ = _SafeCls_73._SafeStr_426;
         }
         else if(_loc4_ == _SafeCls_73._SafeStr_365 || _SafeCls_73._SafeStr_643.indexOf(_loc4_) > -1)
         {
            _loc5_ = _SafeCls_73._SafeStr_365;
         }
         else
         {
            for(_loc6_ in _SafeStr_288)
            {
               for each(_loc7_ in _SafeStr_288[_loc6_])
               {
                  if(_loc7_ == _loc4_)
                  {
                     _loc5_ = _loc6_;
                     break;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            if(!_loc5_)
            {
               _loc5_ = _SafeCls_73._SafeStr_420;
            }
         }
         return _loc5_;
      }
      
      public static function _SafeStr_1228(param1:String, param2:Object) : String
      {
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         if(!param2)
         {
            return param1;
         }
         var _loc3_:RegExp = /(?P<var_name>\{\s*[^\}]*\})/g;
         var _loc4_:Object = _loc3_.exec(param1);
         var _loc5_:String = _loc4_ ? _loc4_.var_name : null;
         var _loc6_:Array = [];
         var _loc7_:int = 0;
         while(Boolean(Boolean(_loc4_)) && Boolean(Boolean(_loc4_.var_name)))
         {
            if(_loc4_.var_name)
            {
               _loc5_ = _loc4_.var_name;
               _loc5_ = _loc5_.replace("{","");
               _loc5_ = _loc5_.replace("}","");
               _loc5_ = _loc5_.replace(/\s*/g,"");
            }
            _loc6_.push({
               "start":_loc4_.index,
               "end":_loc4_.index + _loc4_.var_name.length,
               "changeTo":param2[_loc5_]
            });
            _loc7_++;
            if(_loc7_ > 400)
            {
               break;
            }
            _loc4_ = _loc3_.exec(param1);
            _loc5_ = _loc4_ ? _loc4_.var_name : null;
         }
         if(_loc6_.length == 0)
         {
            return param1;
         }
         var _loc8_:Array = [];
         var _loc11_:String = param1.substr(0,_loc6_[0].start);
         for each(_loc10_ in _loc6_)
         {
            if(_loc9_)
            {
               _loc11_ = param1.substring(_loc9_.end,_loc10_.start);
            }
            _loc8_.push(_loc11_);
            _loc8_.push(_loc10_.changeTo);
            _loc9_ = _loc10_;
         }
         _loc8_.push(param1.substring(_loc10_.end));
         return _loc8_.join("");
      }
      
      public static function _SafeStr_689(param1:String) : String
      {
         if(param1.lastIndexOf("/") == param1.length - 1)
         {
            return _SafeStr_689(param1.substring(0,param1.length - 1));
         }
         var _loc2_:int = param1.lastIndexOf("/") + 1;
         var _loc3_:String = param1.substring(_loc2_);
         var _loc4_:int = int(_loc3_.indexOf("."));
         if(_loc4_ == -1)
         {
            if(_loc3_.indexOf("?") > -1)
            {
               _loc4_ = int(_loc3_.indexOf("?"));
            }
            else
            {
               _loc4_ = int(_loc3_.length);
            }
         }
         return _loc3_.substring(0,_loc4_);
      }
      
      public static function _SafeStr_857() : void
      {
         var _SafeStr_429:String = null;
         var _SafeStr_239:Array = [];
         for each(_SafeStr_429 in _SafeCls_73._SafeStr_232)
         {
            _SafeStr_239.push(_SafeStr_429);
         }
         _SafeStr_239.sort();
         trace("All loaders");
         _SafeStr_239.forEach(function(param1:*, ... rest):void
         {
            trace("\t",param1);
         });
         trace("===========");
      }
      
      public static function _SafeStr_1301() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in _SafeCls_73._SafeStr_232)
         {
            _loc1_++;
         }
         trace("BulkLoader has ",_loc1_,"instances");
      }
      
      public static function _SafeStr_1268() : void
      {
         try
         {
            throw new Error("stack trace");
         }
         catch(e:Error)
         {
            trace(e.getStackTrace());
         }
      }
      
      public function _SafeStr_1271(param1:*, param2:Boolean = true) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc4_:_SafeCls_73 = null;
         if(param2)
         {
            _loc3_ = _SafeStr_232;
         }
         else
         {
            _loc3_ = [this];
         }
         for each(_loc4_ in _loc3_)
         {
            if(_SafeStr_782(param1,_loc4_))
            {
               return true;
            }
         }
         return false;
      }
      
      public function add(param1:*, param2:Object = null) : _SafeCls_75
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         if(!this._SafeStr_541)
         {
            throw new Error("[BulkLoader] Cannot use an instance that has been cleared from memory (.clear())");
         }
         if(!param1 || !String(param1))
         {
            throw new Error("[BulkLoader] Cannot add an item with a null url");
         }
         param2 ||= {};
         if(param1 is String)
         {
            param1 = new URLRequest(_SafeCls_73._SafeStr_1228(param1,this._SafeStr_747));
            if(param2[_SafeStr_529])
            {
               param1.requestHeaders = param2[_SafeStr_529];
            }
         }
         else if(!param1 is URLRequest)
         {
            throw new Error("[BulkLoader] cannot add object with bad type for url:\'" + param1.url);
         }
         var _loc3_:_SafeCls_75 = this._SafeStr_259(param2[_SafeStr_454]);
         if(_loc3_)
         {
            this._SafeStr_153("Add received an already added id: " + param2[_SafeStr_454] + ", not adding a new item");
            return _loc3_;
         }
         if(param2["type"])
         {
            _loc4_ = param2["type"].toLowerCase();
            if(_SafeStr_495.indexOf(_loc4_) == -1)
            {
               this._SafeStr_153("add received an unknown type:",_loc4_,"and will cast it to text",_SafeStr_671);
            }
         }
         if(!_loc4_)
         {
            _loc4_ = _SafeStr_976(param1.url);
         }
         ++this._additionIndex;
         _loc3_ = new _SafeStr_664[_loc4_](param1,_loc4_,_SafeStr_321 + "_" + String(this._additionIndex));
         if(!param2["id"] && this._SafeStr_700)
         {
            param2["id"] = _SafeStr_689(param1.url);
            this._SafeStr_153("Adding automatic id from file name for item:",_loc3_,"( id= " + param2["id"] + " )");
         }
         var _loc5_:Array = _loc3_._parseOptions(param2);
         for each(_loc6_ in _loc5_)
         {
            this._SafeStr_153(_loc6_,_SafeStr_671);
         }
         this._SafeStr_153("Added",_loc3_,_SafeStr_366);
         _loc3_._SafeStr_787 = getTimer();
         _loc3_._additionIndex = this._additionIndex;
         _loc3_.addEventListener(Event.COMPLETE,this._SafeStr_715,false,int.MIN_VALUE,true);
         _loc3_.addEventListener(Event.COMPLETE,this._SafeStr_739,false,int.MAX_VALUE,true);
         _loc3_.addEventListener(ERROR,this._SafeStr_724,false,0,true);
         _loc3_.addEventListener(Event.OPEN,this._SafeStr_792,false,0,true);
         _loc3_.addEventListener(ProgressEvent.PROGRESS,this._SafeStr_662,false,0,true);
         this._SafeStr_166.push(_loc3_);
         this._SafeStr_457 += 1;
         this._SafeStr_393 += _loc3_.weight;
         this._SafeStr_786();
         this._SafeStr_372 = false;
         if(!this._SafeStr_524)
         {
            this._SafeStr_239();
         }
         return _loc3_;
      }
      
      public function start(param1:int = -1) : void
      {
         if(param1 > 0)
         {
            this._SafeStr_802 = param1;
         }
         if(this._SafeStr_202)
         {
            this._SafeStr_239();
            return;
         }
         this._SafeStr_441 = getTimer();
         this._SafeStr_202 = {};
         this._SafeStr_239();
         this._SafeStr_536 = true;
         this._SafeStr_756 = 0;
         this._SafeStr_779 = getTimer();
         this._SafeStr_524 = false;
      }
      
      public function _SafeStr_1325(param1:*) : Boolean
      {
         var _loc2_:_SafeCls_75 = this._SafeStr_259(param1);
         if(!_loc2_)
         {
            return false;
         }
         this._SafeStr_963(_loc2_);
         this._removeFromConnections(_loc2_);
         _loc2_.stop();
         _loc2_.cleanListeners();
         _loc2_.status = null;
         this._SafeStr_372 = false;
         _loc2_._SafeStr_787 = getTimer();
         _loc2_._additionIndex = this._additionIndex++;
         _loc2_.addEventListener(Event.COMPLETE,this._SafeStr_715,false,int.MIN_VALUE,true);
         _loc2_.addEventListener(Event.COMPLETE,this._SafeStr_739,false,int.MAX_VALUE,true);
         _loc2_.addEventListener(ERROR,this._SafeStr_724,false,0,true);
         _loc2_.addEventListener(Event.OPEN,this._SafeStr_792,false,0,true);
         _loc2_.addEventListener(ProgressEvent.PROGRESS,this._SafeStr_662,false,0,true);
         this._SafeStr_166.push(_loc2_);
         this._SafeStr_457 += 1;
         this._SafeStr_393 += _loc2_.weight;
         this._SafeStr_786();
         this._SafeStr_372 = false;
         this._SafeStr_1125(_loc2_);
         return true;
      }
      
      public function _SafeStr_1125(param1:*) : Boolean
      {
         var _loc3_:_SafeCls_75 = null;
         var _loc2_:_SafeCls_75 = this._SafeStr_259(param1);
         if(!_loc2_)
         {
            return false;
         }
         if(!this._SafeStr_202)
         {
            this._SafeStr_202 = {};
         }
         if(_loc2_.status == _SafeCls_75._SafeStr_326 || _loc2_.status == _SafeCls_75._SafeStr_452)
         {
            return true;
         }
         if(this._SafeStr_992() >= this.numConnections || this._SafeStr_732(_loc2_) >= this._SafeStr_1004)
         {
            _loc3_ = this._SafeStr_1100();
            this.pause(_loc3_);
            this._removeFromConnections(_loc3_);
            _loc3_.status = null;
         }
         _loc2_._SafeStr_573 = this._SafeStr_1101;
         this._SafeStr_239(_loc2_);
         return true;
      }
      
      public function _SafeStr_1100() : _SafeCls_75
      {
         var _loc1_:Array = this._SafeStr_905();
         _loc1_.sortOn(["priority","bytesRemaining","_additionIndex"],[Array.NUMERIC,Array.DESCENDING,Array.NUMERIC,Array.NUMERIC]);
         return _SafeCls_75(_loc1_[0]);
      }
      
      public function _SafeStr_993() : _SafeCls_75
      {
         var _SafeStr_239:_SafeCls_75 = null;
         this._SafeStr_905().forEach(function(param1:_SafeCls_75, ... rest):void
         {
            if(param1.status == _SafeCls_75._SafeStr_283 && param1._SafeStr_509 == param1.maxTries)
            {
               _removeFromConnections(param1);
            }
         });
         for each(_SafeStr_239 in this._SafeStr_166)
         {
            if(!_SafeStr_239._SafeStr_712 && _SafeStr_239.status != _SafeCls_75._SafeStr_343 && this._SafeStr_926(_SafeStr_239))
            {
               return _SafeStr_239;
            }
         }
         return null;
      }
      
      public function _SafeStr_239(param1:_SafeCls_75 = null) : Boolean
      {
         var _loc3_:Array = null;
         if(this._SafeStr_372)
         {
            return false;
         }
         if(!this._SafeStr_202)
         {
            this._SafeStr_202 = {};
         }
         var _loc2_:Boolean = false;
         param1 ||= this._SafeStr_993();
         if(param1)
         {
            _loc2_ = true;
            this._SafeStr_536 = true;
            if(this._SafeStr_926(param1))
            {
               _loc3_ = this._SafeStr_604(param1.hostName);
               _loc3_.push(param1);
               param1.load();
               this._SafeStr_153("Will load item:",param1,_SafeStr_325);
            }
            if(this._SafeStr_993())
            {
               this._SafeStr_239();
            }
         }
         return _loc2_;
      }
      
      public function _SafeStr_715(param1:Event) : void
      {
         var _loc2_:_SafeCls_75 = param1.target as _SafeCls_75;
         this._removeFromConnections(_loc2_);
         this._SafeStr_153("Loaded ",_loc2_,_SafeStr_325);
         this._SafeStr_153("Items to load",this._SafeStr_1182(),_SafeStr_366);
         _loc2_.cleanListeners();
         this._SafeStr_486[_loc2_.url.url] = _loc2_.content;
         var _loc3_:Boolean = this._SafeStr_239();
         var _loc4_:Boolean = this._SafeStr_919();
         if(_loc4_)
         {
            this._SafeStr_894();
         }
         param1.stopPropagation();
      }
      
      public function _SafeStr_739(param1:Event) : void
      {
         ++this._SafeStr_310;
      }
      
      public function _SafeStr_1034() : void
      {
         var _loc4_:_SafeCls_75 = null;
         this._SafeStr_718 = 0;
         this._SafeStr_761 = 0;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         this._SafeStr_637 = 0;
         var _loc3_:Number = 0;
         for each(_loc4_ in this._SafeStr_166)
         {
            if(_loc4_._SafeStr_360 && _loc4_.status != _SafeCls_75._SafeStr_283)
            {
               _loc1_ += _loc4_._SafeStr_1199;
               _loc2_ += _loc4_.bytesTotal;
               _loc3_++;
            }
         }
         this._SafeStr_637 = _loc2_ / 1024 / this._SafeStr_653;
         this._SafeStr_718 = _loc1_ / _loc3_;
         this._SafeStr_761 = this._SafeStr_637 / _loc3_;
      }
      
      public function _SafeStr_963(param1:_SafeCls_75) : Boolean
      {
         var _loc2_:int = int(this._SafeStr_166.indexOf(param1));
         if(_loc2_ > -1)
         {
            this._SafeStr_166.splice(_loc2_,1);
            if(param1._SafeStr_360)
            {
               --this._SafeStr_310;
            }
            --this._SafeStr_457;
            this._SafeStr_393 -= param1.weight;
            this._SafeStr_153("Removing " + param1,_SafeStr_366);
            param1.removeEventListener(Event.COMPLETE,this._SafeStr_715,false);
            param1.removeEventListener(Event.COMPLETE,this._SafeStr_739,false);
            param1.removeEventListener(ERROR,this._SafeStr_724,false);
            param1.removeEventListener(Event.OPEN,this._SafeStr_792,false);
            param1.removeEventListener(ProgressEvent.PROGRESS,this._SafeStr_662,false);
            return true;
         }
         return false;
      }
      
      public function _removeFromConnections(param1:*) : Boolean
      {
         if(!this._SafeStr_202 || this._SafeStr_732(param1) == 0)
         {
            return false;
         }
         var _loc2_:Array = this._SafeStr_604(param1.hostName);
         var _loc3_:int = int(_loc2_.indexOf(param1));
         if(_loc3_ > -1)
         {
            _loc2_.splice(_loc3_,1);
            return true;
         }
         return false;
      }
      
      public function _SafeStr_1245(param1:String) : int
      {
         var _loc2_:Array = this._SafeStr_604(param1);
         if(!_loc2_)
         {
            return 0;
         }
         return _loc2_.length;
      }
      
      public function _SafeStr_732(param1:_SafeCls_75) : int
      {
         var _loc2_:Array = this._SafeStr_604(param1.hostName);
         if(!_loc2_)
         {
            return 0;
         }
         return _loc2_.length;
      }
      
      public function _SafeStr_905() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in this._SafeStr_202)
         {
            _loc1_ = _loc1_.concat(this._SafeStr_202[_loc2_]);
         }
         return _loc1_;
      }
      
      public function _SafeStr_992() : int
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for(_loc2_ in this._SafeStr_202)
         {
            _loc1_ += this._SafeStr_202[_loc2_].length;
         }
         return _loc1_;
      }
      
      public function _SafeStr_604(param1:String) : Array
      {
         if(this._SafeStr_202[param1] == null)
         {
            this._SafeStr_202[param1] = [];
         }
         return this._SafeStr_202[param1];
      }
      
      public function _SafeStr_926(param1:_SafeCls_75) : Boolean
      {
         if(this._SafeStr_992() >= this.numConnections)
         {
            return false;
         }
         if(this._SafeStr_732(param1) >= this._SafeStr_1004)
         {
            return false;
         }
         return true;
      }
      
      public function _SafeStr_724(param1:ErrorEvent) : void
      {
         var _loc2_:_SafeCls_75 = param1.target as _SafeCls_75;
         this._removeFromConnections(_loc2_);
         this._SafeStr_153("After " + _loc2_._SafeStr_509 + " I am giving up on " + _loc2_.url.url,_SafeStr_296);
         this._SafeStr_153("Error loading",_loc2_,param1.text,_SafeStr_296);
         this._SafeStr_239();
         dispatchEvent(param1);
      }
      
      public function _SafeStr_792(param1:Event) : void
      {
         var _loc2_:_SafeCls_75 = param1.target as _SafeCls_75;
         this._SafeStr_153("Started loading",_loc2_,_SafeStr_325);
         dispatchEvent(param1);
      }
      
      public function _SafeStr_662(param1:Event = null) : void
      {
         var _loc2_:_SafeCls_88 = this._SafeStr_1186(this._SafeStr_166);
         this._SafeStr_234 = _loc2_.bytesLoaded;
         this._SafeStr_184 = _loc2_.bytesTotal;
         this._SafeStr_461 = _loc2_._SafeStr_347;
         this._SafeStr_280 = _loc2_._SafeStr_433;
         this._SafeStr_799 = _loc2_._SafeStr_394;
         this._SafeStr_743 = _loc2_._SafeStr_647;
         dispatchEvent(_loc2_);
      }
      
      public function _SafeStr_1186(param1:Array) : _SafeCls_88
      {
         var _loc11_:_SafeCls_75 = null;
         var _loc13_:* = undefined;
         this._SafeStr_234 = this._SafeStr_184 = this._SafeStr_799 = 0;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         for each(_loc13_ in param1)
         {
            _loc11_ = this._SafeStr_259(_loc13_);
            if(_loc11_)
            {
               _loc6_++;
               _loc3_ += _loc11_.weight;
               if(_loc11_.status == _SafeCls_75._SafeStr_452 || _loc11_.status == _SafeCls_75._SafeStr_326 || _loc11_.status == _SafeCls_75._SafeStr_343)
               {
                  _loc8_ += _loc11_._SafeStr_234;
                  _loc10_ += _loc11_._SafeStr_184;
                  _loc5_ += _loc11_._SafeStr_234 / _loc11_._SafeStr_184 * _loc11_.weight;
                  if(_loc11_.status == _SafeCls_75._SafeStr_326)
                  {
                     _loc7_++;
                  }
                  _loc4_++;
               }
            }
         }
         if(_loc4_ != _loc6_)
         {
            _loc9_ = int(Number.POSITIVE_INFINITY);
         }
         else
         {
            _loc9_ = _loc10_;
         }
         _loc2_ = _loc5_ / _loc3_;
         if(_loc3_ == 0)
         {
            _loc2_ = 0;
         }
         var _loc14_:_SafeCls_88 = new _SafeCls_88(PROGRESS);
         _loc14_._SafeStr_570(_loc8_,_loc9_,_loc9_,_loc7_,_loc6_,_loc2_);
         return _loc14_;
      }
      
      public function get numConnections() : int
      {
         return this._SafeStr_802;
      }
      
      public function get _SafeStr_1246() : Object
      {
         return this._SafeStr_486;
      }
      
      public function get items() : Array
      {
         return this._SafeStr_166.slice();
      }
      
      public function get name() : String
      {
         return this._SafeStr_541;
      }
      
      public function get _SafeStr_1276() : Number
      {
         return this._SafeStr_743;
      }
      
      public function get _SafeStr_345() : int
      {
         return this.items.length;
      }
      
      public function get _SafeStr_507() : int
      {
         return this._SafeStr_310;
      }
      
      public function set _SafeStr_507(param1:int) : void
      {
         this._SafeStr_310 = param1;
      }
      
      public function get _SafeStr_1255() : int
      {
         return this._SafeStr_393;
      }
      
      public function get bytesTotal() : int
      {
         return this._SafeStr_184;
      }
      
      public function get bytesLoaded() : int
      {
         return this._SafeStr_234;
      }
      
      public function get _SafeStr_394() : int
      {
         return this._SafeStr_799;
      }
      
      public function get _SafeStr_433() : Number
      {
         return this._SafeStr_280;
      }
      
      public function get _SafeStr_347() : Number
      {
         return this._SafeStr_461;
      }
      
      public function get _SafeStr_259() : Boolean
      {
         return this._SafeStr_536;
      }
      
      public function get _SafeStr_1342() : Boolean
      {
         return this._SafeStr_372;
      }
      
      public function get _SafeStr_1101() : int
      {
         var _loc2_:_SafeCls_75 = null;
         var _loc1_:int = int(int.MIN_VALUE);
         for each(_loc2_ in this._SafeStr_166)
         {
            if(_loc2_.priority > _loc1_)
            {
               _loc1_ = _loc2_.priority;
            }
         }
         return _loc1_;
      }
      
      public function get _SafeStr_1158() : Function
      {
         return this._SafeStr_661;
      }
      
      public function get _SafeStr_1047() : Boolean
      {
         return this._SafeStr_700;
      }
      
      public function set _SafeStr_1047(param1:Boolean) : void
      {
         this._SafeStr_700 = param1;
      }
      
      public function _SafeStr_1182() : Array
      {
         return this._SafeStr_166.filter(function(param1:_SafeCls_75, ... rest):Boolean
         {
            return param1.status != _SafeCls_75._SafeStr_326;
         });
      }
      
      public function get speed() : Number
      {
         var _loc1_:int = getTimer() - this._SafeStr_779;
         var _loc2_:int = (this.bytesLoaded - this._SafeStr_756) / 1024;
         var _loc3_:int = _loc2_ / (_loc1_ / 1000);
         this._SafeStr_779 = _loc1_;
         this._SafeStr_756 = this.bytesLoaded;
         return _loc3_;
      }
      
      public function set _SafeStr_1158(param1:Function) : void
      {
         this._SafeStr_661 = param1;
      }
      
      public function get id() : int
      {
         return this._SafeStr_460;
      }
      
      public function get _SafeStr_1109() : Object
      {
         return this._SafeStr_747;
      }
      
      public function set _SafeStr_1109(param1:Object) : void
      {
         this._SafeStr_747 = param1;
      }
      
      public function _SafeStr_1302(param1:String, param2:int) : Boolean
      {
         var _loc3_:_SafeCls_75 = this._SafeStr_259(param1);
         if(!_loc3_)
         {
            return false;
         }
         _loc3_._SafeStr_573 = param2;
         this._SafeStr_786();
         return true;
      }
      
      public function _SafeStr_786() : void
      {
         this._SafeStr_166.sortOn(["priority","_additionIndex"],[Array.NUMERIC | Array.DESCENDING,Array.NUMERIC]);
      }
      
      public function _SafeStr_257(param1:*, param2:Class, param3:Boolean = false) : *
      {
         var _SafeCls_36:_SafeCls_75;
         var _SafeStr_611:* = undefined;
         var _SafeStr_239:* = param1;
         var _SafeStr_429:Class = param2;
         var _SafeCls_22:Boolean = param3;
         if(!this._SafeStr_541)
         {
            throw new Error("[BulkLoader] Cannot use an instance that has been cleared from memory (.clear())");
         }
         _SafeCls_36 = this._SafeStr_259(_SafeStr_239);
         if(!_SafeCls_36)
         {
            return null;
         }
         try
         {
            if(_SafeCls_36._SafeStr_360 || _SafeCls_36.isStreamable() && _SafeCls_36.status == _SafeCls_75._SafeStr_452)
            {
               _SafeStr_611 = _SafeCls_36.content as _SafeStr_429;
               if(_SafeStr_611 == null)
               {
                  throw new Error("bad cast");
               }
               if(_SafeCls_22)
               {
                  this.remove(_SafeStr_239);
                  if(!this._SafeStr_524)
                  {
                     this._SafeStr_239();
                  }
               }
               return _SafeStr_611;
            }
         }
         catch(e:Error)
         {
            _SafeStr_153("Failed to get content with url: \'" + _SafeStr_239 + "\'as type:",_SafeStr_429,_SafeStr_296);
         }
         return null;
      }
      
      public function _SafeStr_1257(param1:String, param2:Boolean = false) : *
      {
         return this._SafeStr_257(param1,Object,param2);
      }
      
      public function _SafeStr_1314(param1:*, param2:Boolean = false) : XML
      {
         return XML(this._SafeStr_257(param1,XML,param2));
      }
      
      public function _SafeStr_315(param1:*, param2:Boolean = false) : String
      {
         return String(this._SafeStr_257(param1,String,param2));
      }
      
      public function _SafeStr_119(param1:*, param2:Boolean = false) : Sound
      {
         return Sound(this._SafeStr_257(param1,Sound,param2));
      }
      
      public function _SafeStr_1232(param1:String, param2:Boolean = false) : Bitmap
      {
         return Bitmap(this._SafeStr_257(param1,Bitmap,param2));
      }
      
      public function _SafeStr_1303(param1:String, param2:Boolean = false) : Loader
      {
         return Loader(this._SafeStr_257(param1,Loader,param2));
      }
      
      public function _SafeStr_1318(param1:String, param2:Boolean = false) : MovieClip
      {
         return MovieClip(this._SafeStr_257(param1,MovieClip,param2));
      }
      
      public function _SafeStr_1286(param1:String, param2:Boolean = false) : Sprite
      {
         return Sprite(this._SafeStr_257(param1,Sprite,param2));
      }
      
      public function _SafeStr_1349(param1:String, param2:Boolean = false) : AVM1Movie
      {
         return AVM1Movie(this._SafeStr_257(param1,AVM1Movie,param2));
      }
      
      public function _SafeStr_1218(param1:String, param2:Boolean = false) : NetStream
      {
         return NetStream(this._SafeStr_257(param1,NetStream,param2));
      }
      
      public function _SafeStr_1234(param1:String, param2:Boolean = false) : Object
      {
         var _loc3_:NetStream = this._SafeStr_1218(param1,param2);
         return Boolean(_loc3_) ? (this._SafeStr_259(param1) as Object).metaData : null;
      }
      
      public function _SafeStr_1285(param1:*, param2:Boolean = false) : BitmapData
      {
         var _SafeStr_239:* = param1;
         var _SafeStr_429:Boolean = param2;
         try
         {
            return this._SafeStr_1232(_SafeStr_239,_SafeStr_429).bitmapData;
         }
         catch(e:Error)
         {
            _SafeStr_153("Failed to get bitmapData with url:",_SafeStr_239,_SafeStr_296);
         }
         return null;
      }
      
      public function _SafeStr_1247(param1:*, param2:Boolean = false) : ByteArray
      {
         return ByteArray(this._SafeStr_257(param1,ByteArray,param2));
      }
      
      public function _SafeStr_1282(param1:*, param2:Boolean = false, param3:Function = null) : *
      {
         var _SafeCls_36:* = undefined;
         var _SafeStr_611:* = undefined;
         var _SafeStr_239:* = param1;
         var _SafeStr_429:Boolean = param2;
         var _SafeCls_22:Function = param3;
         try
         {
            _SafeCls_36 = this._SafeStr_257(_SafeStr_239,Object,_SafeStr_429);
            _SafeStr_611 = _SafeCls_22.apply(null,[_SafeCls_36]);
            return _SafeStr_611;
         }
         catch(e:Error)
         {
            _SafeStr_153("Failed to parse key:",_SafeStr_239,"with encodingFunction:" + _SafeCls_22,_SafeStr_296);
         }
         return null;
      }
      
      public function _SafeStr_1236(param1:*) : int
      {
         var _loc2_:_SafeCls_75 = this._SafeStr_259(param1);
         if(_loc2_)
         {
            return _loc2_.httpStatus;
         }
         return -1;
      }
      
      public function _SafeStr_919() : Boolean
      {
         return this._SafeStr_166.every(function(param1:_SafeCls_75, ... rest):Boolean
         {
            return param1._SafeStr_360;
         });
      }
      
      public function _SafeStr_894() : void
      {
         if(this._SafeStr_372)
         {
            return;
         }
         var _loc1_:_SafeCls_88 = new _SafeCls_88(COMPLETE);
         _loc1_._SafeStr_570(this.bytesLoaded,this.bytesTotal,this._SafeStr_394,this._SafeStr_310,this._SafeStr_345,this._SafeStr_347);
         var _loc2_:_SafeCls_88 = new _SafeCls_88(PROGRESS);
         _loc2_._SafeStr_570(this.bytesLoaded,this.bytesTotal,this._SafeStr_394,this._SafeStr_310,this._SafeStr_345,this._SafeStr_347);
         this._SafeStr_536 = false;
         this._SafeStr_978 = getTimer();
         this._SafeStr_653 = _SafeCls_73._SafeStr_226((this._SafeStr_978 - this._SafeStr_441) / 1000);
         this._SafeStr_1034();
         this._SafeStr_202 = {};
         this._SafeStr_734();
         this._SafeStr_372 = true;
         this._SafeStr_153("Finished all",_SafeStr_325);
         dispatchEvent(_loc2_);
         dispatchEvent(_loc1_);
      }
      
      public function _SafeStr_734() : String
      {
         var _SafeStr_429:Array;
         var _SafeCls_22:String;
         var _SafeStr_239:Array = [];
         _SafeStr_239.push("\n************************************");
         _SafeStr_239.push("All items loaded(" + this._SafeStr_345 + ")");
         _SafeStr_239.push("Total time(s):       " + this._SafeStr_653);
         _SafeStr_239.push("Average latency(s):  " + _SafeStr_226(this._SafeStr_718));
         _SafeStr_239.push("Average speed(kb/s): " + _SafeStr_226(this._SafeStr_761));
         _SafeStr_239.push("Median speed(kb/s):  " + _SafeStr_226(this._SafeStr_637));
         _SafeStr_239.push("KiloBytes total:     " + _SafeStr_226(this.bytesTotal / 1024));
         _SafeStr_429 = this._SafeStr_166.map(function(param1:_SafeCls_75, ... rest):String
         {
            return "\t" + param1._SafeStr_734();
         });
         _SafeStr_239.push(_SafeStr_429.join("\n"));
         _SafeStr_239.push("************************************");
         _SafeCls_22 = _SafeStr_239.join("\n");
         this._SafeStr_153(_SafeCls_22,_SafeStr_366);
         return _SafeCls_22;
      }
      
      public function _SafeStr_153(... rest) : void
      {
         var _loc2_:int = isNaN(rest[rest.length - 1]) ? 3 : int(int(rest.pop()));
         if(_loc2_ >= this.logLevel)
         {
            this._SafeStr_661("[BulkLoader] " + rest.join(" "));
         }
      }
      
      public function _SafeStr_259(param1:*) : _SafeCls_75
      {
         var _loc2_:_SafeCls_75 = null;
         if(!param1)
         {
            return null;
         }
         if(param1 is _SafeCls_75)
         {
            return param1;
         }
         for each(_loc2_ in this._SafeStr_166)
         {
            if(_loc2_._SafeStr_460 == param1 || _loc2_._SafeStr_738._SafeStr_631 == param1 || _loc2_.url == param1 || param1 is URLRequest && _loc2_.url.url == param1.url)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function remove(param1:*, param2:Boolean = false) : Boolean
      {
         var item:_SafeCls_75 = null;
         var allDone:Boolean = false;
         var key:* = param1;
         var internalCall:Boolean = param2;
         try
         {
            item = this._SafeStr_259(key);
            if(!item)
            {
               return false;
            }
            this._SafeStr_963(item);
            this._removeFromConnections(item);
            item.destroy();
            delete this._SafeStr_486[item.url.url];
            if(internalCall)
            {
               return true;
            }
            item = null;
            this._SafeStr_662();
            allDone = this._SafeStr_919();
            if(allDone)
            {
               this._SafeStr_894();
            }
            return true;
         }
         catch(e:Error)
         {
            _SafeStr_153("Error while removing item from key:" + key,e.getStackTrace(),_SafeStr_296);
         }
         return false;
      }
      
      public function _SafeStr_837() : void
      {
         var _loc1_:_SafeCls_75 = null;
         for each(_loc1_ in this._SafeStr_166.slice())
         {
            this.remove(_loc1_,true);
         }
         this._SafeStr_166 = [];
         this._SafeStr_202 = {};
         this._SafeStr_486 = new Dictionary();
         this._SafeStr_280 = this._SafeStr_461 = this._SafeStr_743 = 0;
      }
      
      public function clear() : void
      {
         this._SafeStr_837();
         delete _SafeStr_232[this.name];
         this._SafeStr_541 = null;
      }
      
      public function _SafeStr_1288() : Boolean
      {
         var _SafeStr_239:Array = this._SafeStr_166.filter(function(param1:_SafeCls_75, ... rest):Boolean
         {
            return param1.status == _SafeCls_75._SafeStr_343;
         });
         _SafeStr_239.forEach(function(param1:_SafeCls_75, ... rest):void
         {
            remove(param1);
         });
         this._SafeStr_239();
         return _SafeStr_239.length > 0;
      }
      
      public function _SafeStr_1333() : int
      {
         var _SafeStr_239:int = 0;
         var _SafeStr_429:Array = this._SafeStr_166.filter(function(param1:_SafeCls_75, ... rest):Boolean
         {
            return param1.status == _SafeCls_75._SafeStr_283;
         });
         _SafeStr_239 = int(_SafeStr_429.length);
         _SafeStr_429.forEach(function(param1:_SafeCls_75, ... rest):void
         {
            remove(param1);
         });
         this._SafeStr_239();
         return _SafeStr_239;
      }
      
      public function _SafeStr_1344() : Array
      {
         return this._SafeStr_166.filter(function(param1:_SafeCls_75, ... rest):Boolean
         {
            return param1.status == _SafeCls_75._SafeStr_283;
         });
      }
      
      public function pause(param1:*, param2:Boolean = false) : Boolean
      {
         var _loc3_:_SafeCls_75 = this._SafeStr_259(param1);
         if(!_loc3_)
         {
            return false;
         }
         if(_loc3_.status != _SafeCls_75._SafeStr_326)
         {
            _loc3_.stop();
         }
         this._SafeStr_153("STOPPED ITEM:",_loc3_,_SafeStr_325);
         var _loc4_:Boolean = this._removeFromConnections(_loc3_);
         if(param2)
         {
            this._SafeStr_239();
         }
         return _loc4_;
      }
      
      public function _SafeStr_1195() : void
      {
         var _loc1_:_SafeCls_75 = null;
         for each(_loc1_ in this._SafeStr_166)
         {
            this.pause(_loc1_);
         }
         this._SafeStr_536 = false;
         this._SafeStr_524 = true;
         this._SafeStr_153("Stopping all items",_SafeStr_325);
      }
      
      public function resume(param1:*) : Boolean
      {
         var _loc2_:_SafeCls_75 = param1 is _SafeCls_75 ? param1 : this._SafeStr_259(param1);
         this._SafeStr_524 = false;
         if(Boolean(_loc2_) && _loc2_.status == _SafeCls_75._SafeStr_343)
         {
            _loc2_.status = null;
            this._SafeStr_239();
            return true;
         }
         return false;
      }
      
      public function _SafeStr_1296() : Boolean
      {
         var _SafeStr_239:Boolean;
         this._SafeStr_153("Resuming all items",_SafeStr_366);
         _SafeStr_239 = false;
         this._SafeStr_166.forEach(function(param1:_SafeCls_75, ... rest):void
         {
            if(param1.status == _SafeCls_75._SafeStr_343)
            {
               resume(param1);
               affected = true;
            }
         });
         this._SafeStr_239();
         return _SafeStr_239;
      }
      
      override public function toString() : String
      {
         return "[BulkLoader] name:" + this.name + ", itemsTotal: " + this._SafeStr_345 + ", itemsLoaded: " + this._SafeStr_310;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_22 = " 2"
 * @identifier _SafeCls_36 = " 3"
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_75 = "11"
 * @identifier _SafeCls_88 = "71"
 * @identifier _SafeCls_89 = "\"T"
 * @identifier _SafeCls_90 = "12"
 * @identifier _SafeCls_91 = "@>"
 * @identifier _SafeCls_92 = "?B"
 * @identifier _SafeCls_93 = "?M"
 * @identifier _SafeCls_94 = "8D"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafePkg_76 = "48"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_153 = "0R"
 * @identifier _SafeStr_166 = "\'H"
 * @identifier _SafeStr_184 = "[5"
 * @identifier _SafeStr_202 = "44"
 * @identifier _SafeStr_226 = " set"
 * @identifier _SafeStr_232 = "if"
 * @identifier _SafeStr_234 = "4%"
 * @identifier _SafeStr_239 = " 0"
 * @identifier _SafeStr_257 = "=$"
 * @identifier _SafeStr_259 = "get"
 * @identifier _SafeStr_280 = "`,"
 * @identifier _SafeStr_283 = "&9"
 * @identifier _SafeStr_288 = "5?"
 * @identifier _SafeStr_296 = "]#"
 * @identifier _SafeStr_310 = "-8"
 * @identifier _SafeStr_315 = "case "
 * @identifier _SafeStr_321 = "4K"
 * @identifier _SafeStr_325 = "&2"
 * @identifier _SafeStr_326 = "=L"
 * @identifier _SafeStr_343 = "<&"
 * @identifier _SafeStr_345 = "\'R"
 * @identifier _SafeStr_347 = "native"
 * @identifier _SafeStr_358 = "`%"
 * @identifier _SafeStr_360 = "@5"
 * @identifier _SafeStr_365 = "&B"
 * @identifier _SafeStr_366 = "\"R"
 * @identifier _SafeStr_372 = "@&"
 * @identifier _SafeStr_393 = "\"8"
 * @identifier _SafeStr_394 = "`I"
 * @identifier _SafeStr_420 = "+;"
 * @identifier _SafeStr_421 = "3&"
 * @identifier _SafeStr_426 = "%J"
 * @identifier _SafeStr_429 = " 1"
 * @identifier _SafeStr_433 = "04"
 * @identifier _SafeStr_441 = " 8"
 * @identifier _SafeStr_450 = "2$"
 * @identifier _SafeStr_452 = "&H"
 * @identifier _SafeStr_454 = "9@"
 * @identifier _SafeStr_455 = "@D"
 * @identifier _SafeStr_457 = " use"
 * @identifier _SafeStr_460 = "\"5"
 * @identifier _SafeStr_461 = "`3"
 * @identifier _SafeStr_463 = "99"
 * @identifier _SafeStr_486 = "@Q"
 * @identifier _SafeStr_495 = "[?"
 * @identifier _SafeStr_507 = "5&"
 * @identifier _SafeStr_509 = "4C"
 * @identifier _SafeStr_524 = ",N"
 * @identifier _SafeStr_529 = "#\""
 * @identifier _SafeStr_536 = "67"
 * @identifier _SafeStr_541 = " ,"
 * @identifier _SafeStr_570 = "##"
 * @identifier _SafeStr_572 = "^2"
 * @identifier _SafeStr_573 = "`<"
 * @identifier _SafeStr_592 = "9A"
 * @identifier _SafeStr_597 = "1N"
 * @identifier _SafeStr_599 = "<@"
 * @identifier _SafeStr_601 = "&1"
 * @identifier _SafeStr_604 = "5;"
 * @identifier _SafeStr_611 = " 4"
 * @identifier _SafeStr_618 = "@="
 * @identifier _SafeStr_631 = "5T"
 * @identifier _SafeStr_637 = "\"A"
 * @identifier _SafeStr_640 = "3T"
 * @identifier _SafeStr_643 = "5K"
 * @identifier _SafeStr_647 = "^L"
 * @identifier _SafeStr_649 = "45"
 * @identifier _SafeStr_653 = "&8"
 * @identifier _SafeStr_656 = "=5"
 * @identifier _SafeStr_661 = "5%"
 * @identifier _SafeStr_662 = "else"
 * @identifier _SafeStr_664 = "8Q"
 * @identifier _SafeStr_671 = " J"
 * @identifier _SafeStr_680 = "^O"
 * @identifier _SafeStr_688 = "-2"
 * @identifier _SafeStr_689 = "%%"
 * @identifier _SafeStr_700 = "^-"
 * @identifier _SafeStr_712 = "<-"
 * @identifier _SafeStr_715 = "5D"
 * @identifier _SafeStr_718 = "-@"
 * @identifier _SafeStr_724 = ",D"
 * @identifier _SafeStr_727 = "?O"
 * @identifier _SafeStr_732 = "while"
 * @identifier _SafeStr_734 = "26"
 * @identifier _SafeStr_738 = "-%"
 * @identifier _SafeStr_739 = " F"
 * @identifier _SafeStr_743 = "-9"
 * @identifier _SafeStr_747 = ",G"
 * @identifier _SafeStr_753 = "03"
 * @identifier _SafeStr_756 = "[A"
 * @identifier _SafeStr_761 = ",?"
 * @identifier _SafeStr_779 = "^\'"
 * @identifier _SafeStr_780 = "\'7"
 * @identifier _SafeStr_782 = "=A"
 * @identifier _SafeStr_786 = "7@"
 * @identifier _SafeStr_787 = "`H"
 * @identifier _SafeStr_792 = "3A"
 * @identifier _SafeStr_799 = "1%"
 * @identifier _SafeStr_802 = "&@"
 * @identifier _SafeStr_810 = ",-"
 * @identifier _SafeStr_837 = "8H"
 * @identifier _SafeStr_857 = "@M"
 * @identifier _SafeStr_886 = "\"J"
 * @identifier _SafeStr_894 = "><"
 * @identifier _SafeStr_905 = "@#"
 * @identifier _SafeStr_919 = "25"
 * @identifier _SafeStr_926 = "0@"
 * @identifier _SafeStr_959 = "7J"
 * @identifier _SafeStr_963 = "0>"
 * @identifier _SafeStr_976 = "@G"
 * @identifier _SafeStr_978 = "6N"
 * @identifier _SafeStr_984 = "66"
 * @identifier _SafeStr_992 = "8I"
 * @identifier _SafeStr_993 = "&D"
 * @identifier _SafeStr_1004 = "4J"
 * @identifier _SafeStr_1010 = "%1"
 * @identifier _SafeStr_1034 = "1@"
 * @identifier _SafeStr_1047 = "`@"
 * @identifier _SafeStr_1100 = "6B"
 * @identifier _SafeStr_1101 = "<<"
 * @identifier _SafeStr_1109 = "1>"
 * @identifier _SafeStr_1125 = "=6"
 * @identifier _SafeStr_1129 = "<T"
 * @identifier _SafeStr_1158 = "8;"
 * @identifier _SafeStr_1182 = ";\""
 * @identifier _SafeStr_1186 = "3F"
 * @identifier _SafeStr_1195 = "\'6"
 * @identifier _SafeStr_1199 = "\"\""
 * @identifier _SafeStr_1218 = "#I"
 * @identifier _SafeStr_1228 = "->"
 * @identifier _SafeStr_1232 = "5C"
 * @identifier _SafeStr_1234 = ";?"
 * @identifier _SafeStr_1236 = "&J"
 * @identifier _SafeStr_1245 = "`T"
 * @identifier _SafeStr_1246 = "]1"
 * @identifier _SafeStr_1247 = "7F"
 * @identifier _SafeStr_1255 = ">5"
 * @identifier _SafeStr_1257 = ">T"
 * @identifier _SafeStr_1268 = "?"
 * @identifier _SafeStr_1269 = "=J"
 * @identifier _SafeStr_1271 = "\'E"
 * @identifier _SafeStr_1276 = "6<"
 * @identifier _SafeStr_1282 = "0<"
 * @identifier _SafeStr_1285 = "\"U"
 * @identifier _SafeStr_1286 = "8N"
 * @identifier _SafeStr_1288 = "6>"
 * @identifier _SafeStr_1291 = "&-"
 * @identifier _SafeStr_1296 = "#,"
 * @identifier _SafeStr_1300 = "<3"
 * @identifier _SafeStr_1301 = "2\""
 * @identifier _SafeStr_1302 = "3!"
 * @identifier _SafeStr_1303 = "56"
 * @identifier _SafeStr_1311 = "`#"
 * @identifier _SafeStr_1314 = "1;"
 * @identifier _SafeStr_1318 = "4I"
 * @identifier _SafeStr_1325 = ">?"
 * @identifier _SafeStr_1333 = "=>"
 * @identifier _SafeStr_1342 = ",0"
 * @identifier _SafeStr_1344 = "\"7"
 * @identifier _SafeStr_1345 = ";\'"
 * @identifier _SafeStr_1347 = "6+"
 * @identifier _SafeStr_1349 = "8\""
 */
