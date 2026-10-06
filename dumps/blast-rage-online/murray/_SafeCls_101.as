package murray
{
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_8._SafeCls_68;
   import _SafePkg_8._SafeCls_7;
   import _SafePkg_8._SafeCls_67;
   import _SafePkg_74._SafeCls_73;
   import _SafePkg_1._SafeCls_0;
   import _SafePkg_12._SafeCls_11;
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.net.SharedObject;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class _SafeCls_101 extends MovieClip
   {
      
      public static const _SafeStr_821:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.user.items.list&user_id=";
      
      public static const _SafeStr_741:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.user.tanks.list&user_id=";
      
      public static const _SafeStr_463:String = "?public6b";
      
      private const _SafeStr_929:int = 12;
      
      private var ed:_SafeCls_72;
      
      private var _SafeStr_498:_SafeCls_0;
      
      private var mmocha:_SafeCls_71;
      
      private var bro_so:SharedObject;
      
      private var _SafeStr_519:String = "dev.mmocha.com";
      
      private var current_port:int = 1247;
      
      private var _SafeStr_156:_SafeCls_102;
      
      public var _SafeStr_829:String = "0bquitsniffing";
      
      public var _SafeStr_279:MovieClip;
      
      public var _SafeStr_356:int = 0;
      
      private var _SafeStr_191:MovieClip;
      
      private var _SafeStr_204:MovieClip;
      
      public function _SafeCls_101()
      {
         super();
         if(_SafeCls_10._SafeStr_968("xgenstudios.com",this) || _SafeCls_10._SafeStr_968("blastrage.com",this))
         {
            this.ed = new _SafeCls_72(this,false);
            addEventListener(Event.ENTER_FRAME,this._SafeStr_1002);
            this.ed.addEventListener(Event.COMPLETE,this._SafeStr_854);
            this.ed._SafeStr_130.addEventListener(_SafeCls_73.ERROR,this._SafeStr_925);
            this.ed._SafeStr_130.start();
            this._SafeStr_279.loading_bar.bar.width = 0;
         }
         else
         {
            this._SafeStr_279.load_amount.text = "Error loading game, not on allowed domain";
            navigateToURL(new URLRequest("http://blastrage.com"));
         }
      }
      
      public function _SafeStr_1002(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         this._SafeStr_279.load_amount.text = this.ed._SafeStr_130.bytesLoaded + "/" + this.ed._SafeStr_130.bytesTotal;
         if(this.ed._SafeStr_130.bytesTotal == 0)
         {
            _loc2_ = 0;
         }
         else
         {
            _loc2_ = this.ed._SafeStr_130.bytesLoaded * 1 / this.ed._SafeStr_130.bytesTotal * 1;
         }
         if(this._SafeStr_279.loading_bar.bar.width < this._SafeStr_279.loading_bar.width * _loc2_)
         {
            ++this._SafeStr_279.loading_bar.bar.width;
         }
      }
      
      public function _SafeStr_925(param1:ErrorEvent) : void
      {
         this._SafeStr_279.load_amount.text = "Error: " + param1.text;
         this._SafeStr_279.loading_bar.bar.width = 0;
      }
      
      public function _SafeStr_854(param1:Event) : void
      {
         var _SafeStr_429:_SafeCls_4;
         var _SafeCls_22:_SafeCls_6;
         var _SafeStr_239:Event = param1;
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1002);
         this.ed.removeEventListener(Event.COMPLETE,this._SafeStr_854);
         this.ed._SafeStr_130.removeEventListener(_SafeCls_73.ERROR,this._SafeStr_925);
         removeChild(this._SafeStr_279);
         this.bro_so = SharedObject.getLocal("bro_so");
         _SafeStr_429 = _SafeCls_4._SafeStr_121();
         _SafeCls_22 = _SafeCls_6._SafeStr_121();
         if(this.bro_so.data.sfx_volume != null)
         {
            _SafeCls_22._SafeStr_190 = this.bro_so.data.sfx_volume;
         }
         if(this.bro_so.data.music_volume != null)
         {
            _SafeCls_22.music_volume = this.bro_so.data.music_volume;
         }
         else
         {
            _SafeCls_22.music_volume = 0.6;
         }
         if(this.bro_so.data.low_quality != null)
         {
            _SafeStr_429.low_quality = this.bro_so.data.low_quality;
         }
         if(this.bro_so.data.show_names != null)
         {
            _SafeStr_429.show_names = this.bro_so.data.show_names;
         }
         if(this.bro_so.data.show_tutorial != null)
         {
            _SafeStr_429.show_tutorial = this.bro_so.data.show_tutorial;
         }
         if(this.bro_so.data.preferred_game_mode != null)
         {
            _SafeStr_429.preferred_game_mode = this.bro_so.data.preferred_game_mode;
         }
         if(this.bro_so.data.custom_controls != null)
         {
            _SafeStr_429.custom_controls = this.bro_so.data.custom_controls;
            _SafeStr_429.controls = this.bro_so.data.controls;
         }
         this._SafeStr_279 = null;
         this._SafeStr_498 = new _SafeCls_0(this);
         this.mmocha = new _SafeCls_71();
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_331,this._SafeStr_831);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_642,this._SafeStr_1038);
         this.mmocha._SafeStr_471 = "Murray";
         this._SafeStr_191 = this.ed.XGenIntro;
         this._SafeStr_204 = this.ed.BROIntro;
         addEventListener(Event.ENTER_FRAME,this._SafeStr_737);
         this._SafeStr_191.gotoAndPlay(1);
         addChild(this._SafeStr_191);
         this._SafeStr_191.addEventListener(MouseEvent.CLICK,this._SafeStr_451);
         this.ed._SafeStr_117.addEventListener(_SafeCls_66._SafeStr_565,function(param1:_SafeCls_66):void
         {
            current_port = 1139;
            trace("SECRET " + current_port);
         });
         stage.frameRate = 30;
      }
      
      public function _SafeStr_451(param1:MouseEvent) : void
      {
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_737);
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         _loc2_._SafeStr_892(this.ed._SafeStr_119("Intro_Loop"));
         if(this._SafeStr_191.visible)
         {
            this._SafeStr_191.removeEventListener(MouseEvent.CLICK,this._SafeStr_451);
            this._SafeStr_191.stop();
            removeChild(this._SafeStr_191);
         }
         else
         {
            this._SafeStr_204.removeEventListener(MouseEvent.CLICK,this._SafeStr_451);
            this._SafeStr_204.stop();
            removeChild(this._SafeStr_204);
         }
         stage.frameRate = 60;
         this._SafeStr_480();
      }
      
      public function _SafeStr_737(param1:Event) : void
      {
         var _loc2_:_SafeCls_6 = null;
         if(this._SafeStr_191.visible)
         {
            if(this._SafeStr_191.currentFrameLabel == "xgs_sound")
            {
               _loc2_ = _SafeCls_6._SafeStr_121();
               _loc2_._SafeStr_126(this.ed._SafeStr_119("XGSSound"));
            }
            else if(this._SafeStr_191.currentFrameLabel == "intro_in_start")
            {
               _loc2_ = _SafeCls_6._SafeStr_121();
               _loc2_._SafeStr_692([this.ed._SafeStr_119("Intro_In"),this.ed._SafeStr_119("Intro_Loop")],1);
            }
            if(this._SafeStr_191.currentFrame == this._SafeStr_191.framesLoaded)
            {
               stage.frameRate = 60;
               this._SafeStr_191.stop();
               removeChild(this._SafeStr_191);
               this._SafeStr_191.removeEventListener(MouseEvent.CLICK,this._SafeStr_451);
               this._SafeStr_204.gotoAndPlay(1);
               this._SafeStr_204.addEventListener(MouseEvent.CLICK,this._SafeStr_451);
               this._SafeStr_204.x = 400;
               this._SafeStr_204.y = 280;
               addChild(this._SafeStr_204);
               this._SafeStr_204.gotoAndPlay(1);
               this._SafeStr_191.visible = false;
            }
         }
         else if(this._SafeStr_204.currentFrameLabel == "title_drop")
         {
            _loc2_ = _SafeCls_6._SafeStr_121();
            _loc2_._SafeStr_126(this.ed._SafeStr_119("TitleDrop"));
         }
         else if(this._SafeStr_204.currentFrame == this._SafeStr_204.framesLoaded)
         {
            this._SafeStr_204.stop();
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_737);
            removeChild(this._SafeStr_204);
            this._SafeStr_204.removeEventListener(MouseEvent.CLICK,this._SafeStr_451);
            this._SafeStr_480();
         }
      }
      
      public function _SafeStr_626() : void
      {
         removeChild(this.ed._SafeStr_117.mc);
         removeChild(this.ed._SafeStr_147.mc);
         removeChild(this.ed.notification_box.mc);
         this.ed._SafeStr_117._SafeStr_250();
         this.ed._SafeStr_117.removeEventListener(_SafeCls_66._SafeStr_336,this._SafeStr_655);
         this.ed._SafeStr_117.removeEventListener(_SafeCls_66._SafeStr_514,this._SafeStr_884);
         this.ed._SafeStr_117.removeEventListener(_SafeCls_66._SafeStr_180,this._SafeStr_619);
         this.ed._SafeStr_117.removeEventListener(_SafeCls_66._SafeStr_399,this._SafeStr_973);
      }
      
      public function _SafeStr_480() : void
      {
         addChild(this.ed._SafeStr_117.mc);
         addChild(this.ed._SafeStr_147.mc);
         addChild(this.ed.notification_box.mc);
         this.ed._SafeStr_117.addEventListener(_SafeCls_66._SafeStr_336,this._SafeStr_655);
         this.ed._SafeStr_117.addEventListener(_SafeCls_66._SafeStr_514,this._SafeStr_884);
         this.ed._SafeStr_117.addEventListener(_SafeCls_66._SafeStr_180,this._SafeStr_619);
         this.ed._SafeStr_117.addEventListener(_SafeCls_66._SafeStr_399,this._SafeStr_973);
         if(this.bro_so.data.username != null)
         {
            this.ed._SafeStr_117.mc.title_panel.username.text = this.bro_so.data.username;
            this.ed._SafeStr_117.mc.title_panel.remember_username.box.gotoAndStop(2);
            stage.focus = this.ed._SafeStr_117.mc.title_panel.password;
            this.ed._SafeStr_117.mc.title_panel.password.setSelection(0,0);
         }
         else
         {
            stage.focus = this.ed._SafeStr_117.mc.title_panel.username;
            this.ed._SafeStr_117.mc.title_panel.username.setSelection(0,0);
         }
         this.ed._SafeStr_117._SafeStr_407(this.ed);
      }
      
      public function _SafeStr_831(param1:_SafeCls_67) : void
      {
         trace("This fucker should be showing");
         this.ed.notification_box._SafeStr_141("Disconnected from server");
      }
      
      public function _SafeStr_1038(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_331,this._SafeStr_831);
         var _loc2_:String = param1.message.substr(2,param1.message.indexOf(";") - 2);
         _loc2_ += " minutes";
         var _loc3_:String = param1.message.substr(param1.message.indexOf(";") + 1);
         this.ed.notification_box._SafeStr_141("You have been banned " + _loc2_ + " for " + _loc3_);
      }
      
      public function _SafeStr_973(param1:_SafeCls_66) : void
      {
         this._SafeStr_356 = param1._SafeStr_364.index;
         if(this._SafeStr_356 == -1)
         {
            this._SafeStr_356 = 0;
         }
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         var _loc3_:String = _loc2_.servers[this._SafeStr_356][1];
         this._SafeStr_519 = _loc3_.split(":")[0];
         this.current_port = int(_loc3_.split(":")[1]);
      }
      
      public function _SafeStr_619(param1:_SafeCls_66) : void
      {
         this.mmocha.addEventListener(_SafeCls_68._SafeStr_180,this._SafeStr_923);
         this.mmocha._SafeStr_322(this.ed._SafeStr_117.mc.create_account_overlay.username.text,this.ed._SafeStr_117.mc.create_account_overlay.password.text,this.ed._SafeStr_117.mc.create_account_overlay.email_address.text);
         this.ed.notification_box._SafeStr_141("Creating account...");
      }
      
      public function _SafeStr_923(param1:_SafeCls_68) : void
      {
         this.mmocha.removeEventListener(_SafeCls_68._SafeStr_180,this._SafeStr_923);
         if(param1.error)
         {
            this.ed.notification_box._SafeStr_108("Error creating account: " + param1.error);
         }
         else
         {
            this.ed._SafeStr_117.mc.title_panel.username.text = this.ed._SafeStr_117.mc.create_account_overlay.username.text;
            this.ed._SafeStr_117.username = this.ed._SafeStr_117.mc.create_account_overlay.username.text;
            this.ed._SafeStr_117.mc.title_panel.password.text = this.ed._SafeStr_117.mc.create_account_overlay.password.text;
            this.ed._SafeStr_117.password = this.ed._SafeStr_117.mc.create_account_overlay.password.text;
            this.ed._SafeStr_117.mc.create_account_overlay.visible = false;
            this.ed._SafeStr_117.mc.title_panel.visible = true;
            this.ed.notification_box._SafeStr_108("Confirmation e-mail sent to " + this.ed._SafeStr_117.mc.create_account_overlay.email_address.text + ". You must click the validation link to be able to log in.");
         }
      }
      
      public function _SafeStr_655(param1:_SafeCls_66) : void
      {
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         _loc2_.create = false;
         this.ed._SafeStr_117._SafeStr_250();
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_319,this._SafeStr_797);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_289,this._SafeStr_704);
         this.mmocha._SafeStr_1005(this._SafeStr_519,this.current_port);
         this.ed.notification_box._SafeStr_141("Connecting to " + _loc2_.servers[this._SafeStr_356][0] + "..");
      }
      
      public function _SafeStr_884(param1:_SafeCls_66 = null) : void
      {
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_319,this._SafeStr_789);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_289,this._SafeStr_798);
         this.mmocha._SafeStr_1005(this._SafeStr_519,this.current_port);
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         this.ed.notification_box._SafeStr_141("Connecting to " + _loc2_.servers[this._SafeStr_356][0] + "...");
         stage.focus = null;
         addChild(this.ed.notification_box.mc);
      }
      
      public function _SafeStr_789(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_319,this._SafeStr_789);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_289,this._SafeStr_798);
         this.ed._SafeStr_147._SafeStr_314._SafeStr_407(this.mmocha);
         this.ed.notification_box._SafeStr_141("Connected to " + this._SafeStr_519 + " fetching user info...");
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_776);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_209,this._SafeStr_814);
         this.mmocha._SafeStr_154(this._SafeStr_829);
         this.mmocha.authenticate(this.ed._SafeStr_117.username,this.ed._SafeStr_117.password);
      }
      
      public function _SafeStr_798(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_319,this._SafeStr_789);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_289,this._SafeStr_798);
         this.ed._SafeStr_147._SafeStr_314._SafeStr_250();
         this.ed.notification_box._SafeStr_108("Could not connect to " + this._SafeStr_519);
      }
      
      public function _SafeStr_776(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_776);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_209,this._SafeStr_814);
         this.ed._SafeStr_147._SafeStr_314._SafeStr_250();
         trace(param1.message);
         if(param1.message == "092")
         {
            this.ed.notification_box._SafeStr_197();
            this.ed._SafeStr_117._SafeStr_1094();
         }
         else if(param1.message == "09b")
         {
            this.ed.notification_box._SafeStr_141("The game version you are running is out of date. Please clear your cache and refresh the page.");
         }
         else if(param1.message == "093")
         {
            this.ed.notification_box._SafeStr_197();
            this.ed._SafeStr_117._SafeStr_1115();
         }
         else if(param1.message == "091")
         {
            this.ed.notification_box._SafeStr_108("Your account has been temporarily banned. Please try logging in again after your ban has expired");
         }
         else if(param1.message == "095")
         {
            this.ed.notification_box._SafeStr_108("Duplicate login detected");
         }
         else
         {
            this.ed.notification_box._SafeStr_108("Incorrect Username/Password combination");
         }
         this.mmocha._SafeStr_521();
      }
      
      public function _SafeStr_814(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_776);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_209,this._SafeStr_814);
         if(this.ed._SafeStr_117.remember_username)
         {
            this.bro_so.data.username = this.ed._SafeStr_117.username;
         }
         else
         {
            this.bro_so.data.username = null;
         }
         var _loc2_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         _loc2_.username = this.ed._SafeStr_117.username;
         _loc2_.password = this.ed._SafeStr_117.password;
         _loc2_._SafeStr_1019 = int(param1.message.charAt(param1.message.length - 1));
         this.ed.notification_box._SafeStr_141("Fetching user info...");
         try
         {
            ExternalInterface.call("GameLogin",_loc2_.username,_SafeCls_11._SafeStr_806(_loc2_.password));
         }
         catch(err:Error)
         {
         }
         stage.focus = null;
         trace("Auth message: " + param1.message);
         this._SafeStr_1216(param1.message.substr(param1.message.indexOf("|") + 1));
      }
      
      public function _SafeStr_1216(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:_SafeCls_5 = null;
         var _loc2_:Array = param1.split("|");
         var _loc3_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         _loc3_.username = this.ed._SafeStr_117.username;
         _loc3_._SafeStr_230 = parseInt(_loc2_[0]);
         _loc3_._SafeStr_330 = parseInt(_loc2_[1]);
         _loc3_.xcash = parseInt(_loc2_[2]);
         _loc3_._SafeStr_173 = parseInt(_loc2_[3]);
         _loc3_._SafeStr_196 = new Array();
         _loc3_.secondary_weapons = new Array();
         _loc3_.equipment = new Array();
         this._SafeStr_808();
         _loc3_.loadout = new Array();
         var _loc4_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         if(!_loc4_.use_filler_ships)
         {
            _loc3_._SafeStr_127 = new Array();
            _loc8_ = param1.substr(param1.lastIndexOf("|") + 1).split("\r");
            if(_loc8_.length < 3)
            {
               _loc8_ = param1.substr(param1.lastIndexOf("|")).split("\n");
            }
            _loc5_ = 0;
            while(_loc5_ < _loc8_.length)
            {
               if(_loc8_[_loc5_].length > 10)
               {
                  _loc3_._SafeStr_127.push(_SafeCls_5._SafeStr_632(_loc8_[_loc5_],this.ed));
               }
               _loc5_++;
            }
         }
         else
         {
            _loc3_._SafeStr_127 = this.ed._SafeStr_327;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc3_._SafeStr_127.length)
         {
            _loc9_ = _loc3_._SafeStr_127[_loc5_];
            if(_loc5_ < 6)
            {
               _loc3_.loadout.push(_loc9_.id);
            }
            _loc5_++;
         }
         this.ed.notification_box._SafeStr_141("Loading Items");
         var _loc6_:URLRequest = new URLRequest(_SafeStr_821 + _loc3_._SafeStr_173);
         var _loc7_:URLLoader = new URLLoader(_loc6_);
         _loc7_.addEventListener(Event.COMPLETE,this._SafeStr_1077);
         _loc7_.load(_loc6_);
      }
      
      public function _SafeStr_1077(param1:Event) : void
      {
         var _loc7_:Array = null;
         var _loc8_:_SafeCls_2 = null;
         var _loc2_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         var _loc3_:Array = param1.target.data.split("\r");
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc7_ = _loc3_[_loc4_].split(",");
            if(_loc7_.length > 1)
            {
               _loc7_[0] = int(_loc7_[0]);
               _loc7_[1] = int(_loc7_[1]);
               if(_loc7_[1] == _SafeCls_9._SafeStr_245)
               {
                  _loc8_ = this.ed._SafeStr_175(_loc7_[0]);
                  if(_loc8_.size == 1)
                  {
                     _loc2_._SafeStr_196.push(_loc8_);
                  }
                  else
                  {
                     _loc2_.secondary_weapons.push(_loc8_);
                  }
               }
               else if(_loc7_[1] == _SafeCls_9._SafeStr_273)
               {
                  _loc2_.equipment.push(this.ed._SafeStr_341(_loc7_[0]));
               }
               else if(_loc7_[1] == _SafeCls_9._SafeStr_385)
               {
                  _loc2_._SafeStr_569 = true;
                  _loc2_._SafeStr_311.push(_loc7_[1]);
               }
               else if(_loc7_[1] == _SafeCls_9._SafeStr_538)
               {
                  _loc2_._SafeStr_1150 = true;
                  _loc2_._SafeStr_311.push(_loc7_[1]);
               }
               else
               {
                  _loc2_._SafeStr_311.push(_loc7_[1]);
               }
            }
            _loc4_++;
         }
         this.ed.notification_box._SafeStr_141("Loading Vehicles");
         var _loc5_:URLRequest = new URLRequest(_SafeStr_741 + _loc2_._SafeStr_173);
         var _loc6_:URLLoader = new URLLoader(_loc5_);
         _loc6_.addEventListener(Event.COMPLETE,this._SafeStr_1113);
         _loc6_.load(_loc5_);
      }
      
      public function _SafeStr_1113(param1:Event) : void
      {
         var _loc5_:int = 0;
         var _loc6_:_SafeCls_5 = null;
         trace(param1.target.data);
         var _loc2_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         var _loc3_:Array = param1.target.data.split("\r");
         var _loc4_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         if(!_loc4_.use_filler_ships)
         {
            _loc2_._SafeStr_127 = new Array();
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               if(_loc3_[_loc5_].length > 10)
               {
                  _loc2_._SafeStr_127.push(_SafeCls_5._SafeStr_632(_loc3_[_loc5_],this.ed));
               }
               _loc5_++;
            }
         }
         if(_loc2_._SafeStr_284(_loc2_.loadout[0]) == null)
         {
            _loc2_.loadout = new Array();
            _loc5_ = 0;
            while(_loc5_ < _loc2_._SafeStr_127.length)
            {
               _loc6_ = _loc2_._SafeStr_127[_loc5_];
               if(_loc5_ < 6)
               {
                  _loc2_.loadout.push(_loc6_.id);
               }
               _loc5_++;
            }
         }
         this.ed._SafeStr_117._SafeStr_250();
         this.mmocha._SafeStr_790("_");
         this.ed.notification_box._SafeStr_197();
         this.ed._SafeStr_147._SafeStr_764(this.ed,this.mmocha);
         this.ed._SafeStr_147.addEventListener(_SafeCls_66._SafeStr_504,this._SafeStr_686);
         this.ed._SafeStr_147.addEventListener(_SafeCls_66._SafeStr_336,this._SafeStr_564);
         this.ed._SafeStr_147.addEventListener(_SafeCls_66._SafeStr_324,this._SafeStr_957);
         this.ed._SafeStr_147.addEventListener(_SafeCls_66._SafeStr_373,this._SafeStr_990);
      }
      
      public function _SafeStr_686(param1:_SafeCls_66) : void
      {
         this.ed._SafeStr_147.removeEventListener(_SafeCls_66._SafeStr_504,this._SafeStr_686);
         this.ed._SafeStr_147.removeEventListener(_SafeCls_66._SafeStr_336,this._SafeStr_564);
         this.ed._SafeStr_147.removeEventListener(_SafeCls_66._SafeStr_324,this._SafeStr_957);
         this.ed._SafeStr_147.removeEventListener(_SafeCls_66._SafeStr_373,this._SafeStr_990);
         this.ed._SafeStr_117._SafeStr_407(this.ed);
         this.ed._SafeStr_117.mc.title_panel.password.text = "";
         this.ed._SafeStr_147.mc.visible = false;
         this.ed._SafeStr_147._SafeStr_314._SafeStr_250();
         _SafeCls_3._SafeStr_157()._SafeStr_254();
         this.mmocha._SafeStr_521();
      }
      
      public function _SafeStr_957(param1:_SafeCls_66) : void
      {
         this.ed._SafeStr_147._SafeStr_314._SafeStr_250();
         this.ed._SafeStr_117._SafeStr_250();
         this.ed._SafeStr_147.mc.visible = false;
         this._SafeStr_156 = new _SafeCls_102(this.ed,this.mmocha,this._SafeStr_498,param1._SafeStr_364.name);
         stage.focus = null;
         addChild(this._SafeStr_156);
         this.ed.notification_box.mc.visible = false;
         this._SafeStr_626();
         addChild(this.ed.notification_box.mc);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_337,this._SafeStr_522);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_558);
      }
      
      public function _SafeStr_990(param1:_SafeCls_66) : void
      {
         this.ed._SafeStr_147._SafeStr_314._SafeStr_250();
         this.ed._SafeStr_117._SafeStr_250();
         this.ed._SafeStr_147.mc.visible = false;
         this._SafeStr_156 = new _SafeCls_102(this.ed,this.mmocha,this._SafeStr_498,param1._SafeStr_364.name,true);
         stage.focus = null;
         addChild(this._SafeStr_156);
         this.ed.notification_box.mc.visible = false;
         this._SafeStr_626();
         addChild(this.ed.notification_box.mc);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_337,this._SafeStr_522);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_558);
      }
      
      public function _SafeStr_564(param1:_SafeCls_66) : void
      {
         this.ed._SafeStr_147._SafeStr_314._SafeStr_250();
         this.ed.notification_box._SafeStr_141("Finding Game to Join...");
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_928);
         this.mmocha._SafeStr_491();
      }
      
      public function _SafeStr_928(param1:_SafeCls_67) : void
      {
         var _loc5_:_SafeCls_7 = null;
         var _loc6_:Array = null;
         var _loc7_:_SafeCls_3 = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_928);
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param1.list.length)
         {
            _loc5_ = param1.list[_loc4_];
            if(_loc5_.name.charAt(0) == "~")
            {
               if(_loc5_._SafeStr_563 < this._SafeStr_929 && _loc5_._SafeStr_122 == _loc2_.preferred_game_mode)
               {
                  _loc3_ = _loc5_.name;
                  break;
               }
            }
            _loc4_++;
         }
         if(_loc3_ == "")
         {
            _loc3_ = "~" + int(Math.random() * 10000);
            _loc6_ = new Array();
            _loc4_ = 0;
            while(_loc4_ < this.ed.maps.length)
            {
               _loc6_.push(_loc4_);
               _loc4_++;
            }
            _loc7_ = _SafeCls_3._SafeStr_157();
            _loc8_ = 0;
            _loc9_ = 60;
            if(_loc7_.rank == 0)
            {
               _loc8_ = 0;
               _loc9_ = 0;
            }
            else if(_loc7_.rank < 3)
            {
               _loc8_ = 1;
               _loc9_ = 2;
            }
            else if(_loc7_.rank < 5)
            {
               _loc8_ = 3;
               _loc9_ = 4;
            }
            else if(_loc7_.rank < 7)
            {
               _loc8_ = 5;
               _loc9_ = 6;
            }
            else
            {
               _loc8_ = 7;
               _loc9_ = 60;
            }
            this.mmocha._SafeStr_729(_loc3_,false,_loc2_.preferred_game_mode,_loc6_,1,int(Math.random() * _loc6_.length),_loc8_,_loc9_);
         }
         this.ed._SafeStr_117._SafeStr_250();
         this.ed._SafeStr_147.mc.visible = false;
         this._SafeStr_156 = new _SafeCls_102(this.ed,this.mmocha,this._SafeStr_498,_loc3_);
         stage.focus = null;
         addChild(this._SafeStr_156);
         this.ed.notification_box.mc.visible = false;
         this._SafeStr_626();
         addChild(this.ed.notification_box.mc);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_337,this._SafeStr_522);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_558);
      }
      
      public function _SafeStr_522(param1:_SafeCls_66) : void
      {
         this._SafeStr_156.removeEventListener(_SafeCls_66._SafeStr_337,this._SafeStr_522);
         this._SafeStr_156.removeEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_558);
         this.ed.notification_box._SafeStr_197();
         this.ed._SafeStr_147._SafeStr_764(this.ed,this.mmocha);
         this._SafeStr_808();
         this.ed._SafeStr_147.updateCash();
         this._SafeStr_480();
      }
      
      public function _SafeStr_558(param1:_SafeCls_66) : void
      {
         this._SafeStr_156.removeEventListener(_SafeCls_66._SafeStr_337,this._SafeStr_522);
         this._SafeStr_156.removeEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_558);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_389,this._SafeStr_568);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_568);
         this.mmocha._SafeStr_790("_");
         removeChild(this._SafeStr_156);
         this._SafeStr_156 = null;
         this.ed.notification_box._SafeStr_197();
         this.ed._SafeStr_147._SafeStr_764(this.ed,this.mmocha);
         this._SafeStr_808();
         this.ed._SafeStr_147.updateCash();
         this._SafeStr_480();
      }
      
      public function _SafeStr_1330(param1:_SafeCls_67) : void
      {
      }
      
      public function _SafeStr_568(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_389,this._SafeStr_568);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_568);
      }
      
      public function _SafeStr_808() : void
      {
         var _loc1_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         _loc1_.rank = 0;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.ranks.length)
         {
            if(_loc2_.ranks[_loc3_] > _loc1_._SafeStr_330)
            {
               break;
            }
            ++_loc1_.rank;
            _loc3_++;
         }
      }
      
      public function _SafeStr_797(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_319,this._SafeStr_797);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_289,this._SafeStr_704);
         this.ed.notification_box._SafeStr_141("Connected Finding Game to Join...");
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_710);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_793);
         this.mmocha._SafeStr_154(this._SafeStr_829);
         trace("Sent quit sniffing message");
         this.mmocha._SafeStr_491();
      }
      
      public function _SafeStr_704(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_319,this._SafeStr_797);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_289,this._SafeStr_704);
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         this.ed.notification_box._SafeStr_141("ERROR: Failed to connect to: " + _loc2_.servers[this._SafeStr_356][0]);
      }
      
      public function _SafeStr_710(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_710);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_793);
         if(param1.message == "09b")
         {
            this.ed.notification_box._SafeStr_141("The game version you are running is out of date. Please clear your cache and refresh the page.");
         }
         else if(param1.message == "091")
         {
            this.ed.notification_box._SafeStr_108("Your account has been temporarily banned. Please try logging in again after your ban has expired");
         }
         this.mmocha._SafeStr_521();
      }
      
      public function _SafeStr_793(param1:_SafeCls_67) : void
      {
         var _loc4_:_SafeCls_7 = null;
         var _loc5_:Array = null;
         trace("Room Listed " + param1.list.length);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_710);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_793);
         var _loc2_:String = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.list.length)
         {
            _loc4_ = param1.list[_loc3_];
            trace("Room: " + _loc4_.name);
            if(_loc4_.name.charAt(0) == "!")
            {
               if(_loc4_._SafeStr_563 < this._SafeStr_929)
               {
                  _loc2_ = _loc4_.name;
                  break;
               }
            }
            _loc3_++;
         }
         if(_loc2_ == "")
         {
            _loc2_ = "!" + int(Math.random() * 10000);
            _loc5_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < this.ed.maps.length)
            {
               _loc5_.push(_loc3_);
               _loc3_++;
            }
            this.mmocha._SafeStr_729(_loc2_,false,_SafeCls_4._SafeStr_213,_loc5_,1,int(Math.random() * _loc5_.length),0,0);
         }
         this._SafeStr_156 = new _SafeCls_102(this.ed,this.mmocha,this._SafeStr_498,_loc2_);
         addChild(this._SafeStr_156);
         stage.focus = null;
         this.ed.notification_box.mc.visible = false;
         this._SafeStr_626();
         addChild(this.ed.notification_box.mc);
         this._SafeStr_156.addEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_924);
      }
      
      public function _SafeStr_924(param1:_SafeCls_66) : void
      {
         this._SafeStr_480();
         this._SafeStr_156.removeEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_924);
         removeChild(this._SafeStr_156);
         this._SafeStr_156 = null;
         this.mmocha._SafeStr_521();
         this.ed._SafeStr_117._SafeStr_407(this.ed);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "2H"
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_7 = "8$"
 * @identifier _SafeCls_9 = " try"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_11 = "return"
 * @identifier _SafeCls_22 = " 2"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_68 = "76"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_101 = "]Q"
 * @identifier _SafeCls_102 = "-T"
 * @identifier _SafeCls_0 = "<L"
 * @identifier _SafePkg_1 = ">"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_12 = "?5"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_117 = "8"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_122 = "5#"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_127 = "-!"
 * @identifier _SafeStr_130 = "4H"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_147 = "%A"
 * @identifier _SafeStr_154 = "61"
 * @identifier _SafeStr_156 = "2G"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_173 = "4R"
 * @identifier _SafeStr_175 = "97"
 * @identifier _SafeStr_180 = "^I"
 * @identifier _SafeStr_190 = " ;"
 * @identifier _SafeStr_191 = "^9"
 * @identifier _SafeStr_196 = "@R"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_204 = "[<"
 * @identifier _SafeStr_209 = "]9"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_217 = "<,"
 * @identifier _SafeStr_218 = "]M"
 * @identifier _SafeStr_230 = "-#"
 * @identifier _SafeStr_239 = " 0"
 * @identifier _SafeStr_245 = "-6"
 * @identifier _SafeStr_250 = "0G"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_269 = "`5"
 * @identifier _SafeStr_273 = "=="
 * @identifier _SafeStr_279 = "63"
 * @identifier _SafeStr_284 = "7"
 * @identifier _SafeStr_289 = "84"
 * @identifier _SafeStr_311 = "#$"
 * @identifier _SafeStr_314 = "?E"
 * @identifier _SafeStr_319 = "!;"
 * @identifier _SafeStr_322 = "65"
 * @identifier _SafeStr_324 = "^M"
 * @identifier _SafeStr_327 = "1+"
 * @identifier _SafeStr_330 = "4?"
 * @identifier _SafeStr_331 = "5L"
 * @identifier _SafeStr_336 = "`?"
 * @identifier _SafeStr_337 = "#S"
 * @identifier _SafeStr_341 = "6;"
 * @identifier _SafeStr_356 = "+T"
 * @identifier _SafeStr_364 = "^H"
 * @identifier _SafeStr_373 = "<D"
 * @identifier _SafeStr_385 = ">4"
 * @identifier _SafeStr_389 = "@S"
 * @identifier _SafeStr_399 = "1Q"
 * @identifier _SafeStr_407 = "7<"
 * @identifier _SafeStr_429 = " 1"
 * @identifier _SafeStr_451 = "9L"
 * @identifier _SafeStr_463 = "99"
 * @identifier _SafeStr_471 = "+U"
 * @identifier _SafeStr_480 = "`;"
 * @identifier _SafeStr_491 = "?4"
 * @identifier _SafeStr_498 = "0$"
 * @identifier _SafeStr_504 = "5!"
 * @identifier _SafeStr_514 = "-K"
 * @identifier _SafeStr_519 = "else "
 * @identifier _SafeStr_521 = "[3"
 * @identifier _SafeStr_522 = "]N"
 * @identifier _SafeStr_538 = ";Q"
 * @identifier _SafeStr_558 = "@2"
 * @identifier _SafeStr_563 = "7A"
 * @identifier _SafeStr_564 = "?K"
 * @identifier _SafeStr_565 = "^R"
 * @identifier _SafeStr_568 = ";I"
 * @identifier _SafeStr_569 = "^@"
 * @identifier _SafeStr_619 = ">R"
 * @identifier _SafeStr_626 = "5\'"
 * @identifier _SafeStr_632 = "?!"
 * @identifier _SafeStr_642 = ",,"
 * @identifier _SafeStr_655 = "\'!"
 * @identifier _SafeStr_686 = "2B"
 * @identifier _SafeStr_692 = "%P"
 * @identifier _SafeStr_704 = "[I"
 * @identifier _SafeStr_710 = "2L"
 * @identifier _SafeStr_729 = "2!"
 * @identifier _SafeStr_737 = "\"#"
 * @identifier _SafeStr_741 = ",%"
 * @identifier _SafeStr_764 = "70"
 * @identifier _SafeStr_776 = "<M"
 * @identifier _SafeStr_789 = "!E"
 * @identifier _SafeStr_790 = "9?"
 * @identifier _SafeStr_793 = "\"V"
 * @identifier _SafeStr_797 = " @"
 * @identifier _SafeStr_798 = "#U"
 * @identifier _SafeStr_806 = " case"
 * @identifier _SafeStr_808 = "[B"
 * @identifier _SafeStr_814 = "6C"
 * @identifier _SafeStr_821 = "?0"
 * @identifier _SafeStr_829 = "6"
 * @identifier _SafeStr_831 = "15"
 * @identifier _SafeStr_854 = " C"
 * @identifier _SafeStr_884 = "!,"
 * @identifier _SafeStr_892 = "`P"
 * @identifier _SafeStr_923 = "0&"
 * @identifier _SafeStr_924 = "\"3"
 * @identifier _SafeStr_925 = ",E"
 * @identifier _SafeStr_928 = "-M"
 * @identifier _SafeStr_929 = "\"F"
 * @identifier _SafeStr_957 = ",+"
 * @identifier _SafeStr_968 = ",7"
 * @identifier _SafeStr_973 = "#&"
 * @identifier _SafeStr_990 = "3;"
 * @identifier _SafeStr_1002 = ";;"
 * @identifier _SafeStr_1005 = "95"
 * @identifier _SafeStr_1019 = "9<"
 * @identifier _SafeStr_1038 = "\'U"
 * @identifier _SafeStr_1077 = "7N"
 * @identifier _SafeStr_1094 = "\"H"
 * @identifier _SafeStr_1113 = "#4"
 * @identifier _SafeStr_1115 = "=,"
 * @identifier _SafeStr_1150 = "5G"
 * @identifier _SafeStr_1198 = "]-"
 * @identifier _SafeStr_1216 = ",8"
 * @identifier _SafeStr_1330 = "%\""
 */
