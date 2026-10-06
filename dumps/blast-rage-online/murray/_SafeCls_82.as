package murray
{
   import _SafePkg_12._SafeCls_11;
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class _SafeCls_82 extends EventDispatcher
   {
      
      public static const _SafeStr_395:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.shop.items.list&user_id=";
      
      public static const _SafeStr_287:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.user.items.buy";
      
      public static const _SafeStr_378:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.user.loadout.save";
      
      public static const _SafeStr_726:Array = [0,2,4,6,8];
      
      public var mc:MovieClip;
      
      private var ed:_SafeCls_72;
      
      public var _SafeStr_212:Array;
      
      public var _SafeStr_181:int = -1;
      
      public var _SafeStr_751:Boolean = true;
      
      public var _SafeStr_182:Array;
      
      public var _SafeStr_320:int = 0;
      
      public var user_info:_SafeCls_3;
      
      public var _SafeStr_160:Array;
      
      public var _SafeStr_170:Array;
      
      public var _SafeStr_186:Array = new Array();
      
      public var _SafeStr_249:Array = new Array();
      
      private var _SafeStr_543:int;
      
      public var _SafeStr_229:Array = new Array();
      
      private var _SafeStr_255:int = -1;
      
      public var _SafeStr_244:int = -1;
      
      public var _SafeStr_526:_SafeCls_61;
      
      public var _SafeStr_902:_SafeCls_61;
      
      public var _SafeStr_437:_SafeCls_61;
      
      public var _SafeStr_760:Boolean = false;
      
      public var _SafeStr_585:Boolean = false;
      
      private var sm:_SafeCls_6;
      
      private var _SafeStr_539:URLLoader;
      
      public function _SafeCls_82(param1:MovieClip, param2:_SafeCls_72)
      {
         super();
         this.sm = _SafeCls_6._SafeStr_121();
         this.user_info = _SafeCls_3._SafeStr_157();
         param1.visible = false;
         this.mc = param1;
         param1.top_bar.exit.addEventListener(MouseEvent.CLICK,this._SafeStr_714);
         param1.top_bar.cash_field.text = "";
         param1.top_bar.get_xcash.addEventListener(MouseEvent.CLICK,this._SafeStr_666);
         param2.notification_box.get_xcash.addEventListener(MouseEvent.CLICK,this._SafeStr_666);
         param1.buy_popup.get_xcash.addEventListener(MouseEvent.CLICK,this._SafeStr_666);
         param1.top_bar.go_to_garage.addEventListener(MouseEvent.CLICK,this._SafeStr_609);
         param1.premium_shop.visible = false;
         param1.gear_shop.visible = false;
         param1.vehicle_shop.visible = false;
         param1.tab_vehicles.visible = false;
         param1.tab_gear.visible = false;
         param1.buy_popup.visible = false;
         this._SafeStr_182 = [param1.store1,param1.store2,param1.store3,param1.store4,param1.store5,param1.store6];
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_182.length)
         {
            this._SafeStr_182[_loc3_].addEventListener(MouseEvent.CLICK,this._SafeStr_1080);
            if(this._SafeStr_182[_loc3_] is MovieClip)
            {
               this._SafeStr_182[_loc3_].useHandCursor = true;
               this._SafeStr_182[_loc3_].buttonMode = true;
               this._SafeStr_182[_loc3_].mouseChildren = false;
               this._SafeStr_182[_loc3_].store.gotoAndStop(1);
               this._SafeStr_182[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_1121);
               this._SafeStr_182[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_1229);
            }
            _loc3_++;
         }
         this.ed = param2;
         _SafeCls_10._SafeStr_660(param1.tab_vehicles,this._SafeStr_890);
         _SafeCls_10._SafeStr_660(param1.tab_gear,this._SafeStr_1064);
         param1.vehicle_shop.left_page.addEventListener(MouseEvent.CLICK,this._SafeStr_1212);
         param1.vehicle_shop.right_page.addEventListener(MouseEvent.CLICK,this._SafeStr_1169);
         param1.vehicle_shop.randomize.addEventListener(MouseEvent.CLICK,this._SafeStr_1221);
         param1.premium_shop.tank_colors.randomize.addEventListener(MouseEvent.CLICK,this._SafeStr_1145);
         _SafeCls_10._SafeStr_236(param1.buy_popup.buy_cash);
         _SafeCls_10._SafeStr_236(param1.buy_popup.buy_xcash);
         param1.buy_popup.buy_cash.addEventListener(MouseEvent.CLICK,this._SafeStr_1035);
         param1.buy_popup.buy_xcash.addEventListener(MouseEvent.CLICK,this._SafeStr_1152);
         param1.vehicle_shop.buy_vehicle_cash.addEventListener(MouseEvent.CLICK,this._SafeStr_1128);
         param1.buy_popup.back.addEventListener(MouseEvent.CLICK,this._SafeStr_1227);
         this._SafeStr_160 = [new _SafeCls_87(param1.vehicle_shop.color_picker1),new _SafeCls_87(param1.vehicle_shop.color_picker2)];
         this._SafeStr_170 = [new _SafeCls_87(param1.premium_shop.tank_colors.color_picker1),new _SafeCls_87(param1.premium_shop.tank_colors.color_picker2)];
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_160.length)
         {
            if(this.user_info._SafeStr_569)
            {
               this._SafeStr_160[_loc3_].locked = false;
               this._SafeStr_170[_loc3_].locked = false;
            }
            else
            {
               this._SafeStr_160[_loc3_].locked = true;
               this._SafeStr_170[_loc3_].locked = true;
               this._SafeStr_160[_loc3_].mc.colors_locked.addEventListener(MouseEvent.CLICK,this._SafeStr_931);
               this._SafeStr_170[_loc3_].mc.colors_locked.addEventListener(MouseEvent.CLICK,this._SafeStr_931);
            }
            this._SafeStr_160[_loc3_].addEventListener(_SafeCls_66._SafeStr_415,this._SafeStr_1119);
            this._SafeStr_170[_loc3_].addEventListener(_SafeCls_66._SafeStr_415,this._SafeStr_918);
            _loc3_++;
         }
         this.updateCash();
         this._SafeStr_526 = new _SafeCls_61(param1.vehicle_shop.slot_container,param1.vehicle_shop.scroll_mask,param1.vehicle_shop.scrollbar_tank_shop,85);
         this._SafeStr_902 = new _SafeCls_61(param1.gear_shop.slot_container,param1.gear_shop.scroll_mask,param1.gear_shop.scrollbar_gear_shop,86);
         this._SafeStr_437 = new _SafeCls_61(param1.premium_shop.slot_container,param1.premium_shop.scroll_mask,param1.premium_shop.scrollbar_premiums,86);
         param1.notice_me.mouseEnabled = false;
         param1.premium_shop.buy.addEventListener(MouseEvent.CLICK,this._SafeStr_833);
         param1.premium_shop.tank_colors.buy_vehicle_cash.addEventListener(MouseEvent.CLICK,this._SafeStr_833);
         param1.premium_shop.get_xcash.addEventListener(MouseEvent.CLICK,this._SafeStr_666);
      }
      
      public function _SafeStr_1221(param1:MouseEvent) : void
      {
         var _loc3_:_SafeCls_87 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_160.length)
         {
            _loc3_ = this._SafeStr_160[_loc2_];
            _loc3_.randomize();
            _loc2_++;
         }
         if(this._SafeStr_244 != -1)
         {
            this._SafeStr_186[this._SafeStr_244].selected.visible = true;
            this._SafeStr_186[this._SafeStr_244].ship.selected.visible = true;
         }
      }
      
      public function _SafeStr_1212(param1:MouseEvent) : void
      {
         this._SafeStr_244 = -1;
         --this._SafeStr_320;
         this._SafeStr_489();
      }
      
      public function _SafeStr_1169(param1:MouseEvent) : void
      {
         this._SafeStr_244 = -1;
         ++this._SafeStr_320;
         this._SafeStr_489();
      }
      
      public function _SafeStr_1080(param1:MouseEvent) : void
      {
         this.sm._SafeStr_126(this.ed._SafeStr_119("Store_Enter"));
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_182.length)
         {
            if(this._SafeStr_182[_loc2_] == param1.target)
            {
               this._SafeStr_181 = _loc2_;
               break;
            }
            _loc2_++;
         }
         this._SafeStr_697();
      }
      
      public function _SafeStr_922(param1:MouseEvent) : void
      {
         this._SafeStr_1092();
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_186.length)
         {
            if(this._SafeStr_186[_loc2_] == param1.target)
            {
               this._SafeStr_244 = _loc2_;
               this._SafeStr_186[_loc2_].selected.visible = true;
               this._SafeStr_186[_loc2_].ship.selected.visible = true;
               break;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1121(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).store.gotoAndStop(2);
      }
      
      public function _SafeStr_1229(param1:MouseEvent) : void
      {
         (param1.target as MovieClip).store.gotoAndStop(1);
      }
      
      public function _SafeStr_1092() : void
      {
         this._SafeStr_244 = -1;
         var _loc1_:int = 0;
         while(_loc1_ < this._SafeStr_186.length)
         {
            this._SafeStr_186[_loc1_].selected.visible = false;
            this._SafeStr_186[_loc1_].ship.selected.visible = false;
            _loc1_++;
         }
      }
      
      public function _SafeStr_168(param1:int = -1) : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:URLLoader = null;
         this.user_info = _SafeCls_3._SafeStr_157();
         this.mc.visible = true;
         this.mc.tab_vehicles.gotoAndStop(1);
         this.mc.tab_gear.gotoAndStop(2);
         this._SafeStr_181 = param1;
         this.ed.notification_box._SafeStr_141("Loading Shop");
         this.mc.notice_me.visible = false;
         var _loc2_:int = 1;
         while(_loc2_ < this._SafeStr_182.length - 1)
         {
            if(_SafeStr_726[_loc2_] > this.user_info.rank + 1)
            {
               this._SafeStr_182[_loc2_].gotoAndStop(2);
            }
            else
            {
               this._SafeStr_182[_loc2_].gotoAndStop(1);
            }
            _loc2_++;
         }
         if(!this._SafeStr_760)
         {
            _loc3_ = new URLRequest(_SafeStr_395 + this.user_info._SafeStr_173);
            _loc4_ = new URLLoader(_loc3_);
            _loc4_.addEventListener(Event.COMPLETE,this._SafeStr_493);
            _loc4_.load(_loc3_);
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_160.length)
            {
               if(this.user_info._SafeStr_569)
               {
                  this._SafeStr_160[_loc2_].locked = false;
                  this._SafeStr_170[_loc2_].locked = false;
               }
               else
               {
                  this._SafeStr_160[_loc2_].locked = true;
                  this._SafeStr_170[_loc2_].locked = true;
               }
               _loc2_++;
            }
            this.ed.notification_box._SafeStr_197();
            this._SafeStr_697();
            if(this.user_info.rank + 1 < 2 && param1 == -1)
            {
               this.mc.notice_me.visible = true;
               this.mc.notice_me.gotoAndPlay(1);
            }
            this.updateCash();
         }
      }
      
      public function _SafeStr_890(param1:MouseEvent = null) : void
      {
         this._SafeStr_751 = true;
         this.mc.gear_shop.visible = false;
         this.mc.vehicle_shop.visible = true;
         this.mc.tab_vehicles.gotoAndStop(1);
         this.mc.tab_gear.gotoAndStop(2);
         this._SafeStr_489();
      }
      
      public function _SafeStr_1064(param1:MouseEvent = null) : void
      {
         this._SafeStr_751 = false;
         this.mc.tab_vehicles.gotoAndStop(2);
         this.mc.tab_gear.gotoAndStop(1);
         this._SafeStr_697();
      }
      
      public function _SafeStr_493(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc5_:_SafeCls_9 = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:_SafeCls_64 = null;
         var _loc9_:_SafeCls_16 = null;
         var _loc10_:_SafeCls_13 = null;
         var _loc11_:_SafeCls_2 = null;
         this._SafeStr_212 = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < 6)
         {
            this._SafeStr_212[_loc2_] = new _SafeCls_64();
            _loc2_++;
         }
         var _loc3_:Array = param1.target.data.split("\r");
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            _loc4_ = _loc3_[_loc2_].split(",");
            if(!isNaN(parseInt(_loc4_[0])))
            {
               _loc5_ = new _SafeCls_9();
               _loc6_ = int(parseInt(_loc4_[0]));
               _loc5_.item_type = parseInt(_loc4_[1]);
               _loc7_ = int(parseInt(_loc4_[2]));
               _loc5_.cash_cost = parseInt(_loc4_[3]);
               _loc5_.xcash_cost = parseInt(_loc4_[4]);
               _loc5_._SafeStr_192 = parseInt(_loc4_[5]);
               _loc5_._SafeStr_312 = parseInt(_loc4_[6]);
               _loc8_ = this._SafeStr_212[_loc6_];
               if(_loc6_ == 5)
               {
                  if(_loc5_.item_type == _SafeCls_9._SafeStr_273)
                  {
                     _loc9_ = this.ed._SafeStr_341(_loc7_);
                     _loc5_.equipment = _loc9_;
                     _loc8_._SafeStr_298.push(_loc5_);
                  }
                  else if(_loc5_.item_type == _SafeCls_9._SafeStr_340)
                  {
                     _loc10_ = this.ed._SafeStr_598(_loc7_);
                     _loc5_.ship = _loc10_;
                     _loc8_._SafeStr_298.push(_loc5_);
                  }
                  else if(_loc5_.item_type == _SafeCls_9._SafeStr_245)
                  {
                     _loc11_ = this.ed._SafeStr_175(_loc7_);
                     _loc5_.weapon = _loc11_;
                     _loc8_._SafeStr_298.push(_loc5_);
                  }
                  else if(_loc5_.item_type == _SafeCls_9._SafeStr_538 || _loc5_.item_type == _SafeCls_9._SafeStr_385 || _loc5_.item_type == _SafeCls_9._SafeStr_427)
                  {
                     _loc8_._SafeStr_298.push(_loc5_);
                  }
               }
               else if(_loc5_.item_type == _SafeCls_9._SafeStr_273)
               {
                  _loc9_ = this.ed._SafeStr_341(_loc7_);
                  _loc5_.equipment = _loc9_;
                  _loc8_._SafeStr_271.push(_loc5_);
               }
               else if(_loc5_.item_type == _SafeCls_9._SafeStr_340)
               {
                  _loc10_ = this.ed._SafeStr_598(_loc7_);
                  _loc5_.ship = _loc10_;
                  _loc8_._SafeStr_352.push(_loc5_);
               }
               else if(_loc5_.item_type == _SafeCls_9._SafeStr_245)
               {
                  _loc11_ = this.ed._SafeStr_175(_loc7_);
                  _loc5_.weapon = _loc11_;
                  _loc8_._SafeStr_271.push(_loc5_);
               }
            }
            _loc2_++;
         }
         this._SafeStr_760 = true;
         this._SafeStr_168(this._SafeStr_181);
      }
      
      public function _SafeStr_489(param1:Event = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         if(this._SafeStr_186.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_186.length)
            {
               _loc4_ = this._SafeStr_186[_loc3_];
               this.mc.vehicle_shop.slot_container.removeChild(_loc4_);
               _loc4_.removeEventListener(MouseEvent.CLICK,this._SafeStr_922);
               _SafeCls_10._SafeStr_483(_loc4_);
               _loc3_++;
            }
         }
         this._SafeStr_186 = new Array();
         _loc3_ = 0;
         while(_loc3_ < _loc2_._SafeStr_352.length)
         {
            _loc4_ = new this.ed.ShopTankSlot();
            _loc4_.gotoAndStop(1);
            _loc4_.x = _loc4_.width * (_loc3_ % 2);
            _loc4_.y = _loc4_.height * int(_loc3_ / 2);
            _loc4_.addEventListener(MouseEvent.CLICK,this._SafeStr_922);
            _SafeCls_10._SafeStr_113(_loc4_);
            _loc4_.mouseChildren = false;
            _loc4_.buttonMode = true;
            _loc4_.useHandCursor = true;
            this.mc.vehicle_shop.slot_container.addChild(_loc4_);
            this._SafeStr_1183(_loc4_,_loc2_._SafeStr_352[_loc3_]);
            this._SafeStr_186.push(_loc4_);
            _loc3_++;
         }
         this._SafeStr_526._SafeStr_254();
      }
      
      public function _SafeStr_1183(param1:MovieClip, param2:_SafeCls_9) : void
      {
         var _loc3_:_SafeCls_13 = param2.ship;
         param1.price_money.text = _SafeCls_10._SafeStr_179(param2.cash_cost);
         param1.bit_icon.x = param1.price_money.x + (param1.price_money.width - param1.price_money.textWidth) - param1.bit_icon.width;
         param1.price_xcash.text = _SafeCls_10._SafeStr_179(param2.xcash_cost);
         param1.tier.gotoAndStop(_loc3_.tier);
         param1.ship_name.gotoAndStop(_loc3_.graphic);
         param1.description.htmlText = _loc3_.description;
         this._SafeStr_159(param1.small_tick1,_loc3_.display_health);
         this._SafeStr_159(param1.small_tick2,_loc3_.display_shields);
         this._SafeStr_159(param1.small_tick3,_loc3_.display_energy);
         this._SafeStr_159(param1.small_tick4,_loc3_.display_top_speed);
         this._SafeStr_159(param1.small_tick5,_loc3_.display_acceleration);
         this._SafeStr_159(param1.small_tick6,_loc3_.display_armor);
         var _loc4_:_SafeCls_5 = new _SafeCls_5();
         _loc4_.ship = _loc3_;
         _loc4_.color1 = this._SafeStr_160[0].color;
         _loc4_.color2 = this._SafeStr_160[1].color;
         _loc4_.weapons = [this.ed._SafeStr_175(0),this.ed._SafeStr_175(0),this.ed._SafeStr_175(0),this.ed._SafeStr_175(0),this.ed._SafeStr_175(0)];
         _loc4_.equipment = [];
         _loc4_._SafeStr_199(param1.ship);
         if(param2._SafeStr_192 > this.user_info.rank + 1)
         {
            param1.locked.visible = true;
            param1.locked.locked_text.text = "LOCKED UNTIL RANK " + param2._SafeStr_192;
         }
         else
         {
            param1.locked.visible = false;
         }
         param1.secondary_slots.text = _loc3_.secondary_weapons;
         param1.equipment_slots.text = _loc3_.equipment_slots;
         param1.selected.visible = false;
         param1.ship.selected.visible = false;
      }
      
      public function _SafeStr_697() : void
      {
         var _loc1_:int = 0;
         var _loc2_:_SafeCls_6 = null;
         var _loc3_:_SafeCls_64 = null;
         if(this._SafeStr_181 == -1)
         {
            this.mc.background_color.gotoAndStop(1);
            this.mc.premium_shop.visible = false;
            this.mc.gear_shop.visible = false;
            this.mc.vehicle_shop.visible = false;
            this.mc.tab_vehicles.visible = false;
            this.mc.tab_gear.visible = false;
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_182.length)
            {
               this._SafeStr_182[_loc1_].visible = true;
               _loc1_++;
            }
         }
         else
         {
            this.mc.background_color.gotoAndStop(2 + this._SafeStr_181);
            _loc2_ = _SafeCls_6._SafeStr_121();
            _loc3_ = this._SafeStr_212[this._SafeStr_181];
            if(this._SafeStr_181 == 5)
            {
               this.mc.premium_shop.visible = true;
               this.mc.gear_shop.visible = false;
               this.mc.vehicle_shop.visible = false;
               this.mc.tab_vehicles.visible = false;
               this.mc.tab_gear.visible = false;
               this._SafeStr_1003();
            }
            else
            {
               this.mc.premium_shop.visible = false;
               if(this._SafeStr_751)
               {
                  this._SafeStr_890();
                  this._SafeStr_489();
               }
               else
               {
                  this.mc.vehicle_shop.visible = false;
                  this.mc.gear_shop.visible = true;
                  this.mc.tab_vehicles.gotoAndStop(2);
                  this.mc.tab_gear.gotoAndStop(1);
                  this._SafeStr_215();
               }
               this.mc.tab_vehicles.visible = true;
               this.mc.tab_gear.visible = true;
            }
            _loc1_ = 0;
            while(_loc1_ < this._SafeStr_182.length)
            {
               this._SafeStr_182[_loc1_].visible = false;
               _loc1_++;
            }
            this.mc.notice_me.visible = false;
         }
      }
      
      public function _SafeStr_1128(param1:MouseEvent) : void
      {
         if(this._SafeStr_244 == -1)
         {
            this.ed.notification_box._SafeStr_108("You need to choose which vehicle to buy");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_352[this._SafeStr_320 * this._SafeStr_186.length + this._SafeStr_244];
         if(_loc3_._SafeStr_192 > this.user_info.rank + 1)
         {
            this.ed.notification_box._SafeStr_108("Rank " + _loc3_._SafeStr_192 + " required for purchase.");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         this.mc.buy_popup.visible = true;
         this.mc.buy_popup.xcash_current.text = _SafeCls_10._SafeStr_179(this.user_info.xcash);
         this.mc.buy_popup.xcash_cost.text = _SafeCls_10._SafeStr_179(_loc3_.xcash_cost);
         this.mc.buy_popup.xcash_balance.text = _SafeCls_10._SafeStr_179(this.user_info.xcash - _loc3_.xcash_cost);
         this.mc.buy_popup.cash_current.text = _SafeCls_10._SafeStr_179(this.user_info._SafeStr_230);
         this.mc.buy_popup.cash_cost.text = _SafeCls_10._SafeStr_179(_loc3_.cash_cost);
         this.mc.buy_popup.cash_balance.text = _SafeCls_10._SafeStr_179(this.user_info._SafeStr_230 - _loc3_.cash_cost);
      }
      
      public function _SafeStr_1227(param1:MouseEvent = null) : void
      {
         this.mc.buy_popup.visible = false;
      }
      
      public function _SafeStr_1035(param1:MouseEvent) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:URLRequest = null;
         var _loc8_:URLLoader = null;
         if(this._SafeStr_244 == -1)
         {
            this.ed.notification_box._SafeStr_108("Please select a vehicle.");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_352[this._SafeStr_320 * this._SafeStr_186.length + this._SafeStr_244];
         if(_loc3_._SafeStr_192 > this.user_info.rank + 1)
         {
            this.ed.notification_box._SafeStr_108("Rank " + _loc3_._SafeStr_192 + " required for purchase.");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.cash_cost > this.user_info._SafeStr_230)
         {
            this.ed.notification_box._SafeStr_108("Not enough bits to buy this.");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.ship.secondary_weapons > this.user_info.secondary_weapons.length)
         {
            this.ed.notification_box._SafeStr_108("You need more weapons before you can buy this ship.");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else
         {
            this.ed.notification_box._SafeStr_141("Purchasing Vehicle...");
            _loc4_ = "" + this.user_info._SafeStr_196[0].id;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.ship.secondary_weapons)
            {
               _loc4_ += "," + this.user_info.secondary_weapons[_loc5_].id;
               _loc5_++;
            }
            _loc6_ = "";
            _loc5_ = 0;
            while(_loc5_ < _loc3_.ship.equipment_slots)
            {
               if(_loc5_ < this.user_info.equipment.length)
               {
                  if(_loc5_ > 0)
                  {
                     _loc6_ += ",";
                  }
                  _loc6_ += this.user_info.equipment[_loc5_].id;
               }
               _loc5_++;
            }
            _loc7_ = new URLRequest(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&item_id=" + _loc3_._SafeStr_312 + "&payment_method=0&amount=" + _loc3_.cash_cost + "&color1=" + (this._SafeStr_160[0] as _SafeCls_87).color.toString(16).toUpperCase() + "&color2=" + (this._SafeStr_160[1] as _SafeCls_87).color.toString(16).toUpperCase() + "&weapons=" + _loc4_ + "&equipment=" + _loc6_);
            trace(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=&item_id=" + _loc3_._SafeStr_312 + "&payment_method=1&amount=" + _loc3_.xcash_cost + "&color1=" + (this._SafeStr_170[0] as _SafeCls_87).color.toString(16).toUpperCase() + "&color2=" + (this._SafeStr_170[1] as _SafeCls_87).color.toString(16).toUpperCase() + "&weapons=" + _loc4_ + "&equipment=" + _loc6_);
            _loc8_ = new URLLoader(_loc7_);
            _loc8_.addEventListener(Event.COMPLETE,this._SafeStr_878);
            _loc8_.load(_loc7_);
         }
      }
      
      public function _SafeStr_1152(param1:MouseEvent) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:URLRequest = null;
         var _loc8_:URLLoader = null;
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_352[this._SafeStr_320 * this._SafeStr_186.length + this._SafeStr_244];
         if(_loc3_._SafeStr_192 > this.user_info.rank + 1)
         {
            this.ed.notification_box._SafeStr_108("You need to be rank " + _loc3_._SafeStr_192 + " to buy this");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.xcash_cost > this.user_info.xcash)
         {
            this.ed.notification_box._SafeStr_834("You don\'t have enough XCash");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.ship.secondary_weapons > this.user_info.secondary_weapons.length)
         {
            this.ed.notification_box._SafeStr_108("You need more weapons before you can buy this ship");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else
         {
            this.ed.notification_box._SafeStr_141("Purchasing Vehicle...");
            _loc4_ = "" + this.user_info._SafeStr_196[0].id;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.ship.secondary_weapons)
            {
               _loc4_ += "," + this.user_info.secondary_weapons[_loc5_].id;
               _loc5_++;
            }
            _loc6_ = "";
            _loc5_ = 0;
            while(_loc5_ < _loc3_.ship.equipment_slots)
            {
               if(_loc5_ < this.user_info.equipment.length)
               {
                  if(_loc5_ > 0)
                  {
                     _loc6_ += ",";
                  }
                  _loc6_ += this.user_info.equipment[_loc5_].id;
               }
               _loc5_++;
            }
            _loc7_ = new URLRequest(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&item_id=" + _loc3_._SafeStr_312 + "&payment_method=1&amount=" + _loc3_.xcash_cost + "&color1=" + (this._SafeStr_160[0] as _SafeCls_87).color.toString(16).toUpperCase() + "&color2=" + (this._SafeStr_160[1] as _SafeCls_87).color.toString(16).toUpperCase() + "&weapons=" + _loc4_ + "&equipment=" + _loc6_);
            trace(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + "&item_id=" + _loc3_._SafeStr_312 + "&payment_method=1&amount=" + _loc3_.xcash_cost + "&color1=" + (this._SafeStr_160[0] as _SafeCls_87).color.toString(16).toUpperCase() + "&color2=" + (this._SafeStr_160[1] as _SafeCls_87).color.toString(16).toUpperCase() + "&weapons=" + _loc4_ + "&equipment=" + _loc6_);
            _loc8_ = new URLLoader(_loc7_);
            _loc8_.addEventListener(Event.COMPLETE,this._SafeStr_878);
            _loc8_.load(_loc7_);
         }
      }
      
      public function _SafeStr_878(param1:Event) : void
      {
         var _loc7_:URLRequest = null;
         var _loc8_:URLLoader = null;
         trace("Vehicle Purchase Callback: " + param1.target.data);
         this.mc.buy_popup.visible = false;
         if(param1.target.data.indexOf("ERROR") == 0)
         {
            if(param1.target.data.indexOf("ERROR:Item not available for purchase") == 0)
            {
               _loc7_ = new URLRequest(_SafeStr_395 + this.user_info._SafeStr_173);
               _loc8_ = new URLLoader(_loc7_);
               _loc8_.addEventListener(Event.COMPLETE,this._SafeStr_493);
               _loc8_.load(_loc7_);
            }
            this.ed.notification_box._SafeStr_108(param1.target.data);
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         if(param1.target.data.length < 3)
         {
            this.ed.notification_box._SafeStr_108("There was a server side issue purchasing your item, please try again later");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         this.ed.notification_box._SafeStr_197();
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_352[this._SafeStr_320 * this._SafeStr_186.length + this._SafeStr_244];
         if(param1.target.data.split(",")[1] == "0")
         {
            this.user_info._SafeStr_230 -= _loc3_.cash_cost;
         }
         else
         {
            this.user_info.xcash -= _loc3_.xcash_cost;
         }
         var _loc4_:int = int(int(param1.target.data.split(",")[3]));
         var _loc5_:_SafeCls_5 = new _SafeCls_5();
         _loc5_.id = _loc4_;
         _loc5_.ship = _loc3_.ship;
         _loc5_.color1 = (this._SafeStr_160[0] as _SafeCls_87).color;
         _loc5_.color2 = (this._SafeStr_160[1] as _SafeCls_87).color;
         _loc5_.weapons = new Array();
         _loc5_.weapons.push(this.user_info._SafeStr_196[0]);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.ship.secondary_weapons)
         {
            _loc5_.weapons.push(this.user_info.secondary_weapons[_loc6_]);
            _loc6_++;
         }
         _loc5_.equipment = new Array();
         _loc6_ = 0;
         while(_loc6_ < _loc5_.ship.equipment_slots)
         {
            if(_loc6_ < this.user_info.equipment.length)
            {
               _loc5_.equipment.push(this.user_info.equipment[_loc6_]);
            }
            else
            {
               _loc5_.equipment.push(this.ed._SafeStr_341(0));
            }
            _loc6_++;
         }
         this.user_info._SafeStr_127.push(_loc5_);
         if(this.user_info.loadout.length < 6)
         {
            this.user_info.loadout.push(_loc5_.id);
            this._SafeStr_585 = true;
         }
         this.ed.notification_box._SafeStr_108("Vehicle Purchased!");
         this.sm._SafeStr_126(this.ed._SafeStr_119("Buy_Vehicle"));
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_408));
         this.updateCash();
      }
      
      public function _SafeStr_714(param1:MouseEvent = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:URLRequest = null;
         var _loc5_:URLLoader = null;
         if(this._SafeStr_181 == -1)
         {
            this.mc.visible = false;
         }
         else
         {
            this._SafeStr_168();
         }
         if(this._SafeStr_585)
         {
            this._SafeStr_585 = false;
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < this.user_info.loadout.length)
            {
               if(_loc3_ > 0)
               {
                  _loc2_ += ",";
               }
               _loc2_ += this.user_info.loadout[_loc3_];
               _loc3_++;
            }
            this.ed.notification_box._SafeStr_141("Saving Loadout...");
            _loc4_ = new URLRequest(_SafeStr_378 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&loadout=" + _loc2_);
            _loc5_ = new URLLoader(_loc4_);
            _loc5_.addEventListener(Event.COMPLETE,this._SafeStr_816);
            _loc5_.load(_loc4_);
         }
         this._SafeStr_760 = false;
      }
      
      public function _SafeStr_816(param1:Event) : void
      {
         if(param1.target.data == "1")
         {
            this.ed.notification_box._SafeStr_197();
         }
         else
         {
            this.ed.notification_box._SafeStr_108(param1.target.data);
         }
      }
      
      public function _SafeStr_666(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.xgenstudios.com/xcash/?username=" + this.user_info.username + "&key=" + _SafeCls_11._SafeStr_806(this.user_info.password)));
         this.ed.notification_box._SafeStr_108("Launching XCash Webpage. Click OK to update and return to game.",this._SafeStr_791);
      }
      
      public function _SafeStr_791() : void
      {
         this.ed.notification_box._SafeStr_141("Loading XCash");
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
         this.ed.notification_box._SafeStr_197();
      }
      
      public function _SafeStr_609(param1:MouseEvent) : void
      {
         this._SafeStr_714();
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_625));
      }
      
      public function _SafeStr_159(param1:MovieClip, param2:int) : void
      {
         param1.bar_mask.width = param1.width * param2 / 100;
      }
      
      public function _SafeStr_676(param1:MovieClip, param2:int, param3:int) : void
      {
         param1.blue_mask.width = param1.width * param2 / 100;
         param1.yellow_mask.width = param1.width * param3 / 100;
      }
      
      public function updateCash(param1:_SafeCls_66 = null) : void
      {
         this.mc.top_bar.cash_field.text = "BITS:      " + _SafeCls_10._SafeStr_179(this.user_info._SafeStr_230);
         this.mc.top_bar.xcash_field.text = "XCASH:     " + _SafeCls_10._SafeStr_179(this.user_info.xcash);
         this.mc.top_bar.xcash_icon.x = this.mc.top_bar.xcash_field.x + this.mc.top_bar.xcash_field.width / 2 - this.mc.top_bar.xcash_field.textWidth / 2 + 82;
         this.mc.top_bar.bit_icon.x = this.mc.top_bar.cash_field.x + this.mc.top_bar.cash_field.width / 2 - this.mc.top_bar.cash_field.textWidth / 2 + 41;
      }
      
      public function _SafeStr_941(param1:MouseEvent) : void
      {
         var _loc5_:URLRequest = null;
         var _loc6_:URLLoader = null;
         this._SafeStr_543 = -1;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_249.length)
         {
            if(param1.target == this._SafeStr_249[_loc2_].buy)
            {
               trace(this._SafeStr_249[_loc2_].name);
               this._SafeStr_543 = int(this._SafeStr_249[_loc2_].name.substr(4));
               break;
            }
            _loc2_++;
         }
         if(this._SafeStr_543 == -1)
         {
            this.ed.notification_box._SafeStr_108("Invalid Gear");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         var _loc3_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc4_:_SafeCls_9 = _loc3_._SafeStr_271[this._SafeStr_543];
         if(_loc4_._SafeStr_192 > this.user_info.rank + 1)
         {
            this.ed.notification_box._SafeStr_108("You need to be rank " + _loc4_._SafeStr_192 + " to buy this");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc4_.cash_cost > this.user_info._SafeStr_230)
         {
            this.ed.notification_box._SafeStr_108("Not enough bits to buy this");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else
         {
            this.ed.notification_box._SafeStr_141("Purchasing Gear...");
            _loc5_ = new URLRequest(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&item_id=" + _loc4_._SafeStr_312 + "&payment_method=0&amount=" + _loc4_.cash_cost);
            trace(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=&item_id=" + _loc4_._SafeStr_312 + "&payment_method=0&amount=" + _loc4_.cash_cost);
            _loc6_ = new URLLoader(_loc5_);
            _loc6_.addEventListener(Event.COMPLETE,this._SafeStr_1049);
            _loc6_.load(_loc5_);
         }
      }
      
      public function _SafeStr_1049(param1:Event) : void
      {
         var _loc4_:URLRequest = null;
         var _loc5_:URLLoader = null;
         if(param1.target.data.indexOf("ERROR") == 0)
         {
            if(param1.target.data.indexOf("ERROR:Item not available for purchase") == 0)
            {
               _loc4_ = new URLRequest(_SafeStr_395 + this.user_info._SafeStr_173);
               _loc5_ = new URLLoader(_loc4_);
               _loc5_.addEventListener(Event.COMPLETE,this._SafeStr_493);
               _loc5_.load(_loc4_);
            }
            this.ed.notification_box._SafeStr_108(param1.target.data);
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         if(param1.target.data.length < 3)
         {
            this.ed.notification_box._SafeStr_108("There was a server side issue purchasing your item, please try again later");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         this.ed.notification_box._SafeStr_197();
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_271[this._SafeStr_543];
         this.user_info._SafeStr_230 -= _loc3_.cash_cost;
         if(_loc3_.item_type == _SafeCls_9._SafeStr_273)
         {
            this.user_info.equipment.push(_loc3_.equipment);
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_245)
         {
            if(_loc3_.weapon.size == 1)
            {
               this.user_info._SafeStr_196.push(_loc3_.weapon);
            }
            else
            {
               this.user_info.secondary_weapons.push(_loc3_.weapon);
            }
         }
         this.ed.notification_box._SafeStr_108("Gear Purchased!");
         this.sm._SafeStr_126(this.ed._SafeStr_119("Buy_Item"));
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_408));
         this.updateCash();
         this._SafeStr_215();
      }
      
      public function _SafeStr_1003() : void
      {
         var _loc3_:_SafeCls_16 = null;
         var _loc4_:_SafeCls_13 = null;
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         var _loc7_:_SafeCls_9 = null;
         var _loc8_:_SafeCls_5 = null;
         this.mc.premium_shop.tank_colors.visible = false;
         this.mc.premium_shop.get_xcash.visible = true;
         this.mc.premium_shop.buy.visible = true;
         if(this._SafeStr_229.length > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this._SafeStr_229.length)
            {
               _loc6_ = this._SafeStr_229[_loc5_];
               this.mc.premium_shop.slot_container.removeChild(_loc6_);
               _loc6_.removeEventListener(MouseEvent.CLICK,this._SafeStr_717);
               _loc5_++;
            }
         }
         this._SafeStr_229 = new Array();
         var _loc1_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         _loc5_ = 0;
         while(_loc5_ < _loc1_._SafeStr_298.length)
         {
            _loc6_ = new this.ed.ShopPremiumSlot();
            _loc6_.description.mouseEnabled = false;
            _loc6_.addEventListener(MouseEvent.CLICK,this._SafeStr_717);
            _loc6_.mouseChildren = false;
            this.mc.premium_shop.slot_container.addChild(_loc6_);
            _loc6_.y = _loc5_ * _loc6_.height;
            _loc7_ = _loc1_._SafeStr_298[_loc5_];
            if(_loc7_._SafeStr_192 > this.user_info.rank + 1)
            {
               _loc6_.locked.visible = true;
               _loc6_.locked.locked_text.text = "LOCKED UNTIL RANK " + _loc7_._SafeStr_192;
            }
            else
            {
               _loc6_.locked.visible = false;
            }
            if(_loc7_.item_type == _SafeCls_9._SafeStr_273)
            {
               _loc3_ = _loc7_.equipment;
               _loc6_.gotoAndStop(2);
               _loc6_.equipment_border.gotoAndStop(3);
               _loc6_.equipment_card.gotoAndStop(_loc3_.card);
               _loc6_.equipment_name.htmlText = "<b>" + _loc3_.name + "</b>";
               _loc6_.description.htmlText = _loc3_.description;
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_340)
            {
               _loc4_ = _loc7_.ship;
               _loc6_.gotoAndStop(1);
               _loc6_.tank_name_graphic.gotoAndStop(_loc4_.graphic);
               _loc6_.description.htmlText = _loc4_.description;
               _loc6_.secondary_slots.text = _loc4_.secondary_weapons;
               _loc6_.tier.gotoAndStop(_loc4_.tier);
               _loc6_.equipment_slots.text = _loc4_.equipment_slots;
               this._SafeStr_159(_loc6_.small_tick1,_loc4_.display_health);
               this._SafeStr_159(_loc6_.small_tick2,_loc4_.display_shields);
               this._SafeStr_159(_loc6_.small_tick3,_loc4_.display_energy);
               this._SafeStr_159(_loc6_.small_tick4,_loc4_.display_top_speed);
               this._SafeStr_159(_loc6_.small_tick5,_loc4_.display_acceleration);
               this._SafeStr_159(_loc6_.small_tick6,_loc4_.display_armor);
               _loc8_ = new _SafeCls_5();
               _loc8_.ship = _loc4_;
               _loc8_.color1 = this._SafeStr_170[0].color;
               _loc8_.color2 = this._SafeStr_170[1].color;
               _loc8_.weapons = [this.ed._SafeStr_175(0),this.ed._SafeStr_175(0),this.ed._SafeStr_175(0),this.ed._SafeStr_175(0),this.ed._SafeStr_175(0)];
               _loc8_.equipment = [];
               _loc8_._SafeStr_199(_loc6_.ship);
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_427)
            {
               _loc6_.gotoAndStop(5);
               if(this.user_info._SafeStr_311.indexOf(_loc7_.item_type) != -1)
               {
                  _loc6_.locked.visible = true;
                  _loc6_.locked.locked_text.text = "OWNED";
               }
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_538)
            {
               _loc6_.gotoAndStop(4);
               if(this.user_info._SafeStr_311.indexOf(_loc7_.item_type) != -1)
               {
                  _loc6_.locked.visible = true;
                  _loc6_.locked.locked_text.text = "OWNED";
               }
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_385)
            {
               _loc6_.gotoAndStop(3);
               if(this.user_info._SafeStr_311.indexOf(_loc7_.item_type) != -1)
               {
                  _loc6_.locked.visible = true;
                  _loc6_.locked.locked_text.text = "OWNED";
               }
            }
            _loc6_.price.text = _SafeCls_10._SafeStr_179(_loc7_.xcash_cost);
            _loc6_.addEventListener(MouseEvent.CLICK,this._SafeStr_717);
            _loc6_.buttonMode = true;
            _loc6_.useHandCursor = true;
            _loc6_.selected.visible = false;
            this.mc.premium_shop.slot_container.addChild(_loc6_);
            this._SafeStr_229.push(_loc6_);
            _loc5_++;
         }
         this._SafeStr_437._SafeStr_254();
      }
      
      public function _SafeStr_1066(param1:_SafeCls_9, param2:_SafeCls_9) : int
      {
         if(param1.item_type < param2.item_type)
         {
            return -1;
         }
         if(param2.item_type < param1.item_type)
         {
            return 1;
         }
         if(param1.item_type == _SafeCls_9._SafeStr_245 && param2.item_type == _SafeCls_9._SafeStr_245)
         {
            if(param1.weapon.size < param2.weapon.size)
            {
               return -1;
            }
            if(param2.weapon.size < param1.weapon.size)
            {
               return 1;
            }
         }
         if(param1.cash_cost < param2.cash_cost)
         {
            return -1;
         }
         if(param2.cash_cost < param1.cash_cost)
         {
            return 1;
         }
         return 0;
      }
      
      public function _SafeStr_215() : void
      {
         var _loc3_:_SafeCls_2 = null;
         var _loc4_:_SafeCls_16 = null;
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         var _loc7_:_SafeCls_9 = null;
         var _loc1_:int = 0;
         if(this._SafeStr_249.length > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this._SafeStr_249.length)
            {
               _loc6_ = this._SafeStr_249[_loc5_];
               this.mc.gear_shop.slot_container.removeChild(_loc6_);
               if(_loc6_.buy)
               {
                  if(_loc6_.buy.visible)
                  {
                     _loc6_.buy.removeEventListener(MouseEvent.CLICK,this._SafeStr_941);
                     _SafeCls_10._SafeStr_1178(_loc6_.buy);
                  }
               }
               _loc5_++;
            }
         }
         this._SafeStr_249 = new Array();
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         _loc2_._SafeStr_271.sort(this._SafeStr_1066);
         _loc5_ = 0;
         while(_loc5_ < _loc2_._SafeStr_271.length)
         {
            _loc7_ = _loc2_._SafeStr_271[_loc5_];
            if(_loc5_ == 0)
            {
               _loc6_ = new this.ed.ShopDivider();
               _loc6_.gotoAndStop(1);
               _loc6_.y = _loc1_;
               _loc1_ += _loc6_.height;
               this.mc.gear_shop.slot_container.addChild(_loc6_);
               this._SafeStr_249.push(_loc6_);
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_245 && _loc2_._SafeStr_271[_loc5_ - 1].item_type == _SafeCls_9._SafeStr_245)
            {
               if(_loc7_.weapon.size != 1 && _loc2_._SafeStr_271[_loc5_ - 1].weapon.size == 1)
               {
                  _loc6_ = new this.ed.ShopDivider();
                  _loc6_.gotoAndStop(2);
                  _loc6_.y = _loc1_;
                  _loc1_ += _loc6_.height;
                  this.mc.gear_shop.slot_container.addChild(_loc6_);
                  this._SafeStr_249.push(_loc6_);
               }
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_273 && _loc2_._SafeStr_271[_loc5_ - 1].item_type == _SafeCls_9._SafeStr_245)
            {
               _loc6_ = new this.ed.ShopDivider();
               _loc6_.gotoAndStop(3);
               _loc6_.y = _loc1_;
               _loc1_ += _loc6_.height;
               this.mc.gear_shop.slot_container.addChild(_loc6_);
               this._SafeStr_249.push(_loc6_);
            }
            _loc6_ = new this.ed.ShopGearSlot();
            _loc6_.name = "Gear" + _loc5_;
            _loc6_.description.mouseEnabled = false;
            _loc6_.equipment_text.mouseEnabled = false;
            this.mc.gear_shop.slot_container.addChild(_loc6_);
            _loc6_.y = _loc1_;
            _loc1_ += _loc6_.height;
            if(_loc7_.item_type == _SafeCls_9._SafeStr_245)
            {
               _loc3_ = _loc7_.weapon;
               _loc6_.equipment_card.visible = false;
               _loc6_.weapon_card.visible = true;
               _loc6_.weapon_card.gotoAndStop(_loc3_.card);
               if(_loc3_.size == 1)
               {
                  _loc6_.border.gotoAndStop(1);
                  _loc6_.slot_background.gotoAndStop(1);
               }
               else
               {
                  _loc6_.border.gotoAndStop(2);
                  _loc6_.slot_background.gotoAndStop(2);
               }
               _loc6_.gear_name.htmlText = "<font letterspacing=\'0.5\'><b>" + _loc3_.name + "</b></font>";
               _loc6_.type.visible = true;
               _loc6_.type.htmlText = "TYPE: " + _loc3_.display_type;
               _loc6_.equipment_text.visible = false;
               _loc6_.description.visible = true;
               _loc6_.description.htmlText = "<font letterspacing=\'0.5\'>" + _loc3_.description + "</font>";
               _loc6_.labels.visible = true;
               _loc6_.labels.gotoAndStop(1);
               _loc6_.cooldown.visible = true;
               _loc6_.tickbar1.visible = true;
               _loc6_.tickbar2.visible = true;
               _loc6_.tickbar3.visible = true;
               _loc6_.tickbar4.visible = true;
               this._SafeStr_676(_loc6_.tickbar1,_loc3_.display_damage,0);
               this._SafeStr_676(_loc6_.tickbar2,_loc3_.display_energy_cost,0);
               this._SafeStr_676(_loc6_.tickbar3,_loc3_.display_range,0);
               if(_loc3_.display_rate == 0)
               {
                  _loc6_.labels.gotoAndStop(2);
                  _loc6_.tickbar4.visible = false;
                  _loc6_.cooldown.visible = true;
                  _loc6_.cooldown.text = Math.round(Math.max(_loc3_.cooldown,_loc3_.self_cooldown) * 10 / 30) / 10 + " Seconds";
               }
               else
               {
                  _loc6_.labels.gotoAndStop(1);
                  _loc6_.tickbar4.visible = true;
                  _loc6_.cooldown.visible = false;
                  this._SafeStr_676(_loc6_.tickbar4,_loc3_.display_rate,0);
               }
               if(_loc3_.size == 1)
               {
                  if(this.user_info._SafeStr_196.indexOf(_loc3_) != -1)
                  {
                     _loc6_.overlay_text.visible = true;
                     _loc6_.overlay_text.text = "OWNED";
                     _loc6_.buy.visible = false;
                  }
                  else
                  {
                     _loc6_.overlay_text.visible = false;
                     _loc6_.buy.visible = true;
                  }
               }
               else if(this.user_info.secondary_weapons.indexOf(_loc3_) != -1)
               {
                  _loc6_.overlay_text.visible = true;
                  _loc6_.overlay_text.text = "OWNED";
                  _loc6_.buy.visible = false;
               }
               else
               {
                  _loc6_.overlay_text.visible = false;
                  _loc6_.buy.visible = true;
               }
            }
            else if(_loc7_.item_type == _SafeCls_9._SafeStr_273)
            {
               _loc4_ = _loc7_.equipment;
               _loc6_.equipment_card.visible = true;
               _loc6_.weapon_card.visible = false;
               _loc6_.equipment_card.gotoAndStop(_loc4_.card);
               _loc6_.border.gotoAndStop(3);
               _loc6_.slot_background.gotoAndStop(3);
               _loc6_.gear_name.htmlText = "<b>" + _loc4_.name + "</b>";
               _loc6_.type.visible = true;
               _loc6_.type.htmlText = "<font color=\'#757575\'>EQUIPMENT</font>";
               _loc6_.equipment_text.visible = true;
               _loc6_.description.visible = false;
               _loc6_.equipment_text.htmlText = "<font letterspacing=\'0.5\'>" + _loc4_.description + "</font>";
               _loc6_.labels.visible = false;
               _loc6_.labels.gotoAndStop(1);
               _loc6_.cooldown.visible = false;
               _loc6_.tickbar1.visible = false;
               _loc6_.tickbar2.visible = false;
               _loc6_.tickbar3.visible = false;
               _loc6_.tickbar4.visible = false;
               if(this.user_info.equipment.indexOf(_loc4_) != -1)
               {
                  _loc6_.overlay_text.visible = true;
                  _loc6_.overlay_text.text = "OWNED";
                  _loc6_.buy.visible = false;
               }
               else
               {
                  _loc6_.overlay_text.visible = false;
                  _loc6_.buy.visible = true;
               }
            }
            if(_loc7_._SafeStr_192 > this.user_info.rank + 1)
            {
               _loc6_.overlay_text.visible = true;
               _loc6_.overlay_text.text = "REQUIRES RANK " + _loc7_._SafeStr_192;
               _loc6_.buy.visible = false;
            }
            if(!_loc6_.buy.visible)
            {
               _loc6_.equipment_text.visible = false;
               _loc6_.description.visible = false;
               _loc6_.labels.visible = false;
               _loc6_.cooldown.visible = false;
               _loc6_.tickbar1.visible = false;
               _loc6_.tickbar2.visible = false;
               _loc6_.tickbar3.visible = false;
               _loc6_.tickbar4.visible = false;
            }
            else
            {
               _loc6_.buy.addEventListener(MouseEvent.CLICK,this._SafeStr_941);
               _SafeCls_10._SafeStr_236(_loc6_.buy);
            }
            _loc6_.cost.text = _SafeCls_10._SafeStr_179(_loc7_.cash_cost);
            _loc6_.bit_icon.x = _loc6_.cost.x + _loc6_.cost.width / 2 - _loc6_.cost.textWidth / 2 - _loc6_.bit_icon.width + 2;
            this._SafeStr_249.push(_loc6_);
            _loc5_++;
         }
         this._SafeStr_902._SafeStr_254();
      }
      
      public function _SafeStr_717(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this._SafeStr_255 != -1)
         {
            this._SafeStr_229[this._SafeStr_255].selected.visible = false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_229.length)
         {
            _loc2_ = this._SafeStr_229[_loc3_];
            if(param1.target == this._SafeStr_229[_loc3_])
            {
               this._SafeStr_255 = _loc3_;
               _loc2_.selected.visible = true;
               if(_loc2_.currentFrame == 1)
               {
                  this.mc.premium_shop.get_xcash.visible = false;
                  this.mc.premium_shop.buy.visible = false;
                  this.mc.premium_shop.tank_colors.visible = true;
                  break;
               }
               this.mc.premium_shop.get_xcash.visible = true;
               this.mc.premium_shop.buy.visible = true;
               this.mc.premium_shop.tank_colors.visible = false;
               break;
            }
            _loc3_++;
         }
      }
      
      public function _SafeStr_931(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         this._SafeStr_168(5);
         if(this._SafeStr_255 != -1)
         {
            this._SafeStr_229[this._SafeStr_255].selected.visible = false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_229.length)
         {
            _loc2_ = this._SafeStr_229[_loc3_];
            if(_loc2_.currentFrame == 3)
            {
               this._SafeStr_255 = _loc3_;
               _loc2_.selected.visible = true;
               this.mc.premium_shop.get_xcash.visible = true;
               this.mc.premium_shop.buy.visible = true;
               this.mc.premium_shop.tank_colors.visible = false;
               break;
            }
            _loc3_++;
         }
         this._SafeStr_437._SafeStr_1172();
      }
      
      public function _SafeStr_918(param1:_SafeCls_66 = null) : void
      {
         var _loc2_:Number = Number(this._SafeStr_437._SafeStr_129.y);
         var _loc3_:int = this._SafeStr_255;
         this._SafeStr_1003();
         this._SafeStr_255 = _loc3_;
         if(_loc3_ != -1)
         {
            this._SafeStr_229[this._SafeStr_255].selected.visible = true;
            this.mc.premium_shop.get_xcash.visible = false;
            this.mc.premium_shop.buy.visible = false;
            this.mc.premium_shop.tank_colors.visible = true;
         }
         this._SafeStr_437._SafeStr_129.y = _loc2_;
         this._SafeStr_437._SafeStr_323();
      }
      
      public function _SafeStr_1119(param1:_SafeCls_66 = null) : void
      {
         var _loc2_:Number = Number(this._SafeStr_526._SafeStr_129.y);
         this._SafeStr_489();
         this._SafeStr_526._SafeStr_129.y = _loc2_;
         this._SafeStr_526._SafeStr_323();
      }
      
      public function _SafeStr_833(param1:MouseEvent) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:URLLoader = null;
         var _loc8_:int = 0;
         if(this._SafeStr_255 == -1)
         {
            this.ed.notification_box._SafeStr_108("Invalid Item");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_298[this._SafeStr_255];
         if(_loc3_._SafeStr_192 > this.user_info.rank + 1)
         {
            this.ed.notification_box._SafeStr_108("Rank " + _loc3_._SafeStr_192 + " required for purchase.");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.xcash_cost > this.user_info.xcash)
         {
            this.ed.notification_box._SafeStr_834("You don\'t have enough XCash");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_273 && this.user_info.equipment.indexOf(_loc3_.equipment) != -1)
         {
            this.ed.notification_box._SafeStr_108("You already own this equipment");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_340 && _loc3_.ship.secondary_weapons > this.user_info.secondary_weapons.length)
         {
            this.ed.notification_box._SafeStr_108("You need more weapons before you can buy this ship");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
         }
         else
         {
            this.ed.notification_box._SafeStr_141("Purchasing Premium...");
            _loc4_ = "";
            _loc5_ = "";
            if(_loc3_.item_type == _SafeCls_9._SafeStr_340)
            {
               _loc4_ = "" + this.user_info._SafeStr_196[0].id;
               _loc8_ = 0;
               while(_loc8_ < _loc3_.ship.secondary_weapons)
               {
                  _loc4_ += "," + this.user_info.secondary_weapons[_loc8_].id;
                  _loc8_++;
               }
               _loc8_ = 0;
               while(_loc8_ < _loc3_.ship.equipment_slots)
               {
                  if(_loc8_ < this.user_info.equipment.length)
                  {
                     if(_loc8_ > 0)
                     {
                        _loc5_ += ",";
                     }
                     _loc5_ += this.user_info.equipment[_loc8_].id;
                  }
                  _loc8_++;
               }
            }
            _loc6_ = new URLRequest(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&item_id=" + _loc3_._SafeStr_312 + "&payment_method=1&amount=" + _loc3_.xcash_cost + "&color1=" + (this._SafeStr_170[0] as _SafeCls_87).color.toString(16).toUpperCase() + "&color2=" + (this._SafeStr_170[1] as _SafeCls_87).color.toString(16).toUpperCase() + "&weapons=" + _loc4_ + "&equipment=" + _loc5_);
            trace(_SafeStr_287 + "&user_id=" + this.user_info._SafeStr_173 + "&password=&item_id=" + _loc3_._SafeStr_312 + "&payment_method=1&amount=" + _loc3_.xcash_cost + "&color1=" + (this._SafeStr_170[0] as _SafeCls_87).color.toString(16).toUpperCase() + "&color2=" + (this._SafeStr_170[1] as _SafeCls_87).color.toString(16).toUpperCase() + "&weapons=" + _loc4_ + "&equipment=" + _loc5_);
            _loc7_ = new URLLoader(_loc6_);
            _loc7_.addEventListener(Event.COMPLETE,this._SafeStr_1226);
            _loc7_.load(_loc6_);
         }
      }
      
      public function _SafeStr_1226(param1:Event) : void
      {
         var _loc4_:URLRequest = null;
         var _loc5_:URLLoader = null;
         var _loc6_:int = 0;
         var _loc7_:_SafeCls_5 = null;
         var _loc8_:int = 0;
         var _loc9_:_SafeCls_3 = null;
         trace("Buy Premium Callback: " + param1.target.data);
         if(param1.target.data.indexOf("ERROR") == 0)
         {
            if(param1.target.data.indexOf("ERROR:Item not available for purchase") == 0)
            {
               _loc4_ = new URLRequest(_SafeStr_395 + this.user_info._SafeStr_173);
               _loc5_ = new URLLoader(_loc4_);
               _loc5_.addEventListener(Event.COMPLETE,this._SafeStr_493);
               _loc5_.load(_loc4_);
            }
            this.ed.notification_box._SafeStr_108(param1.target.data);
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         if(param1.target.data.length < 3)
         {
            this.ed.notification_box._SafeStr_108("There was a server side issue purchasing your item, please try again later");
            this.sm._SafeStr_126(this.ed._SafeStr_119("Button_Negative"));
            return;
         }
         this.ed.notification_box._SafeStr_197();
         var _loc2_:_SafeCls_64 = this._SafeStr_212[this._SafeStr_181];
         var _loc3_:_SafeCls_9 = _loc2_._SafeStr_298[this._SafeStr_255];
         this.user_info.xcash -= _loc3_.xcash_cost;
         if(_loc3_.item_type == _SafeCls_9._SafeStr_273)
         {
            this.user_info.equipment.push(_loc3_.equipment);
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_245)
         {
            if(_loc3_.weapon.size == 1)
            {
               this.user_info._SafeStr_196.push(_loc3_.weapon);
            }
            else
            {
               this.user_info.secondary_weapons.push(_loc3_.weapon);
            }
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_340)
         {
            _loc6_ = int(int(param1.target.data.split(",")[3]));
            _loc7_ = new _SafeCls_5();
            _loc7_.id = _loc6_;
            _loc7_.ship = _loc3_.ship;
            _loc7_.color1 = (this._SafeStr_170[0] as _SafeCls_87).color;
            _loc7_.color2 = (this._SafeStr_170[1] as _SafeCls_87).color;
            _loc7_.weapons = new Array();
            _loc7_.weapons.push(this.user_info._SafeStr_196[0]);
            _loc8_ = 0;
            while(_loc8_ < _loc7_.ship.secondary_weapons)
            {
               _loc7_.weapons.push(this.user_info.secondary_weapons[_loc8_]);
               _loc8_++;
            }
            _loc7_.equipment = new Array();
            _loc8_ = 0;
            while(_loc8_ < _loc7_.ship.equipment_slots)
            {
               if(_loc8_ < this.user_info.equipment.length)
               {
                  _loc7_.equipment.push(this.user_info.equipment[_loc8_]);
               }
               else
               {
                  _loc7_.equipment.push(this.ed._SafeStr_341(0));
               }
               _loc8_++;
            }
            this.user_info._SafeStr_127.push(_loc7_);
            if(this.user_info.loadout.length < 6)
            {
               this.user_info.loadout.push(_loc7_.id);
               this._SafeStr_585 = true;
            }
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_385)
         {
            _loc9_ = _SafeCls_3._SafeStr_157();
            _loc9_._SafeStr_569 = true;
            (this._SafeStr_170[0] as _SafeCls_87).locked = false;
            (this._SafeStr_170[1] as _SafeCls_87).locked = false;
            (this._SafeStr_160[0] as _SafeCls_87).locked = false;
            (this._SafeStr_160[1] as _SafeCls_87).locked = false;
            _loc9_._SafeStr_311.push(_SafeCls_9._SafeStr_385);
         }
         else if(_loc3_.item_type == _SafeCls_9._SafeStr_427)
         {
            _loc9_ = _SafeCls_3._SafeStr_157();
            _loc9_._SafeStr_311.push(_SafeCls_9._SafeStr_427);
            _loc4_ = new URLRequest(_SafeStr_395 + _loc9_._SafeStr_173);
            _loc5_ = new URLLoader(_loc4_);
            _loc5_.addEventListener(Event.COMPLETE,this._SafeStr_493);
            _loc5_.load(_loc4_);
         }
         this.ed.notification_box._SafeStr_108("Premium Purchased!");
         this.sm._SafeStr_126(this.ed._SafeStr_119("Buy_Item"));
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_408));
         this.updateCash();
      }
      
      public function _SafeStr_1145(param1:MouseEvent) : void
      {
         var _loc3_:_SafeCls_87 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_170.length)
         {
            _loc3_ = this._SafeStr_170[_loc2_];
            _loc3_.randomize();
            _loc2_++;
         }
         this._SafeStr_918();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "2H"
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_9 = " try"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_11 = "return"
 * @identifier _SafeCls_13 = "-E"
 * @identifier _SafeCls_16 = "true"
 * @identifier _SafeCls_61 = "!&"
 * @identifier _SafeCls_64 = "50"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_82 = "7\""
 * @identifier _SafeCls_87 = "!\""
 * @identifier _SafePkg_12 = "?5"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_127 = "-!"
 * @identifier _SafeStr_129 = "35"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_159 = "?1"
 * @identifier _SafeStr_160 = "57"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_170 = "8B"
 * @identifier _SafeStr_173 = "4R"
 * @identifier _SafeStr_175 = "97"
 * @identifier _SafeStr_179 = "8G"
 * @identifier _SafeStr_181 = "<P"
 * @identifier _SafeStr_182 = "%V"
 * @identifier _SafeStr_186 = ",H"
 * @identifier _SafeStr_192 = "\'%"
 * @identifier _SafeStr_196 = "@R"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_199 = ";C"
 * @identifier _SafeStr_212 = "3C"
 * @identifier _SafeStr_215 = "\'5"
 * @identifier _SafeStr_229 = "]6"
 * @identifier _SafeStr_230 = "-#"
 * @identifier _SafeStr_236 = "<H"
 * @identifier _SafeStr_244 = ",\""
 * @identifier _SafeStr_245 = "-6"
 * @identifier _SafeStr_249 = "]3"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_255 = ",$"
 * @identifier _SafeStr_271 = "52"
 * @identifier _SafeStr_273 = "=="
 * @identifier _SafeStr_287 = "<%"
 * @identifier _SafeStr_298 = "`8"
 * @identifier _SafeStr_311 = "#$"
 * @identifier _SafeStr_312 = "?\""
 * @identifier _SafeStr_320 = "?P"
 * @identifier _SafeStr_323 = "-R"
 * @identifier _SafeStr_340 = "5S"
 * @identifier _SafeStr_341 = "6;"
 * @identifier _SafeStr_352 = "3K"
 * @identifier _SafeStr_378 = "0U"
 * @identifier _SafeStr_385 = ">4"
 * @identifier _SafeStr_395 = "32"
 * @identifier _SafeStr_408 = "1A"
 * @identifier _SafeStr_415 = "<9"
 * @identifier _SafeStr_427 = "&\'"
 * @identifier _SafeStr_437 = "\";"
 * @identifier _SafeStr_483 = ">F"
 * @identifier _SafeStr_489 = " %"
 * @identifier _SafeStr_493 = "`\'"
 * @identifier _SafeStr_494 = "+C"
 * @identifier _SafeStr_526 = "2;"
 * @identifier _SafeStr_538 = ";Q"
 * @identifier _SafeStr_539 = " ?"
 * @identifier _SafeStr_543 = "?9"
 * @identifier _SafeStr_569 = "^@"
 * @identifier _SafeStr_585 = "[L"
 * @identifier _SafeStr_598 = ">K"
 * @identifier _SafeStr_609 = "9#"
 * @identifier _SafeStr_625 = "7D"
 * @identifier _SafeStr_660 = "1,"
 * @identifier _SafeStr_666 = "4>"
 * @identifier _SafeStr_676 = "\"?"
 * @identifier _SafeStr_697 = "4;"
 * @identifier _SafeStr_714 = ";!"
 * @identifier _SafeStr_717 = ">6"
 * @identifier _SafeStr_726 = "<?"
 * @identifier _SafeStr_751 = "5,"
 * @identifier _SafeStr_760 = "55"
 * @identifier _SafeStr_791 = "try"
 * @identifier _SafeStr_806 = " case"
 * @identifier _SafeStr_816 = "<N"
 * @identifier _SafeStr_833 = "&Q"
 * @identifier _SafeStr_834 = "33"
 * @identifier _SafeStr_878 = "+2"
 * @identifier _SafeStr_890 = "+,"
 * @identifier _SafeStr_902 = ",J"
 * @identifier _SafeStr_918 = "[%"
 * @identifier _SafeStr_922 = "`1"
 * @identifier _SafeStr_931 = "!V"
 * @identifier _SafeStr_941 = ",1"
 * @identifier _SafeStr_1003 = "[#"
 * @identifier _SafeStr_1035 = "9>"
 * @identifier _SafeStr_1049 = "]7"
 * @identifier _SafeStr_1064 = "\'#"
 * @identifier _SafeStr_1066 = "5-"
 * @identifier _SafeStr_1080 = "@J"
 * @identifier _SafeStr_1092 = "\'T"
 * @identifier _SafeStr_1119 = "]<"
 * @identifier _SafeStr_1121 = "=;"
 * @identifier _SafeStr_1128 = "+!"
 * @identifier _SafeStr_1145 = "-G"
 * @identifier _SafeStr_1152 = "@8"
 * @identifier _SafeStr_1169 = "02"
 * @identifier _SafeStr_1172 = "0;"
 * @identifier _SafeStr_1178 = ",O"
 * @identifier _SafeStr_1183 = ",S"
 * @identifier _SafeStr_1212 = "-O"
 * @identifier _SafeStr_1221 = "-&"
 * @identifier _SafeStr_1226 = "]+"
 * @identifier _SafeStr_1227 = "]K"
 * @identifier _SafeStr_1229 = "#!"
 */
