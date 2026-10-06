package murray
{
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Keyboard;
   import flash.utils.setTimeout;
   
   public class TitleScreen extends EventDispatcher
   {
      
      public var mc:MovieClip;
      
      private var _SafeStr_322:MovieClip;
      
      public var username:String;
      
      public var password:String;
      
      private var nui:NotificationUI;
      
      private var _SafeStr_812:_SafeCls_80;
      
      private var _SafeStr_999:Boolean = true;
      
      public function TitleScreen(param1:MovieClip, param2:NotificationUI, param3:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.nui = param2;
         param1.name_change_overlay.visible = false;
         param1.email_verification_overlay.visible = false;
         param1.name_change_confirm_overlay.visible = false;
         this._SafeStr_322 = param1.create_account_overlay;
         this._SafeStr_322.visible = false;
         this._SafeStr_322.username.restrict = "a-zA-Z0-9";
         this._SafeStr_322.username.maxChars = 15;
         this._SafeStr_322.back.addEventListener(MouseEvent.CLICK,this._SafeStr_1055);
         param1.title_panel.create_account.addEventListener(MouseEvent.CLICK,this._SafeStr_1048);
         param1.title_panel.username.text = "";
         param1.title_panel.password.text = "";
         param1.title_panel.quick_start.addEventListener(MouseEvent.CLICK,this._SafeStr_655);
         param1.title_panel.remember_username.box.gotoAndStop(1);
         param1.title_panel.remember_username.buttonMode = true;
         param1.title_panel.remember_username.useHandCursor = true;
         param1.title_panel.remember_username.addEventListener(MouseEvent.CLICK,this._SafeStr_1207);
         param1.title_panel.log_in.addEventListener(MouseEvent.CLICK,this._SafeStr_722);
         param1.create_account_overlay.agree.addEventListener(MouseEvent.CLICK,this._SafeStr_619);
         param1.version_copyright.text = "Beta Build #" + param3._SafeStr_162.substr(1) + " © 2011-2012 XGen Studios, Inc.";
         param1.create_account_overlay.eula.text = param3.eula;
         this._SafeStr_812 = new _SafeCls_80(param1.server_change_overlay,param3);
         _SafeCls_10._SafeStr_113(param1.title_panel.quick_start);
         _SafeCls_10._SafeStr_113(param1.title_panel.create_account);
         _SafeCls_10._SafeStr_113(param1.title_panel.log_in);
         _SafeCls_10._SafeStr_113(param1.create_account_overlay.back);
         _SafeCls_10._SafeStr_113(param1.create_account_overlay.agree);
         param1.mute_on.addEventListener(MouseEvent.CLICK,this._SafeStr_1087);
         param1.mute_off.addEventListener(MouseEvent.CLICK,this._SafeStr_1024);
         param1.joy2key.addEventListener(MouseEvent.CLICK,this._SafeStr_1202);
         param1.email_verification_overlay.email1.text = "";
         param1.email_verification_overlay.email2.text = "";
         param1.email_verification_overlay.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_853);
         param1.email_verification_overlay.ok.addEventListener(MouseEvent.CLICK,this._SafeStr_1095);
         param1.name_change_overlay.name_change.restrict = "a-zA-Z0-9";
         param1.name_change_overlay.name_change.maxChars = 15;
         param1.name_change_overlay.name_change.text = "";
         param1.name_change_overlay.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_933);
         param1.name_change_overlay.ok.addEventListener(MouseEvent.CLICK,this._SafeStr_1146);
         param1.name_change_confirm_overlay.accept.addEventListener(MouseEvent.CLICK,this._SafeStr_1147);
         param1.name_change_confirm_overlay.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_864);
         param1.gears.addEventListener(MouseEvent.CLICK,this._SafeStr_1071);
         this._SafeStr_812.addEventListener(_SafeCls_66._SafeStr_399,this._SafeStr_1120);
      }
      
      public function _SafeStr_1202(param1:MouseEvent) : void
      {
         if(param1.ctrlKey)
         {
            dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_565));
            return;
         }
         navigateToURL(new URLRequest("http://www.electracode.com/4/joy2key/JoyToKey%20English%20Version.htm"),"_new");
      }
      
      public function _SafeStr_1120(param1:_SafeCls_66) : void
      {
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_399,param1._SafeStr_364));
      }
      
      public function _SafeStr_1071(param1:MouseEvent) : void
      {
         this._SafeStr_812._SafeStr_168();
      }
      
      public function _SafeStr_1087(param1:MouseEvent) : void
      {
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         this.mc.mute_on.visible = false;
         _loc2_._SafeStr_190 = 0;
         _loc2_.music_volume = 0;
         var _loc3_:SharedObject = SharedObject.getLocal("bro_so");
         _loc3_.data.sfx_volume = _loc2_._SafeStr_190;
         _loc3_.data.music_volume = _loc2_.music_volume;
      }
      
      public function _SafeStr_1024(param1:MouseEvent) : void
      {
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         this.mc.mute_on.visible = true;
         _loc2_._SafeStr_190 = 1;
         _loc2_.music_volume = 0.6;
         var _loc3_:SharedObject = SharedObject.getLocal("bro_so");
         _loc3_.data.sfx_volume = _loc2_._SafeStr_190;
         _loc3_.data.music_volume = _loc2_.music_volume;
      }
      
      public function _SafeStr_407(param1:_SafeCls_72) : void
      {
         this.mc.title_panel.username.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_899);
         this.mc.title_panel.password.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_943);
         this.mc.animate.gotoAndPlay(1);
         this.mc.animate2.gotoAndPlay(1);
         this.mc.visible = true;
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         if(this._SafeStr_999)
         {
            this._SafeStr_999 = false;
         }
         else
         {
            _loc2_._SafeStr_892(param1._SafeStr_119("Intro_Loop"));
         }
         if(_loc2_._SafeStr_190 != 0 && _loc2_.music_volume != 0)
         {
            this.mc.mute_on.visible = true;
         }
         else
         {
            this.mc.mute_on.visible = false;
         }
      }
      
      public function _SafeStr_250() : void
      {
         this.mc.title_panel.username.removeEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_899);
         this.mc.title_panel.password.removeEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_943);
         this.mc.animate.stop();
         this.mc.animate2.stop();
         this.mc.visible = false;
      }
      
      public function _SafeStr_899(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.mc.stage.focus = this.mc.title_panel.password;
         }
      }
      
      public function _SafeStr_943(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this._SafeStr_722();
         }
      }
      
      public function _SafeStr_1304(param1:Event) : void
      {
         trace("EULA loaded!");
         this.mc.create_account_overlay.eula.text = param1.target.data;
      }
      
      public function _SafeStr_1055(param1:MouseEvent) : void
      {
         this._SafeStr_322.visible = false;
         this.mc.title_panel.visible = true;
         this.mc.stage.focus = this.mc.title_panel.username;
      }
      
      public function _SafeStr_1048(param1:MouseEvent) : void
      {
         this._SafeStr_322.visible = true;
         this.mc.title_panel.visible = false;
         this.mc.stage.focus = this._SafeStr_322.username;
      }
      
      public function _SafeStr_655(param1:MouseEvent) : void
      {
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_336));
      }
      
      public function _SafeStr_1094() : void
      {
         this.mc.title_panel.visible = false;
         this.mc.email_verification_overlay.visible = true;
      }
      
      public function _SafeStr_853(param1:MouseEvent = null) : void
      {
         this.mc.title_panel.visible = true;
         this.mc.email_verification_overlay.visible = false;
         this.mc.email_verification_overlay.email1.text = "";
         this.mc.email_verification_overlay.email2.text = "";
      }
      
      public function _SafeStr_1095(param1:MouseEvent) : void
      {
         var _loc2_:URLLoader = null;
         if(this.mc.email_verification_overlay.email1.text.indexOf("@") == -1 || this.mc.email_verification_overlay.email1.text.length == 0 || this.mc.email_verification_overlay.email1.text.indexOf(".") == -1 || this.mc.email_verification_overlay.email1.text.lastIndexOf(".") < this.mc.email_verification_overlay.email1.text.indexOf("@"))
         {
            this.nui._SafeStr_108("The entered e-mails must be valid e-mail addresses");
         }
         else if(this.mc.email_verification_overlay.email1.text != this.mc.email_verification_overlay.email2.text)
         {
            this.nui._SafeStr_108("The entered e-mails don\'t match");
         }
         else
         {
            this.nui._SafeStr_141("Sending e-mail validation...");
            _loc2_ = new URLLoader();
            _loc2_.addEventListener(Event.COMPLETE,this._SafeStr_1180);
            _loc2_.load(new URLRequest("http://api.xgenstudios.com/?method=xgen.users.addEmail&username=" + this.mc.title_panel.username.text + "&password=" + this.mc.title_panel.password.text + "&email=" + this.mc.email_verification_overlay.email1.text));
         }
      }
      
      public function _SafeStr_1180(param1:Event) : void
      {
         var _loc2_:XML = new XML(param1.target.data);
         if(_loc2_.attribute("stat") == "fail")
         {
            this.nui._SafeStr_108(_loc2_.err.attribute("msg"));
         }
         else
         {
            this.nui._SafeStr_108("An e-mail has been sent to " + this.mc.email_verification_overlay.email1.text + ", click on the verification link to verify your account before logging in again");
            this._SafeStr_853();
         }
      }
      
      public function _SafeStr_722(param1:MouseEvent = null) : void
      {
         this.username = this.mc.title_panel.username.text;
         this.password = this.mc.title_panel.password.text;
         if(this.username.length < 3)
         {
            this.nui._SafeStr_108("Please enter a username");
         }
         else if(this.password.length < 3)
         {
            this.nui._SafeStr_108("Please enter a password");
         }
         else
         {
            dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_514));
         }
      }
      
      public function _SafeStr_1207(param1:MouseEvent) : void
      {
         if(this.mc.title_panel.remember_username.box.currentFrame == 1)
         {
            this.mc.title_panel.remember_username.box.gotoAndStop(2);
         }
         else
         {
            this.mc.title_panel.remember_username.box.gotoAndStop(1);
         }
      }
      
      public function get remember_username() : Boolean
      {
         return this.mc.title_panel.remember_username.box.currentFrame == 2;
      }
      
      public function _SafeStr_619(param1:MouseEvent) : void
      {
         if(this.mc.create_account_overlay.username.text.length < 3)
         {
            this.nui._SafeStr_108("Usernames must be at least 3 characters long");
         }
         else if(this.mc.create_account_overlay.password.text.length < 3)
         {
            this.nui._SafeStr_108("Passwords must be at least 3 characters long");
         }
         else if(this.mc.create_account_overlay.email_address.text.indexOf("@") == -1 || this.mc.create_account_overlay.email_address.text.indexOf(".") == -1)
         {
            this.nui._SafeStr_108("E-mail address must be valid");
         }
         else if(this.mc.create_account_overlay.password.text != this.mc.create_account_overlay.confirm_password.text)
         {
            this.nui._SafeStr_108("The entered passwords don\'t match!");
         }
         else if(this.mc.create_account_overlay.email_address.text.toLowerCase() != this.mc.create_account_overlay.confirm_email_address.text.toLowerCase())
         {
            this.nui._SafeStr_108("The entered e-mails don\'t match!");
         }
         else
         {
            dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_180));
         }
      }
      
      public function _SafeStr_1115() : void
      {
         this.mc.title_panel.visible = false;
         this.mc.name_change_overlay.visible = true;
         this.mc.name_change_overlay.name_change.text = "";
      }
      
      public function _SafeStr_933(param1:MouseEvent = null) : *
      {
         this.mc.title_panel.visible = true;
         this.mc.name_change_overlay.visible = false;
         this.mc.name_change_overlay.name_change.text = "";
      }
      
      public function _SafeStr_1147(param1:MouseEvent) : void
      {
         var _loc2_:URLLoader = null;
         this._SafeStr_864();
         if(this.mc.name_change_overlay.name_change.text.length < 3)
         {
            this.nui._SafeStr_108("Your username must be at least 3 characters long");
         }
         else
         {
            this.nui._SafeStr_141("Sending name change...");
            _loc2_ = new URLLoader();
            _loc2_.addEventListener(Event.COMPLETE,this._SafeStr_1214);
            _loc2_.load(new URLRequest("http://api.xgenstudios.com/?method=xgen.users.changeName&username=" + this.mc.title_panel.username.text + "&password=" + this.mc.title_panel.password.text + "&new_username=" + this.mc.name_change_overlay.name_change.text));
         }
      }
      
      public function _SafeStr_1214(param1:Event) : void
      {
         var _loc2_:XML = new XML(param1.target.data);
         if(_loc2_.attribute("stat") == "fail")
         {
            this.nui._SafeStr_108(_loc2_.err.attribute("msg"));
         }
         else
         {
            this.nui._SafeStr_197();
            this.mc.title_panel.username.text = this.mc.name_change_overlay.name_change.text;
            this._SafeStr_933();
            this._SafeStr_722();
         }
      }
      
      public function _SafeStr_1146(param1:MouseEvent) : void
      {
         this.mc.name_change_confirm_overlay.visible = true;
         this.mc.name_change_confirm_overlay.accept.visible = false;
         setTimeout(this._SafeStr_1149,3000);
      }
      
      public function _SafeStr_1149() : void
      {
         this.mc.name_change_confirm_overlay.accept.visible = true;
      }
      
      public function _SafeStr_864(param1:MouseEvent = null) : void
      {
         this.mc.name_change_confirm_overlay.visible = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_80 = ">C"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_162 = ";3"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_180 = "^I"
 * @identifier _SafeStr_190 = " ;"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_250 = "0G"
 * @identifier _SafeStr_322 = "65"
 * @identifier _SafeStr_336 = "`?"
 * @identifier _SafeStr_364 = "^H"
 * @identifier _SafeStr_399 = "1Q"
 * @identifier _SafeStr_407 = "7<"
 * @identifier _SafeStr_514 = "-K"
 * @identifier _SafeStr_565 = "^R"
 * @identifier _SafeStr_619 = ">R"
 * @identifier _SafeStr_655 = "\'!"
 * @identifier _SafeStr_722 = " $"
 * @identifier _SafeStr_812 = ">G"
 * @identifier _SafeStr_853 = "5N"
 * @identifier _SafeStr_864 = "#;"
 * @identifier _SafeStr_892 = "`P"
 * @identifier _SafeStr_899 = "?R"
 * @identifier _SafeStr_933 = "4@"
 * @identifier _SafeStr_943 = "<B"
 * @identifier _SafeStr_999 = "<J"
 * @identifier _SafeStr_1024 = "\"&"
 * @identifier _SafeStr_1048 = "2@"
 * @identifier _SafeStr_1055 = "`U"
 * @identifier _SafeStr_1071 = "=?"
 * @identifier _SafeStr_1087 = "]F"
 * @identifier _SafeStr_1094 = "\"H"
 * @identifier _SafeStr_1095 = "?U"
 * @identifier _SafeStr_1115 = "=,"
 * @identifier _SafeStr_1120 = "`O"
 * @identifier _SafeStr_1146 = "];"
 * @identifier _SafeStr_1147 = "!9"
 * @identifier _SafeStr_1149 = "-+"
 * @identifier _SafeStr_1180 = "]4"
 * @identifier _SafeStr_1202 = "+1"
 * @identifier _SafeStr_1207 = "<7"
 * @identifier _SafeStr_1214 = "import"
 * @identifier _SafeStr_1304 = "["
 */
