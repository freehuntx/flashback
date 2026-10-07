package _SafePkg_123
{
   import _SafePkg_48._SafeCls_47;
   import _SafePkg_50._SafeCls_49;
   import _SafePkg_85._SafeCls_102;
   import _SafePkg_85._SafeCls_84;
   import com.miniclip.gamemanager._SafeCls_134;
   import com.miniclip.gamemanager._SafeCls_74;
   import com.miniclip.gamemanager._SafeCls_80;
   import com.miniclip.loggers.LogsHandler;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class _SafeCls_136 extends EventDispatcher implements _SafeCls_74
   {
      
      private var _SafeStr_2278:_SafeCls_80;
      
      public function _SafeCls_136(param1:_SafeCls_80 = null)
      {
         super();
         this._SafeStr_2278 = param1;
      }
      
      public function get storage() : _SafeCls_80
      {
         return this._SafeStr_2278;
      }
      
      public function _SafeStr_608(param1:Boolean = true) : void
      {
         dispatchEvent(new _SafeCls_84(_SafeCls_84._SafeStr_1447));
      }
      
      public function _SafeStr_467(param1:Boolean = true) : void
      {
         dispatchEvent(new _SafeCls_84(_SafeCls_84._SafeStr_1447));
      }
      
      public function get _SafeStr_782() : _SafeCls_47
      {
         return null;
      }
      
      public function _SafeStr_857() : Boolean
      {
         LogsHandler.info("player.isAlreadyLoggedIn()");
         return false;
      }
      
      public function logout() : void
      {
         LogsHandler.info("player.logout()");
      }
      
      public function login(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true, param4:_SafeCls_49 = null, param5:Point = null) : _SafeCls_134
      {
         LogsHandler.info("player.login()");
         return null;
      }
      
      public function _SafeStr_2477(param1:Boolean = true, param2:Boolean = false, param3:Point = null) : *
      {
         LogsHandler.warn("player.editYoMe() - not supported in Developers\' GameManager");
         return null;
      }
      
      public function _SafeStr_613(param1:uint) : void
      {
         var _loc2_:Object = null;
         LogsHandler.info("player.getAvatarSelection(" + String(param1) + ")");
         if(param1 > 0)
         {
            _loc2_ = new Object();
            _loc2_.id = param1;
            _loc2_.avatar = 1;
            dispatchEvent(new _SafeCls_102(_SafeCls_102._SafeStr_1591,_loc2_));
         }
         else
         {
            dispatchEvent(new _SafeCls_102(_SafeCls_102.ERROR,"Player ID must be greater than zero"));
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_47 = "_-BB"
 * @identifier _SafeCls_49 = "_-2P"
 * @identifier _SafeCls_74 = "_-Sq"
 * @identifier _SafeCls_80 = "_-TZ"
 * @identifier _SafeCls_84 = "_-iJ"
 * @identifier _SafeCls_102 = "_-Y2"
 * @identifier _SafeCls_134 = "_-1X"
 * @identifier _SafeCls_136 = "_-Bt"
 * @identifier _SafePkg_48 = "_-L9"
 * @identifier _SafePkg_50 = "_-al"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_467 = "_-NY"
 * @identifier _SafeStr_608 = "_-jg"
 * @identifier _SafeStr_613 = "_-fR"
 * @identifier _SafeStr_782 = "_-Kq"
 * @identifier _SafeStr_857 = "_-hd"
 * @identifier _SafeStr_1447 = "_-89"
 * @identifier _SafeStr_1591 = "_-it"
 * @identifier _SafeStr_2278 = "_-Uy"
 * @identifier _SafeStr_2477 = "_-AM"
 */
