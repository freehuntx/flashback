package murray
{
   import _SafePkg_41._SafeCls_40;
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_8._SafeCls_67;
   import _SafePkg_20._SafeCls_39;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class _SafeCls_49
   {
      
      public var mc:MovieClip;
      
      public var mmocha:_SafeCls_71;
      
      public var ed:_SafeCls_72;
      
      public var _SafeStr_467:Array;
      
      public var _SafeStr_472:Array;
      
      public var users:Array = new Array();
      
      public var _SafeStr_165:Array = new Array();
      
      private var _SafeStr_889:_SafeCls_61;
      
      private var _SafeStr_303:_SafeCls_61;
      
      private var _SafeStr_587:Boolean = false;
      
      private var _SafeStr_109:_SafeCls_4;
      
      private var whisper_filter:Boolean = false;
      
      private var _SafeStr_972:int = 100;
      
      private var _SafeStr_681:Number = 0;
      
      private var _SafeStr_219:_SafeCls_60 = null;
      
      public function _SafeCls_49(param1:MovieClip, param2:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.ed = param2;
         param1.whisper_notify.visible = false;
         param1.whisper_notify.mouseEnabled = false;
         this._SafeStr_109 = _SafeCls_4._SafeStr_121();
         param1.chat_button.addEventListener(MouseEvent.CLICK,this._SafeStr_168);
         param1.chat_pane_animate.chat_pane.ignore.addEventListener(MouseEvent.CLICK,this._SafeStr_1112);
         param1.chat_pane_animate.chat_pane.whisper.addEventListener(MouseEvent.CLICK,this._SafeStr_1089);
         param1.chat_pane_animate.chat_pane.invite.addEventListener(MouseEvent.CLICK,this._SafeStr_901);
         param1.chat_pane_animate.chat_pane.add_friend.addEventListener(MouseEvent.CLICK,this._SafeStr_901);
         param1.chat_pane_animate.chat_pane.chat_filter.addEventListener(MouseEvent.CLICK,this._SafeStr_1061);
         param1.chat_pane_animate.chat_pane.whisper_filter.addEventListener(MouseEvent.CLICK,this._SafeStr_1175);
         param1.chat_pane_animate.chat_pane.send.addEventListener(MouseEvent.CLICK,this._SafeStr_945);
         param1.chat_pane_animate.chat_pane.chat_entry.addEventListener(KeyboardEvent.KEY_UP,this._SafeStr_1156);
         _SafeCls_10._SafeStr_113(param1.chat_pane_animate.chat_pane.ignore);
         _SafeCls_10._SafeStr_113(param1.chat_pane_animate.chat_pane.whisper);
         _SafeCls_10._SafeStr_113(param1.chat_pane_animate.chat_pane.invite);
         _SafeCls_10._SafeStr_113(param1.chat_pane_animate.chat_pane.add_friend);
         _SafeCls_10._SafeStr_113(param1.chat_pane_animate.chat_pane.chat_filter);
         _SafeCls_10._SafeStr_113(param1.chat_pane_animate.chat_pane.whisper_filter);
         param1.chat_pane_animate.chat_pane.chat_messages.text = "";
         param1.chat_pane_animate.chat_pane.chat_entry.text = "";
         param1.chat_pane_animate.chat_pane.chat_entry.maxChars = 100;
         this._SafeStr_889 = new _SafeCls_61(param1.chat_pane_animate.chat_pane.slot_container,param1.chat_pane_animate.chat_pane.chat_users_mask,param1.chat_pane_animate.chat_pane.scrollbar_chat_users,10);
         this._SafeStr_303 = new _SafeCls_61(param1.chat_pane_animate.chat_pane.chat_messages,param1.chat_pane_animate.chat_pane.chat_mask,param1.chat_pane_animate.chat_pane.scrollbar_chat,12);
      }
      
      public function _SafeStr_1112(param1:MouseEvent) : void
      {
         if(this._SafeStr_219 == null)
         {
            this.ed.notification_box._SafeStr_108("No user selected");
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_109._SafeStr_194.length)
         {
            if(_SafeCls_10._SafeStr_413(this._SafeStr_219.name,this._SafeStr_109._SafeStr_194[_loc2_]))
            {
               this._SafeStr_109._SafeStr_194.splice(_loc2_,1);
               this._SafeStr_158("unignored " + this._SafeStr_219.name);
               return;
            }
            _loc2_++;
         }
         this._SafeStr_109._SafeStr_194.push(this._SafeStr_219.name);
         this._SafeStr_158("ignored " + this._SafeStr_219.name);
      }
      
      public function _SafeStr_1089(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         if(this._SafeStr_219 == null)
         {
            this.ed.notification_box._SafeStr_108("No user selected");
            return;
         }
         if(this.mc.chat_pane_animate.chat_pane.chat_entry.text != "")
         {
            if(getTimer() - this._SafeStr_681 < 1000)
            {
               return;
            }
            _loc2_ = this.mc.chat_pane_animate.chat_pane.chat_entry.text;
            this.mc.chat_pane_animate.chat_pane.chat_entry.text = "";
            _SafeCls_10._SafeStr_740("/w " + this._SafeStr_219.name + " " + _loc2_,this._SafeStr_158,this.mmocha);
            this._SafeStr_681 = getTimer();
         }
         else
         {
            this.mc.chat_pane_animate.chat_pane.chat_entry.text = "/w " + this._SafeStr_219.name + " ";
            this.mc.stage.focus = this.mc.chat_pane_animate.chat_pane.chat_entry;
            this.mc.chat_pane_animate.chat_pane.chat_entry.setSelection(this.mc.chat_pane_animate.chat_pane.chat_entry.text.length,this.mc.chat_pane_animate.chat_pane.chat_entry.text.length);
         }
      }
      
      public function _SafeStr_1175(param1:MouseEvent) : void
      {
         this.whisper_filter = true;
         this.mc.chat_pane_animate.chat_pane.chat_filter_background.alpha = 0.2;
         this.mc.chat_pane_animate.chat_pane.whisper_filter_background.alpha = 0.5;
         this._SafeStr_687();
      }
      
      public function _SafeStr_1061(param1:MouseEvent) : void
      {
         this.mc.chat_pane_animate.chat_pane.chat_filter_background.alpha = 0.5;
         this.mc.chat_pane_animate.chat_pane.whisper_filter_background.alpha = 0.2;
         this.whisper_filter = false;
         this._SafeStr_687();
      }
      
      public function whisper(param1:String) : void
      {
         this._SafeStr_472.push(param1);
         if(this._SafeStr_472.length > this._SafeStr_972)
         {
            this._SafeStr_472.splice(0,1);
         }
         if(this.whisper_filter)
         {
            this._SafeStr_687();
         }
      }
      
      public function _SafeStr_158(param1:String) : void
      {
         this._SafeStr_467.push(param1);
         if(this._SafeStr_467.length > this._SafeStr_972)
         {
            this._SafeStr_467.splice(0,1);
         }
         if(!this.whisper_filter)
         {
            this._SafeStr_687();
         }
      }
      
      public function _SafeStr_687() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this.mc.chat_pane_animate.chat_pane.chat_messages.text = "";
         if(!this.whisper_filter)
         {
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_467.length)
            {
               this.mc.chat_pane_animate.chat_pane.chat_messages.appendText(this._SafeStr_467[_loc1_]);
               this.mc.chat_pane_animate.chat_pane.chat_messages.appendText("\n");
               _loc1_++;
            }
         }
         else
         {
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_472.length)
            {
               this.mc.chat_pane_animate.chat_pane.chat_messages.appendText(this._SafeStr_472[_loc1_]);
               this.mc.chat_pane_animate.chat_pane.chat_messages.appendText("\n");
               _loc1_++;
            }
         }
         this.mc.chat_pane_animate.chat_pane.chat_messages.htmlText = this.mc.chat_pane_animate.chat_pane.chat_messages.text;
         this.mc.chat_pane_animate.chat_pane.chat_messages.height = this.mc.chat_pane_animate.chat_pane.chat_messages.textHeight + 16;
         if(this._SafeStr_303._SafeStr_815)
         {
            this._SafeStr_303._SafeStr_254();
            this._SafeStr_303.include();
         }
         else
         {
            _loc2_ = int(this._SafeStr_303._SafeStr_129.y);
            this._SafeStr_303._SafeStr_254();
            this._SafeStr_303._SafeStr_129.y = _loc2_;
            this._SafeStr_303._SafeStr_323();
         }
      }
      
      public function _SafeStr_168(param1:MouseEvent = null) : void
      {
         this.mc.chat_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_168);
         this.mc.chat_button.addEventListener(MouseEvent.CLICK,this._SafeStr_291);
         this.mc.chat_pane_animate.gotoAndPlay(2);
         this.mc.whisper_notify.visible = false;
         this.mmocha._SafeStr_154(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_675,1));
      }
      
      public function _SafeStr_291(param1:MouseEvent = null) : void
      {
         this.mc.chat_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_291);
         this.mc.chat_button.addEventListener(MouseEvent.CLICK,this._SafeStr_168);
         this.mc.chat_pane_animate.gotoAndPlay(21);
         this.mmocha._SafeStr_154(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_595,1));
      }
      
      public function _SafeStr_407(param1:_SafeCls_71) : void
      {
         if(!this._SafeStr_587)
         {
            trace("Lobby activated!");
            this._SafeStr_467 = new Array();
            this._SafeStr_472 = new Array();
            this.mmocha = param1;
            param1.addEventListener(_SafeCls_67._SafeStr_359,this._SafeStr_492,false,0,true);
            param1.addEventListener(_SafeCls_67._SafeStr_367,this._SafeStr_547,false,0,true);
            param1.addEventListener(_SafeCls_67._SafeStr_355,this._SafeStr_525,false,0,true);
            param1.addEventListener(_SafeCls_67._SafeStr_361,this._SafeStr_499,false,0,true);
            param1.addEventListener(_SafeCls_67._SafeStr_377,this._SafeStr_532);
            this._SafeStr_587 = true;
            this.mc.chat_pane_animate.chat_pane.chat_messages.text = "";
            this.mc.chat_pane_animate.chat_pane.chat_messages.height = this.mc.chat_pane_animate.chat_pane.chat_messages.textHeight + 16;
            this._SafeStr_303._SafeStr_254();
         }
         this._SafeStr_466();
      }
      
      public function _SafeStr_1192() : void
      {
         this.users = new Array();
      }
      
      public function _SafeStr_250() : void
      {
         if(this._SafeStr_587)
         {
            this._SafeStr_1192();
            this.mmocha.removeEventListener(_SafeCls_67._SafeStr_359,this._SafeStr_492);
            this.mmocha.removeEventListener(_SafeCls_67._SafeStr_367,this._SafeStr_547);
            this.mmocha.removeEventListener(_SafeCls_67._SafeStr_355,this._SafeStr_525);
            this.mmocha.removeEventListener(_SafeCls_67._SafeStr_361,this._SafeStr_499);
            this.mmocha.removeEventListener(_SafeCls_67._SafeStr_377,this._SafeStr_532);
            this._SafeStr_587 = false;
         }
      }
      
      public function _SafeStr_705(param1:MouseEvent) : void
      {
         var _loc3_:MovieClip = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_165.length)
         {
            _loc3_ = this._SafeStr_165[_loc2_];
            if(_loc3_ == param1.target)
            {
               _loc3_.selected.visible = true;
               if(_loc2_ > 0)
               {
                  this._SafeStr_219 = this.users[_loc2_ - 1];
               }
               else
               {
                  this._SafeStr_219 = new _SafeCls_60(this.mmocha._SafeStr_145);
                  this._SafeStr_219.name = _SafeCls_10._SafeStr_305(_SafeCls_3._SafeStr_157().username);
               }
            }
            else
            {
               _loc3_.selected.visible = false;
            }
            _loc2_++;
         }
         trace("Selected: " + this._SafeStr_219);
      }
      
      public function _SafeStr_466() : void
      {
         var _loc3_:MovieClip = null;
         var _loc4_:_SafeCls_60 = null;
         this.users.sort(this._SafeStr_1123);
         var _loc1_:int = 0;
         while(_loc1_ < this._SafeStr_165.length)
         {
            _loc3_ = this._SafeStr_165[_loc1_];
            this.mc.chat_pane_animate.chat_pane.slot_container.removeChild(_loc3_);
            _loc3_.removeEventListener(MouseEvent.CLICK,this._SafeStr_705);
            _SafeCls_10._SafeStr_483(_loc3_);
            _loc1_++;
         }
         this._SafeStr_165 = new Array();
         _loc3_ = new this.ed.UserBar();
         _loc3_.mouseChildren = false;
         var _loc2_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         _loc3_.player.htmlText = "<font color=\'#c82222\'>" + _SafeCls_10._SafeStr_305(_loc2_.username) + "</font>";
         _loc3_.username = _loc2_.username.toLowerCase();
         _loc3_.selected.visible = true;
         if(this._SafeStr_219)
         {
            if(this._SafeStr_219.name != _SafeCls_10._SafeStr_305(_loc2_.username))
            {
               _loc3_.selected.visible = false;
            }
         }
         _loc3_.rank.text = "" + (_loc2_.rank + 1);
         _loc3_.inactive.visible = false;
         _loc3_.y = 0;
         _loc3_.addEventListener(MouseEvent.CLICK,this._SafeStr_705);
         this.mc.chat_pane_animate.chat_pane.slot_container.addChild(_loc3_);
         _SafeCls_10._SafeStr_113(_loc3_);
         this._SafeStr_165.push(_loc3_);
         _loc1_ = 0;
         while(_loc1_ < this.users.length)
         {
            _loc4_ = this.users[_loc1_];
            _loc3_ = new this.ed.UserBar();
            _loc3_.mouseChildren = false;
            _loc3_.selected.visible = false;
            if(_loc4_._SafeStr_349)
            {
               _loc3_.inactive.visible = false;
            }
            if(_loc4_ == this._SafeStr_219)
            {
               _loc3_.selected.visible = true;
            }
            if(_loc4_.rank == 0)
            {
               _loc3_.rank.visible = false;
            }
            else
            {
               _loc3_.rank.visible = true;
               trace("User: " + _loc4_.name + " " + _loc4_._SafeStr_342);
               if(_loc4_._SafeStr_342 == 0)
               {
                  _loc3_.rank.text = "" + _loc4_.rank;
               }
               else
               {
                  _loc3_.rank.text = "M";
               }
            }
            if(_loc3_.rank.text != "M")
            {
               _loc3_.player.htmlText = "<font color=\'#FFFFFF\'>" + _SafeCls_10._SafeStr_305(_loc4_.name) + "</font>";
            }
            else
            {
               _loc3_.player.htmlText = "<font color=\'#3d7edd\'>" + _SafeCls_10._SafeStr_305(_loc4_.name) + "</font>";
            }
            _loc3_.username = _loc4_.name.toLowerCase();
            _loc3_.y = (_loc1_ + 1) * _loc3_.selected.height;
            this.mc.chat_pane_animate.chat_pane.slot_container.addChild(_loc3_);
            _loc3_.addEventListener(MouseEvent.CLICK,this._SafeStr_705);
            _SafeCls_10._SafeStr_113(_loc3_);
            this._SafeStr_165.push(_loc3_);
            _loc1_++;
         }
         this._SafeStr_889._SafeStr_254();
      }
      
      public function _SafeStr_492(param1:_SafeCls_67) : void
      {
         var _loc2_:_SafeCls_60 = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.users.length)
         {
            _loc2_ = this.users[_loc3_];
            if(_loc2_.id == param1._SafeStr_203)
            {
               _loc4_ = param1.message.lastIndexOf("#") + 1;
               _loc2_.name = _SafeCls_10._SafeStr_305(param1.message.substr(_loc4_,param1.message.length - _loc4_ - 2));
               _loc2_._SafeStr_342 = int(param1.message.substr(param1.message.length - 1,1));
               _loc2_.rank = _SafeCls_40._SafeStr_115(param1.message.substr(param1.message.length - 2,1)) + 1;
               this._SafeStr_466();
               return;
            }
            _loc3_++;
         }
         trace("Got Handshake but failed");
      }
      
      public function _SafeStr_1156(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            this._SafeStr_945();
         }
      }
      
      public function _SafeStr_945(param1:Event = null) : void
      {
         if(getTimer() - this._SafeStr_681 < 1000)
         {
            return;
         }
         var _loc2_:String = this.mc.chat_pane_animate.chat_pane.chat_entry.text;
         if(this.whisper_filter && _loc2_.indexOf("/") != 0 && _loc2_.indexOf("\\") != 0)
         {
            _loc2_ = "/r " + _loc2_;
         }
         this.mc.chat_pane_animate.chat_pane.chat_entry.text = "";
         _SafeCls_10._SafeStr_740(_loc2_,this._SafeStr_158,this.mmocha);
         this._SafeStr_681 = getTimer();
      }
      
      public function _SafeStr_547(param1:_SafeCls_67) : void
      {
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:_SafeCls_6 = null;
         var _loc2_:String = _SafeCls_3._SafeStr_157().username;
         var _loc3_:_SafeCls_60 = this._SafeStr_1111(param1._SafeStr_203);
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_.name;
         }
         var _loc4_:int = _SafeCls_40._SafeStr_115(param1.message.charAt(0));
         loop9:
         switch(_loc4_)
         {
            case _SafeCls_39._SafeStr_540:
               _loc5_ = param1.message.substr(1,param1.message.length - 1);
               _loc5_ = _loc5_.replace(/&/g,"&amp;");
               _loc5_ = _loc5_.replace(/</g,"&lt;");
               _loc5_ = _loc5_.replace(/>/g,"&gt;");
               _loc6_ = false;
               _loc7_ = 0;
               while(_loc7_ < this._SafeStr_109._SafeStr_194.length)
               {
                  if(_SafeCls_10._SafeStr_413(this._SafeStr_109._SafeStr_194[_loc7_],_loc2_))
                  {
                     _loc6_ = true;
                     break;
                  }
                  _loc7_++;
               }
               if(!_loc6_)
               {
                  _loc7_ = 0;
                  while(_loc7_ < this._SafeStr_109.language_filter.length)
                  {
                     _loc8_ = int(_loc5_.toLowerCase().indexOf(this._SafeStr_109.language_filter[_loc7_]));
                     if(_loc8_ != -1)
                     {
                        _loc9_ = int(this._SafeStr_109.language_filter[_loc7_].length);
                        _loc5_ = _loc5_.substr(0,_loc8_) + "*beep*" + _loc5_.substr(_loc8_ + _loc9_);
                     }
                     _loc7_++;
                  }
                  _loc7_ = 0;
                  while(_loc7_ < this._SafeStr_165.length)
                  {
                     if(this._SafeStr_165[_loc7_].username == _loc2_.toLowerCase())
                     {
                        this._SafeStr_165[_loc7_].inactive.visible = false;
                        if(_loc3_)
                        {
                           if(_loc3_._SafeStr_342 > 0)
                           {
                              _loc2_ = "&lt;<font color=\'#3d7edd\'>" + _loc2_ + "</font>&gt;";
                           }
                           else
                           {
                              _loc2_ = "<font color=\'#626262\'>" + _loc2_ + "</font>";
                           }
                           _loc3_._SafeStr_349 = true;
                           break;
                        }
                        _loc2_ = "<font color=\'#c82222\'>" + _loc2_ + "</font>";
                        break;
                     }
                     _loc7_++;
                  }
                  this._SafeStr_158("&lt;" + _loc2_ + "&gt; " + _loc5_);
               }
               break;
            case _SafeCls_39._SafeStr_438:
               _loc6_ = false;
               _loc5_ = param1.message.substr(1,param1.message.length - 1);
               _loc5_ = _loc5_.replace(/&/g,"&amp;");
               _loc5_ = _loc5_.replace(/</g,"&lt;");
               _loc5_ = _loc5_.replace(/>/g,"&gt;");
               _loc2_ = _loc5_.substr(0,_loc5_.indexOf(" "));
               if(_loc5_.charAt(0) != "*")
               {
                  _loc7_ = 0;
                  while(_loc7_ < this._SafeStr_109._SafeStr_194.length)
                  {
                     if(_SafeCls_10._SafeStr_413(this._SafeStr_109._SafeStr_194[_loc7_],_loc2_))
                     {
                        _loc6_ = true;
                        break;
                     }
                     _loc7_++;
                  }
               }
               if(!_loc6_)
               {
                  if(_loc5_.charAt(0) == "*")
                  {
                     this.whisper("<font color=\'#4a47ad\'>" + _loc5_.substr(1) + "</font>");
                     this._SafeStr_158("<font color=\'#4a47ad\'>" + _loc5_.substr(1) + "</font>");
                  }
                  else if(_loc5_.charAt(0) == "+")
                  {
                     _loc2_ = _loc5_.substr(1,_loc5_.indexOf(" ") - 1);
                     _loc5_ = _loc5_.substr(_loc2_.length + 1);
                     _loc7_ = 0;
                     while(_loc7_ < this._SafeStr_109.language_filter.length)
                     {
                        _loc5_ = _loc5_.replace(this._SafeStr_109.language_filter[_loc7_],"******");
                        _loc7_++;
                     }
                     this.whisper("<font color=\'#3d7edd\'>{to " + _loc2_ + "} " + _loc5_ + "</font>");
                     this._SafeStr_158("<font color=\'#3d7edd\'>{to " + _loc2_ + "} " + _loc5_ + "</font>");
                  }
                  else
                  {
                     _loc5_ = _loc5_.substr(_loc2_.length + 1);
                     _loc7_ = 0;
                     while(_loc7_ < this._SafeStr_109.language_filter.length)
                     {
                        _loc5_ = _loc5_.replace(this._SafeStr_109.language_filter[_loc7_],"******");
                        _loc7_++;
                     }
                     this.whisper("<font color=\'#3d7edd\'>{" + _loc2_ + "} " + _loc5_ + "</font>");
                     this._SafeStr_158("<font color=\'#3d7edd\'>{" + _loc2_ + "} " + _loc5_ + "</font>");
                     _SafeCls_10._SafeStr_469 = _loc2_;
                     _loc10_ = _SafeCls_6._SafeStr_121();
                     _loc10_._SafeStr_126(this.ed._SafeStr_119("Whisper"));
                  }
               }
               trace("Chat pane animate: " + this.mc.chat_pane_animate.currentFrame);
               if(this.mc.chat_pane_animate.currentFrame == 1 || this.mc.chat_pane_animate.currentFrame == 40)
               {
                  this.mc.whisper_notify.visible = true;
                  this.mc.whisper_notify.gotoAndPlay(1);
               }
               break;
            case _SafeCls_39._SafeStr_675:
               _loc7_ = 0;
               while(true)
               {
                  if(_loc7_ >= this._SafeStr_165.length)
                  {
                     break loop9;
                  }
                  if(this._SafeStr_165[_loc7_].player.text.toLowerCase() == _loc2_.toLowerCase())
                  {
                     break;
                  }
                  _loc7_++;
               }
               this._SafeStr_165[_loc7_].inactive.visible = false;
               this._SafeStr_466();
               if(_loc3_)
               {
                  _loc3_._SafeStr_349 = true;
               }
               break;
            case _SafeCls_39._SafeStr_595:
               _loc7_ = 0;
               while(true)
               {
                  if(_loc7_ >= this._SafeStr_165.length)
                  {
                     break loop9;
                  }
                  if(this._SafeStr_165[_loc7_].player.text == _loc2_)
                  {
                     break;
                  }
                  _loc7_++;
               }
               this._SafeStr_165[_loc7_].inactive.visible = true;
               this._SafeStr_466();
               if(_loc3_)
               {
                  _loc3_._SafeStr_349 = false;
               }
               break;
            case _SafeCls_39._SafeStr_479:
               _loc5_ = param1.message.substr(1,param1.message.length - 1);
               this.ed.notification_box._SafeStr_108("You have been issued a warning: \"" + _loc5_ + "\"");
         }
      }
      
      public function _SafeStr_532(param1:_SafeCls_67) : void
      {
         this.whisper("<font color=\'#4a47ad\'>" + param1.message.substr(2) + "</font>");
         this._SafeStr_158("<font color=\'#4a47ad\'>" + param1.message.substr(2) + "</font>");
      }
      
      public function _SafeStr_1123(param1:_SafeCls_60, param2:_SafeCls_60) : int
      {
         if(param1._SafeStr_349 && !param2._SafeStr_349)
         {
            return -1;
         }
         if(!param1._SafeStr_349 && param2._SafeStr_349)
         {
            return 1;
         }
         if(param1._SafeStr_342 > param2._SafeStr_342)
         {
            return -1;
         }
         if(param1._SafeStr_342 < param2._SafeStr_342)
         {
            return 1;
         }
         if(param1.rank > param2.rank)
         {
            return -1;
         }
         if(param1.rank < param2.rank)
         {
            return 1;
         }
         if(param1.name.toLowerCase() < param2.name.toLowerCase())
         {
            return -1;
         }
         if(param1.name.toLowerCase() > param2.name.toLowerCase())
         {
            return 1;
         }
         return 0;
      }
      
      public function _SafeStr_525(param1:_SafeCls_67) : void
      {
         var _loc2_:_SafeCls_60 = new _SafeCls_60(param1._SafeStr_203);
         this.users.push(_loc2_);
         this._SafeStr_466();
      }
      
      public function _SafeStr_499(param1:_SafeCls_67) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.users.length)
         {
            if(this.users[_loc2_].id == param1._SafeStr_203)
            {
               this.users.splice(_loc2_,1);
               this._SafeStr_466();
               return;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_769(param1:_SafeCls_67) : void
      {
      }
      
      public function _SafeStr_819(param1:_SafeCls_67) : void
      {
      }
      
      public function _SafeStr_901(param1:MouseEvent) : void
      {
         this.ed.notification_box._SafeStr_108("Not yet implemented");
      }
      
      public function _SafeStr_1111(param1:String) : _SafeCls_60
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.users.length)
         {
            if(this.users[_loc2_].id == param1)
            {
               return this.users[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafeCls_49 = "@+"
 * @identifier _SafeCls_60 = "[9"
 * @identifier _SafeCls_61 = "!&"
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_109 = "5\""
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_129 = "35"
 * @identifier _SafeStr_145 = "78"
 * @identifier _SafeStr_154 = "61"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_158 = "\'&"
 * @identifier _SafeStr_165 = "-Q"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_194 = "&U"
 * @identifier _SafeStr_203 = "]5"
 * @identifier _SafeStr_219 = "&;"
 * @identifier _SafeStr_250 = "0G"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_291 = "6Q"
 * @identifier _SafeStr_303 = "!-"
 * @identifier _SafeStr_305 = "07"
 * @identifier _SafeStr_323 = "-R"
 * @identifier _SafeStr_342 = "3R"
 * @identifier _SafeStr_349 = "=R"
 * @identifier _SafeStr_355 = "@B"
 * @identifier _SafeStr_359 = "2F"
 * @identifier _SafeStr_361 = "09"
 * @identifier _SafeStr_367 = "do "
 * @identifier _SafeStr_377 = "!2"
 * @identifier _SafeStr_407 = "7<"
 * @identifier _SafeStr_413 = "extends"
 * @identifier _SafeStr_438 = "]S"
 * @identifier _SafeStr_466 = "6M"
 * @identifier _SafeStr_467 = "\',"
 * @identifier _SafeStr_469 = " !"
 * @identifier _SafeStr_472 = ";2"
 * @identifier _SafeStr_479 = "2U"
 * @identifier _SafeStr_483 = ">F"
 * @identifier _SafeStr_492 = "^K"
 * @identifier _SafeStr_499 = "4S"
 * @identifier _SafeStr_525 = "<$"
 * @identifier _SafeStr_532 = "+D"
 * @identifier _SafeStr_540 = ">9"
 * @identifier _SafeStr_547 = "&K"
 * @identifier _SafeStr_587 = "3-"
 * @identifier _SafeStr_595 = "`C"
 * @identifier _SafeStr_675 = "+3"
 * @identifier _SafeStr_681 = ",M"
 * @identifier _SafeStr_687 = "9R"
 * @identifier _SafeStr_705 = "6F"
 * @identifier _SafeStr_740 = " null"
 * @identifier _SafeStr_769 = "\"@"
 * @identifier _SafeStr_815 = "each "
 * @identifier _SafeStr_819 = "9M"
 * @identifier _SafeStr_889 = "!%"
 * @identifier _SafeStr_901 = " T"
 * @identifier _SafeStr_945 = "0-"
 * @identifier _SafeStr_972 = "6D"
 * @identifier _SafeStr_1061 = "+8"
 * @identifier _SafeStr_1089 = "?%"
 * @identifier _SafeStr_1111 = "[2"
 * @identifier _SafeStr_1112 = "^D"
 * @identifier _SafeStr_1123 = "?8"
 * @identifier _SafeStr_1156 = "4D"
 * @identifier _SafeStr_1175 = ";5"
 * @identifier _SafeStr_1192 = ">>"
 */
