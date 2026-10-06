package murray
{
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_12._SafeCls_11;
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class Hub extends EventDispatcher
   {
      
      public var mc:MovieClip;
      
      public var nui:NotificationUI;
      
      public var user_info:_SafeCls_3;
      
      public var shop:_SafeCls_82;
      
      public var garage:_SafeCls_81;
      
      public var _SafeStr_696:_SafeCls_83;
      
      public var _SafeStr_719:_SafeCls_85;
      
      public var _SafeStr_346:_SafeCls_84;
      
      public var _SafeStr_977:_SafeCls_51;
      
      public var _SafeStr_314:_SafeCls_49;
      
      public var mmocha:_SafeCls_71;
      
      public var ed:_SafeCls_72;
      
      public var _SafeStr_156:_SafeCls_102;
      
      private var _SafeStr_539:URLLoader;
      
      private var high_scores:_SafeCls_50;
      
      public function Hub(param1:MovieClip, param2:NotificationUI, param3:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.nui = param2;
         param1.visible = false;
         this.shop = new _SafeCls_82(param1.shop_ui,param3);
         this.garage = new _SafeCls_81(param1.garage_ui,param3);
         this.high_scores = new _SafeCls_50(param1.highscores_ui,param3);
         param1.high_scores.addEventListener(MouseEvent.CLICK,this.high_scores._SafeStr_168);
         this.garage.addEventListener(_SafeCls_66._SafeStr_650,this._SafeStr_501);
         this.shop.addEventListener(_SafeCls_66._SafeStr_408,this.updateCash);
         this.shop.addEventListener(_SafeCls_66._SafeStr_625,this._SafeStr_609);
         this._SafeStr_696 = new _SafeCls_83(param1.create_game,param3);
         this._SafeStr_719 = new _SafeCls_85(param1.join_game);
         this._SafeStr_719.addEventListener(_SafeCls_66._SafeStr_324,this._SafeStr_1190);
         this._SafeStr_314 = new _SafeCls_49(param1.social,param3);
         this._SafeStr_696.addEventListener(_SafeCls_66._SafeStr_373,this._SafeStr_1160);
         param1.options_overlay.visible = false;
         this._SafeStr_977 = new _SafeCls_51(param1.customize_controls);
         this._SafeStr_346 = new _SafeCls_84(param1.options_overlay);
         param1.options_overlay.ok.visible = false;
         param1.options_overlay.leave_arena.visible = false;
         this.user_info = _SafeCls_3._SafeStr_157();
         param1.shop.addEventListener(MouseEvent.CLICK,this._SafeStr_501);
         param1.ubershop.addEventListener(MouseEvent.CLICK,this._SafeStr_1159);
         param1.garage.addEventListener(MouseEvent.CLICK,this._SafeStr_609);
         param1.select_arena.addEventListener(MouseEvent.CLICK,this._SafeStr_1201);
         param1.create_arena.addEventListener(MouseEvent.CLICK,this._SafeStr_1161);
         param1.options.addEventListener(MouseEvent.CLICK,this._SafeStr_353);
         param1.top_bar.get_xcash.addEventListener(MouseEvent.CLICK,this._SafeStr_1040);
         param1.top_bar.log_out.addEventListener(MouseEvent.CLICK,this._SafeStr_686);
         param1.quick_play.addEventListener(MouseEvent.CLICK,this._SafeStr_564);
         _SafeCls_10._SafeStr_113(param1.top_bar.get_xcash);
         _SafeCls_10._SafeStr_113(param1.top_bar.log_out);
         _SafeCls_10._SafeStr_113(param1.quick_play);
         _SafeCls_10._SafeStr_113(param1.select_arena);
         _SafeCls_10._SafeStr_113(param1.create_arena);
         _SafeCls_10._SafeStr_113(param1.shop);
         _SafeCls_10._SafeStr_113(param1.ubershop);
         _SafeCls_10._SafeStr_113(param1.shop_ui.tab_gear);
         _SafeCls_10._SafeStr_113(param1.shop_ui.tab_vehicles);
         _SafeCls_10._SafeStr_113(param1.shop_ui.top_bar.exit);
         _SafeCls_10._SafeStr_113(param1.shop_ui.top_bar.get_xcash);
         _SafeCls_10._SafeStr_113(param1.shop_ui.vehicle_shop.randomize);
         _SafeCls_10._SafeStr_113(param1.shop_ui.premium_shop.get_xcash);
         _SafeCls_10._SafeStr_113(param1.shop_ui.premium_shop.buy);
         _SafeCls_10._SafeStr_113(param1.shop_ui.premium_shop.tank_colors.randomize);
         _SafeCls_10._SafeStr_113(param1.shop_ui.premium_shop.tank_colors.buy_vehicle_cash);
         _SafeCls_10._SafeStr_113(param1.shop_ui.buy_popup.back);
         _SafeCls_10._SafeStr_113(param1.shop_ui.buy_popup.get_xcash);
         _SafeCls_10._SafeStr_113(param1.join_game.enter);
         _SafeCls_10._SafeStr_113(param1.join_game.cancel);
         _SafeCls_10._SafeStr_113(param1.join_game.join);
         _SafeCls_10._SafeStr_113(param1.create_game.cancel);
         _SafeCls_10._SafeStr_113(param1.create_game.invite_friends);
         _SafeCls_10._SafeStr_113(param1.create_game.create);
         _SafeCls_10._SafeStr_113(param1.garage_ui.exit);
         _SafeCls_10._SafeStr_113(param1.garage_ui.tab_lineup);
         _SafeCls_10._SafeStr_113(param1.garage_ui.tab_gear);
         _SafeCls_10._SafeStr_113(param1.garage_ui.tanks_select.tanks_previous);
         _SafeCls_10._SafeStr_113(param1.garage_ui.tanks_select.tanks_next);
         _SafeCls_10._SafeStr_113(param1.garage_ui.lineup.buy_vehicles);
         _SafeCls_10._SafeStr_113(param1.garage_ui.lineup.info.customize_tank);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.buy_gear);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.primary_previous);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.primary_next);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.secondary_previous);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.secondary_next);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.equipment_previous);
         _SafeCls_10._SafeStr_113(param1.garage_ui.customize.equipment_next);
         _SafeCls_10._SafeStr_113(param1.options);
         _SafeCls_10._SafeStr_236(param1.shop_ui.vehicle_shop.buy_vehicle_cash);
         _SafeCls_10._SafeStr_236(param1.garage);
         _SafeCls_10._SafeStr_236(param1.shop_ui.top_bar.go_to_garage);
         _SafeCls_10._SafeStr_236(param1.shop_ui.store1);
         _SafeCls_10._SafeStr_236(param1.shop_ui.store2);
         _SafeCls_10._SafeStr_236(param1.shop_ui.store3);
         _SafeCls_10._SafeStr_236(param1.shop_ui.store4);
         _SafeCls_10._SafeStr_236(param1.shop_ui.store5);
         _SafeCls_10._SafeStr_236(param1.shop_ui.store6);
         _SafeCls_10._SafeStr_236(param1.shop_ui.buy_popup.buy_xcash);
         _SafeCls_10._SafeStr_236(param1.shop_ui.buy_popup.buy_cash);
         this._SafeStr_346.addEventListener(_SafeCls_66._SafeStr_403,this._SafeStr_617);
      }
      
      public function _SafeStr_617(param1:_SafeCls_66) : void
      {
         this._SafeStr_977._SafeStr_168(this._SafeStr_811,this.ed.notification_box);
      }
      
      public function _SafeStr_811() : void
      {
         this._SafeStr_346.mc.visible = true;
      }
      
      public function _SafeStr_501(param1:Event) : void
      {
         this.garage._SafeStr_768();
         this.shop._SafeStr_168();
      }
      
      public function _SafeStr_1159(param1:MouseEvent) : void
      {
         this.shop._SafeStr_168(5);
      }
      
      public function _SafeStr_609(param1:Event) : void
      {
         this.shop._SafeStr_714();
         this.garage._SafeStr_168(this.mmocha);
      }
      
      public function _SafeStr_353(param1:MouseEvent) : void
      {
         this._SafeStr_346._SafeStr_353();
      }
      
      public function _SafeStr_1161(param1:MouseEvent) : void
      {
         this._SafeStr_696._SafeStr_168(this.mmocha);
      }
      
      public function _SafeStr_1201(param1:MouseEvent) : void
      {
         this._SafeStr_719._SafeStr_168(this.mmocha,this.ed);
      }
      
      public function _SafeStr_1190(param1:_SafeCls_66) : void
      {
         this.mc.stage.focus = null;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         _loc2_.create = false;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_324,param1._SafeStr_364));
      }
      
      public function _SafeStr_1160(param1:_SafeCls_66) : void
      {
         this.mc.stage.focus = null;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         _loc2_.create = true;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_373,param1._SafeStr_364));
      }
      
      public function _SafeStr_686(param1:MouseEvent) : void
      {
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_504));
      }
      
      public function _SafeStr_564(param1:MouseEvent) : void
      {
         this.mc.stage.focus = null;
         var _loc2_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         _loc2_.create = false;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_336));
      }
      
      public function _SafeStr_1040(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.xgenstudios.com/xcash/?username=" + this.user_info.username + "&key=" + _SafeCls_11._SafeStr_806(this.user_info.password)));
         this.nui._SafeStr_108("Launching XCash Webpage. Click OK to update and return to game.",this._SafeStr_791);
      }
      
      public function _SafeStr_791() : void
      {
         this.nui._SafeStr_141("Loading XCash");
         var _loc1_:URLRequest = new URLRequest("http://api.xgenstudios.com/?method=xgen.users.authenticate&username=" + this.user_info.username + "&password=" + this.user_info.password);
         this._SafeStr_539 = new URLLoader(_loc1_);
         this._SafeStr_539.addEventListener(Event.COMPLETE,this._SafeStr_494);
         this._SafeStr_539.load(_loc1_);
      }
      
      public function _SafeStr_494(param1:Event) : void
      {
         this._SafeStr_539.removeEventListener(Event.COMPLETE,this._SafeStr_494);
         var _loc2_:XML = XML(this._SafeStr_539.data);
         if(_loc2_.user != undefined)
         {
            this.user_info.xcash = _loc2_.user.points;
            this.updateCash();
         }
         this.nui._SafeStr_197();
      }
      
      public function _SafeStr_764(param1:_SafeCls_72, param2:_SafeCls_71) : void
      {
         this.ed = param1;
         this.mmocha = param2;
         this.user_info = _SafeCls_3._SafeStr_157();
         this.mc.visible = true;
         this.updateCash();
         this.mc.account_info.player_name.text = this.user_info.username;
         var _loc3_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         this._SafeStr_314._SafeStr_407(param2);
         _loc3_._SafeStr_1104(param1._SafeStr_119("Menu_Loop"));
      }
      
      public function updateCash(param1:_SafeCls_66 = null) : void
      {
         _SafeCls_10._SafeStr_693(this.mc.account_info);
         this.mc.top_bar.cash_field.text = "BITS:      " + _SafeCls_10._SafeStr_179(this.user_info._SafeStr_230);
         this.mc.top_bar.xcash_field.text = "XCASH:     " + _SafeCls_10._SafeStr_179(this.user_info.xcash);
         this.mc.top_bar.xcash_icon.x = this.mc.top_bar.xcash_field.x + this.mc.top_bar.xcash_field.width / 2 - this.mc.top_bar.xcash_field.textWidth / 2 + 82;
         this.mc.top_bar.bit_icon.x = this.mc.top_bar.cash_field.x + this.mc.top_bar.cash_field.width / 2 - this.mc.top_bar.cash_field.textWidth / 2 + 41;
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
 * @identifier _SafeCls_11 = "return"
 * @identifier _SafeCls_49 = "@+"
 * @identifier _SafeCls_50 = "5J"
 * @identifier _SafeCls_51 = "]@"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_81 = ";0"
 * @identifier _SafeCls_82 = "7\""
 * @identifier _SafeCls_83 = "\'1"
 * @identifier _SafeCls_84 = "%5"
 * @identifier _SafeCls_85 = "7L"
 * @identifier _SafeCls_102 = "-T"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_12 = "?5"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_156 = "2G"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_179 = "8G"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_230 = "-#"
 * @identifier _SafeStr_236 = "<H"
 * @identifier _SafeStr_314 = "?E"
 * @identifier _SafeStr_324 = "^M"
 * @identifier _SafeStr_336 = "`?"
 * @identifier _SafeStr_346 = "7O"
 * @identifier _SafeStr_353 = "#5"
 * @identifier _SafeStr_364 = "^H"
 * @identifier _SafeStr_373 = "<D"
 * @identifier _SafeStr_403 = "&<"
 * @identifier _SafeStr_407 = "7<"
 * @identifier _SafeStr_408 = "1A"
 * @identifier _SafeStr_494 = "+C"
 * @identifier _SafeStr_501 = "3P"
 * @identifier _SafeStr_504 = "5!"
 * @identifier _SafeStr_539 = " ?"
 * @identifier _SafeStr_564 = "?K"
 * @identifier _SafeStr_609 = "9#"
 * @identifier _SafeStr_617 = "+G"
 * @identifier _SafeStr_625 = "7D"
 * @identifier _SafeStr_650 = "#\'"
 * @identifier _SafeStr_686 = "2B"
 * @identifier _SafeStr_693 = "+B"
 * @identifier _SafeStr_696 = "1T"
 * @identifier _SafeStr_714 = ";!"
 * @identifier _SafeStr_719 = "@<"
 * @identifier _SafeStr_764 = "70"
 * @identifier _SafeStr_768 = "3+"
 * @identifier _SafeStr_791 = "try"
 * @identifier _SafeStr_806 = " case"
 * @identifier _SafeStr_811 = " U"
 * @identifier _SafeStr_977 = "%I"
 * @identifier _SafeStr_1040 = "try "
 * @identifier _SafeStr_1104 = ";S"
 * @identifier _SafeStr_1159 = "+R"
 * @identifier _SafeStr_1160 = "[G"
 * @identifier _SafeStr_1161 = "8!"
 * @identifier _SafeStr_1190 = "9B"
 * @identifier _SafeStr_1201 = "+\'"
 */
