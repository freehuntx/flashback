package murray
{
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_8._SafeCls_67;
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class _SafeCls_83 extends EventDispatcher
   {
      
      public var mc:MovieClip;
      
      public var ed:_SafeCls_72;
      
      public var _SafeStr_267:Array;
      
      public var _SafeStr_994:Array;
      
      public var _SafeStr_511:Array;
      
      public var _SafeStr_906:Array;
      
      private var mmocha:_SafeCls_71;
      
      public function _SafeCls_83(param1:MovieClip, param2:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.ed = param2;
         param1.visible = false;
         param1.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_771);
         this._SafeStr_350(param1.check_private,false);
         this._SafeStr_350(param1.check_overload,false,false);
         this._SafeStr_350(param1.check_team_deathmatch,false,false);
         this._SafeStr_350(param1.check_deathmatch,true,false);
         this._SafeStr_350(param1.check_randomize,false);
         this._SafeStr_350(param1.check_any,true,true);
         param1.check_team_deathmatch.addEventListener(MouseEvent.CLICK,this._SafeStr_947);
         param1.check_deathmatch.addEventListener(MouseEvent.CLICK,this._SafeStr_947);
         this._SafeStr_267 = [param1.map1,param1.map2,param1.map3,param1.map4,param1.map5,param1.map6,param1.map7,param1.map8];
         this._SafeStr_994 = [param1.stock1,param1.stock2,param1.stock3,param1.stock4,param1.stock5,param1.stock6,param1.stock7,param1.stock8];
         this._SafeStr_511 = [param1.custom_map1,param1.custom_map2,param1.custom_map3,param1.custom_map4,param1.custom_map5,param1.custom_map6,param1.custom_map7,param1.custom_map8];
         this._SafeStr_906 = [param1.custom_map1_name,param1.custom_map2_name,param1.custom_map3_name,param1.custom_map4_name,param1.custom_map5_name,param1.custom_map6_name,param1.custom_map7_name,param1.custom_map8_name];
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_267.length)
         {
            this._SafeStr_350(this._SafeStr_267[_loc3_],false);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_511.length)
         {
            this._SafeStr_350(this._SafeStr_511[_loc3_],false);
            _loc3_++;
         }
         param1.all_stock.addEventListener(MouseEvent.CLICK,this._SafeStr_1135);
         param1.none_stock.addEventListener(MouseEvent.CLICK,this._SafeStr_1148);
         param1.invite_friends.visible = false;
         param1.create.addEventListener(MouseEvent.CLICK,this._SafeStr_990);
         param1.game_name.restrict = "a-zA-Z0-9 \'";
         param1.game_name.maxChars = 25;
         param1.rank_limit.restrict = "-0-9+";
         param1.rank_limit.maxChars = 10;
         param1.rank_limit.addEventListener(TextEvent.TEXT_INPUT,this._SafeStr_1022);
      }
      
      private function _SafeStr_1022(param1:TextEvent) : void
      {
         this.mc.check_any.gotoAndStop(1);
      }
      
      private function _SafeStr_990(param1:MouseEvent) : void
      {
         var _loc12_:_SafeCls_3 = null;
         var _loc13_:int = 0;
         var _loc14_:Array = null;
         if(this.mc.game_name.text == "")
         {
            this.ed.notification_box._SafeStr_108("You need to enter a game name");
            return;
         }
         var _loc2_:Array = new Array();
         var _loc3_:String = this.mc.game_name.text;
         var _loc4_:int = 0;
         var _loc5_:int = _SafeCls_4._SafeStr_144;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:int = 60;
         var _loc9_:int = 0;
         while(_loc9_ < this._SafeStr_267.length)
         {
            if(this._SafeStr_267[_loc9_].currentFrame == 2)
            {
               _loc2_.push(_loc9_);
            }
            _loc9_++;
         }
         if(_loc2_.length == 0)
         {
            this.ed.notification_box._SafeStr_108("You must select at least one map");
            return;
         }
         if(this.mc.check_randomize.currentFrame == 2)
         {
            _loc4_ = 1;
         }
         if(this.mc.check_private.currentFrame == 2)
         {
            _loc6_ = true;
         }
         if(this.mc.check_overload.currentFrame == 2)
         {
            _loc5_ = _SafeCls_4._SafeStr_164;
         }
         if(this.mc.check_team_deathmatch.currentFrame == 2)
         {
            _loc5_ = _SafeCls_4._SafeStr_213;
         }
         if(this.mc.check_deathmatch.currentFrame == 2)
         {
            _loc5_ = _SafeCls_4._SafeStr_144;
         }
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_839);
         var _loc10_:int = 0;
         if(_loc4_ != 0)
         {
            _loc10_ = int(int(Math.random() * _loc2_.length));
         }
         if(this.mc.check_any.currentFrame == 2)
         {
            _loc7_ = 0;
            _loc8_ = 60;
         }
         else
         {
            _loc12_ = _SafeCls_3._SafeStr_157();
            if(this.mc.rank_limit.text == "")
            {
               this.ed.notification_box._SafeStr_108("Please enter a rank range");
            }
            if(this.mc.rank_limit.text.substr(0,1) == "-" && _SafeCls_10._SafeStr_557(this.mc.rank_limit.text.substr(1)))
            {
               _loc13_ = int(int(this.mc.rank_limit.text.substr(1)));
               _loc7_ = _loc12_.rank - _loc13_;
               _loc8_ = _loc12_.rank;
            }
            else if(this.mc.rank_limit.text.substr(0,1) == "+" && _SafeCls_10._SafeStr_557(this.mc.rank_limit.text.substr(1)))
            {
               _loc13_ = int(int(this.mc.rank_limit.text.substr(1)));
               _loc7_ = _loc12_.rank;
               _loc8_ = _loc12_.rank + _loc13_;
            }
            else if(_SafeCls_10._SafeStr_557(this.mc.rank_limit.text))
            {
               _loc13_ = int(int(this.mc.rank_limit.text));
               _loc7_ = _loc12_.rank - _loc13_;
               _loc8_ = _loc12_.rank + _loc13_;
            }
            else
            {
               if(this.mc.rank_limit.text.indexOf("-") <= 0)
               {
                  this.ed.notification_box._SafeStr_108("Please enter a valid rank range");
                  return;
               }
               _loc14_ = this.mc.rank_limit.text.split("-");
               if(!(_SafeCls_10._SafeStr_557(_loc14_[0]) && _SafeCls_10._SafeStr_557(_loc14_[1])))
               {
                  this.ed.notification_box._SafeStr_108("Please enter a valid rank range");
                  return;
               }
               _loc7_ = int(_loc14_[0]) - 1;
               _loc8_ = int(_loc14_[1]) - 1;
               if(_loc12_.rank < _loc7_ || _loc12_.rank > _loc8_)
               {
                  this.ed.notification_box._SafeStr_108("The entered rank range must include your rank");
                  return;
               }
            }
            if(_loc7_ < 0)
            {
               _loc7_ = 0;
            }
            trace("Current rank: " + _loc12_.rank + " rank range: " + _loc7_ + "-" + _loc8_);
         }
         this.mmocha._SafeStr_729(_loc3_,_loc6_,_loc5_,_loc2_,_loc4_,_loc10_,_loc7_,_loc8_);
         var _loc11_:Object = new Object();
         _loc11_.name = this.mc.game_name.text;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_373,_loc11_));
         this.mc.visible = false;
      }
      
      private function _SafeStr_839(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_839);
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         trace("Caught not creating room");
         this.mc.visible = true;
         this.ed.notification_box._SafeStr_108("The game didn\'t create yo");
      }
      
      private function _SafeStr_947(param1:MouseEvent) : void
      {
         this._SafeStr_567();
         (param1.target as MovieClip).gotoAndStop(2);
      }
      
      private function _SafeStr_567() : void
      {
         this.mc.check_overload.gotoAndStop(1);
         this.mc.check_team_deathmatch.gotoAndStop(1);
         this.mc.check_deathmatch.gotoAndStop(1);
      }
      
      private function _SafeStr_350(param1:MovieClip, param2:Boolean, param3:Boolean = true) : void
      {
         param1.mouseChildren = false;
         if(param2)
         {
            param1.gotoAndStop(2);
         }
         else
         {
            param1.gotoAndStop(1);
         }
         param1.useHandCursor = true;
         param1.buttonMode = true;
         if(param3)
         {
            param1.addEventListener(MouseEvent.CLICK,this._SafeStr_1213);
         }
      }
      
      public function _SafeStr_771(param1:MouseEvent) : void
      {
         this.mc.visible = false;
      }
      
      public function _SafeStr_1213(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc2_.currentFrame == 1)
         {
            _loc2_.gotoAndStop(2);
         }
         else
         {
            _loc2_.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_1148(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_267.length)
         {
            this._SafeStr_267[_loc2_].gotoAndStop(1);
            _loc2_++;
         }
      }
      
      public function _SafeStr_1135(param1:MouseEvent = null) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_267.length)
         {
            this._SafeStr_267[_loc2_].gotoAndStop(2);
            _loc2_++;
         }
      }
      
      public function _SafeStr_168(param1:_SafeCls_71) : void
      {
         var _loc4_:MovieClip = null;
         var _loc5_:TextField = null;
         this.mc.rank_limit.text = "";
         this.mc.game_name.text = "";
         this.mc.custom_user.text = "";
         this._SafeStr_567();
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         if(_loc2_.preferred_game_mode == _SafeCls_4._SafeStr_144)
         {
            this.mc.check_deathmatch.gotoAndStop(2);
         }
         else if(_loc2_.preferred_game_mode == _SafeCls_4._SafeStr_213)
         {
            this.mc.check_team_deathmatch.gotoAndStop(2);
         }
         else if(_loc2_.preferred_game_mode == _SafeCls_4._SafeStr_164)
         {
            this.mc.check_overload.gotoAndStop(2);
         }
         this.mc.check_private.gotoAndStop(1);
         this.mc.check_randomize.gotoAndStop(2);
         this.mmocha = param1;
         this.mc.visible = true;
         this.mc.check_any.gotoAndStop(2);
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_267.length)
         {
            _loc4_ = this._SafeStr_267[_loc3_];
            _loc5_ = this._SafeStr_994[_loc3_];
            if(_loc3_ < this.ed.maps.length)
            {
               _loc4_.gotoAndStop(2);
               _loc4_.visible = true;
               _loc5_.visible = true;
               _loc5_.text = (this.ed.maps[_loc3_] as _SafeCls_46).name;
            }
            else
            {
               _loc4_.gotoAndStop(1);
               _loc4_.visible = false;
               _loc5_.visible = false;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_511.length)
         {
            _loc4_ = this._SafeStr_511[_loc3_];
            _loc4_.gotoAndStop(1);
            _loc4_.visible = false;
            this._SafeStr_906[_loc3_].visible = false;
            _loc3_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_46 = "=F"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_83 = "\'1"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_144 = "set "
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_217 = "<,"
 * @identifier _SafeStr_267 = "1R"
 * @identifier _SafeStr_350 = "&#"
 * @identifier _SafeStr_373 = "<D"
 * @identifier _SafeStr_511 = "17"
 * @identifier _SafeStr_557 = "9+"
 * @identifier _SafeStr_567 = ";#"
 * @identifier _SafeStr_729 = "2!"
 * @identifier _SafeStr_771 = "6&"
 * @identifier _SafeStr_839 = "]"
 * @identifier _SafeStr_906 = "4<"
 * @identifier _SafeStr_947 = "[\""
 * @identifier _SafeStr_990 = "3;"
 * @identifier _SafeStr_994 = "%2"
 * @identifier _SafeStr_1022 = "]C"
 * @identifier _SafeStr_1135 = "2N"
 * @identifier _SafeStr_1148 = "8C"
 * @identifier _SafeStr_1213 = "+#"
 */
