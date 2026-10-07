package flashnet.rtmfp
{
   import flash.events.EventDispatcher;
   import flash.events.NetStatusEvent;
   import flash.utils.ByteArray;

   /**
    * Stand-in for flash.net.NetStream on RTMFP direct connections.
    *
    * Three flavours, matching Flash's behaviour:
    *  - publisher:   new NetStream(nc, NetStream.DIRECT_CONNECTIONS) + publish()
    *  - subscriber:  new NetStream(nc, farPeerID) + play()
    *  - peer stream: created by NetConnection for every remote subscriber and
    *                 handed to the publisher's client.onPeerConnect().
    *
    * send() serializes [handlerName, ...args] as AMF3; the receiving side
    * invokes client[handlerName](...args), like a real NetStream.
    */
   public class NetStream extends EventDispatcher
   {
      public static const DIRECT_CONNECTIONS:String = "directConnections";

      public static const CONNECT_TO_FMS:String = "connectToFMS";

      public var bufferTime:Number = 0;

      public var client:Object;

      public var _nc:Object;

      public var _sid:uint = 0;

      public var _subId:uint = 0;

      public var _farID:String = null;

      public var _mode:int = 0;

      public var _closed:Boolean = false;

      public function NetStream(connection:Object, peerID:String = "connectToFMS")
      {
         super();
         this.client = this;
         this._nc = connection;
         if(peerID != DIRECT_CONNECTIONS && peerID != CONNECT_TO_FMS)
         {
            this._farID = peerID;
         }
         if(connection != null)
         {
            this._sid = connection.fnRegisterStream(this);
         }
      }

      public function get farID() : String
      {
         return this._farID;
      }

      public function get peerStreams() : Array
      {
         if(this._nc == null)
         {
            return [];
         }
         return this._nc.fnPeerStreamsOf(this);
      }

      public function publish(name:String = null, type:String = null) : void
      {
         if(this._closed || this._nc == null)
         {
            return;
         }
         this._mode = 1;
         this._nc.fnPublish(this,name == null ? "" : name);
      }

      public function play(... rest) : void
      {
         if(this._closed || this._nc == null)
         {
            return;
         }
         this._mode = 2;
         var name:String = rest.length > 0 && rest[0] != null ? String(rest[0]) : "";
         this._nc.fnPlay(this,name);
      }

      public function send(handlerName:String, ... rest) : void
      {
         if(this._closed || this._nc == null || this._mode != 1)
         {
            return;
         }
         var payload:Array = [handlerName];
         var i:int = 0;
         while(i < rest.length)
         {
            payload.push(rest[i]);
            i++;
         }
         var bytes:ByteArray = new ByteArray();
         bytes.writeObject(payload);
         this._nc.fnSend(this,bytes);
      }

      public function close() : void
      {
         if(this._closed)
         {
            return;
         }
         this._closed = true;
         if(this._nc != null)
         {
            this._nc.fnCloseStream(this);
         }
      }

      public function receiveVideo(flag:Boolean) : void
      {
      }

      public function receiveAudio(flag:Boolean) : void
      {
      }

      public function attachAudio(source:Object) : void
      {
      }

      public function attachCamera(source:Object, snapshotMilliseconds:int = -1) : void
      {
      }

      public function fnDeliver(bytes:ByteArray) : void
      {
         if(this._closed)
         {
            return;
         }
         var payload:Array = null;
         try
         {
            bytes.position = 0;
            payload = bytes.readObject() as Array;
         }
         catch(e:Error)
         {
            trace("[flashnet] bad NetStream payload: " + e);
            return;
         }
         if(payload == null || payload.length == 0)
         {
            return;
         }
         var target:Object = this.client;
         if(target == null)
         {
            return;
         }
         var handlerName:String = String(payload[0]);
         var handler:Function = null;
         try
         {
            handler = target[handlerName] as Function;
         }
         catch(e2:Error)
         {
            handler = null;
         }
         if(handler == null)
         {
            trace("[flashnet] NetStream: no handler " + handlerName);
            return;
         }
         payload.shift();
         try
         {
            handler.apply(target,payload);
         }
         catch(e3:Error)
         {
            trace("[flashnet] NetStream handler " + handlerName + " threw: " + e3.getStackTrace());
         }
      }

      public function fnStatus(code:String, level:String) : void
      {
         var info:Object = {};
         info.code = code;
         info.level = level;
         this.dispatchEvent(new NetStatusEvent(NetStatusEvent.NET_STATUS,false,false,info));
      }
   }
}
