package _SafePkg_123
{
   import _SafePkg_57.MultiplayerClient;
   import _SafePkg_57._SafeCls_64;
   import com.miniclip.gamemanager._SafeCls_77;
   import com.miniclip.loggers.LogsHandler;
   import flash.display.Sprite;
   
   public class MiniclipLobby extends Sprite implements _SafeCls_77
   {
      
      private var _SafeStr_798:MultiplayerClient;
      
      private var _SafeStr_922:int;
      
      public function MiniclipLobby()
      {
         super();
         LogsHandler.debug("MiniclipLobby ctor");
      }
      
      public function connect(param1:String = null) : void
      {
         LogsHandler.info("MiniclipLobby.connect(" + param1 + ")");
      }
      
      public function disconnect() : void
      {
         LogsHandler.info("MiniclipLobby.disconnect()");
      }
      
      public function _SafeStr_1302(param1:String = null) : void
      {
         LogsHandler.info("MiniclipLobby.showLobby(" + param1 + ")");
      }
      
      public function _SafeStr_317() : void
      {
         LogsHandler.info("MiniclipLobby.hideLobby()");
      }
      
      public function startGame(param1:MultiplayerClient, param2:Object) : void
      {
         LogsHandler.info("MiniclipLobby.startGame(" + param1 + ", " + param2 + ")");
         this._SafeStr_798 = param1;
      }
      
      public function _SafeStr_412(param1:Object) : void
      {
         LogsHandler.info("MiniclipLobby.endGame(" + param1 + ")");
      }
      
      public function _SafeStr_606(param1:Object) : void
      {
         LogsHandler.info("MiniclipLobby.updateGame(" + param1 + ")");
      }
      
      public function _SafeStr_1340(param1:Object) : void
      {
         LogsHandler.info("MiniclipLobby.updateStatistics(" + param1 + ")");
      }
      
      public function _SafeStr_544(param1:Object) : void
      {
         LogsHandler.info("MiniclipLobby.playerLeft(" + param1 + ")");
      }
      
      public function track(param1:String, param2:Object = null) : void
      {
         LogsHandler.info("MiniclipLobby.track(" + param1 + ", " + param2 + ")");
      }
      
      public function _SafeStr_1273(param1:String) : void
      {
         LogsHandler.info("MiniclipLobby.sendChatMessage(" + param1 + ")");
      }
      
      public function get client() : MultiplayerClient
      {
         LogsHandler.info("MiniclipLobby.client = " + this._SafeStr_798 + ")");
         return this._SafeStr_798;
      }
      
      public function _SafeStr_1216(param1:int) : void
      {
         LogsHandler.info("MiniclipLobby.setFeatures(" + param1 + ")");
         this._SafeStr_922 = param1;
      }
      
      public function _SafeStr_298() : int
      {
         LogsHandler.info("MiniclipLobby.getFeatures()");
         return this._SafeStr_922;
      }
      
      public function _SafeStr_556() : void
      {
         LogsHandler.info("MiniclipLobby.joinQueue()");
      }
      
      public function _SafeStr_329() : void
      {
         LogsHandler.info("MiniclipLobby.leaveQueue()");
      }
      
      public function get config() : _SafeCls_64
      {
         LogsHandler.info("MiniclipLobby.config");
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_64 = "_-b5"
 * @identifier _SafeCls_77 = "_-gt"
 * @identifier _SafePkg_57 = "_-Ds"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_298 = "_-Up"
 * @identifier _SafeStr_317 = "_-58"
 * @identifier _SafeStr_329 = "_-Og"
 * @identifier _SafeStr_412 = "_-ZF"
 * @identifier _SafeStr_544 = "_-Qn"
 * @identifier _SafeStr_556 = "_-Jz"
 * @identifier _SafeStr_606 = "_-9B"
 * @identifier _SafeStr_798 = "_-EU"
 * @identifier _SafeStr_922 = "_-2G"
 * @identifier _SafeStr_1216 = "_-JH"
 * @identifier _SafeStr_1273 = "_-Zd"
 * @identifier _SafeStr_1302 = "_-Ee"
 * @identifier _SafeStr_1340 = "_-FC"
 */
