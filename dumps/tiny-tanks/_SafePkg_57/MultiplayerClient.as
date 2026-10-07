package _SafePkg_57
{
   import com.miniclip.logger;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.net.FileReference;
   
   public dynamic class MultiplayerClient implements IEventDispatcher, SmartFoxPro
   {
      
      public static const _SafeStr_2189:String = "u";
      
      public static const _SafeStr_1173:String = "r";
      
      public static const _SafeStr_508:String = "z";
      
      public static const _SafeStr_2419:String = "xml";
      
      public static const _SafeStr_1414:String = "str";
      
      public static const _SafeStr_847:String = "json";
      
      public static const _SafeStr_1031:String = "disconnected";
      
      public static const _SafeStr_452:String = "socket";
      
      public static const _SafeStr_573:String = "http";
      
      private var _SafeStr_798:*;
      
      private var _debug:Boolean;
      
      public function MultiplayerClient(param1:*, param2:Boolean = false)
      {
         super();
         this._SafeStr_798 = param1;
         this._debug = param2;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this._debug)
         {
            logger.log("MultiplayerClient.addEventListener( " + arguments.join(",") + " )");
         }
         this._SafeStr_798.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this._debug)
         {
            logger.log("MultiplayerClient.removeEventListener( " + arguments.join(",") + " )");
         }
         this._SafeStr_798.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(this._debug)
         {
            logger.log("MultiplayerClient.dispatchEvent( " + arguments.join(",") + " )");
         }
         return this._SafeStr_798.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this._debug)
         {
            logger.log("MultiplayerClient.hasEventListener( " + arguments.join(",") + " )");
         }
         return this._SafeStr_798.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this._debug)
         {
            logger.log("MultiplayerClient.willTrigger( " + arguments.join(",") + " )");
         }
         return this._SafeStr_798.willTrigger(param1);
      }
      
      public function toString() : String
      {
         return "[object MultiplayerClient]";
      }
      
      public function valueOf() : *
      {
         return this._SafeStr_798;
      }
      
      public function get activeRoomId() : int
      {
         return this._SafeStr_798.activeRoomId;
      }
      
      public function set activeRoomId(param1:int) : void
      {
         this._SafeStr_798.activeRoomId = param1;
      }
      
      public function get amIModerator() : Boolean
      {
         return this._SafeStr_798.amIModerator;
      }
      
      public function get myUserId() : int
      {
         return this._SafeStr_798.myUserId;
      }
      
      public function set myUserId(param1:int) : void
      {
         this._SafeStr_798.myUserId = param1;
      }
      
      public function get myUserName() : String
      {
         return this._SafeStr_798.myUserName;
      }
      
      public function set myUserName(param1:String) : void
      {
         this._SafeStr_798.myUserName = param1;
      }
      
      public function get playerId() : int
      {
         return this._SafeStr_798.playerId;
      }
      
      public function get buddyList() : Array
      {
         return this._SafeStr_798.buddyList;
      }
      
      public function get httpPort() : int
      {
         return this._SafeStr_798.httpPort;
      }
      
      public function get debug() : Boolean
      {
         return this._SafeStr_798.debug;
      }
      
      public function set debug(param1:Boolean) : void
      {
         this._SafeStr_798.debug = param1;
      }
      
      public function get isConnected() : Boolean
      {
         return this._SafeStr_798.isConnected;
      }
      
      public function set isConnected(param1:Boolean) : void
      {
         this._SafeStr_798.isConnected = param1;
      }
      
      public function autoJoin() : void
      {
         this._SafeStr_798.autoJoin();
      }
      
      public function createRoom(param1:Object, param2:int = -1) : void
      {
         this._SafeStr_798.createRoom(param1,param2);
      }
      
      public function disconnect() : void
      {
         this._SafeStr_798.disconnect();
      }
      
      public function getActiveRoom() : *
      {
         return this._SafeStr_798.getActiveRoom();
      }
      
      public function getAllRooms() : Array
      {
         return this._SafeStr_798.getAllRooms();
      }
      
      public function getBuddyRoom(param1:Object) : void
      {
         this._SafeStr_798.getBuddyRoom(param1);
      }
      
      public function getRoom(param1:int) : *
      {
         return this._SafeStr_798.getRoom(param1);
      }
      
      public function getRoomByName(param1:String) : *
      {
         return this._SafeStr_798.getRoomByName(param1);
      }
      
      public function getRoomList() : void
      {
         this._SafeStr_798.getRoomList();
      }
      
      public function getVersion() : String
      {
         return this._SafeStr_798.getVersion();
      }
      
      public function joinRoom(param1:*, param2:String = "", param3:Boolean = false, param4:Boolean = false, param5:int = -1) : void
      {
         this._SafeStr_798.joinRoom(param1,param2,param3,param4,param5);
      }
      
      public function leaveRoom(param1:int) : void
      {
         this._SafeStr_798.leaveRoom(param1);
      }
      
      public function loadBuddyList() : void
      {
         this._SafeStr_798.loadBuddyList();
      }
      
      public function login(param1:String, param2:String, param3:String) : void
      {
         this._SafeStr_798.login(param1,param2,param3);
      }
      
      public function logout() : void
      {
         this._SafeStr_798.logout();
      }
      
      public function roundTripBench() : void
      {
         this._SafeStr_798.roundTripBench();
      }
      
      public function sendObject(param1:Object, param2:int = -1) : void
      {
         this._SafeStr_798.sendObject(param1,param2);
      }
      
      public function sendObjectToGroup(param1:Object, param2:Array, param3:int = -1) : void
      {
         this._SafeStr_798.sendObjectToGroup(param1,param2,param3);
      }
      
      public function sendPrivateMessage(param1:String, param2:int, param3:int = -1) : void
      {
         this._SafeStr_798.sendPrivateMessage(param1,param2,param3);
      }
      
      public function sendPublicMessage(param1:String, param2:int = -1) : void
      {
         this._SafeStr_798.sendPublicMessage(param1,param2);
      }
      
      public function setRoomVariables(param1:Array, param2:int = -1, param3:Boolean = true) : void
      {
         this._SafeStr_798.setRoomVariables(param1,param2,param3);
      }
      
      public function setUserVariables(param1:Object, param2:int = -1) : void
      {
         this._SafeStr_798.setUserVariables(param1,param2);
      }
      
      public function switchSpectator(param1:int = -1) : void
      {
         this._SafeStr_798.switchSpectator(param1);
      }
      
      public function sendModeratorMessage(param1:String, param2:String, param3:int = -1) : void
      {
         this._SafeStr_798.sendModeratorMessage(param1,param2,param3);
      }
      
      public function getUploadPath() : String
      {
         return this._SafeStr_798.getUploadPath();
      }
      
      public function uploadFile(param1:FileReference, param2:int = -1, param3:String = "", param4:int = -1) : void
      {
         this._SafeStr_798.uploadFile(param1,param2,param3,param4);
      }
      
      public function addBuddy(param1:String) : void
      {
         this._SafeStr_798.addBuddy(param1);
      }
      
      public function clearBuddyList() : void
      {
         this._SafeStr_798.clearBuddyList();
      }
      
      public function connect(param1:String, param2:int = 9339) : void
      {
         this._SafeStr_798.connect(param1,param2);
      }
      
      public function removeBuddy(param1:String) : void
      {
         this._SafeStr_798.removeBuddy(param1);
      }
      
      public function setBuddyVariables(param1:Array) : void
      {
         this._SafeStr_798.setBuddyVariables(param1);
      }
      
      public function get defaultZone() : String
      {
         return this._SafeStr_798.defaultZone;
      }
      
      public function get ipAddress() : String
      {
         return this._SafeStr_798.ipAddress;
      }
      
      public function get port() : int
      {
         return this._SafeStr_798.port;
      }
      
      public function get blueBoxIpAddress() : String
      {
         return this._SafeStr_798.blueBoxIpAddress;
      }
      
      public function get blueBoxPort() : Number
      {
         return this._SafeStr_798.blueBoxPort;
      }
      
      public function get myBuddyVars() : Array
      {
         return this._SafeStr_798.myBuddyVars;
      }
      
      public function get smartConnect() : Boolean
      {
         return this._SafeStr_798.smartConnect;
      }
      
      public function get rawProtocolSeparator() : String
      {
         return this._SafeStr_798.rawProtocolSeparator;
      }
      
      public function set rawProtocolSeparator(param1:String) : void
      {
         this._SafeStr_798.rawProtocolSeparator = param1;
      }
      
      public function get httpPollSpeed() : int
      {
         return this._SafeStr_798.httpPollSpeed;
      }
      
      public function set httpPollSpeed(param1:int) : void
      {
         this._SafeStr_798.httpPollSpeed = param1;
      }
      
      public function getRandomKey() : void
      {
         this._SafeStr_798.getRandomKey();
      }
      
      public function sendXtMessage(param1:String, param2:String, param3:*, param4:String = "xml", param5:int = -1) : void
      {
         if(this._debug)
         {
            logger.log("MultiplayerClient.sendXtMessage( " + arguments.join(",") + " )");
         }
         this._SafeStr_798.sendXtMessage(param1,param2,param3,param4,param5);
      }
      
      public function getBuddyById(param1:int) : Object
      {
         return this._SafeStr_798.getBuddyById(param1);
      }
      
      public function getBuddyByName(param1:String) : Object
      {
         return this._SafeStr_798.getBuddyByName(param1);
      }
      
      public function getConnectionMode() : String
      {
         return this._SafeStr_798.getConnectionMode();
      }
      
      public function loadConfig(param1:String = "config.xml", param2:Boolean = true) : void
      {
         this._SafeStr_798.loadConfig(param1,param2);
      }
      
      public function sendBuddyPermissionResponse(param1:Boolean, param2:String) : void
      {
         this._SafeStr_798.sendBuddyPermissionResponse(param1,param2);
      }
      
      public function setBuddyBlockStatus(param1:String, param2:Boolean) : void
      {
         this._SafeStr_798.setBuddyBlockStatus(param1,param2);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_57 = "_-Ds"
 * @identifier _SafeStr_452 = "_-Tg"
 * @identifier _SafeStr_508 = "_-8g"
 * @identifier _SafeStr_573 = "_-1p"
 * @identifier _SafeStr_798 = "_-EU"
 * @identifier _SafeStr_847 = "_-ck"
 * @identifier _SafeStr_1031 = "_-MW"
 * @identifier _SafeStr_1173 = "_-UT"
 * @identifier _SafeStr_1414 = "_-O7"
 * @identifier _SafeStr_2189 = "_-5C"
 * @identifier _SafeStr_2419 = "_-5G"
 */
