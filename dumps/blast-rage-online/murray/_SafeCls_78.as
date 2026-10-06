package murray
{
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class _SafeCls_78 extends EventDispatcher
   {
      
      public static const _SafeStr_262:int = 10;
      
      public static const _SafeStr_398:int = 300;
      
      public static const _SafeStr_784:int = 40;
      
      public static const _SafeStr_344:int = 32000;
      
      private const _SafeStr_1315:int = 12000;
      
      private const _SafeStr_1083:int = 6;
      
      private const _SafeStr_1062:int = 1000;
      
      public var mc:MovieClip;
      
      public var _SafeStr_447:Array;
      
      public var _SafeStr_773:Array;
      
      public var _SafeStr_445:Array;
      
      public var _SafeStr_985:Array;
      
      public var _SafeStr_851:Array;
      
      public var _SafeStr_858:Array;
      
      public var _SafeStr_742:Array;
      
      public var _SafeStr_636:Array;
      
      public var _SafeStr_578:int = 0;
      
      public var ship_slots:Array;
      
      public var _SafeStr_302:Boolean = false;
      
      public var chat_messages:Array = new Array();
      
      public var _SafeStr_251:String = "";
      
      private var chat_bottom:int = -1;
      
      public var _SafeStr_576:Number;
      
      public var _SafeStr_216:Boolean = true;
      
      private var _SafeStr_120:Array;
      
      private var _SafeStr_531:_SafeCls_86;
      
      private var _SafeStr_485:_SafeCls_86;
      
      private var _SafeStr_913:Number = 0;
      
      public var _SafeStr_122:int = 0;
      
      private var _SafeStr_613:Timer = new Timer(1000);
      
      private var _SafeStr_346:_SafeCls_84;
      
      private var _SafeStr_977:_SafeCls_51;
      
      private var ed:_SafeCls_72;
      
      private var _SafeStr_720:Boolean = false;
      
      private var _SafeStr_1284:int = -1;
      
      public function _SafeCls_78(param1:MovieClip, param2:Stage, param3:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.ed = param3;
         this._SafeStr_445 = [param1.card1,param1.card2,param1.card3,param1.card4,param1.card5];
         var _loc4_:int = 0;
         while(_loc4_ < this._SafeStr_445.length)
         {
            this._SafeStr_445[_loc4_].gotoAndStop(1);
            _loc4_++;
         }
         this._SafeStr_447 = [param1.border2,param1.border3,param1.border4,param1.border5];
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_447.length)
         {
            this._SafeStr_447[_loc4_].gotoAndStop(1);
            _loc4_++;
         }
         this._SafeStr_773 = [param1.number1,param1.number2,param1.number3,param1.number4];
         this._SafeStr_985 = [param1.cooldown1,param1.cooldown2,param1.cooldown3,param1.cooldown4,param1.cooldown5];
         param1.change_ship.visible = false;
         param1.options.visible = false;
         this._SafeStr_977 = new _SafeCls_51(param1.customize_controls);
         this._SafeStr_346 = new _SafeCls_84(param1.options);
         param1.options.ok2.visible = false;
         param1.scoreboard.visible = false;
         param1.scoreboard.mouseEnabled = false;
         param1.summary.visible = false;
         param1.summary.mvpglow1.gotoAndStop(1);
         param1.summary.mvpglow2.gotoAndStop(1);
         param1.summary.mvpglow3.gotoAndStop(1);
         param1.summary.mvpglow4.gotoAndStop(1);
         param1.quickstart_nag.visible = false;
         param1.quickstart_nag.create_account_now.addEventListener(MouseEvent.CLICK,this._SafeStr_1196);
         this.ship_slots = [param1.change_ship.slot1,param1.change_ship.slot2,param1.change_ship.slot3,param1.change_ship.slot4,param1.change_ship.slot5,param1.change_ship.slot6];
         _loc4_ = 0;
         while(_loc4_ < this.ship_slots.length)
         {
            this.ship_slots[_loc4_].gotoAndStop(1);
            this.ship_slots[_loc4_].useHandCursor = true;
            this.ship_slots[_loc4_].buttonMode = true;
            this.ship_slots[_loc4_].addEventListener(MouseEvent.CLICK,this._SafeStr_980);
            this.ship_slots[_loc4_].mouseChildren = false;
            this.ship_slots[_loc4_].mouseover.visible = false;
            _loc4_++;
         }
         this.ship_slots[0].gotoAndStop(2);
         param1.change_ship.request_team_change.addEventListener(MouseEvent.CLICK,this._SafeStr_896);
         param1.change_ship.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_979);
         param1.change_ship.cancel.visible = false;
         param1.loadout_button.addEventListener(MouseEvent.CLICK,this._SafeStr_849);
         param1.menu_button.addEventListener(MouseEvent.CLICK,this._SafeStr_353);
         param1.chat_button.gotoAndStop(2);
         param1.chat_button.buttonMode = true;
         param1.chat_button.useHandCursor = true;
         if(param1.chat_bottom == null)
         {
            this.chat_bottom = param1.chat.y + param1.chat.height;
            param1.chat_bottom = this.chat_bottom;
         }
         else
         {
            this.chat_bottom = param1.chat_bottom;
         }
         param1.chat.htmlText = "";
         param1.chat.wordWrap = true;
         param1.chat.autoSize = "left";
         param1.chat_entry.visible = false;
         param1.chat_entry_box.visible = false;
         param1.mod_panel.visible = false;
         param2.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_873);
         this._SafeStr_346.addEventListener(_SafeCls_66.CLOSE,this._SafeStr_391);
         this._SafeStr_576 = getTimer();
         this._SafeStr_346.addEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_682);
         this._SafeStr_120 = [param1.scoreboard.bar1,param1.scoreboard.bar2,param1.scoreboard.bar3,param1.scoreboard.bar4,param1.scoreboard.bar5,param1.scoreboard.bar6,param1.scoreboard.bar7,param1.scoreboard.bar8,param1.scoreboard.bar9,param1.scoreboard.bar10];
         _SafeCls_10._SafeStr_328(param1.summary.mvp_winning);
         _SafeCls_10._SafeStr_328(param1.summary.mvp_losing);
         _SafeCls_10._SafeStr_113(param1.change_ship.request_team_change);
         _SafeCls_10._SafeStr_113(param1.change_ship.cancel);
         this._SafeStr_613.addEventListener(TimerEvent.TIMER,this._SafeStr_823);
         this._SafeStr_613.start();
         param1.tutorial_overlay.mouseEnabled = false;
         param1.countdown.visible = false;
         this._SafeStr_346.addEventListener(_SafeCls_66._SafeStr_403,this._SafeStr_617);
      }
      
      public function _SafeStr_1231(param1:int) : void
      {
         this._SafeStr_122 = param1;
         if(param1 == _SafeCls_4._SafeStr_164)
         {
            this.mc.top_bar.gotoAndStop(1);
            this.mc.top_bar.green_objective.backgroundColor = 0;
            this.mc.top_bar.green_objective.background = true;
            this.mc.top_bar.red_objective.backgroundColor = 0;
            this.mc.top_bar.red_objective.background = true;
            this._SafeStr_851 = [this.mc.top_bar.green_objective,this.mc.top_bar.red_objective];
            this._SafeStr_858 = [this.mc.top_bar.green_objective_count,this.mc.top_bar.red_objective_count];
            this._SafeStr_636 = [this.mc.top_bar.green_bar,this.mc.top_bar.red_bar];
            this.mc.top_bar.green_objective_count.text = "0";
            this.mc.top_bar.red_objective_count.text = "0";
            this.mc.top_bar.green_objective.text = "0";
            this.mc.top_bar.red_objective.text = "0";
         }
         else if(param1 == _SafeCls_4._SafeStr_213)
         {
            this.mc.top_bar.gotoAndStop(2);
            this._SafeStr_742 = [this.mc.top_bar.blue_score,this.mc.top_bar.red_score];
            this.mc.top_bar.red_score.text = "0";
            this.mc.top_bar.blue_score.text = "0";
         }
         else if(param1 == _SafeCls_4._SafeStr_144)
         {
            this.mc.top_bar.gotoAndStop(3);
            this.mc.top_bar.kills.text = "0";
            this.mc.top_bar.place.text = "";
         }
         this.mc.tutorial_overlay.visible = false;
      }
      
      public function _SafeStr_909() : void
      {
         this.mc.tutorial_overlay.visible = true;
         setTimeout(this._SafeStr_1098,15000);
      }
      
      public function _SafeStr_1098() : void
      {
         var _loc1_:SharedObject = SharedObject.getLocal("bro_so");
         this.mc.tutorial_overlay.visible = false;
         _loc1_.data.show_tutorial = false;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         _loc2_.show_tutorial = false;
      }
      
      public function _SafeStr_962(param1:_SafeCls_17) : void
      {
         trace("Updating kills");
         this.mc.top_bar.kills.text = param1.kills;
      }
      
      public function _SafeStr_1196(param1:MouseEvent) : void
      {
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_218));
         this.ed._SafeStr_117.mc.create_account_overlay.visible = true;
         this.ed._SafeStr_117.mc.stage.focus = this.ed._SafeStr_117.mc.create_account_overlay.username;
      }
      
      public function _SafeStr_682(param1:_SafeCls_66) : void
      {
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_218));
      }
      
      public function _SafeStr_1191() : void
      {
         this._SafeStr_613.stop();
         var _loc1_:int = 0;
         while(_loc1_ < this.ship_slots.length)
         {
            this.ship_slots[_loc1_].removeEventListener(MouseEvent.CLICK,this._SafeStr_980);
            _loc1_++;
         }
         _SafeCls_10._SafeStr_483(this.mc.change_ship.request_team_change);
         _SafeCls_10._SafeStr_483(this.mc.change_ship.cancel);
         this.mc.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_873);
         this.mc.change_ship.request_team_change.removeEventListener(MouseEvent.CLICK,this._SafeStr_896);
         this.mc.change_ship.cancel.removeEventListener(MouseEvent.CLICK,this._SafeStr_979);
         this.mc.loadout_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_849);
         this.mc.menu_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_353);
         this._SafeStr_346.removeEventListener(_SafeCls_66.CLOSE,this._SafeStr_391);
         this._SafeStr_346.removeEventListener(_SafeCls_66._SafeStr_403,this._SafeStr_617);
      }
      
      public function _SafeStr_617(param1:_SafeCls_66) : void
      {
         this._SafeStr_977._SafeStr_168(this._SafeStr_811,this.ed.notification_box);
      }
      
      public function _SafeStr_811() : void
      {
         this._SafeStr_346.mc.visible = true;
      }
      
      public function _SafeStr_391(param1:_SafeCls_66) : void
      {
         if(!this._SafeStr_302)
         {
            this._SafeStr_216 = true;
         }
         trace("Hide options: " + this._SafeStr_302 + " " + this._SafeStr_216);
      }
      
      public function _SafeStr_353(param1:MouseEvent = null) : void
      {
         this._SafeStr_216 = false;
         this._SafeStr_346._SafeStr_353();
      }
      
      public function _SafeStr_1078() : void
      {
         this._SafeStr_302 = true;
         this._SafeStr_216 = false;
         this.mc.chat_entry.visible = true;
         this.mc.chat_entry_box.visible = true;
         this.mc.chat_entry.text = ">_";
         this._SafeStr_251 = "";
      }
      
      public function _SafeStr_893() : void
      {
         this._SafeStr_302 = false;
         this._SafeStr_216 = true;
         this.mc.chat_entry.visible = false;
         this.mc.chat_entry_box.visible = false;
      }
      
      public function _SafeStr_1290() : void
      {
         this.chat_messages = [];
         this._SafeStr_823();
      }
      
      public function _SafeStr_823(param1:TimerEvent = null) : void
      {
         var _loc5_:_SafeCls_56 = null;
         var _loc2_:String = "<font letterspacing=\'0.5\'>";
         var _loc3_:* = int(this.chat_messages.length - this._SafeStr_1083);
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         var _loc4_:Number = Number(getTimer());
         while(_loc3_ < this.chat_messages.length)
         {
            _loc5_ = this.chat_messages[_loc3_];
            if(_loc5_._SafeStr_912 < _loc4_)
            {
               this.chat_messages.splice(_loc3_,1);
               _loc3_--;
            }
            else
            {
               _loc2_ += _loc5_.message + "\n";
            }
            _loc3_++;
         }
         this.mc.chat.htmlText = _loc2_ + "</font>";
         this.mc.chat.y = this.chat_bottom - this.mc.chat.height;
      }
      
      public function _SafeStr_158(param1:String, param2:int = 12000) : void
      {
         var _loc3_:_SafeCls_56 = new _SafeCls_56(param1,param2 + getTimer());
         this.chat_messages.push(_loc3_);
         this._SafeStr_823();
      }
      
      public function _SafeStr_873(param1:KeyboardEvent) : void
      {
         var _loc2_:_SafeCls_4 = null;
         if(!this._SafeStr_302)
         {
            if(this._SafeStr_216)
            {
               _loc2_ = _SafeCls_4._SafeStr_121();
               if(!_loc2_.custom_controls && (param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.T) || _loc2_.custom_controls && param1.keyCode == _loc2_.controls[4])
               {
                  if(getTimer() - this._SafeStr_913 > this._SafeStr_1062)
                  {
                     this._SafeStr_1078();
                  }
               }
            }
         }
         else if(param1.keyCode == Keyboard.ENTER)
         {
            if(this._SafeStr_251 != "")
            {
               dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_648));
               this._SafeStr_913 = getTimer();
            }
            this._SafeStr_893();
         }
         else if(param1.keyCode == Keyboard.ESCAPE)
         {
            this._SafeStr_893();
         }
         else if(param1.keyCode == Keyboard.BACKSPACE)
         {
            this._SafeStr_251 = this._SafeStr_251.substr(0,this._SafeStr_251.length - 1);
            this.mc.chat_entry.text = ">" + this._SafeStr_251 + "_";
            this.mc.chat_entry.scrollH = this.mc.chat_entry.maxScrollH;
         }
         else if(param1.charCode > 21)
         {
            if(this._SafeStr_251.length < 64)
            {
               this._SafeStr_251 += String.fromCharCode(param1.charCode);
            }
            this.mc.chat_entry.text = ">" + this._SafeStr_251 + "_";
            this.mc.chat_entry.scrollH = this.mc.chat_entry.maxScrollH;
         }
      }
      
      public function _SafeStr_1166() : void
      {
         this._SafeStr_216 = false;
      }
      
      public function _SafeStr_1331(param1:MouseEvent = null) : void
      {
         if(!this.mc.change_ship.visible && !this.mc.options.visible && !this._SafeStr_302)
         {
            this._SafeStr_216 = true;
         }
      }
      
      public function _SafeStr_755(param1:int) : void
      {
         if(!this.mc.change_ship.visible)
         {
            this.mc.change_ship.visible = true;
            if(this.mc.warmup.visible)
            {
               this.mc.change_ship.title.text = "CHOOSE YOUR STARTING SHIP";
            }
            else
            {
               this.mc.change_ship.title.text = "YOU ARE DEAD";
            }
            if(this._SafeStr_122 == _SafeCls_4._SafeStr_144)
            {
               this.mc.change_ship.request_team_change.visible = false;
            }
            else
            {
               this.mc.change_ship.request_team_change.visible = true;
            }
         }
         var _loc2_:int = param1 / 30;
         if(_loc2_ > 0)
         {
            this.mc.change_ship.text.text = "Respawning in " + _loc2_ + "...\r\n\r\nSelect a vehicle to respawn in:";
         }
         else
         {
            this.mc.change_ship.text.text = "Respawning...\r\n\r\nSelect a vehicle to respawn in:";
         }
         this.mc.change_ship.cancel.visible = false;
      }
      
      public function _SafeStr_975() : void
      {
         this.mc.change_ship.visible = true;
         this.mc.change_ship.title.text = "CHOOSE YOUR STARTING SHIP";
         if(this._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            this.mc.change_ship.request_team_change.visible = false;
         }
         else
         {
            this.mc.change_ship.request_team_change.visible = true;
         }
         this.mc.change_ship.text.text = "";
         this.mc.change_ship.cancel.visible = false;
      }
      
      public function _SafeStr_1058() : void
      {
         if(Boolean(this.mc.change_ship.visible) && !this.mc.change_ship.cancel.visible)
         {
            this.mc.change_ship.visible = false;
            if(!this._SafeStr_302)
            {
               this._SafeStr_216 = true;
            }
         }
      }
      
      public function _SafeStr_849(param1:MouseEvent) : void
      {
         this._SafeStr_216 = false;
         this.mc.change_ship.visible = true;
         this.mc.change_ship.title.text = "CHOOSE A SHIP";
         this.mc.change_ship.text.text = "Use this screen to change ships(will cause you to die) or hit cancel to get out of this screen";
         this.mc.change_ship.cancel.visible = true;
         if(this._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            this.mc.change_ship.request_team_change.visible = false;
         }
         else
         {
            this.mc.change_ship.request_team_change.visible = true;
         }
      }
      
      public function _SafeStr_872(param1:int, param2:int) : void
      {
         this.mc.change_ship.visible = true;
         if(param1 > 1)
         {
            this.mc.change_ship.title.text = "POINT OVERLOADED BY BOTH TEAMS";
            this._SafeStr_158("&lt;&lt;Point Overloaded!&gt;&gt;",10000);
         }
         else if(param1 == 1)
         {
            this.mc.change_ship.title.text = "RED TEAM SCORES";
            this._SafeStr_158("<b><font color=\'#d21b30\'>&lt;&lt;Red Team Scores!&gt;&gt;</font></b>",10000);
         }
         else if(param1 == 0)
         {
            this.mc.change_ship.title.text = "BLUE TEAM SCORES";
            this._SafeStr_158("<b><font color=\'#41b9c4\'>&lt;&lt;Blue Team Scores!&gt;&gt;</font></b>",10000);
         }
         var _loc3_:int = param2 / 30;
         this.mc.change_ship.text.text = "Respawning in " + _loc3_ + "...\r\n\r\nSelect a vehicle to respawn in:";
         this.mc.change_ship.cancel.visible = false;
      }
      
      public function _SafeStr_980(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.ship_slots.length)
         {
            if(param1.target == this.ship_slots[_loc2_])
            {
               this._SafeStr_578 = _loc2_;
               this.ship_slots[_loc2_].gotoAndStop(2);
            }
            else
            {
               this.ship_slots[_loc2_].gotoAndStop(1);
            }
            _loc2_++;
         }
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_588));
      }
      
      public function _SafeStr_979(param1:MouseEvent) : void
      {
         this.mc.change_ship.visible = false;
         this.mc.change_ship.cancel.visible = false;
         if(!this._SafeStr_302)
         {
            this._SafeStr_216 = true;
         }
      }
      
      public function _SafeStr_896(param1:MouseEvent) : void
      {
         this.mc.change_ship.visible = false;
         if(!this._SafeStr_302)
         {
            this._SafeStr_216 = true;
         }
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_304));
      }
      
      public function _SafeStr_1215(param1:_SafeCls_3) : void
      {
         var _loc4_:_SafeCls_5 = null;
         var _loc5_:Number = NaN;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         var _loc3_:int = 0;
         while(_loc3_ < this.ship_slots.length)
         {
            if(_loc3_ < param1.loadout.length)
            {
               _loc4_ = param1._SafeStr_284(param1.loadout[_loc3_]);
               this.ship_slots[_loc3_].visible = true;
               this.ship_slots[_loc3_].mouseEnabled = true;
               this.ship_slots[_loc3_].ship_name.visible = true;
               this.ship_slots[_loc3_].weapons.visible = true;
               this.ship_slots[_loc3_].ship.visible = true;
               this.ship_slots[_loc3_].equipment.visible = true;
               this.ship_slots[_loc3_].ship_name.gotoAndStop(_loc4_.ship.graphic);
               if(_SafeCls_10._SafeStr_406(_loc4_.color1) < _loc2_.min_intensity)
               {
                  if(_SafeCls_10._SafeStr_406(_loc4_.color1) == 0)
                  {
                     this.ship_slots[_loc3_].ship_name.transform.colorTransform = _SafeCls_10._SafeStr_231(_loc4_.color1 + _loc2_.color_add);
                  }
                  else
                  {
                     _loc5_ = 1 * _loc2_.min_intensity / _SafeCls_10._SafeStr_406(_loc4_.color1);
                     this.ship_slots[_loc3_].ship_name.transform.colorTransform = _SafeCls_10._SafeStr_231(_SafeCls_10._SafeStr_900(_loc4_.color1,_loc5_));
                  }
               }
               else
               {
                  this.ship_slots[_loc3_].ship_name.transform.colorTransform = _SafeCls_10._SafeStr_231(_loc4_.color1);
               }
               _loc4_._SafeStr_199(this.ship_slots[_loc3_].ship);
               this.ship_slots[_loc3_].weapons.gotoAndStop(_loc4_.weapons.length);
               this.ship_slots[_loc3_].equipment.gotoAndStop(_loc4_.equipment.length);
               if(_loc4_.weapons.length > 0 && this.ship_slots[_loc3_].weapons.weapon1 != null)
               {
                  this.ship_slots[_loc3_].weapons.weapon1.gotoAndStop(_loc4_.weapons[0].card);
               }
               if(_loc4_.weapons.length > 1 && this.ship_slots[_loc3_].weapons.weapon1 != null)
               {
                  this.ship_slots[_loc3_].weapons.weapon2.gotoAndStop(_loc4_.weapons[1].card);
               }
               if(_loc4_.weapons.length > 2 && this.ship_slots[_loc3_].weapons.weapon1 != null)
               {
                  this.ship_slots[_loc3_].weapons.weapon3.gotoAndStop(_loc4_.weapons[2].card);
               }
               if(_loc4_.weapons.length > 3 && this.ship_slots[_loc3_].weapons.weapon1 != null)
               {
                  this.ship_slots[_loc3_].weapons.weapon4.gotoAndStop(_loc4_.weapons[3].card);
               }
               if(_loc4_.weapons.length > 4 && this.ship_slots[_loc3_].weapons.weapon1 != null)
               {
                  this.ship_slots[_loc3_].weapons.weapon5.gotoAndStop(_loc4_.weapons[4].card);
               }
               if(_loc4_.equipment.length > 0 && this.ship_slots[_loc3_].equipment.equipment1 != null)
               {
                  this.ship_slots[_loc3_].equipment.equipment1.gotoAndStop(_loc4_.equipment[0].card);
               }
               if(_loc4_.equipment.length > 1 && this.ship_slots[_loc3_].equipment.equipment2 != null)
               {
                  this.ship_slots[_loc3_].equipment.equipment2.gotoAndStop(_loc4_.equipment[1].card);
               }
               if(_loc4_.equipment.length > 2 && this.ship_slots[_loc3_].equipment.equipment3 != null)
               {
                  this.ship_slots[_loc3_].equipment.equipment3.gotoAndStop(_loc4_.equipment[2].card);
               }
               if(_loc4_.equipment.length > 3 && this.ship_slots[_loc3_].equipment.equipment4 != null)
               {
                  this.ship_slots[_loc3_].equipment.equipment4.gotoAndStop(_loc4_.equipment[3].card);
               }
               if(_loc4_.equipment.length > 4 && this.ship_slots[_loc3_].equipment.equipment5 != null)
               {
                  this.ship_slots[_loc3_].equipment.equipment5.gotoAndStop(_loc4_.equipment[4].card);
               }
            }
            else
            {
               this.ship_slots[_loc3_].visible = true;
               this.ship_slots[_loc3_].mouseEnabled = false;
               this.ship_slots[_loc3_].ship_name.visible = false;
               this.ship_slots[_loc3_].weapons.visible = false;
               this.ship_slots[_loc3_].ship.visible = false;
               this.ship_slots[_loc3_].equipment.visible = false;
            }
            _loc3_++;
         }
      }
      
      public function _SafeStr_1033(param1:int) : void
      {
         var _loc2_:MovieClip = this._SafeStr_445[0];
         _loc2_.gotoAndStop(2);
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_447.length)
         {
            _loc2_ = this._SafeStr_445[_loc3_ + 1];
            if(_loc3_ > param1 - 1)
            {
               this._SafeStr_447[_loc3_].gotoAndStop(3);
               this._SafeStr_773[_loc3_].visible = false;
               _loc2_.gotoAndStop(1);
            }
            else
            {
               this._SafeStr_447[_loc3_].gotoAndStop(1);
               _loc2_.gotoAndStop(2);
               this._SafeStr_773[_loc3_].visible = true;
            }
            _loc3_++;
         }
      }
      
      public function _SafeStr_1090(param1:int, param2:String) : void
      {
         this._SafeStr_445[param1].gotoAndStop(param2);
      }
      
      public function _SafeStr_1132(param1:int, param2:int) : void
      {
         this._SafeStr_985[param1].gotoAndPlay(param2 + 1);
      }
      
      public function _SafeStr_1171(param1:_SafeCls_72) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:_SafeCls_6 = null;
         var _loc2_:int = getTimer() - this._SafeStr_576;
         var _loc3_:int = _loc2_ / 1000;
         if(_loc3_ < _SafeStr_262)
         {
            _loc4_ = _SafeStr_262 - _loc3_;
            this.mc.warmup.visible = true;
            if(_loc4_ > 0)
            {
               this.mc.warmup.warmup_text.text = "WARM UP - NO SCORING COUNTED - ROUND BEGINS IN " + _loc4_ + "...";
            }
            else
            {
               this.mc.warmup.warmup_text.text = "WARM UP - NO SCORING COUNTED - STARTING ROUND...";
            }
            this.mc.top_bar.timer.text = "" + _loc4_;
         }
         else if(_loc3_ <= _SafeStr_262 + _SafeStr_398)
         {
            this.mc.warmup.visible = false;
            _loc5_ = _SafeStr_398 + _SafeStr_262 - _loc3_;
            this.mc.top_bar.timer.text = Math.floor(_loc5_ / 60) + ":" + this._SafeStr_1193(_loc5_ % 60 + "","0",2);
            if(_loc5_ <= 10)
            {
               if(_loc5_ > 0)
               {
                  this.mc.countdown.visible = true;
                  this.mc.countdown.text = _loc5_;
                  _loc6_ = (1000 - _loc2_ % 1000) / 1000;
                  if(_loc5_ < 6 && this.mc.countdown.scaleX < _loc6_)
                  {
                     _loc7_ = _SafeCls_6._SafeStr_121();
                     _loc7_._SafeStr_126(param1._SafeStr_119("Round_End_Warning"));
                  }
                  this.mc.countdown.scaleX = _loc6_;
                  this.mc.countdown.scaleY = _loc6_;
                  this.mc.countdown.x = this.mc.countdown_center.x - this.mc.countdown.width / 2;
                  this.mc.countdown.y = this.mc.countdown_center.y - this.mc.countdown.height / 2;
               }
               else
               {
                  this.mc.countdown.visible = false;
               }
            }
         }
         else
         {
            this.mc.warmup.visible = false;
            this.mc.countdown.visible = false;
            this.mc.top_bar.timer.text = "--";
         }
      }
      
      public function _SafeStr_1193(param1:String, param2:String, param3:int) : String
      {
         var _loc4_:String = param1;
         while(_loc4_.length < param3)
         {
            _loc4_ = param2 + _loc4_;
         }
         return _loc4_;
      }
      
      public function _SafeStr_381(param1:int, param2:int) : void
      {
         var _loc3_:Number = param1 * 1 / _SafeStr_344;
         this._SafeStr_851[param2].text = "" + int(_loc3_ * 10000);
         this._SafeStr_636[param2].mask.x = 63 - 63 * _loc3_;
         if(param2 == 1)
         {
            this._SafeStr_636[param2].mask.x = -this._SafeStr_636[param2].mask.x;
         }
      }
      
      public function _SafeStr_596(param1:int, param2:int) : void
      {
         this._SafeStr_858[param2].text = "" + param1;
      }
      
      public function _SafeStr_669(param1:Array) : void
      {
         var _loc2_:TextField = this._SafeStr_742[0];
         _loc2_.text = param1[0] + "";
         _loc2_ = this._SafeStr_742[1];
         _loc2_.text = param1[1] + "";
      }
      
      public function _SafeStr_1151(param1:_SafeCls_17, param2:_SafeCls_17) : int
      {
         if(param1.kills > param2.kills)
         {
            return -1;
         }
         if(param1.kills < param2.kills)
         {
            return 1;
         }
         if(param1._SafeStr_161 < param2._SafeStr_161)
         {
            return -1;
         }
         if(param1._SafeStr_161 > param2._SafeStr_161)
         {
            return 1;
         }
         if(param1.name < param2.name)
         {
            return -1;
         }
         return 1;
      }
      
      public function _SafeStr_1068(param1:_SafeCls_17, param2:_SafeCls_17) : int
      {
         if(param1.side < param2.side)
         {
            return -1;
         }
         if(param1.side > param2.side)
         {
            return 1;
         }
         if(param1.kills < param2.kills)
         {
            return 1;
         }
         if(param1.kills > param2.kills)
         {
            return -1;
         }
         if(param1.kills == param2.kills && param1._SafeStr_161 < param2._SafeStr_161)
         {
            return -1;
         }
         if(param1.kills == param2.kills && param1._SafeStr_161 > param2._SafeStr_161)
         {
            return 1;
         }
         if(param1.name < param2.name)
         {
            return -1;
         }
         return 1;
      }
      
      public function _SafeStr_338(param1:Array, param2:_SafeCls_17) : void
      {
         var _loc3_:* = 0;
         var _loc4_:_SafeCls_17 = null;
         if(this._SafeStr_122 == _SafeCls_4._SafeStr_164)
         {
            param1.sortOn(["score","name"],Array.DESCENDING | Array.NUMERIC);
         }
         else if(this._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            param1.sort(this._SafeStr_1151);
            _loc3_ = int(param1.indexOf(param2));
            while(_loc3_ > 0)
            {
               _loc4_ = param1[_loc3_ - 1];
               if(_loc4_.kills != param2.kills)
               {
                  break;
               }
               _loc3_--;
            }
            this.mc.top_bar.place.text = _SafeCls_10._SafeStr_1140(_loc3_ + 1);
         }
         else if(this._SafeStr_122 == _SafeCls_4._SafeStr_213)
         {
            param1.sort(this._SafeStr_1068);
         }
      }
      
      public function _SafeStr_938(param1:Array, param2:_SafeCls_17) : void
      {
         var _loc5_:_SafeCls_17 = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc3_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         if(this._SafeStr_122 == _SafeCls_4._SafeStr_164)
         {
            this.mc.scoreboard.header3.text = "KILLS";
            this.mc.scoreboard.header2.text = "DEATHS";
            this.mc.scoreboard.header1.text = "SCORE";
         }
         else
         {
            this.mc.scoreboard.header3.text = "";
            this.mc.scoreboard.header2.text = "KILLS";
            this.mc.scoreboard.header1.text = "DEATHS";
         }
         var _loc4_:int = 0;
         while(_loc4_ < this._SafeStr_120.length)
         {
            if(_loc4_ < param1.length)
            {
               _loc5_ = param1[_loc4_];
               if(_loc5_.equipment != null)
               {
                  _loc6_ = "<font color=\'#888888\'>";
                  _loc7_ = "</font>";
                  if(_loc5_ == param2)
                  {
                     _loc6_ = "";
                     _loc7_ = "";
                  }
                  this._SafeStr_120[_loc4_].visible = true;
                  this._SafeStr_120[_loc4_].username.htmlText = _loc6_ + _loc5_.name + _loc7_;
                  this._SafeStr_120[_loc4_].mod_button.visible = false;
                  if(this._SafeStr_122 == _SafeCls_4._SafeStr_164)
                  {
                     this._SafeStr_120[_loc4_].field3.htmlText = _loc6_ + _loc5_.kills + _loc7_;
                     this._SafeStr_120[_loc4_].field2.htmlText = _loc6_ + _loc5_._SafeStr_161 + _loc7_;
                     _loc8_ = _loc5_.score * 1 / _SafeStr_344 * 10000;
                     this._SafeStr_120[_loc4_].field1.htmlText = _loc6_ + _SafeCls_10._SafeStr_179(_loc8_) + _loc7_;
                  }
                  else
                  {
                     this._SafeStr_120[_loc4_].field3.text = "";
                     this._SafeStr_120[_loc4_].field2.htmlText = _loc6_ + _loc5_.kills + _loc7_;
                     this._SafeStr_120[_loc4_].field1.htmlText = _loc6_ + _loc5_._SafeStr_161 + _loc7_;
                  }
                  this._SafeStr_120[_loc4_].ship_name.gotoAndStop(_loc5_.ship.graphic);
                  if(_SafeCls_10._SafeStr_406(_loc5_.color1) < _loc3_.min_intensity)
                  {
                     if(_SafeCls_10._SafeStr_406(_loc5_.color1) == 0)
                     {
                        this._SafeStr_120[_loc4_].ship_name.transform.colorTransform = _SafeCls_10._SafeStr_231(_loc5_.color1 + _loc3_.color_add);
                     }
                     else
                     {
                        _loc9_ = 1 * _loc3_.min_intensity / _SafeCls_10._SafeStr_406(_loc5_.color1);
                        this._SafeStr_120[_loc4_].ship_name.transform.colorTransform = _SafeCls_10._SafeStr_231(_SafeCls_10._SafeStr_900(_loc5_.color1,_loc9_));
                     }
                  }
                  else
                  {
                     this._SafeStr_120[_loc4_].ship_name.transform.colorTransform = _SafeCls_10._SafeStr_231(_loc5_.color1);
                  }
                  this._SafeStr_120[_loc4_].weapons.gotoAndStop(_loc5_.ship.secondary_weapons + 1);
                  this._SafeStr_120[_loc4_].equipment.gotoAndStop(_loc5_.ship.equipment_slots);
                  if(_loc5_.weapons.length > 0 && this._SafeStr_120[_loc4_].weapons.weapon1 != null)
                  {
                     this._SafeStr_120[_loc4_].weapons.weapon1.gotoAndStop(_loc5_.weapons[0].weapon.card);
                  }
                  if(_loc5_.weapons.length > 1 && this._SafeStr_120[_loc4_].weapons.weapon2 != null)
                  {
                     this._SafeStr_120[_loc4_].weapons.weapon2.gotoAndStop(_loc5_.weapons[1].weapon.card);
                  }
                  if(_loc5_.weapons.length > 2 && this._SafeStr_120[_loc4_].weapons.weapon3 != null)
                  {
                     this._SafeStr_120[_loc4_].weapons.weapon3.gotoAndStop(_loc5_.weapons[2].weapon.card);
                  }
                  if(_loc5_.weapons.length > 3 && this._SafeStr_120[_loc4_].weapons.weapon4 != null)
                  {
                     this._SafeStr_120[_loc4_].weapons.weapon4.gotoAndStop(_loc5_.weapons[3].weapon.card);
                  }
                  if(_loc5_.weapons.length > 4 && this._SafeStr_120[_loc4_].weapons.weapon5 != null)
                  {
                     this._SafeStr_120[_loc4_].weapons.weapon5.gotoAndStop(_loc5_.weapons[4].weapon.card);
                  }
                  if(_loc5_.equipment.length > 0 && this._SafeStr_120[_loc4_].equipment.equipment1 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment1.gotoAndStop(_loc5_.equipment[0].card);
                  }
                  else if(this._SafeStr_120[_loc4_].equipment.equipment1 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment1.gotoAndStop(0);
                  }
                  if(_loc5_.equipment.length > 1 && this._SafeStr_120[_loc4_].equipment.equipment2 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment2.gotoAndStop(_loc5_.equipment[1].card);
                  }
                  else if(this._SafeStr_120[_loc4_].equipment.equipment2 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment2.gotoAndStop(0);
                  }
                  if(_loc5_.equipment.length > 2 && this._SafeStr_120[_loc4_].equipment.equipment3 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment3.gotoAndStop(_loc5_.equipment[2].card);
                  }
                  else if(this._SafeStr_120[_loc4_].equipment.equipment3 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment3.gotoAndStop(0);
                  }
                  if(_loc5_.equipment.length > 3 && this._SafeStr_120[_loc4_].equipment.equipment4 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment4.gotoAndStop(_loc5_.equipment[3].card);
                  }
                  else if(this._SafeStr_120[_loc4_].equipment.equipment4 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment4.gotoAndStop(0);
                  }
                  if(_loc5_.equipment.length > 4 && this._SafeStr_120[_loc4_].equipment.equipment5 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment5.gotoAndStop(_loc5_.equipment[4].card);
                  }
                  else if(this._SafeStr_120[_loc4_].equipment.equipment5 != null)
                  {
                     this._SafeStr_120[_loc4_].equipment.equipment5.gotoAndStop(0);
                  }
                  if(this._SafeStr_122 != _SafeCls_4._SafeStr_144)
                  {
                     this._SafeStr_120[_loc4_].gotoAndStop(_loc5_.side + 3);
                  }
                  else
                  {
                     this._SafeStr_120[_loc4_].gotoAndStop(1 + _loc4_ % 2);
                  }
               }
            }
            else
            {
               this._SafeStr_120[_loc4_].visible = false;
            }
            _loc4_++;
         }
         this.mc.scoreboard.visible = true;
      }
      
      public function _SafeStr_1117() : void
      {
         this.mc.scoreboard.visible = false;
      }
      
      public function _SafeStr_981() : void
      {
         var _loc1_:MovieClip = this.mc.summary;
         _loc1_.visible = false;
         this.mc.quickstart_nag.visible = false;
         _loc1_.mvpglow1.gotoAndStop(1);
         _loc1_.mvpglow2.gotoAndStop(1);
         _loc1_.mvpglow3.gotoAndStop(1);
         _loc1_.mvpglow4.gotoAndStop(1);
         this.mc.scoreboard.x = this.mc.score_position_default.x;
         this.mc.scoreboard.y = this.mc.score_position_default.y;
      }
      
      public function _SafeStr_1168(param1:_SafeCls_17, param2:int, param3:int) : void
      {
         var _loc5_:_SafeCls_5 = null;
         var _loc4_:MovieClip = this.mc.summary;
         if(param2 == 1)
         {
            _loc5_ = _SafeCls_10._SafeStr_334(param1);
            _loc5_._SafeStr_199(_loc4_.mvp_winning);
            _loc4_.win_mvp_text_bonus.text = "+" + param3;
            if(_loc4_.win_mvp_text.text.indexOf(param1.name) == -1)
            {
               _loc4_.win_mvp_text.text = param1.name;
            }
         }
         else
         {
            _loc5_ = _SafeCls_10._SafeStr_334(param1);
            _loc5_._SafeStr_199(_loc4_.mvp_losing);
            _loc4_.lose_mvp_text_bonus.text = "+" + param3;
            if(_loc4_.lose_mvp_text.text.indexOf(param1.name) == -1)
            {
               _loc4_.lose_mvp_text.text = param1.name;
            }
         }
      }
      
      public function _SafeStr_300(param1:int, param2:Array, param3:Array = null) : void
      {
         var _loc9_:int = 0;
         var _loc10_:_SafeCls_17 = null;
         var _loc11_:_SafeCls_5 = null;
         var _loc12_:Number = NaN;
         var _loc4_:MovieClip = this.mc.summary;
         _loc4_.mvpglow1.gotoAndPlay(1);
         _loc4_.mvpglow2.gotoAndPlay(1);
         _loc4_.mvpglow3.gotoAndPlay(1);
         _loc4_.mvpglow4.gotoAndPlay(1);
         _loc4_.visible = true;
         if(_SafeCls_3._SafeStr_157().username.indexOf(" ") != -1)
         {
            this.mc.quickstart_nag.visible = true;
         }
         _loc4_.win_mvp_text_bonus.text = "";
         _loc4_.lose_mvp_text_bonus.text = "";
         this.mc.scoreboard.x = this.mc.score_position_summary.x;
         this.mc.scoreboard.y = this.mc.score_position_summary.y;
         var _loc5_:int = -1;
         var _loc6_:int = -1;
         var _loc7_:int = 0;
         var _loc8_:Number = 0;
         if(this._SafeStr_122 != _SafeCls_4._SafeStr_144)
         {
            if(param1 == 0)
            {
               _loc4_.results.gotoAndStop(3);
               _loc4_.win_mvp_text_title.text = "BLUE TEAM MVP";
               _loc4_.lose_mvp_text_title.text = "RED TEAM MVP";
            }
            else
            {
               if(param1 == 1)
               {
                  _loc4_.results.gotoAndStop(2);
               }
               else
               {
                  _loc4_.results.gotoAndStop(1);
               }
               _loc4_.win_mvp_text_title.text = "RED TEAM MVP";
               _loc4_.lose_mvp_text_title.text = "BLUE TEAM MVP";
            }
         }
         else
         {
            _loc4_.results.gotoAndStop(1);
            _loc4_.win_mvp_text_title.text = "MOST KILLS";
            _loc4_.lose_mvp_text_title.text = "BEST RATIO";
         }
         if(this._SafeStr_122 == _SafeCls_4._SafeStr_164)
         {
            _loc4_.scores_right.visible = true;
            _loc4_.scores_left.visible = true;
            if(param1 == -1)
            {
               param1 = 0;
            }
            _loc9_ = 0;
            while(_loc9_ < param2.length)
            {
               _loc10_ = param2[_loc9_];
               if(_loc10_.side == param1)
               {
                  if(_loc10_.score > _loc7_)
                  {
                     _loc5_ = _loc9_;
                     _loc7_ = _loc10_.score;
                  }
               }
               else if(_loc10_.score > _loc8_)
               {
                  _loc6_ = _loc9_;
                  _loc8_ = _loc10_.score;
               }
               _loc9_++;
            }
            if(_loc5_ == -1)
            {
               _loc4_.mvp_winning.visible = false;
               _loc4_.win_mvp_text.text = "Nobody";
            }
            else
            {
               _loc4_.mvp_winning.visible = true;
               _loc10_ = param2[_loc5_];
               _loc11_ = _SafeCls_10._SafeStr_334(_loc10_);
               _loc11_._SafeStr_199(_loc4_.mvp_winning);
               _loc4_.win_mvp_text.text = _loc10_.name + "\nTEAM MVP";
            }
            if(_loc6_ == -1)
            {
               _loc4_.mvp_losing.visible = false;
               _loc4_.lose_mvp_text.text = "Nobody";
            }
            else
            {
               _loc4_.mvp_losing.visible = true;
               _loc10_ = param2[_loc6_];
               _loc11_ = _SafeCls_10._SafeStr_334(_loc10_);
               _loc11_._SafeStr_199(_loc4_.mvp_losing);
               _loc4_.lose_mvp_text.text = _loc10_.name + "\nTEAM MVP";
            }
         }
         else if(this._SafeStr_122 == _SafeCls_4._SafeStr_213)
         {
            _loc4_.scores_right.visible = true;
            _loc4_.scores_left.visible = true;
            _loc4_.scores_left.score.text = param3[1] + " Kills";
            _loc4_.scores_right.score.text = param3[0] + " Kills";
            if(param1 == -1)
            {
               param1 = 0;
            }
            _loc9_ = 0;
            while(_loc9_ < param2.length)
            {
               _loc10_ = param2[_loc9_];
               if(_loc10_.side == param1)
               {
                  if(_loc10_.kills > _loc7_)
                  {
                     _loc5_ = _loc9_;
                     _loc7_ = _loc10_.kills;
                  }
               }
               else if(_loc10_.kills > _loc8_)
               {
                  _loc6_ = _loc9_;
                  _loc8_ = _loc10_.kills;
               }
               _loc9_++;
            }
            if(_loc5_ == -1)
            {
               _loc4_.mvp_winning.visible = false;
               _loc4_.win_mvp_text.text = "Nobody";
            }
            else
            {
               _loc4_.mvp_winning.visible = true;
               _loc10_ = param2[_loc5_];
               _loc11_ = _SafeCls_10._SafeStr_334(_loc10_);
               _loc11_._SafeStr_199(_loc4_.mvp_winning);
               _loc4_.win_mvp_text.text = _loc10_.name + "\nTEAM MVP";
            }
            if(_loc6_ == -1)
            {
               _loc4_.mvp_losing.visible = false;
               _loc4_.lose_mvp_text.text = "Nobody";
            }
            else
            {
               _loc4_.mvp_losing.visible = true;
               _loc10_ = param2[_loc6_];
               _loc11_ = _SafeCls_10._SafeStr_334(_loc10_);
               _loc11_._SafeStr_199(_loc4_.mvp_losing);
               _loc4_.lose_mvp_text.text = _loc10_.name + "\nTEAM MVP";
            }
         }
         else if(this._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            _loc4_.scores_right.visible = false;
            _loc4_.scores_left.visible = false;
            _loc9_ = 0;
            while(_loc9_ < param2.length)
            {
               _loc10_ = param2[_loc9_];
               if(_loc10_.kills > _loc7_)
               {
                  _loc7_ = _loc10_.kills;
                  _loc5_ = _loc9_;
               }
               if(_loc10_._SafeStr_161 > 0)
               {
                  _loc12_ = _loc10_.kills * 1 / _loc10_._SafeStr_161;
               }
               else
               {
                  _loc12_ = (_loc10_.kills + 1 * 1) / (_loc10_._SafeStr_161 + 1);
               }
               trace("K/D: " + _loc10_.kills + "/" + _loc10_._SafeStr_161 + " " + _loc12_);
               if(_loc10_.kills > 0 && (_loc12_ > _loc8_ || _loc12_ == _loc8_ && _loc10_.kills > param2[_loc6_].kills))
               {
                  _loc8_ = _loc12_;
                  _loc6_ = _loc9_;
               }
               _loc9_++;
            }
            if(_loc5_ == -1)
            {
               _loc4_.mvp_winning.visible = false;
               _loc4_.win_mvp_text.text = "Nobody";
            }
            else
            {
               _loc4_.mvp_winning.visible = true;
               _loc10_ = param2[_loc5_];
               _loc11_ = _SafeCls_10._SafeStr_334(_loc10_);
               _loc11_._SafeStr_199(_loc4_.mvp_winning);
               _loc4_.win_mvp_text.text = _loc10_.name;
            }
            if(_loc6_ == -1)
            {
               _loc4_.mvp_losing.visible = false;
               _loc4_.lose_mvp_text.text = "Nobody";
            }
            else
            {
               _loc4_.mvp_losing.visible = true;
               _loc10_ = param2[_loc6_];
               _loc11_ = _SafeCls_10._SafeStr_334(_loc10_);
               _loc11_._SafeStr_199(_loc4_.mvp_losing);
               _loc4_.lose_mvp_text.text = _loc10_.name;
            }
         }
         _loc4_.cash_won.text = "Calculating..";
         _loc4_.total_cash.text = "Calculating..";
         _SafeCls_10._SafeStr_693(_loc4_.account_info);
      }
      
      public function _SafeStr_1097(param1:int, param2:_SafeCls_3) : void
      {
         var _loc3_:MovieClip = this.mc.summary;
         _loc3_.cash_won.text = _SafeCls_10._SafeStr_179(param1);
         _loc3_.total_cash.htmlText = "TOTAL BITS: <font color=\'#F5C42E\'>" + _SafeCls_10._SafeStr_179(param2._SafeStr_230) + "</font>";
         var _loc4_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         if(param2.rank != _loc4_.ranks.length)
         {
            if(param2._SafeStr_330 >= _loc4_.ranks[param2.rank])
            {
               ++param2.rank;
               trace("RANK UP!");
            }
         }
         _SafeCls_10._SafeStr_693(this.mc.summary.account_info);
      }
      
      public function _SafeStr_1046(param1:int) : void
      {
         param1 /= 30;
         param1 -= _SafeStr_398 + _SafeStr_262;
         var _loc2_:int = _SafeStr_784 - param1;
         if(_loc2_ > 0)
         {
            this.mc.summary.next_round.text = "SAVING STATS (NEXT ROUND IN " + _loc2_ + "...)";
            this.mc.quickstart_nag.next_round.text = "NEXT ROUND IN " + _loc2_ + "...";
         }
         else
         {
            this.mc.summary.next_round.text = "STARTING NEW ROUND...";
            this.mc.quickstart_nag.next_round.text = "STARTING NEW ROUND...";
         }
         if(_loc2_ == 20 && !this._SafeStr_720)
         {
            try
            {
               ExternalInterface.call("ShowAd");
               this._SafeStr_720 = true;
            }
            catch(e:Error)
            {
            }
         }
         else if(_loc2_ == 19)
         {
            this._SafeStr_720 = false;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_51 = "]@"
 * @identifier _SafeCls_56 = ",I"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_78 = "%0"
 * @identifier _SafeCls_84 = "%5"
 * @identifier _SafeCls_86 = "-J"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_117 = "8"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_120 = "=0"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_122 = "5#"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_144 = "set "
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_158 = "\'&"
 * @identifier _SafeStr_161 = ">J"
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_179 = "8G"
 * @identifier _SafeStr_199 = ";C"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_216 = "9&"
 * @identifier _SafeStr_218 = "]M"
 * @identifier _SafeStr_230 = "-#"
 * @identifier _SafeStr_231 = "+N"
 * @identifier _SafeStr_251 = "7Q"
 * @identifier _SafeStr_262 = "?T"
 * @identifier _SafeStr_284 = "7"
 * @identifier _SafeStr_300 = "#+"
 * @identifier _SafeStr_302 = ">L"
 * @identifier _SafeStr_304 = "5<"
 * @identifier _SafeStr_328 = "]E"
 * @identifier _SafeStr_330 = "4?"
 * @identifier _SafeStr_334 = "#N"
 * @identifier _SafeStr_338 = "%,"
 * @identifier _SafeStr_344 = "82"
 * @identifier _SafeStr_346 = "7O"
 * @identifier _SafeStr_353 = "#5"
 * @identifier _SafeStr_381 = "?>"
 * @identifier _SafeStr_391 = "5P"
 * @identifier _SafeStr_398 = "@?"
 * @identifier _SafeStr_403 = "&<"
 * @identifier _SafeStr_406 = "with"
 * @identifier _SafeStr_445 = "!L"
 * @identifier _SafeStr_447 = "1$"
 * @identifier _SafeStr_483 = ">F"
 * @identifier _SafeStr_485 = "<C"
 * @identifier _SafeStr_531 = "%M"
 * @identifier _SafeStr_576 = "=1"
 * @identifier _SafeStr_578 = "]A"
 * @identifier _SafeStr_588 = "]J"
 * @identifier _SafeStr_596 = "9!"
 * @identifier _SafeStr_613 = "<Q"
 * @identifier _SafeStr_617 = "+G"
 * @identifier _SafeStr_636 = "68"
 * @identifier _SafeStr_648 = ",;"
 * @identifier _SafeStr_669 = "[@"
 * @identifier _SafeStr_682 = "&T"
 * @identifier _SafeStr_693 = "+B"
 * @identifier _SafeStr_720 = "6R"
 * @identifier _SafeStr_742 = "&S"
 * @identifier _SafeStr_755 = "--"
 * @identifier _SafeStr_773 = " \""
 * @identifier _SafeStr_784 = "[N"
 * @identifier _SafeStr_811 = " U"
 * @identifier _SafeStr_823 = "`>"
 * @identifier _SafeStr_849 = "0I"
 * @identifier _SafeStr_851 = "31"
 * @identifier _SafeStr_858 = ";8"
 * @identifier _SafeStr_872 = "2O"
 * @identifier _SafeStr_873 = ";N"
 * @identifier _SafeStr_893 = "5I"
 * @identifier _SafeStr_896 = "^;"
 * @identifier _SafeStr_900 = "-"
 * @identifier _SafeStr_909 = ";A"
 * @identifier _SafeStr_912 = "%Q"
 * @identifier _SafeStr_913 = "@0"
 * @identifier _SafeStr_938 = "=K"
 * @identifier _SafeStr_962 = "4$"
 * @identifier _SafeStr_975 = "?H"
 * @identifier _SafeStr_977 = "%I"
 * @identifier _SafeStr_979 = "#<"
 * @identifier _SafeStr_980 = "9J"
 * @identifier _SafeStr_981 = "4P"
 * @identifier _SafeStr_985 = "=9"
 * @identifier _SafeStr_1033 = "4N"
 * @identifier _SafeStr_1046 = "4B"
 * @identifier _SafeStr_1058 = "use"
 * @identifier _SafeStr_1062 = "8%"
 * @identifier _SafeStr_1068 = "-D"
 * @identifier _SafeStr_1078 = "0M"
 * @identifier _SafeStr_1083 = "6="
 * @identifier _SafeStr_1090 = " V"
 * @identifier _SafeStr_1097 = "4Q"
 * @identifier _SafeStr_1098 = "[K"
 * @identifier _SafeStr_1117 = "+J"
 * @identifier _SafeStr_1132 = "2S"
 * @identifier _SafeStr_1140 = "@9"
 * @identifier _SafeStr_1151 = "0C"
 * @identifier _SafeStr_1166 = "16"
 * @identifier _SafeStr_1168 = "^7"
 * @identifier _SafeStr_1171 = "1H"
 * @identifier _SafeStr_1191 = "&3"
 * @identifier _SafeStr_1193 = ";U"
 * @identifier _SafeStr_1196 = "=H"
 * @identifier _SafeStr_1215 = " >"
 * @identifier _SafeStr_1231 = "[J"
 * @identifier _SafeStr_1284 = "`&"
 * @identifier _SafeStr_1290 = "`$"
 * @identifier _SafeStr_1315 = "9="
 * @identifier _SafeStr_1331 = "@\""
 */
