package _SafePkg_123
{
   import _SafePkg_85._SafeCls_98;
   import _SafePkg_85._SafeCls_100;
   import _SafePkg_85._SafeCls_99;
   import com.miniclip.gamemanager._SafeCls_71;
   import com.miniclip.gamemanager._SafeCls_63;
   import com.miniclip.gamemanager.utils.strings;
   import com.miniclip.loggers.LogsHandler;
   import flash.events.EventDispatcher;
   import flash.system.Security;
   
   public class _SafeCls_135 extends EventDispatcher implements _SafeCls_71
   {
      
      private var _key:String;
      
      private var _SafeStr_2487:_SafeCls_98 = new _SafeCls_98(_SafeCls_98._SafeStr_1617);
      
      private var _SafeStr_1991:_SafeCls_98 = new _SafeCls_98(_SafeCls_98._SafeStr_1324);
      
      public function _SafeCls_135()
      {
         super();
      }
      
      private function _SafeStr_2075(param1:_SafeCls_100) : void
      {
         LogsHandler.info("services.onAwardResponse(" + param1 + ")");
         dispatchEvent(param1.clone());
      }
      
      private function _SafeStr_1895(param1:_SafeCls_99) : void
      {
         LogsHandler.info("services.onCloseAlertbox(" + param1 + ")");
         dispatchEvent(this._SafeStr_1991.clone());
         dispatchEvent(param1.clone());
      }
      
      public function _SafeStr_607() : Boolean
      {
         LogsHandler.info("services.validateLocation()");
         return Security.sandboxType != Security.REMOTE;
      }
      
      public function _SafeStr_2096(param1:uint = 0, param2:String = "") : void
      {
         LogsHandler.info("services.showHighscores(" + param1 + " " + param2 + ")");
      }
      
      public function saveHighscore(param1:Number, param2:uint = 0, param3:String = "") : void
      {
         LogsHandler.info("services.saveHighscore(" + param1 + ", " + param2 + ", " + param3 + ")");
      }
      
      public function giveAward(param1:uint) : void
      {
         var _loc2_:_SafeCls_63 = null;
         LogsHandler.info("services.giveAward(" + param1 + ")");
         if(param1 > 0)
         {
            LogsHandler.log("Awards success (with awardID = " + param1 + ")");
            _loc2_ = new _SafeCls_63({
               "id":param1,
               "title":strings.awardLocalTest + " #" + param1,
               "description":"test award description"
            });
            dispatchEvent(new _SafeCls_100(_SafeCls_100._SafeStr_1965,_loc2_));
         }
         else
         {
            LogsHandler.error("Awards fail (with awardID = " + param1 + ")");
            dispatchEvent(new _SafeCls_100(_SafeCls_100._SafeStr_1370,"Award ID must be bigger than zero"));
         }
      }
      
      public function hasAward(param1:uint, param2:uint = 0) : void
      {
         LogsHandler.info("services.hasAward(" + param1 + ", " + param2 + ")");
         dispatchEvent(new _SafeCls_100(_SafeCls_100._SafeStr_2105,false));
      }
      
      public function _SafeStr_1443(param1:String) : void
      {
         LogsHandler.info("services.trackAds(" + param1 + ")");
         if(param1 != "" && param1.length > 0)
         {
            LogsHandler.log("Ads Tracking success (with trackerID = " + param1 + ")");
         }
         else
         {
            LogsHandler.error("Ads Tracking fail (with trackerID = " + param1 + ")");
         }
      }
      
      public function _SafeStr_608(param1:Boolean = true) : void
      {
         LogsHandler.info("services.getUserDetails(" + param1 + ")");
      }
      
      public function _SafeStr_467(param1:Boolean = true) : void
      {
         LogsHandler.info("services.isLoggedIn(" + param1 + ")");
      }
      
      public function _SafeStr_2118(param1:String = "Alert!", param2:String = "OK") : void
      {
         LogsHandler.info("services.showAlert(" + param1 + ", " + param2 + ")");
         LogsHandler.warn(param1);
      }
      
      public function get _SafeStr_1424() : Boolean
      {
         return false;
      }
      
      public function get _SafeStr_782() : Object
      {
         return null;
      }
      
      public function get datacenterID() : String
      {
         return "";
      }
      
      public function _SafeStr_1094(param1:String, param2:String = "", param3:Object = null, param4:Boolean = false) : void
      {
         LogsHandler.info("services.trackData() Tag :  " + param1 + " Group :  " + param2 + " Object :  " + (param3 ? "NOT " : "") + "NULL");
      }
      
      public function _SafeStr_821(param1:String) : void
      {
         LogsHandler.info("services.trackError() ErrorCode :  " + param1);
      }
      
      public function _SafeStr_2486(param1:String) : void
      {
         LogsHandler.info("services.trackMappedError() ErrorCode :  " + param1);
      }
      
      public function _SafeStr_2104(param1:String) : String
      {
         LogsHandler.info("-> GMProxy - GameServicesProxy::encrypt(" + param1 + ")");
         return "";
      }
      
      public function _SafeStr_1665(param1:String) : String
      {
         LogsHandler.info("-> GMProxy - GameServicesProxy::decrypt(" + param1 + ")");
         return "";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_63 = "_-Y0"
 * @identifier _SafeCls_71 = "_-Rn"
 * @identifier _SafeCls_98 = "_-Ga"
 * @identifier _SafeCls_99 = "_-Sd"
 * @identifier _SafeCls_100 = "_-J2"
 * @identifier _SafeCls_135 = "_-6W"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_467 = "_-NY"
 * @identifier _SafeStr_607 = "_-2e"
 * @identifier _SafeStr_608 = "_-jg"
 * @identifier _SafeStr_782 = "_-Kq"
 * @identifier _SafeStr_821 = "_-eT"
 * @identifier _SafeStr_1094 = "_-he"
 * @identifier _SafeStr_1324 = "_-fM"
 * @identifier _SafeStr_1370 = "_-4M"
 * @identifier _SafeStr_1424 = "_-Hk"
 * @identifier _SafeStr_1443 = "_-Kf"
 * @identifier _SafeStr_1617 = "_-Pt"
 * @identifier _SafeStr_1665 = "_-Zi"
 * @identifier _SafeStr_1895 = "_-FS"
 * @identifier _SafeStr_1965 = "_-4n"
 * @identifier _SafeStr_1991 = "_-Zb"
 * @identifier _SafeStr_2075 = "_-Hs"
 * @identifier _SafeStr_2096 = "_-6J"
 * @identifier _SafeStr_2104 = "_-70"
 * @identifier _SafeStr_2105 = "_-41"
 * @identifier _SafeStr_2118 = "_-Oc"
 * @identifier _SafeStr_2486 = "_-T8"
 * @identifier _SafeStr_2487 = "_-Lh"
 */
