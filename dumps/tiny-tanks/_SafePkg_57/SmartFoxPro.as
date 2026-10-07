package _SafePkg_57
{
   public interface SmartFoxPro extends _SafeCls_125
   {
      
      function get defaultZone() : String;
      
      function get ipAddress() : String;
      
      function get port() : int;
      
      function getRandomKey() : void;
      
      function sendXtMessage(param1:String, param2:String, param3:*, param4:String = "xml", param5:int = -1) : void;
      
      function get rawProtocolSeparator() : String;
      
      function set rawProtocolSeparator(param1:String) : void;
      
      function get blueBoxIpAddress() : String;
      
      function get blueBoxPort() : Number;
      
      function get myBuddyVars() : Array;
      
      function get smartConnect() : Boolean;
      
      function get httpPollSpeed() : int;
      
      function set httpPollSpeed(param1:int) : void;
      
      function getBuddyById(param1:int) : Object;
      
      function getBuddyByName(param1:String) : Object;
      
      function getConnectionMode() : String;
      
      function loadConfig(param1:String = "config.xml", param2:Boolean = true) : void;
      
      function sendBuddyPermissionResponse(param1:Boolean, param2:String) : void;
      
      function setBuddyBlockStatus(param1:String, param2:Boolean) : void;
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_125 = "_-88"
 * @identifier _SafePkg_57 = "_-Ds"
 */
