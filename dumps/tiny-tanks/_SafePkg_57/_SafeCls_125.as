package _SafePkg_57
{
   import flash.net.FileReference;
   
   public interface _SafeCls_125 extends _SafeCls_56
   {
      
      function get activeRoomId() : int;
      
      function set activeRoomId(param1:int) : void;
      
      function get amIModerator() : Boolean;
      
      function get myUserId() : int;
      
      function set myUserId(param1:int) : void;
      
      function get myUserName() : String;
      
      function set myUserName(param1:String) : void;
      
      function get playerId() : int;
      
      function get debug() : Boolean;
      
      function set debug(param1:Boolean) : void;
      
      function get isConnected() : Boolean;
      
      function set isConnected(param1:Boolean) : void;
      
      function autoJoin() : void;
      
      function createRoom(param1:Object, param2:int = -1) : void;
      
      function disconnect() : void;
      
      function getActiveRoom() : *;
      
      function getAllRooms() : Array;
      
      function getBuddyRoom(param1:Object) : void;
      
      function getRoom(param1:int) : *;
      
      function getRoomByName(param1:String) : *;
      
      function getRoomList() : void;
      
      function getVersion() : String;
      
      function joinRoom(param1:*, param2:String = "", param3:Boolean = false, param4:Boolean = false, param5:int = -1) : void;
      
      function leaveRoom(param1:int) : void;
      
      function loadBuddyList() : void;
      
      function login(param1:String, param2:String, param3:String) : void;
      
      function roundTripBench() : void;
      
      function sendObject(param1:Object, param2:int = -1) : void;
      
      function sendObjectToGroup(param1:Object, param2:Array, param3:int = -1) : void;
      
      function sendPrivateMessage(param1:String, param2:int, param3:int = -1) : void;
      
      function sendPublicMessage(param1:String, param2:int = -1) : void;
      
      function setRoomVariables(param1:Array, param2:int = -1, param3:Boolean = true) : void;
      
      function setUserVariables(param1:Object, param2:int = -1) : void;
      
      function switchSpectator(param1:int = -1) : void;
      
      function sendModeratorMessage(param1:String, param2:String, param3:int = -1) : void;
      
      function get httpPort() : int;
      
      function getUploadPath() : String;
      
      function uploadFile(param1:FileReference, param2:int = -1, param3:String = "", param4:int = -1) : void;
      
      function logout() : void;
      
      function get buddyList() : Array;
      
      function addBuddy(param1:String) : void;
      
      function clearBuddyList() : void;
      
      function connect(param1:String, param2:int = 9339) : void;
      
      function removeBuddy(param1:String) : void;
      
      function setBuddyVariables(param1:Array) : void;
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_56 = "_-Tq"
 * @identifier _SafeCls_125 = "_-88"
 * @identifier _SafePkg_57 = "_-Ds"
 */
