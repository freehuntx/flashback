package flashnet.rtmfp
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.NetStatusEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.Endian;

   /**
    * Stand-in for flash.net.NetConnection speaking RTMFP (Adobe Cirrus).
    *
    * Ruffle has no RTMFP, so instead of UDP this talks a tiny framed protocol
    * over a flash.net.Socket to a virtual "Cirrus" endpoint that the page
    * intercepts and routes peer-to-peer. Frame: u32 length + u8 opcode + body.
    *
    * client -> router:
    *   1 HELLO(utf uri)              2 PUBLISH(u32 sid, utf name)
    *   3 PLAY(u32 sid, utf farID, utf name)
    *   4 CLOSE_STREAM(u32 sid)       5 SEND(u32 sid, bytes amf3)
    *   6 PEER_RESPONSE(u32 subId, u8 accepted)
    *   7 CLOSE_PEER(u32 subId)
    * router -> client:
    *   101 CONNECTED(utf nearID)     102 PEER_CONNECT(u32 sid, u32 subId, utf farID)
    *   103 PLAY_START(u32 sid)       104 PLAY_FAILED(u32 sid)
    *   105 MESSAGE(u32 sid, bytes)   106 PEER_CLOSED(u32 subId)
    *   107 PLAY_CLOSED(u32 sid)      108 PUBLISH_START(u32 sid)
    *   109 PEER_ACCEPTED(u32 sid, u32 subId)
    */
   public class NetConnection extends EventDispatcher
   {
      public static var routerHost:String = "p2p.rtmfp.net";

      public static var routerPort:int = 1935;

      public var maxPeerConnections:uint = 8;

      public var client:Object;

      public var objectEncoding:uint = 3;

      private var _uri:String = null;

      private var _nearID:String = null;

      private var _connected:Boolean = false;

      private var _socket:Socket = null;

      private var _buffer:ByteArray;

      private var _streams:Object;

      private var _peers:Object;

      private var _nextSid:uint = 1;

      public function NetConnection()
      {
         super();
         this.client = this;
         this._buffer = new ByteArray();
         this._streams = {};
         this._peers = {};
      }

      public function get nearID() : String
      {
         return this._nearID;
      }

      public function get farID() : String
      {
         return null;
      }

      public function get connected() : Boolean
      {
         return this._connected;
      }

      public function get uri() : String
      {
         return this._uri;
      }

      public function get protocol() : String
      {
         return "rtmfp";
      }

      public function get unconnectedPeerStreams() : Array
      {
         return [];
      }

      public function connect(command:String, ... rest) : void
      {
         this.close();
         this._uri = command;
         this._buffer = new ByteArray();
         this._streams = {};
         this._peers = {};
         var socket:Socket = new Socket();
         socket.endian = Endian.BIG_ENDIAN;
         socket.addEventListener(Event.CONNECT,this.onSocketConnect);
         socket.addEventListener(ProgressEvent.SOCKET_DATA,this.onSocketData);
         socket.addEventListener(Event.CLOSE,this.onSocketClose);
         socket.addEventListener(IOErrorEvent.IO_ERROR,this.onSocketError);
         socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSocketError);
         this._socket = socket;
         socket.connect(routerHost,routerPort);
      }

      public function close() : void
      {
         var socket:Socket = this._socket;
         this._socket = null;
         this._connected = false;
         this._nearID = null;
         if(socket != null)
         {
            socket.removeEventListener(Event.CONNECT,this.onSocketConnect);
            socket.removeEventListener(ProgressEvent.SOCKET_DATA,this.onSocketData);
            socket.removeEventListener(Event.CLOSE,this.onSocketClose);
            socket.removeEventListener(IOErrorEvent.IO_ERROR,this.onSocketError);
            socket.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSocketError);
            try
            {
               socket.close();
            }
            catch(e:Error)
            {
            }
         }
         var key:String;
         for(key in this._streams)
         {
            NetStream(this._streams[key])._closed = true;
         }
         for(key in this._peers)
         {
            NetStream(this._peers[key])._closed = true;
         }
         this._streams = {};
         this._peers = {};
      }

      public function call(command:String, responder:Object, ... rest) : void
      {
      }

      public function addHeader(operation:String, mustUnderstand:Boolean = false, param:Object = null) : void
      {
      }

      // -- used by NetStream ---------------------------------------------------

      public function fnRegisterStream(stream:NetStream) : uint
      {
         var sid:uint = this._nextSid++;
         this._streams[String(sid)] = stream;
         return sid;
      }

      public function fnPeerStreamsOf(stream:NetStream) : Array
      {
         var result:Array = [];
         var key:String;
         var peer:NetStream;
         for(key in this._peers)
         {
            peer = NetStream(this._peers[key]);
            if(peer._sid == stream._sid && !peer._closed)
            {
               result.push(peer);
            }
         }
         return result;
      }

      public function fnPublish(stream:NetStream, name:String) : void
      {
         var frame:ByteArray = this.frame(2);
         frame.writeUnsignedInt(stream._sid);
         frame.writeUTF(name);
         this.sendFrame(frame);
      }

      public function fnPlay(stream:NetStream, name:String) : void
      {
         var frame:ByteArray = this.frame(3);
         frame.writeUnsignedInt(stream._sid);
         frame.writeUTF(stream._farID == null ? "" : stream._farID);
         frame.writeUTF(name);
         this.sendFrame(frame);
      }

      public function fnSend(stream:NetStream, bytes:ByteArray) : void
      {
         var frame:ByteArray = this.frame(5);
         frame.writeUnsignedInt(stream._sid);
         frame.writeBytes(bytes);
         this.sendFrame(frame);
      }

      public function fnCloseStream(stream:NetStream) : void
      {
         var frame:ByteArray;
         if(stream._subId != 0)
         {
            delete this._peers[String(stream._subId)];
            frame = this.frame(7);
            frame.writeUnsignedInt(stream._subId);
         }
         else
         {
            delete this._streams[String(stream._sid)];
            frame = this.frame(4);
            frame.writeUnsignedInt(stream._sid);
         }
         this.sendFrame(frame);
      }

      // -- socket plumbing -------------------------------------------------------

      private function frame(opcode:int) : ByteArray
      {
         var bytes:ByteArray = new ByteArray();
         bytes.endian = Endian.BIG_ENDIAN;
         bytes.writeByte(opcode);
         return bytes;
      }

      private function sendFrame(bytes:ByteArray) : void
      {
         if(this._socket == null || !this._socket.connected)
         {
            return;
         }
         this._socket.writeUnsignedInt(bytes.length);
         this._socket.writeBytes(bytes);
         this._socket.flush();
      }

      private function onSocketConnect(event:Event) : void
      {
         var frame:ByteArray = this.frame(1);
         frame.writeUTF(this._uri == null ? "" : this._uri);
         this.sendFrame(frame);
      }

      private function onSocketData(event:ProgressEvent) : void
      {
         var socket:Socket = this._socket;
         if(socket == null)
         {
            return;
         }
         var buffer:ByteArray = this._buffer;
         buffer.position = buffer.length;
         socket.readBytes(buffer,buffer.length,socket.bytesAvailable);
         var offset:uint = 0;
         var length:uint;
         var body:ByteArray;
         while(buffer.length - offset >= 4)
         {
            buffer.position = offset;
            length = buffer.readUnsignedInt();
            if(buffer.length - offset - 4 < length)
            {
               break;
            }
            body = new ByteArray();
            body.endian = Endian.BIG_ENDIAN;
            if(length > 0)
            {
               buffer.readBytes(body,0,length);
            }
            offset += 4 + length;
            body.position = 0;
            this.handleFrame(body);
            if(this._socket != socket)
            {
               return;
            }
         }
         var rest:ByteArray = new ByteArray();
         rest.endian = Endian.BIG_ENDIAN;
         if(offset < buffer.length)
         {
            buffer.position = offset;
            buffer.readBytes(rest,0,buffer.length - offset);
         }
         this._buffer = rest;
      }

      private function onSocketClose(event:Event) : void
      {
         var wasConnected:Boolean = this._connected;
         this.close();
         this.status(wasConnected ? "NetConnection.Connect.Closed" : "NetConnection.Connect.Failed",wasConnected ? "status" : "error",null);
      }

      private function onSocketError(event:Event) : void
      {
         var wasConnected:Boolean = this._connected;
         this.close();
         this.status(wasConnected ? "NetConnection.Connect.Closed" : "NetConnection.Connect.Failed","error",null);
      }

      private function handleFrame(body:ByteArray) : void
      {
         var opcode:int = body.readUnsignedByte();
         var sid:uint;
         var subId:uint;
         var stream:NetStream;
         var peer:NetStream;
         var payload:ByteArray;
         switch(opcode)
         {
            case 101:
               this._nearID = body.readUTF();
               this._connected = true;
               this.status("NetConnection.Connect.Success","status",null);
               break;
            case 102:
               sid = body.readUnsignedInt();
               subId = body.readUnsignedInt();
               this.onPeerConnect(sid,subId,body.readUTF());
               break;
            case 103:
               stream = this.streamFor(body.readUnsignedInt());
               if(stream != null)
               {
                  this.status("NetStream.Connect.Success","status",stream);
                  stream.fnStatus("NetStream.Play.Reset","status");
                  stream.fnStatus("NetStream.Play.Start","status");
               }
               break;
            case 104:
               stream = this.streamFor(body.readUnsignedInt());
               if(stream != null)
               {
                  stream.fnStatus("NetStream.Play.Failed","error");
               }
               break;
            case 105:
               stream = this.streamFor(body.readUnsignedInt());
               if(stream != null)
               {
                  payload = new ByteArray();
                  if(body.bytesAvailable > 0)
                  {
                     body.readBytes(payload,0,body.bytesAvailable);
                  }
                  stream.fnDeliver(payload);
               }
               break;
            case 106:
               subId = body.readUnsignedInt();
               peer = this._peers[String(subId)] as NetStream;
               if(peer != null)
               {
                  delete this._peers[String(subId)];
                  peer._closed = true;
                  this.status("NetStream.Connect.Closed","status",peer);
               }
               break;
            case 107:
               stream = this.streamFor(body.readUnsignedInt());
               if(stream != null)
               {
                  this.status("NetStream.Connect.Closed","status",stream);
               }
               break;
            case 108:
               stream = this.streamFor(body.readUnsignedInt());
               if(stream != null)
               {
                  stream.fnStatus("NetStream.Publish.Start","status");
               }
               break;
            case 109:
               stream = this.streamFor(body.readUnsignedInt());
               subId = body.readUnsignedInt();
               peer = this._peers[String(subId)] as NetStream;
               if(stream != null && peer != null)
               {
                  this.status("NetStream.Connect.Success","status",peer);
                  stream.fnStatus("NetStream.Play.Start","status");
               }
         }
      }

      private function onPeerConnect(sid:uint, subId:uint, farID:String) : void
      {
         var publisher:NetStream = this.streamFor(sid);
         var accepted:Boolean = false;
         if(publisher != null)
         {
            var peer:NetStream = new NetStream(null,farID);
            peer._nc = this;
            peer._sid = sid;
            peer._subId = subId;
            peer._mode = 3;
            this._peers[String(subId)] = peer;
            accepted = true;
            var target:Object = publisher.client;
            var handler:Function = null;
            if(target != null)
            {
               try
               {
                  handler = target["onPeerConnect"] as Function;
               }
               catch(e:Error)
               {
                  handler = null;
               }
            }
            if(handler != null)
            {
               try
               {
                  accepted = handler.call(target,peer) != false;
               }
               catch(e2:Error)
               {
                  trace("[flashnet] onPeerConnect threw: " + e2.getStackTrace());
                  accepted = false;
               }
            }
            if(!accepted)
            {
               delete this._peers[String(subId)];
               peer._closed = true;
            }
         }
         var frame:ByteArray = this.frame(6);
         frame.writeUnsignedInt(subId);
         frame.writeByte(accepted ? 1 : 0);
         this.sendFrame(frame);
      }

      private function streamFor(sid:uint) : NetStream
      {
         var stream:NetStream = this._streams[String(sid)] as NetStream;
         if(stream == null || stream._closed)
         {
            return null;
         }
         return stream;
      }

      private function status(code:String, level:String, stream:NetStream) : void
      {
         var info:Object = {};
         info.code = code;
         info.level = level;
         if(stream != null)
         {
            info.stream = stream;
         }
         this.dispatchEvent(new NetStatusEvent(NetStatusEvent.NET_STATUS,false,false,info));
      }
   }
}
