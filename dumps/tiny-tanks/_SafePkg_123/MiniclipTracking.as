package _SafePkg_123
{
   import com.miniclip.gamemanager.GameTracking;
   import flash.system.Capabilities;
   import flash.utils.getTimer;
   
   public class MiniclipTracking implements GameTracking
   {
      
      private var _uniqueID:uint;
      
      public function MiniclipTracking()
      {
         super();
         this._uniqueID = this._generate32bitRandom();
      }
      
      private function _generate32bitRandom() : int
      {
         return int(Math.random() * 2147483647);
      }
      
      public function get uniqueID() : uint
      {
         return this._uniqueID;
      }
      
      public function get sessionID() : String
      {
         return "thisisafakesession";
      }
      
      public function get gameID() : uint
      {
         return 1808;
      }
      
      public function get userID() : uint
      {
         return 0;
      }
      
      public function get time() : int
      {
         return getTimer();
      }
      
      public function get _SafeStr_1696() : Number
      {
         var _loc1_:Date = new Date();
         return Math.round(_loc1_.time / 1000);
      }
      
      public function get locale() : String
      {
         return Capabilities.language;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_1696 = "_-KE"
 */
