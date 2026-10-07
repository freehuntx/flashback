package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_84 extends Event
   {
      
      public static const _SafeStr_2496:String = "auth_user_details";
      
      public static const _SafeStr_1089:String = "auth_login";
      
      public static const _SafeStr_1558:String = "auth_cancelled";
      
      public static const _SafeStr_1553:String = "auth_login_failed_username";
      
      public static const _SafeStr_595:String = "auth_login_failed_password";
      
      public static const _SafeStr_753:String = "auth_login_failed_user_banned";
      
      public static const _SafeStr_2569:String = "auth_logout";
      
      public static const _SafeStr_1447:String = "auth_not_logged_in";
      
      public static const _SafeStr_1594:String = "auth_email_exists";
      
      public static const _SafeStr_1195:String = "auth_nickname_exists";
      
      public static const _SafeStr_1984:String = "auth_signup";
      
      public static const _SafeStr_2146:String = "auth_signup_failed";
      
      public static const _SafeStr_926:String = "auth_reset_password";
      
      public static const _SafeStr_2422:String = "auth_reset_password_failed";
      
      public static const _SafeStr_1055:String = "auth_game_stats";
      
      public static const ERROR:String = "auth_error";
      
      private var _data:*;
      
      public function _SafeCls_84(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._data = param2;
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_84(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_84 = "_-iJ"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_595 = "_-QD"
 * @identifier _SafeStr_753 = "_-2T"
 * @identifier _SafeStr_926 = "_-Nf"
 * @identifier _SafeStr_1055 = "_-bI"
 * @identifier _SafeStr_1089 = "_-A0"
 * @identifier _SafeStr_1195 = "_-Vf"
 * @identifier _SafeStr_1447 = "_-89"
 * @identifier _SafeStr_1553 = "_-Se"
 * @identifier _SafeStr_1558 = "_-UC"
 * @identifier _SafeStr_1594 = "_-Ev"
 * @identifier _SafeStr_1984 = "_-Qc"
 * @identifier _SafeStr_2146 = "_-DI"
 * @identifier _SafeStr_2422 = "_-Hi"
 * @identifier _SafeStr_2496 = "_-W2"
 * @identifier _SafeStr_2569 = "_-eB"
 */
