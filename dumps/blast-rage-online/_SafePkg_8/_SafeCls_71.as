package _SafePkg_8
{
   import _SafePkg_41._SafeCls_40;
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.XMLSocket;
   import flash.system.Security;
   
   public class _SafeCls_71 extends EventDispatcher
   {
      
      protected var _SafeStr_146:XMLSocket;
      
      protected var _SafeStr_859:String = null;
      
      protected var _SafeStr_404:Boolean = false;
      
      protected var _SafeStr_362:String;
      
      protected var _SafeStr_371:int;
      
      protected var _SafeStr_370:Boolean;
      
      protected var _SafeStr_332:String;
      
      protected var _SafeStr_306:Array;
      
      protected var _SafeStr_1308:Array;
      
      protected var _SafeStr_402:String;
      
      protected var _SafeStr_628:String;
      
      protected var _SafeStr_505:String;
      
      protected var _SafeStr_1001:String;
      
      protected var _SafeStr_423:Boolean = false;
      
      protected var _SafeStr_654:Boolean = false;
      
      protected var _SafeStr_620:Array;
      
      public function _SafeCls_71()
      {
         super();
         this._SafeStr_620 = new Array();
         this._SafeStr_306 = new Array();
         this._SafeStr_146 = new XMLSocket();
         this._SafeStr_146.addEventListener(Event.CONNECT,this._SafeStr_1026,false,0,true);
         this._SafeStr_146.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_1081,false,0,true);
         this._SafeStr_146.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this._SafeStr_1060,false,0,true);
         this._SafeStr_146.addEventListener(Event.CLOSE,this._SafeStr_831,false,0,true);
         this._SafeStr_146.addEventListener(DataEvent.DATA,this._SafeStr_1141,false,0,true);
      }
      
      public function get url() : String
      {
         return this._SafeStr_362;
      }
      
      public function get port() : int
      {
         return this._SafeStr_371;
      }
      
      public function get connected() : Boolean
      {
         return this._SafeStr_146.connected;
      }
      
      public function get _SafeStr_1206() : Boolean
      {
         return this._SafeStr_370;
      }
      
      public function get _SafeStr_145() : String
      {
         return this._SafeStr_332;
      }
      
      public function get _SafeStr_1340() : Array
      {
         return this._SafeStr_306.concat();
      }
      
      public function get _SafeStr_1293() : String
      {
         return this._SafeStr_402;
      }
      
      public function get _SafeStr_471() : String
      {
         return this._SafeStr_628;
      }
      
      public function set _SafeStr_471(param1:String) : void
      {
         this._SafeStr_628 = param1;
      }
      
      public function get username() : String
      {
         return this._SafeStr_505;
      }
      
      public function get _SafeStr_1327() : Boolean
      {
         return this._SafeStr_423;
      }
      
      public function get _SafeStr_1260() : Boolean
      {
         return this._SafeStr_654;
      }
      
      public function _SafeStr_1298() : void
      {
         this._SafeStr_654 = true;
      }
      
      public function _SafeStr_1329() : void
      {
         this._SafeStr_654 = false;
         while(this._SafeStr_620.length)
         {
            this._SafeStr_169(this._SafeStr_620.shift());
         }
      }
      
      protected function _SafeStr_169(param1:Event) : *
      {
         if(this._SafeStr_654)
         {
            this._SafeStr_620.push(param1);
         }
         else
         {
            dispatchEvent(param1);
         }
      }
      
      protected function connect() : void
      {
         if(!this.port || !this.url)
         {
            trace("No MMOcha Server specified.");
            return;
         }
         this._SafeStr_370 = true;
         trace("Connecting to MMOcha Server at [" + this._SafeStr_362 + "] on port [" + this._SafeStr_371 + "]");
         var _loc1_:String = "XMLSocket://" + this._SafeStr_362 + ":" + this._SafeStr_371;
         Security.loadPolicyFile(_loc1_);
         this._SafeStr_146.connect(this._SafeStr_362,this._SafeStr_371);
      }
      
      public function _SafeStr_1241() : void
      {
         if(!this.connected && !this._SafeStr_1206)
         {
            this.connect();
         }
      }
      
      public function _SafeStr_1005(param1:String = null, param2:int = -1) : void
      {
         if(this.connected)
         {
            if(this._SafeStr_362 == param1 && this._SafeStr_371 == param2)
            {
               trace("Already connected to MMOcha Server at [" + this._SafeStr_362 + "] on port [" + this._SafeStr_371 + "]");
               return;
            }
            this._SafeStr_521();
         }
         if(param1)
         {
            this._SafeStr_362 = param1;
         }
         if(param2 != -1)
         {
            this._SafeStr_371 = param2;
         }
         this.connect();
      }
      
      public function _SafeStr_521() : void
      {
         if(!this.connected)
         {
            return;
         }
         trace("Disconnecting from MMOcha Server");
         this._SafeStr_146.close();
         this._SafeStr_998();
      }
      
      protected function _SafeStr_998() : void
      {
         this._SafeStr_370 = false;
         this._SafeStr_332 = null;
         this._SafeStr_404 = false;
         this._SafeStr_306 = new Array();
         this._SafeStr_402 = null;
      }
      
      public function _SafeStr_1307() : void
      {
         this._SafeStr_859 = "_";
         this._SafeStr_491();
      }
      
      public function _SafeStr_729(param1:String, param2:Boolean, param3:int, param4:Array, param5:int, param6:int, param7:int, param8:int) : void
      {
         var _loc9_:String = null;
         var _loc10_:int = 0;
         this._SafeStr_402 = param1;
         if(param1 == "_")
         {
            this._SafeStr_146.send("0200_");
         }
         else
         {
            _loc9_ = "02";
            if(param2)
            {
               _loc9_ += 1;
            }
            else
            {
               _loc9_ += 0;
            }
            _loc9_ += "" + param3;
            _loc9_ = _loc9_ + (param1 + "[");
            _loc10_ = 0;
            while(_loc10_ < param4.length)
            {
               _loc9_ += "" + param4[_loc10_];
               if(_loc10_ < param4.length - 1)
               {
                  _loc9_ += ",";
               }
               _loc10_++;
            }
            _loc9_ += "]" + param5 + _SafeCls_40._SafeStr_106(param6,1) + _SafeCls_40._SafeStr_106(param7,1) + _SafeCls_40._SafeStr_106(param8,1);
            this._SafeStr_146.send(_loc9_);
         }
      }
      
      public function _SafeStr_790(param1:String) : void
      {
         trace("attempt to join room: " + param1);
         this._SafeStr_402 = param1;
         this._SafeStr_146.send("03" + param1);
      }
      
      public function _SafeStr_491() : void
      {
         this._SafeStr_146.send("01");
      }
      
      public function _SafeStr_1265(param1:String) : void
      {
         this._SafeStr_146.send("04" + param1);
      }
      
      public function _SafeStr_1243(param1:String, param2:String) : void
      {
         this._SafeStr_146.send("05" + param1 + "=" + param2);
      }
      
      public function _SafeStr_1239(param1:String, param2:String) : void
      {
         this._SafeStr_146.send("06" + param1 + ";" + param2);
      }
      
      public function _SafeStr_1275(param1:String, param2:int, param3:String) : void
      {
         this._SafeStr_146.send("0e" + param1 + ";" + param2 + ";" + param3);
      }
      
      public function _SafeStr_1217(param1:String, param2:int, param3:String) : void
      {
         this._SafeStr_146.send("0f" + param1 + ";" + param2 + ";" + param3);
      }
      
      public function _SafeStr_1332(param1:String, param2:String) : void
      {
         if(this._SafeStr_146.connected)
         {
            this._SafeStr_146.send("00" + param2 + param1);
         }
         else
         {
            trace("Not connected. Private message could not be sent.");
         }
      }
      
      public function _SafeStr_154(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(param1.charAt(0) == "0")
         {
            if(this._SafeStr_146.connected)
            {
               this._SafeStr_146.send(param1);
            }
            else
            {
               trace("Not connected. Message could not be sent.");
            }
         }
         else
         {
            _loc3_ = Math.random() * 60;
            while(_SafeCls_40.shift(param1.charAt(0),_loc3_) == "0")
            {
               _loc3_ = Math.random() * 60;
            }
            _loc2_ = _SafeCls_40._SafeStr_106(_loc3_,1) + _SafeCls_40.shift(param1,_loc3_);
            if(this._SafeStr_146.connected)
            {
               this._SafeStr_146.send(_loc2_);
            }
            else
            {
               trace("Not connected. Message could not be sent.");
            }
         }
      }
      
      public function _SafeStr_544(param1:String) : void
      {
         if(this._SafeStr_146.connected)
         {
            this._SafeStr_146.send("A" + param1);
         }
         else
         {
            trace("Not connected. Message could not be sent.");
         }
      }
      
      protected function _SafeStr_1141(param1:DataEvent) : void
      {
         var _loc2_:String = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:Array = null;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         var _loc14_:String = null;
         _loc2_ = param1.data;
         var _loc3_:String = _loc2_.substr(0,1);
         switch(_loc3_)
         {
            case "0":
               _loc7_ = _loc2_.substr(1,1);
               switch(_loc7_)
               {
                  case "1":
                     trace("Room listing: " + _loc2_);
                     _loc10_ = _loc2_.substr(2).split(";");
                     _loc4_ = 0;
                     while(_loc4_ < _loc10_.length)
                     {
                        if(_loc10_[_loc4_].length > 3)
                        {
                           _loc10_[_loc4_] = new _SafeCls_7(_loc10_[_loc4_]);
                        }
                        else
                        {
                           _loc10_.splice(_loc4_,1);
                           _loc4_--;
                        }
                        _loc4_++;
                     }
                     this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_269,false,false,null,null,_loc10_));
                     break;
                  case "4":
                     _loc11_ = {};
                     _loc11_.mapID = _loc2_.substr(2,1);
                     _loc11_.cycleMode = int(_loc2_.substr(3,1));
                     _loc11_.players = int(_loc2_.substr(4,1));
                     _loc11_.roundTime = int(_loc2_.substr(5));
                     this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_804,false,false,null,null,null,_loc11_));
                     break;
                  case "6":
                     _loc6_ = _loc2_.substr(2);
                     _loc12_ = int(_loc6_.indexOf("="));
                     if(_loc12_ > 0)
                     {
                        _loc13_ = _loc6_.substr(0,_loc12_);
                        _loc14_ = _loc6_.substr(_loc12_ + 1);
                        this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_781,false,false,_loc13_,_loc14_));
                     }
                     break;
                  case "9":
                     this._SafeStr_859 = null;
                     this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_217,false,false,null,_loc2_));
                     break;
                  case "e":
                  case "f":
                     dispatchEvent(new _SafeCls_67(_SafeCls_67._SafeStr_642,false,false,null,_loc2_));
                     break;
                  case "h":
                     dispatchEvent(new _SafeCls_67(_SafeCls_67._SafeStr_377,false,false,null,_loc2_));
                     break;
                  case "k":
                     dispatchEvent(new _SafeCls_67(_SafeCls_67._SafeStr_496,false,false,null,_loc2_));
               }
               break;
            case "C":
               _loc5_ = _loc2_.substr(1,3);
               _loc8_ = _loc2_.substr(4,1);
               if(this._SafeStr_404 && _loc5_ != this._SafeStr_332)
               {
                  this._SafeStr_306.push(_loc5_);
                  this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_355,false,false,_loc5_));
                  break;
               }
               this._SafeStr_332 = _loc5_;
               this._SafeStr_404 = true;
               this._SafeStr_306 = new Array();
               this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_389,false,false,_loc5_,_loc8_ + this._SafeStr_402));
               break;
            case "D":
               _loc5_ = _loc2_.substr(1,3);
               if(_loc5_ == this._SafeStr_332)
               {
                  this._SafeStr_306 = new Array();
                  this._SafeStr_402 = null;
                  this._SafeStr_370 = false;
                  this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_331));
                  break;
               }
               _loc4_ = 0;
               while(_loc4_ < this._SafeStr_306.length)
               {
                  if(this._SafeStr_306[_loc4_] == _loc5_)
                  {
                     this._SafeStr_306.splice(_loc4_,1);
                     this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_361,false,false,_loc5_));
                     break;
                  }
                  _loc4_++;
               }
               break;
            case "M":
               _loc5_ = _loc2_.substr(1,3);
               _loc9_ = _SafeCls_40._SafeStr_115(_loc2_.charAt(4));
               _loc6_ = _SafeCls_40._SafeStr_1205(_loc2_.substr(5),_loc9_);
               this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_367,false,false,_loc5_,_loc6_));
               break;
            case "U":
               _loc5_ = _loc2_.substr(1,3);
               _loc6_ = _loc2_.substr(4);
               this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_359,false,false,_loc5_,_loc6_));
               break;
            case "A":
               _loc5_ = _loc2_.substr(1,3);
               _loc6_ = _loc2_.substr(4);
               this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_209,false,false,_loc5_,_loc6_));
         }
      }
      
      protected function _SafeStr_1026(param1:Event) : void
      {
         trace("Connected to Server!");
         this._SafeStr_370 = false;
         this._SafeStr_332 = null;
         this._SafeStr_404 = false;
         this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_319));
      }
      
      protected function _SafeStr_1081(param1:IOErrorEvent) : void
      {
         trace("Failed to Connect to Server!");
         this._SafeStr_370 = false;
         this._SafeStr_332 = null;
         this._SafeStr_404 = false;
         this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_289));
      }
      
      protected function _SafeStr_1060(param1:SecurityErrorEvent) : void
      {
         trace("Failed to Connect to Server: " + param1.text);
         this._SafeStr_370 = false;
         this._SafeStr_332 = null;
         this._SafeStr_404 = false;
         this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_289));
      }
      
      protected function _SafeStr_831(param1:Event) : void
      {
         trace("Disconnected from Server!");
         this._SafeStr_998();
         this._SafeStr_169(new _SafeCls_67(_SafeCls_67._SafeStr_331));
      }
      
      public function authenticate(param1:String, param2:String) : void
      {
         var _loc3_:String = "09" + param1 + ";" + param2;
         if(this._SafeStr_146.connected)
         {
            this._SafeStr_146.send(_loc3_);
         }
         else
         {
            trace("Not connected. Message could not be sent.");
         }
      }
      
      public function _SafeStr_322(param1:String, param2:String, param3:String) : void
      {
         this._SafeStr_505 = param1;
         this._SafeStr_1001 = param2;
         this._SafeStr_423 = false;
         var _loc4_:_SafeCls_79 = new _SafeCls_79(_SafeCls_79._SafeStr_180,param1,param2,null,null,0,param3 + "&v=2");
         _loc4_.addEventListener(_SafeCls_68._SafeStr_180,this._SafeStr_1007);
      }
      
      public function _SafeStr_1283(param1:String, param2:int) : Boolean
      {
         var _loc3_:_SafeCls_79 = null;
         if(this._SafeStr_423 && Boolean(this._SafeStr_471))
         {
            _loc3_ = new _SafeCls_79(_SafeCls_79._SafeStr_272,this._SafeStr_505,this._SafeStr_1001,this._SafeStr_471,param1,param2);
            _loc3_.addEventListener(_SafeCls_68._SafeStr_272,this._SafeStr_982);
            return true;
         }
         if(!this._SafeStr_423)
         {
            trace("Could not submit stat " + param1 + ". Username is not authenticated");
         }
         else
         {
            trace("Could not submit stat " + param1 + ". No gameID has been set");
         }
         return false;
      }
      
      public function _SafeStr_1299(param1:String, param2:String = null) : void
      {
         if(!this._SafeStr_471)
         {
            trace("Could not retreive stat " + param1 + ". No gameID has been set");
            return;
         }
         if(!param2)
         {
            param2 = this._SafeStr_505;
         }
         var _loc3_:_SafeCls_79 = new _SafeCls_79(_SafeCls_79._SafeStr_277,param2,null,this._SafeStr_628,param1);
         _loc3_.addEventListener(_SafeCls_68._SafeStr_277,this._SafeStr_1012);
      }
      
      public function _SafeStr_1256(param1:String = null) : void
      {
         if(!this._SafeStr_471)
         {
            trace("Could not retreive stats. No gameID has been set");
            return;
         }
         if(!param1)
         {
            param1 = this._SafeStr_505;
         }
         var _loc2_:_SafeCls_79 = new _SafeCls_79(_SafeCls_79._SafeStr_281,param1,null,this._SafeStr_628);
         _loc2_.addEventListener(_SafeCls_68._SafeStr_281,this._SafeStr_915);
      }
      
      protected function _SafeStr_1155(param1:_SafeCls_68) : void
      {
         this._SafeStr_423 = !param1.error;
         this._SafeStr_169(param1);
         param1.target.removeEventListener(_SafeCls_68._SafeStr_209,this._SafeStr_1155);
      }
      
      protected function _SafeStr_1007(param1:_SafeCls_68) : void
      {
         this._SafeStr_423 = !param1.error;
         this._SafeStr_169(param1);
         param1.target.removeEventListener(_SafeCls_68._SafeStr_180,this._SafeStr_1007);
      }
      
      protected function _SafeStr_982(param1:_SafeCls_68) : void
      {
         this._SafeStr_169(param1);
         param1.target.removeEventListener(_SafeCls_68._SafeStr_272,this._SafeStr_982);
      }
      
      protected function _SafeStr_1012(param1:_SafeCls_68) : void
      {
         this._SafeStr_169(param1);
         param1.target.removeEventListener(_SafeCls_68._SafeStr_277,this._SafeStr_1012);
      }
      
      protected function _SafeStr_915(param1:_SafeCls_68) : void
      {
         this._SafeStr_169(param1);
         param1.target.removeEventListener(_SafeCls_68._SafeStr_281,this._SafeStr_915);
      }
      
      protected function _SafeStr_1348(param1:String) : String
      {
         var _loc2_:int = int(Math.random() * 9) + 1;
         var _loc3_:int = _loc2_ * _loc2_ % param1.length;
         return "" + _loc2_ + param1.substr(_loc3_) + param1.substr(0,_loc3_);
      }
      
      protected function _SafeStr_1335(param1:String) : String
      {
         var _loc2_:int = int(int(param1.charAt(0)));
         param1 = param1.substr(1);
         var _loc3_:int = param1.length - _loc2_ * _loc2_ % param1.length;
         return param1.substr(_loc3_) + param1.substr(0,_loc3_);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_7 = "8$"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_68 = "76"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_79 = "do"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_145 = "78"
 * @identifier _SafeStr_146 = "81"
 * @identifier _SafeStr_154 = "61"
 * @identifier _SafeStr_169 = "-$"
 * @identifier _SafeStr_180 = "^I"
 * @identifier _SafeStr_209 = "]9"
 * @identifier _SafeStr_217 = "<,"
 * @identifier _SafeStr_269 = "`5"
 * @identifier _SafeStr_272 = "8&"
 * @identifier _SafeStr_277 = "`D"
 * @identifier _SafeStr_281 = "%\'"
 * @identifier _SafeStr_289 = "84"
 * @identifier _SafeStr_306 = "[0"
 * @identifier _SafeStr_319 = "!;"
 * @identifier _SafeStr_322 = "65"
 * @identifier _SafeStr_331 = "5L"
 * @identifier _SafeStr_332 = "30"
 * @identifier _SafeStr_355 = "@B"
 * @identifier _SafeStr_359 = "2F"
 * @identifier _SafeStr_361 = "09"
 * @identifier _SafeStr_362 = "23"
 * @identifier _SafeStr_367 = "do "
 * @identifier _SafeStr_370 = "^4"
 * @identifier _SafeStr_371 = "<U"
 * @identifier _SafeStr_377 = "!2"
 * @identifier _SafeStr_389 = "@S"
 * @identifier _SafeStr_402 = "2R"
 * @identifier _SafeStr_404 = "\'J"
 * @identifier _SafeStr_423 = "@;"
 * @identifier _SafeStr_471 = "+U"
 * @identifier _SafeStr_491 = "?4"
 * @identifier _SafeStr_496 = "]G"
 * @identifier _SafeStr_505 = " O"
 * @identifier _SafeStr_521 = "[3"
 * @identifier _SafeStr_544 = "[!"
 * @identifier _SafeStr_620 = "?="
 * @identifier _SafeStr_628 = "+6"
 * @identifier _SafeStr_642 = ",,"
 * @identifier _SafeStr_654 = "-S"
 * @identifier _SafeStr_729 = "2!"
 * @identifier _SafeStr_781 = "1="
 * @identifier _SafeStr_790 = "9?"
 * @identifier _SafeStr_804 = "9;"
 * @identifier _SafeStr_831 = "15"
 * @identifier _SafeStr_859 = "34"
 * @identifier _SafeStr_915 = "@H"
 * @identifier _SafeStr_982 = "%+"
 * @identifier _SafeStr_998 = "!U"
 * @identifier _SafeStr_1001 = "9H"
 * @identifier _SafeStr_1005 = "95"
 * @identifier _SafeStr_1007 = "83"
 * @identifier _SafeStr_1012 = "00"
 * @identifier _SafeStr_1026 = "6T"
 * @identifier _SafeStr_1060 = "?+"
 * @identifier _SafeStr_1081 = "\'0"
 * @identifier _SafeStr_1141 = "`2"
 * @identifier _SafeStr_1155 = "5@"
 * @identifier _SafeStr_1205 = "%S"
 * @identifier _SafeStr_1206 = "implements"
 * @identifier _SafeStr_1217 = "8S"
 * @identifier _SafeStr_1239 = "\'V"
 * @identifier _SafeStr_1241 = "13"
 * @identifier _SafeStr_1243 = "7U"
 * @identifier _SafeStr_1256 = "4="
 * @identifier _SafeStr_1260 = "\"%"
 * @identifier _SafeStr_1265 = "4\""
 * @identifier _SafeStr_1275 = " true"
 * @identifier _SafeStr_1283 = "`9"
 * @identifier _SafeStr_1293 = "[C"
 * @identifier _SafeStr_1298 = "3#"
 * @identifier _SafeStr_1299 = "#9"
 * @identifier _SafeStr_1307 = "@\'"
 * @identifier _SafeStr_1308 = "!?"
 * @identifier _SafeStr_1327 = "[$"
 * @identifier _SafeStr_1329 = "]8"
 * @identifier _SafeStr_1332 = "3="
 * @identifier _SafeStr_1335 = "-H"
 * @identifier _SafeStr_1340 = "1O"
 * @identifier _SafeStr_1348 = "default"
 */
