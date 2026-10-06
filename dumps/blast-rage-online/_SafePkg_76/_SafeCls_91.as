package _SafePkg_76
{
   import _SafePkg_74._SafeCls_73;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.utils.*;
   
   public class _SafeCls_91 extends _SafeCls_75
   {
      
      private var _SafeStr_807:NetConnection;
      
      public var _SafeStr_148:NetStream;
      
      public var _SafeStr_384:Sprite;
      
      public var _SafeStr_770:Boolean;
      
      public var pausedAtStart:Boolean = false;
      
      public var _SafeStr_862:Object;
      
      public var _SafeStr_591:Boolean = false;
      
      public function _SafeCls_91(param1:URLRequest, param2:String, param3:String)
      {
         _SafeStr_301 = [_SafeCls_73._SafeStr_601,_SafeCls_73._SafeStr_597];
         super(param1,param2,param3);
         _SafeStr_234 = 0;
         _SafeStr_184 = 0;
      }
      
      override public function _parseOptions(param1:Object) : Array
      {
         this.pausedAtStart = Boolean(param1[_SafeCls_73._SafeStr_597]);
         this._SafeStr_770 = Boolean(param1[_SafeCls_73._SafeStr_601]);
         return super._parseOptions(param1);
      }
      
      override public function load() : void
      {
         var customClient:Object;
         super.load();
         this._SafeStr_807 = new NetConnection();
         this._SafeStr_807.connect(null);
         this._SafeStr_148 = new NetStream(this._SafeStr_807);
         this._SafeStr_148.addEventListener(IOErrorEvent.IO_ERROR,onErrorHandler,false,0,true);
         this._SafeStr_148.addEventListener(NetStatusEvent.NET_STATUS,this._SafeStr_708,false,0,true);
         this._SafeStr_384 = new Sprite();
         this._SafeStr_384.addEventListener(Event.ENTER_FRAME,this._SafeStr_820,false,0,true);
         customClient = new Object();
         customClient.onCuePoint = function(... rest):void
         {
         };
         customClient.onMetaData = this._SafeStr_1099;
         customClient.onPlayStatus = function(... rest):void
         {
         };
         this._SafeStr_148.client = customClient;
         try
         {
            this._SafeStr_148.play(url.url,this._SafeStr_770);
         }
         catch(e:SecurityError)
         {
            _SafeStr_187(_SafeStr_205(e));
         }
         this._SafeStr_148.seek(0);
      }
      
      public function _SafeStr_820(param1:Event) : void
      {
         var _loc2_:Event = null;
         var _loc3_:Event = null;
         var _loc4_:ProgressEvent = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(_SafeStr_184 == _SafeStr_234 && _SafeStr_184 > 8)
         {
            if(this._SafeStr_384)
            {
               this._SafeStr_384.removeEventListener(Event.ENTER_FRAME,this._SafeStr_820,false);
            }
            this._SafeStr_832();
            _loc2_ = new Event(Event.COMPLETE);
            this.onCompleteHandler(_loc2_);
         }
         else if(Boolean(_SafeStr_184 == 0) && Boolean(this._SafeStr_148) && this._SafeStr_148.bytesTotal > 4)
         {
            _loc3_ = new Event(Event.OPEN);
            this.onStartedHandler(_loc3_);
            _SafeStr_234 = this._SafeStr_148.bytesLoaded;
            _SafeStr_184 = this._SafeStr_148.bytesTotal;
         }
         else if(this._SafeStr_148)
         {
            _loc4_ = new ProgressEvent(ProgressEvent.PROGRESS,false,false,this._SafeStr_148.bytesLoaded,this._SafeStr_148.bytesTotal);
            if(Boolean(this.isVideo()) && Boolean(this.metaData) && !this._SafeStr_591)
            {
               _loc5_ = getTimer() - _SafeStr_1144;
               if(_loc5_ > 100)
               {
                  _loc6_ = bytesLoaded / (_loc5_ / 1000);
                  _SafeStr_510 = _SafeStr_184 - bytesLoaded;
                  _loc7_ = _SafeStr_510 / (_loc6_ * 0.8);
                  _loc8_ = this.metaData.duration - this._SafeStr_148.bufferLength;
                  if(_loc8_ > _loc7_)
                  {
                     this._SafeStr_832();
                  }
               }
            }
            super._SafeStr_266(_loc4_);
         }
      }
      
      override public function onCompleteHandler(param1:Event) : void
      {
         _SafeStr_131 = this._SafeStr_148;
         super.onCompleteHandler(param1);
      }
      
      override public function onStartedHandler(param1:Event) : void
      {
         _SafeStr_131 = this._SafeStr_148;
         if(this.pausedAtStart && Boolean(this._SafeStr_148))
         {
            this._SafeStr_148.pause();
         }
         super.onStartedHandler(param1);
      }
      
      override public function stop() : void
      {
         try
         {
            if(this._SafeStr_148)
            {
               this._SafeStr_148.close();
            }
         }
         catch(e:Error)
         {
         }
         super.stop();
      }
      
      override public function cleanListeners() : void
      {
         if(this._SafeStr_148)
         {
            this._SafeStr_148.removeEventListener(IOErrorEvent.IO_ERROR,onErrorHandler,false);
            this._SafeStr_148.removeEventListener(NetStatusEvent.NET_STATUS,this._SafeStr_708,false);
         }
         if(this._SafeStr_384)
         {
            this._SafeStr_384.removeEventListener(Event.ENTER_FRAME,this._SafeStr_820,false);
            this._SafeStr_384 = null;
         }
      }
      
      override public function isVideo() : Boolean
      {
         return true;
      }
      
      override public function isStreamable() : Boolean
      {
         return true;
      }
      
      override public function destroy() : void
      {
         if(!this._SafeStr_148)
         {
         }
         this.stop();
         this.cleanListeners();
         this._SafeStr_148 = null;
         super.destroy();
      }
      
      internal function _SafeStr_708(param1:NetStatusEvent) : void
      {
         var _loc2_:Event = null;
         if(!this._SafeStr_148)
         {
            return;
         }
         this._SafeStr_148.removeEventListener(NetStatusEvent.NET_STATUS,this._SafeStr_708,false);
         if(param1.info.code == "NetStream.Play.Start")
         {
            _SafeStr_131 = this._SafeStr_148;
            _loc2_ = new Event(Event.OPEN);
            this.onStartedHandler(_loc2_);
         }
         else if(param1.info.code == "NetStream.Play.StreamNotFound")
         {
            onErrorHandler(_SafeStr_205(new Error("[VideoItem] NetStream not found at " + this.url.url)));
         }
      }
      
      internal function _SafeStr_1099(param1:*) : void
      {
         this._SafeStr_862 = param1;
      }
      
      public function get metaData() : Object
      {
         return this._SafeStr_862;
      }
      
      public function get checkPolicyFile() : Object
      {
         return this._SafeStr_770;
      }
      
      private function _SafeStr_832() : void
      {
         if(this._SafeStr_591)
         {
            return;
         }
         this._SafeStr_591 = true;
         var _loc1_:Event = new Event(_SafeCls_73._SafeStr_810);
         dispatchEvent(_loc1_);
      }
      
      public function get _SafeStr_1253() : Boolean
      {
         return this._SafeStr_591;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_75 = "11"
 * @identifier _SafeCls_91 = "@>"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafePkg_76 = "48"
 * @identifier _SafeStr_131 = "each"
 * @identifier _SafeStr_148 = "4U"
 * @identifier _SafeStr_184 = "[5"
 * @identifier _SafeStr_187 = "!@"
 * @identifier _SafeStr_205 = ">P"
 * @identifier _SafeStr_234 = "4%"
 * @identifier _SafeStr_266 = "!C"
 * @identifier _SafeStr_301 = "8="
 * @identifier _SafeStr_384 = "8<"
 * @identifier _SafeStr_510 = "-7"
 * @identifier _SafeStr_591 = "6A"
 * @identifier _SafeStr_597 = "1N"
 * @identifier _SafeStr_601 = "&1"
 * @identifier _SafeStr_708 = "89"
 * @identifier _SafeStr_770 = "3H"
 * @identifier _SafeStr_807 = "`"
 * @identifier _SafeStr_810 = ",-"
 * @identifier _SafeStr_820 = "3%"
 * @identifier _SafeStr_832 = "9U"
 * @identifier _SafeStr_862 = "4"
 * @identifier _SafeStr_1099 = "51"
 * @identifier _SafeStr_1144 = "%?"
 * @identifier _SafeStr_1253 = "#@"
 */
