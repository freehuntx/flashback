package murray
{
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_8._SafeCls_67;
   import _SafePkg_20._SafeCls_66;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.media.Sound;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class _SafeCls_81 extends EventDispatcher
   {
      
      public static const _SafeStr_378:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.user.loadout.save";
      
      public static const _SafeStr_574:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.user.tanks.save";
      
      public static const _SafeStr_546:Number = 0.4;
      
      public var mc:MovieClip;
      
      public var _SafeStr_155:Array;
      
      public var _SafeStr_150:Array;
      
      public var ship_slots:Array;
      
      public var _SafeStr_224:Array;
      
      public var secondary_slots:Array;
      
      public var equipment_slots:Array;
      
      private var _SafeStr_222:Array;
      
      private var _SafeStr_214:Array;
      
      private var _SafeStr_414:Array;
      
      private var user_info:_SafeCls_3;
      
      private var _SafeStr_400:int = 0;
      
      private var _SafeStr_206:int = 0;
      
      private var _SafeStr_116:MovieClip;
      
      private var _SafeStr_1337:Boolean = false;
      
      private var _SafeStr_986:Number;
      
      private var _SafeStr_845:Number;
      
      private var _SafeStr_974:Boolean = false;
      
      private var _SafeStr_368:int = 0;
      
      private var _SafeStr_390:int = 0;
      
      private var _SafeStr_396:int = 0;
      
      private var _SafeStr_911:int;
      
      private var _SafeStr_585:Boolean = false;
      
      private var nui:NotificationUI;
      
      private var _SafeStr_223:Array = new Array();
      
      private var _SafeStr_983:Sound;
      
      private var ed:_SafeCls_72;
      
      private var _SafeStr_690:MovieClip;
      
      public var _SafeStr_752:Array;
      
      private var mmocha:_SafeCls_71;
      
      public function _SafeCls_81(param1:MovieClip, param2:_SafeCls_72)
      {
         super();
         this.ed = param2;
         this.nui = param2.notification_box;
         this._SafeStr_983 = param2._SafeStr_119("Garage_Enter");
         param1.visible = false;
         param1.tooltip.visible = false;
         this.mc = param1;
         param1.exit.addEventListener(MouseEvent.CLICK,this._SafeStr_768);
         this._SafeStr_155 = [param1.lineup.ship1,param1.lineup.ship2,param1.lineup.ship3,param1.lineup.ship4,param1.lineup.ship5,param1.lineup.ship6];
         this._SafeStr_150 = [param1.tanks_select.ship1,param1.tanks_select.ship2,param1.tanks_select.ship3,param1.tanks_select.ship4,param1.tanks_select.ship5,param1.tanks_select.ship6,param1.tanks_select.ship7];
         this._SafeStr_414 = [param1.tanks_select.equipped1,param1.tanks_select.equipped2,param1.tanks_select.equipped3,param1.tanks_select.equipped4,param1.tanks_select.equipped5,param1.tanks_select.equipped6,param1.tanks_select.equipped7];
         this.ship_slots = [param1.customize.ship_slots.equipped_primary1,param1.customize.ship_slots.equipped_secondary1,param1.customize.ship_slots.equipped_secondary2,param1.customize.ship_slots.equipped_secondary3,param1.customize.ship_slots.equipped_secondary4,param1.customize.ship_slots.equipped_equipment1,param1.customize.ship_slots.equipped_equipment2,param1.customize.ship_slots.equipped_equipment3,param1.customize.ship_slots.equipped_equipment4,param1.customize.ship_slots.equipped_equipment5];
         this._SafeStr_224 = [param1.customize.primary1,param1.customize.primary2,param1.customize.primary3,param1.customize.primary4,param1.customize.primary5,param1.customize.primary6,param1.customize.primary7,param1.customize.primary8,param1.customize.primary9,param1.customize.primary10,param1.customize.primary11,param1.customize.primary12,param1.customize.primary13,param1.customize.primary14];
         this.secondary_slots = [param1.customize.secondary1,param1.customize.secondary2,param1.customize.secondary3,param1.customize.secondary4,param1.customize.secondary5,param1.customize.secondary6,param1.customize.secondary7,param1.customize.secondary8,param1.customize.secondary9,param1.customize.secondary10,param1.customize.secondary11,param1.customize.secondary12,param1.customize.secondary13,param1.customize.secondary14];
         this.equipment_slots = [param1.customize.equipment1,param1.customize.equipment2,param1.customize.equipment3,param1.customize.equipment4,param1.customize.equipment5,param1.customize.equipment6,param1.customize.equipment7,param1.customize.equipment8,param1.customize.equipment9,param1.customize.equipment10,param1.customize.equipment11,param1.customize.equipment12,param1.customize.equipment13,param1.customize.equipment14];
         this._SafeStr_222 = [param1.lineup.info.info_slots.card_p1,param1.lineup.info.info_slots.card_s1,param1.lineup.info.info_slots.card_s2,param1.lineup.info.info_slots.card_s3,param1.lineup.info.info_slots.card_s4];
         this._SafeStr_214 = [param1.lineup.info.info_slots.card_e1,param1.lineup.info.info_slots.card_e2,param1.lineup.info.info_slots.card_e3,param1.lineup.info.info_slots.card_e4,param1.lineup.info.info_slots.card_e5];
         this._SafeStr_752 = [param1.lineup.slot1,param1.lineup.slot2,param1.lineup.slot3,param1.lineup.slot4,param1.lineup.slot5,param1.lineup.slot6];
         param1.tanks_select.tanks_previous.addEventListener(MouseEvent.CLICK,this._SafeStr_1136);
         param1.tanks_select.tanks_next.addEventListener(MouseEvent.CLICK,this._SafeStr_1167);
         this._SafeStr_961(1);
         param1.customize.buy_gear.addEventListener(MouseEvent.CLICK,this._SafeStr_501);
         param1.customize.effects.addEventListener(MouseEvent.CLICK,this._SafeStr_1085);
         param1.customize_effects.visible = false;
         param1.lineup.buy_vehicles.addEventListener(MouseEvent.CLICK,this._SafeStr_501);
         param1.tooltip.labels.gotoAndStop(1);
         var _loc3_:int = 0;
         while(_loc3_ < this._SafeStr_155.length)
         {
            this._SafeStr_155[_loc3_].buttonMode = true;
            this._SafeStr_155[_loc3_].useHandCursor = true;
            this._SafeStr_155[_loc3_].mouseChildren = false;
            this._SafeStr_155[_loc3_].addEventListener(MouseEvent.CLICK,this._SafeStr_877);
            this._SafeStr_155[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_150.length)
         {
            this._SafeStr_150[_loc3_].buttonMode = true;
            this._SafeStr_150[_loc3_].useHandCursor = true;
            this._SafeStr_150[_loc3_].mouseChildren = false;
            this._SafeStr_150[_loc3_].addEventListener(MouseEvent.CLICK,this._SafeStr_877);
            this._SafeStr_150[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.ship_slots.length)
         {
            this.ship_slots[_loc3_].gotoAndStop(1);
            this.ship_slots[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            this.ship_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this.ship_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < 14)
         {
            this._SafeStr_224[_loc3_].gotoAndStop(1);
            this._SafeStr_224[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            this._SafeStr_224[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_224[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            this.secondary_slots[_loc3_].gotoAndStop(1);
            this.secondary_slots[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            this.secondary_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this.secondary_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            this.equipment_slots[_loc3_].gotoAndStop(1);
            this.equipment_slots[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            this.equipment_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this.equipment_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_222.length)
         {
            this._SafeStr_222[_loc3_].gotoAndStop(1);
            this._SafeStr_222[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_222[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_214.length)
         {
            this._SafeStr_214[_loc3_].gotoAndStop(1);
            this._SafeStr_214[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_214[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc3_++;
         }
         this._SafeStr_763();
         _SafeCls_10._SafeStr_660(param1.tab_lineup,this._SafeStr_763);
         _SafeCls_10._SafeStr_660(param1.tab_gear,this._SafeStr_840);
         param1.lineup.info.customize_tank.addEventListener(MouseEvent.CLICK,this._SafeStr_840);
         param1.tab_research.visible = false;
         this._SafeStr_911 = param1.tooltip.description.y;
         param1.customize.primary_next.addEventListener(MouseEvent.CLICK,this._SafeStr_1016);
         param1.customize.primary_previous.addEventListener(MouseEvent.CLICK,this._SafeStr_1082);
         param1.customize.secondary_next.addEventListener(MouseEvent.CLICK,this._SafeStr_1209);
         param1.customize.secondary_previous.addEventListener(MouseEvent.CLICK,this._SafeStr_1203);
         param1.customize.equipment_next.addEventListener(MouseEvent.CLICK,this._SafeStr_1184);
         param1.customize.equipment_previous.addEventListener(MouseEvent.CLICK,this._SafeStr_1107);
      }
      
      public function _SafeStr_1184(param1:MouseEvent) : void
      {
         ++this._SafeStr_396;
         this._SafeStr_215(this.user_info._SafeStr_127[this._SafeStr_206]);
      }
      
      public function _SafeStr_1107(param1:MouseEvent) : void
      {
         --this._SafeStr_396;
         this._SafeStr_215(this.user_info._SafeStr_127[this._SafeStr_206]);
      }
      
      public function _SafeStr_1016(param1:MouseEvent) : void
      {
         ++this._SafeStr_368;
         this._SafeStr_215(this.user_info._SafeStr_127[this._SafeStr_206]);
      }
      
      public function _SafeStr_1082(param1:MouseEvent) : void
      {
         --this._SafeStr_368;
         this._SafeStr_215(this.user_info._SafeStr_127[this._SafeStr_206]);
      }
      
      public function _SafeStr_1209(param1:MouseEvent) : void
      {
         ++this._SafeStr_390;
         this._SafeStr_215(this.user_info._SafeStr_127[this._SafeStr_206]);
      }
      
      public function _SafeStr_1203(param1:MouseEvent) : void
      {
         --this._SafeStr_390;
         this._SafeStr_215(this.user_info._SafeStr_127[this._SafeStr_206]);
      }
      
      public function _SafeStr_1110(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:_SafeCls_5 = null;
         var _loc7_:int = 0;
         var _loc8_:_SafeCls_2 = null;
         var _loc9_:_SafeCls_16 = null;
         if(this._SafeStr_116 != null)
         {
            if(this._SafeStr_116 == this.ed.weapon_card || this._SafeStr_116 == this.ed.equipment_card)
            {
               this._SafeStr_116.parent.removeChild(this._SafeStr_116);
               this._SafeStr_690.visible = true;
            }
            this._SafeStr_116.stopDrag();
            if(this._SafeStr_116.name.indexOf("ship") != -1)
            {
               _loc2_ = false;
               _loc3_ = 0;
               while(_loc3_ < this._SafeStr_752.length)
               {
                  if(Boolean(this._SafeStr_752[_loc3_].hitTestPoint(this.mc.stage.mouseX,this.mc.stage.mouseY)) && Boolean(this._SafeStr_155[_loc3_] != this._SafeStr_116) && Boolean(this._SafeStr_155[_loc3_].visible))
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this._SafeStr_155.length)
                     {
                        if(this._SafeStr_155[_loc4_] == this._SafeStr_116)
                        {
                           _loc5_ = int(this.user_info.loadout[_loc3_]);
                           this.user_info.loadout[_loc3_] = this.user_info.loadout[_loc4_];
                           this.user_info.loadout[_loc4_] = _loc5_;
                           _loc6_ = this.user_info._SafeStr_284(this.user_info.loadout[_loc3_]);
                           _loc6_._SafeStr_199(this._SafeStr_155[_loc3_]);
                           _loc6_ = this.user_info._SafeStr_284(this.user_info.loadout[_loc4_]);
                           _loc6_._SafeStr_199(this._SafeStr_155[_loc4_]);
                           this._SafeStr_497();
                           this._SafeStr_585 = true;
                           _loc2_ = true;
                           break;
                        }
                        _loc4_++;
                     }
                     if(!_loc2_)
                     {
                        _loc4_ = 0;
                        while(_loc4_ < this._SafeStr_150.length)
                        {
                           if(this._SafeStr_150[_loc4_] == this._SafeStr_116)
                           {
                              _loc7_ = _loc4_ + this._SafeStr_150.length * this._SafeStr_400;
                              _loc6_ = this.user_info._SafeStr_127[_loc7_];
                              this.user_info.loadout[_loc3_] = _loc6_.id;
                              _loc6_._SafeStr_199(this._SafeStr_155[_loc3_]);
                              this._SafeStr_497();
                              this._SafeStr_585 = true;
                              break;
                           }
                           _loc4_++;
                        }
                     }
                     break;
                  }
                  _loc3_++;
               }
            }
            else if(this._SafeStr_116.name.indexOf("primary") != -1)
            {
               if(Boolean(this.ship_slots[0].hitTestPoint(this.mc.stage.mouseX,this.mc.stage.mouseY)) && this.ship_slots[0] != this._SafeStr_116)
               {
                  if(this._SafeStr_116.name.indexOf("primary") == 0)
                  {
                     _loc7_ = parseInt(this._SafeStr_116.name.substring(7)) - 1 + this._SafeStr_224.length * this._SafeStr_368;
                     _loc6_ = this.user_info._SafeStr_127[this._SafeStr_206];
                     _loc6_.weapons[0] = this.user_info._SafeStr_196[_loc7_];
                     this._SafeStr_215(_loc6_);
                     if(this._SafeStr_223.indexOf(_loc6_.id) == -1)
                     {
                        this._SafeStr_223.push(_loc6_.id);
                     }
                  }
               }
            }
            else if(this._SafeStr_116.name.indexOf("secondary") != -1)
            {
               _loc3_ = 1;
               while(_loc3_ < 5)
               {
                  if(this.ship_slots[_loc3_].hitTestPoint(this.mc.stage.mouseX,this.mc.stage.mouseY))
                  {
                     if(this.ship_slots[_loc3_] != this._SafeStr_116 && Boolean(this.ship_slots[_loc3_].visible))
                     {
                        if(this._SafeStr_116.name.indexOf("secondary") == 0)
                        {
                           _loc7_ = parseInt(this._SafeStr_116.name.substring(9)) - 1 + this.secondary_slots.length * this._SafeStr_390;
                           _loc6_ = this.user_info._SafeStr_127[this._SafeStr_206];
                           _loc6_.weapons[_loc3_] = this.user_info.secondary_weapons[_loc7_];
                           this._SafeStr_215(_loc6_);
                           if(this._SafeStr_223.indexOf(_loc6_.id) == -1)
                           {
                              this._SafeStr_223.push(_loc6_.id);
                           }
                           break;
                        }
                        _loc7_ = parseInt(this._SafeStr_116.name.substring(18)) - 1;
                        _loc6_ = this.user_info._SafeStr_127[this._SafeStr_206];
                        _loc8_ = _loc6_.weapons[_loc3_];
                        _loc6_.weapons[_loc3_] = _loc6_.weapons[_loc7_ + 1];
                        _loc6_.weapons[_loc7_ + 1] = _loc8_;
                        this._SafeStr_215(_loc6_);
                        if(this._SafeStr_223.indexOf(_loc6_.id) == -1)
                        {
                           this._SafeStr_223.push(_loc6_.id);
                        }
                        break;
                     }
                  }
                  _loc3_++;
               }
            }
            else if(this._SafeStr_116.name.indexOf("equipment") != -1)
            {
               _loc3_ = 5;
               while(_loc3_ < 10)
               {
                  if(Boolean(this.ship_slots[_loc3_].hitTestPoint(this.mc.stage.mouseX,this.mc.stage.mouseY)) && Boolean(this.ship_slots[_loc3_] != this._SafeStr_116) && Boolean(this.ship_slots[_loc3_].visible))
                  {
                     if(this._SafeStr_116.name.indexOf("equipment") == 0)
                     {
                        _loc7_ = parseInt(this._SafeStr_116.name.substring(9)) - 1 + this.equipment_slots.length * this._SafeStr_396;
                        _loc6_ = this.user_info._SafeStr_127[this._SafeStr_206];
                        _loc6_.equipment[_loc3_ - 5] = this.user_info.equipment[_loc7_];
                        this._SafeStr_215(_loc6_);
                        if(this._SafeStr_223.indexOf(_loc6_.id) == -1)
                        {
                           this._SafeStr_223.push(_loc6_.id);
                        }
                        break;
                     }
                     _loc7_ = parseInt(this._SafeStr_116.name.substring(18)) - 1;
                     _loc6_ = this.user_info._SafeStr_127[this._SafeStr_206];
                     _loc9_ = _loc6_.equipment[_loc3_ - 5];
                     _loc6_.equipment[_loc3_ - 5] = _loc6_.equipment[_loc7_];
                     _loc6_.equipment[_loc7_] = _loc9_;
                     this._SafeStr_215(_loc6_);
                     if(this._SafeStr_223.indexOf(_loc6_.id) == -1)
                     {
                        this._SafeStr_223.push(_loc6_.id);
                     }
                     break;
                  }
                  _loc3_++;
               }
            }
            this._SafeStr_116.x = this._SafeStr_986;
            this._SafeStr_116.y = this._SafeStr_845;
            this._SafeStr_116 = null;
         }
      }
      
      public function _SafeStr_260(param1:MouseEvent) : void
      {
         var _loc4_:* = 0;
         var _loc5_:_SafeCls_2 = null;
         var _loc6_:_SafeCls_16 = null;
         var _loc2_:MovieClip = param1.target as MovieClip;
         var _loc3_:_SafeCls_5 = this.user_info._SafeStr_127[this._SafeStr_206];
         var _loc7_:int = int(_loc2_.x);
         var _loc8_:int = int(_loc2_.y);
         var _loc9_:DisplayObject = _loc2_;
         while(_loc9_ != this.mc.stage)
         {
            _loc9_ = _loc9_.parent;
            _loc7_ += _loc9_.x;
            _loc8_ += _loc9_.y;
         }
         this.mc.tooltip.visible = true;
         this.mc.tooltip.mouseEnabled = false;
         this.mc.tooltip.mouseChildren = false;
         if(_loc2_.name.indexOf("equipped") == -1)
         {
            this.mc.tooltip.x = _loc7_ - this.mc.tooltip.width + 9;
            if(_loc2_.name.indexOf("card") != -1)
            {
               ++this.mc.tooltip.x;
            }
            _loc8_ += 1;
            this.mc.tooltip.top.x = 0;
            this.mc.tooltip.top.scaleX = 1;
         }
         else
         {
            this.mc.tooltip.x = _loc7_ + _loc2_.width + 12;
            this.mc.tooltip.top.x = 256;
            this.mc.tooltip.top.scaleX = -1;
         }
         this.mc.tooltip.y = _loc8_ + 6;
         if(_loc2_.name.indexOf("primary") != -1)
         {
            if(_loc2_.name.indexOf("primary") == 0)
            {
               _loc4_ = int(parseInt(_loc2_.name.substring(7)) - 1 + this._SafeStr_224.length * this._SafeStr_368);
               _loc5_ = this.user_info._SafeStr_196[_loc4_];
            }
            else
            {
               _loc4_ = int(parseInt(_loc2_.name.substring(16)) - 1);
               _loc5_ = _loc3_.weapons[_loc4_];
            }
         }
         else if(_loc2_.name.indexOf("secondary") != -1)
         {
            if(_loc2_.name.indexOf("secondary") == 0)
            {
               _loc4_ = int(parseInt(_loc2_.name.substring(9)) - 1 + this.secondary_slots.length * this._SafeStr_390);
               _loc5_ = this.user_info.secondary_weapons[_loc4_];
            }
            else
            {
               _loc4_ = int(parseInt(_loc2_.name.substring(18)));
               _loc5_ = _loc3_.weapons[_loc4_];
            }
         }
         else if(_loc2_.name.indexOf("equipment") != -1)
         {
            if(_loc2_.name.indexOf("equipment") == 0)
            {
               _loc4_ = int(parseInt(_loc2_.name.substring(9)) - 1 + this.equipment_slots.length * this._SafeStr_396);
               _loc6_ = this.user_info.equipment[_loc4_];
            }
            else
            {
               _loc4_ = int(parseInt(_loc2_.name.substring(18)) - 1);
               _loc6_ = _loc3_.equipment[_loc4_];
            }
         }
         else if(_loc2_.name.indexOf("card_p") != -1 || _loc2_.name.indexOf("card_s") != -1)
         {
            _loc4_ = int(parseInt(_loc2_.name.substring(6)));
            if(_loc2_.name.indexOf("p") != -1)
            {
               _loc4_--;
            }
            _loc5_ = _loc3_.weapons[_loc4_];
         }
         else if(_loc2_.name.indexOf("card_e") != -1)
         {
            _loc4_ = int(parseInt(_loc2_.name.substring(6)) - 1);
            _loc6_ = _loc3_.equipment[_loc4_];
         }
         if(_loc5_)
         {
            this.mc.tooltip.description.y = this._SafeStr_911;
            this.mc.tooltip.item_name.htmlText = "<font letterspacing=\'0.5\'>" + _loc5_.name + "</font>";
            this.mc.tooltip.type.htmlText = "TYPE: " + _loc5_.display_type + "   " + _SafeCls_10._SafeStr_989(_loc5_.tier);
            this.mc.tooltip.description.htmlText = "<font letterspacing=\'0.5\'>" + _loc5_.description + "</font>";
            this.mc.tooltip.labels.visible = true;
            this.mc.tooltip.tickbar1.visible = true;
            this.mc.tooltip.tickbar2.visible = true;
            this.mc.tooltip.tickbar3.visible = true;
            this._SafeStr_159(this.mc.tooltip.tickbar1,_loc5_.display_damage,0);
            this._SafeStr_159(this.mc.tooltip.tickbar2,_loc5_.display_energy_cost,0);
            this._SafeStr_159(this.mc.tooltip.tickbar3,_loc5_.display_range,0);
            if(_loc5_.display_rate == 0)
            {
               this.mc.tooltip.labels.gotoAndStop(2);
               this.mc.tooltip.tickbar4.visible = false;
               this.mc.tooltip.cooldown.visible = true;
               this.mc.tooltip.cooldown.text = Math.round(Math.max(_loc5_.cooldown,_loc5_.self_cooldown) * 10 / 30) / 10 + " Seconds";
            }
            else
            {
               this.mc.tooltip.labels.gotoAndStop(1);
               this.mc.tooltip.tickbar4.visible = true;
               this.mc.tooltip.cooldown.visible = false;
               this._SafeStr_159(this.mc.tooltip.tickbar4,_loc5_.display_rate,0);
            }
         }
         else if(param1)
         {
            this.mc.tooltip.description.y = this.mc.tooltip.labels.y;
            this.mc.tooltip.item_name.htmlText = _loc6_.name;
            this.mc.tooltip.type.htmlText = _SafeCls_10._SafeStr_989(_loc6_.tier);
            this.mc.tooltip.description.htmlText = "<font letterspacing=\'0.5\'>" + _loc6_.description + "</font>";
            this.mc.tooltip.labels.visible = false;
            this.mc.tooltip.tickbar1.visible = false;
            this.mc.tooltip.tickbar2.visible = false;
            this.mc.tooltip.tickbar3.visible = false;
            this.mc.tooltip.tickbar4.visible = false;
            this.mc.tooltip.cooldown.visible = false;
         }
         this.mc.tooltip.description.height = this.mc.tooltip.description.textHeight + 10;
         this.mc.tooltip.bottom.y = this.mc.tooltip.description.y + this.mc.tooltip.description.height;
         this.mc.tooltip.middle.height = this.mc.tooltip.bottom.y - this.mc.tooltip.middle.y;
      }
      
      public function _SafeStr_1287(param1:int) : String
      {
         if(param1 < 0)
         {
            return param1.toString();
         }
         return "+" + param1.toString();
      }
      
      public function _SafeStr_159(param1:MovieClip, param2:int, param3:int) : void
      {
         param1.blue_mask.width = param1.width * param2 / 100;
         param1.yellow_mask.width = param1.width * param3 / 100;
      }
      
      public function _SafeStr_241(param1:MouseEvent) : void
      {
         this.mc.tooltip.visible = false;
      }
      
      public function _SafeStr_333(param1:MouseEvent) : void
      {
         this._SafeStr_241(param1);
         this._SafeStr_116 = param1.target as MovieClip;
         this._SafeStr_986 = this._SafeStr_116.x;
         this._SafeStr_845 = this._SafeStr_116.y;
         if(this._SafeStr_116.name.indexOf("equipped") != -1)
         {
            if(this._SafeStr_116.name.indexOf("primary") != -1 || this._SafeStr_116.name.indexOf("secondary") != -1)
            {
               this.ed.weapon_card.gotoAndStop(this._SafeStr_116.currentFrame);
               this._SafeStr_116.parent.addChild(this.ed.weapon_card);
               this.ed.weapon_card.x = this._SafeStr_116.x;
               this.ed.weapon_card.y = this._SafeStr_116.y;
               this.ed.weapon_card.name = this._SafeStr_116.name;
               this._SafeStr_690 = this._SafeStr_116;
               this._SafeStr_116 = this.ed.weapon_card;
            }
            else if(this._SafeStr_116.name.indexOf("equipment"))
            {
               this.ed.equipment_card.gotoAndStop(this._SafeStr_116.currentFrame);
               this._SafeStr_116.parent.addChild(this.ed.equipment_card);
               this.ed.equipment_card.x = this._SafeStr_116.x;
               this.ed.equipment_card.y = this._SafeStr_116.y;
               this.ed.equipment_card.name = this._SafeStr_116.name;
               this._SafeStr_690 = this._SafeStr_116;
               this._SafeStr_116 = this.ed.equipment_card;
            }
            this._SafeStr_690.visible = false;
         }
         this._SafeStr_116.startDrag();
         if(this._SafeStr_116.base != null)
         {
            if(this._SafeStr_116.alpha != 1 || !this.mc.lineup.visible)
            {
               this._SafeStr_116.stopDrag();
               this._SafeStr_116 = null;
            }
            else if(this._SafeStr_150.indexOf(this._SafeStr_116) != -1)
            {
               if(this._SafeStr_414[this._SafeStr_150.indexOf(this._SafeStr_116)].visible)
               {
                  this._SafeStr_116.stopDrag();
                  this._SafeStr_116 = null;
               }
            }
         }
         else if(this._SafeStr_116.alpha != 1)
         {
            this._SafeStr_116.stopDrag();
            this._SafeStr_116 = null;
         }
      }
      
      public function _SafeStr_168(param1:_SafeCls_71) : void
      {
         var _loc5_:_SafeCls_5 = null;
         this.mmocha = param1;
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         _loc2_._SafeStr_126(this._SafeStr_983);
         this.mc.visible = true;
         this.mc.tab_lineup.gotoAndStop(1);
         this.mc.tab_gear.gotoAndStop(2);
         this.mc.tab_research.gotoAndStop(2);
         this.user_info = _SafeCls_3._SafeStr_157();
         var _loc3_:_SafeCls_5 = this.user_info._SafeStr_284(this.user_info.loadout[0]);
         this._SafeStr_206 = this.user_info._SafeStr_127.indexOf(_loc3_);
         this._SafeStr_730(_loc3_);
         var _loc4_:int = 0;
         while(_loc4_ < this._SafeStr_155.length)
         {
            if(_loc4_ < this.user_info.loadout.length)
            {
               _loc5_ = this.user_info._SafeStr_284(this.user_info.loadout[_loc4_]);
               _loc5_._SafeStr_199(this._SafeStr_155[_loc4_]);
               this._SafeStr_155[_loc4_].visible = true;
            }
            else
            {
               this._SafeStr_155[_loc4_].visible = false;
            }
            _loc4_++;
         }
         if(!this._SafeStr_974)
         {
            this.mc.stage.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_1110);
            this._SafeStr_974 = true;
         }
         this._SafeStr_155[0].selected.visible = true;
         this._SafeStr_763();
         this._SafeStr_497();
      }
      
      public function _SafeStr_877(param1:MouseEvent) : void
      {
         var _loc3_:_SafeCls_5 = null;
         this._SafeStr_1041();
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_155.length)
         {
            if(this._SafeStr_155[_loc2_] == param1.target)
            {
               _loc3_ = this.user_info._SafeStr_284(this.user_info.loadout[_loc2_]);
               this._SafeStr_206 = this.user_info._SafeStr_127.indexOf(_loc3_);
               this._SafeStr_730(_loc3_);
               this._SafeStr_155[_loc2_].selected.visible = true;
               return;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_150.length)
         {
            if(this._SafeStr_150[_loc2_] == param1.target)
            {
               _loc3_ = this.user_info._SafeStr_127[this._SafeStr_400 * this._SafeStr_150.length + _loc2_];
               this._SafeStr_206 = this.user_info._SafeStr_127.indexOf(_loc3_);
               this._SafeStr_730(_loc3_);
               this._SafeStr_150[_loc2_].selected.visible = true;
               if(this.user_info.loadout.indexOf(_loc3_.id) != -1)
               {
                  this._SafeStr_155[this.user_info.loadout.indexOf(_loc3_.id)].selected.visible = true;
               }
               return;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1041() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._SafeStr_155.length)
         {
            this._SafeStr_155[_loc1_].selected.visible = false;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_150.length)
         {
            this._SafeStr_150[_loc1_].selected.visible = false;
            _loc1_++;
         }
      }
      
      public function _SafeStr_898(param1:_SafeCls_67) : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_496,this._SafeStr_898);
         trace("Ship save message: " + param1.message);
         if(param1.message == "0k1")
         {
            this.nui._SafeStr_197();
         }
         else
         {
            this.nui._SafeStr_108(param1.message.substr(2));
         }
         this._SafeStr_223.splice(0,1);
         this._SafeStr_768();
      }
      
      public function _SafeStr_768(param1:MouseEvent = null) : void
      {
         var _loc2_:_SafeCls_5 = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:URLRequest = null;
         var _loc7_:URLLoader = null;
         var _loc8_:String = null;
         if(this._SafeStr_223.length > 0)
         {
            _loc2_ = this.user_info._SafeStr_284(this._SafeStr_223[0]);
            _loc3_ = "";
            _loc4_ = "";
            _loc5_ = 0;
            while(_loc5_ < _loc2_.weapons.length)
            {
               if(_loc5_ > 0)
               {
                  _loc3_ += ",";
               }
               _loc3_ += _loc2_.weapons[_loc5_].id;
               _loc5_++;
            }
            _loc5_ = 0;
            while(_loc5_ < _loc2_.equipment.length)
            {
               if(_loc2_.equipment[_loc5_].id != 0)
               {
                  if(_loc5_ > 0)
                  {
                     _loc4_ += ",";
                  }
                  _loc4_ += _loc2_.equipment[_loc5_].id;
               }
               _loc5_++;
            }
            this.nui._SafeStr_141("Saving vehicles " + this._SafeStr_223.length + " to go");
            trace(_SafeStr_574 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&tank_id=" + _loc2_.id + "&weapons=" + _loc3_ + "&equipment=" + _loc4_);
            this.mmocha.addEventListener(_SafeCls_67._SafeStr_496,this._SafeStr_898);
            this.mmocha._SafeStr_154("0ktank_id=" + _loc2_.id + "&weapons=" + _loc3_ + "&equipment=" + _loc4_);
            _loc6_ = new URLRequest(_SafeStr_574 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&tank_id=" + _loc2_.id + "&weapons=" + _loc3_ + "&equipment=" + _loc4_);
            _loc7_ = new URLLoader(_loc6_);
         }
         else
         {
            if(this._SafeStr_585)
            {
               _loc8_ = "";
               _loc5_ = 0;
               while(_loc5_ < this.user_info.loadout.length)
               {
                  if(_loc5_ > 0)
                  {
                     _loc8_ += ",";
                  }
                  _loc8_ += this.user_info.loadout[_loc5_];
                  _loc5_++;
               }
               this.nui._SafeStr_141("Saving Loadout...");
               _loc6_ = new URLRequest(_SafeStr_378 + "&user_id=" + this.user_info._SafeStr_173 + "&password=" + this.user_info.password + "&loadout=" + _loc8_);
               _loc7_ = new URLLoader(_loc6_);
               _loc7_.addEventListener(Event.COMPLETE,this._SafeStr_816);
               _loc7_.load(_loc6_);
            }
            this._SafeStr_585 = false;
            this.mc.visible = false;
         }
      }
      
      public function _SafeStr_816(param1:Event) : void
      {
         if(param1.target.data == "1")
         {
            this.nui._SafeStr_197();
         }
         else
         {
            this.nui._SafeStr_108(param1.target.data);
         }
      }
      
      public function _SafeStr_1013() : void
      {
         this.mc.tab_lineup.gotoAndStop(2);
         this.mc.tab_gear.gotoAndStop(2);
         this.mc.tab_research.gotoAndStop(2);
         this.mc.lineup.visible = false;
         this.mc.customize.visible = false;
      }
      
      public function _SafeStr_763(param1:MouseEvent = null) : void
      {
         this._SafeStr_1013();
         this.mc.lineup.visible = true;
         this.mc.tab_lineup.gotoAndStop(1);
      }
      
      public function _SafeStr_840(param1:MouseEvent) : void
      {
         this._SafeStr_1013();
         this.mc.customize.visible = true;
         this.mc.tab_gear.gotoAndStop(1);
      }
      
      public function _SafeStr_1289(param1:MouseEvent) : void
      {
      }
      
      public function _SafeStr_961(param1:int) : void
      {
         this.mc.customize.ship_slots.gotoAndStop(param1);
         if(this.mc.customize.ship_slots.number1)
         {
            this.mc.customize.ship_slots.number1.mouseEnabled = false;
            this.mc.customize.ship_slots.number1.gotoAndStop(1);
         }
         if(this.mc.customize.ship_slots.number2)
         {
            this.mc.customize.ship_slots.number2.mouseEnabled = false;
            this.mc.customize.ship_slots.number2.gotoAndStop(1);
         }
         if(this.mc.customize.ship_slots.number3)
         {
            this.mc.customize.ship_slots.number3.mouseEnabled = false;
            this.mc.customize.ship_slots.number3.gotoAndStop(1);
         }
         if(this.mc.customize.ship_slots.number4)
         {
            this.mc.customize.ship_slots.number4.mouseEnabled = false;
            this.mc.customize.ship_slots.number4.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_215(param1:_SafeCls_5) : void
      {
         var _loc3_:int = 0;
         var _loc4_:_SafeCls_2 = null;
         var _loc5_:_SafeCls_16 = null;
         var _loc2_:int = this._SafeStr_368 * this._SafeStr_224.length;
         _loc3_ = 0;
         while(_loc3_ < this.ship_slots.length)
         {
            this.ship_slots[_loc3_].removeEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            this.ship_slots[_loc3_].removeEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this.ship_slots[_loc3_].removeEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc3_++;
         }
         this._SafeStr_961(param1.ship.graphic);
         this.ship_slots = [this.mc.customize.ship_slots.equipped_primary1,this.mc.customize.ship_slots.equipped_secondary1,this.mc.customize.ship_slots.equipped_secondary2,this.mc.customize.ship_slots.equipped_secondary3,this.mc.customize.ship_slots.equipped_secondary4,this.mc.customize.ship_slots.equipped_equipment1,this.mc.customize.ship_slots.equipped_equipment2,this.mc.customize.ship_slots.equipped_equipment3,this.mc.customize.ship_slots.equipped_equipment4,this.mc.customize.ship_slots.equipped_equipment5];
         if(_loc2_ == 0)
         {
            this.mc.customize.primary_previous.visible = false;
         }
         else
         {
            this.mc.customize.primary_previous.visible = true;
         }
         if(this.user_info._SafeStr_196.length > _loc2_ + this._SafeStr_224.length)
         {
            this.mc.customize.primary_next.visible = true;
         }
         else
         {
            this.mc.customize.primary_next.visible = false;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_224.length)
         {
            if(_loc3_ + _loc2_ < this.user_info._SafeStr_196.length)
            {
               _loc4_ = this.user_info._SafeStr_196[_loc3_ + _loc2_];
               this._SafeStr_224[_loc3_].visible = true;
               this._SafeStr_224[_loc3_].gotoAndStop(_loc4_.card);
               if(param1.weapons.indexOf(_loc4_) == -1)
               {
                  this._SafeStr_224[_loc3_].alpha = 1;
               }
               else
               {
                  this._SafeStr_224[_loc3_].alpha = _SafeStr_546;
               }
            }
            else
            {
               this._SafeStr_224[_loc3_].visible = false;
            }
            _loc3_++;
         }
         _loc2_ = this._SafeStr_390 * this.secondary_slots.length;
         if(_loc2_ == 0)
         {
            this.mc.customize.secondary_previous.visible = false;
         }
         else
         {
            this.mc.customize.secondary_previous.visible = true;
         }
         if(this.user_info.secondary_weapons.length > _loc2_ + this.secondary_slots.length)
         {
            this.mc.customize.secondary_next.visible = true;
         }
         else
         {
            this.mc.customize.secondary_next.visible = false;
         }
         _loc3_ = 0;
         while(_loc3_ < this.secondary_slots.length)
         {
            if(_loc3_ + _loc2_ < this.user_info.secondary_weapons.length)
            {
               _loc4_ = this.user_info.secondary_weapons[_loc3_ + _loc2_];
               this.secondary_slots[_loc3_].visible = true;
               this.secondary_slots[_loc3_].gotoAndStop(_loc4_.card);
               if(param1.weapons.indexOf(_loc4_) == -1)
               {
                  this.secondary_slots[_loc3_].alpha = 1;
               }
               else
               {
                  this.secondary_slots[_loc3_].alpha = _SafeStr_546;
               }
            }
            else
            {
               this.secondary_slots[_loc3_].visible = false;
            }
            _loc3_++;
         }
         _loc2_ = this._SafeStr_396 * this.equipment_slots.length;
         if(_loc2_ == 0)
         {
            this.mc.customize.equipment_previous.visible = false;
         }
         else
         {
            this.mc.customize.equipment_previous.visible = true;
         }
         if(this.user_info.equipment.length > _loc2_ + this.equipment_slots.length)
         {
            this.mc.customize.equipment_next.visible = true;
         }
         else
         {
            this.mc.customize.equipment_next.visible = false;
         }
         _loc3_ = 0;
         while(_loc3_ < this.equipment_slots.length)
         {
            if(_loc3_ + _loc2_ < this.user_info.equipment.length)
            {
               _loc5_ = this.user_info.equipment[_loc3_ + _loc2_];
               this.equipment_slots[_loc3_].visible = true;
               this.equipment_slots[_loc3_].gotoAndStop(_loc5_.card);
               if(param1.equipment.indexOf(_loc5_) == -1)
               {
                  this.equipment_slots[_loc3_].alpha = 1;
               }
               else
               {
                  this.equipment_slots[_loc3_].alpha = _SafeStr_546;
               }
            }
            else
            {
               this.equipment_slots[_loc3_].visible = false;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.ship_slots.length)
         {
            this.ship_slots[_loc3_].gotoAndStop(1);
            this.ship_slots[_loc3_].addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_333);
            this.ship_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this.ship_slots[_loc3_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            if(_loc3_ < 5)
            {
               if(_loc3_ < param1.weapons.length)
               {
                  _loc4_ = param1.weapons[_loc3_];
                  this.ship_slots[_loc3_].visible = true;
                  this.ship_slots[_loc3_].gotoAndStop(_loc4_.card);
               }
               else
               {
                  this.ship_slots[_loc3_].visible = false;
               }
            }
            else if(_loc3_ - 5 < param1.equipment.length)
            {
               _loc5_ = param1.equipment[_loc3_ - 5];
               this.ship_slots[_loc3_].visible = true;
               this.ship_slots[_loc3_].gotoAndStop(_loc5_.card);
            }
            else
            {
               this.ship_slots[_loc3_].visible = false;
            }
            _loc3_++;
         }
      }
      
      public function _SafeStr_730(param1:_SafeCls_5) : void
      {
         this._SafeStr_159(this.mc.lineup.info.tickbar1,param1.ship.display_health,0);
         this._SafeStr_159(this.mc.lineup.info.tickbar2,param1.ship.display_shields,0);
         this._SafeStr_159(this.mc.lineup.info.tickbar3,param1.ship.display_energy,0);
         this._SafeStr_159(this.mc.lineup.info.tickbar4,param1.ship.display_top_speed,0);
         this._SafeStr_159(this.mc.lineup.info.tickbar5,param1.ship.display_acceleration,0);
         this._SafeStr_159(this.mc.lineup.info.tickbar6,param1.ship.display_armor,0);
         this.mc.lineup.info.tier.gotoAndStop(param1.ship.tier);
         this.mc.lineup.info.ship_name.gotoAndStop(param1.ship.graphic);
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_222.length)
         {
            this._SafeStr_222[_loc2_].removeEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_222[_loc2_].removeEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_214.length)
         {
            this._SafeStr_214[_loc2_].removeEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_214[_loc2_].removeEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc2_++;
         }
         this.mc.lineup.info.info_slots.gotoAndStop(param1.ship.graphic);
         this._SafeStr_222 = [this.mc.lineup.info.info_slots.card_p1,this.mc.lineup.info.info_slots.card_s1,this.mc.lineup.info.info_slots.card_s2,this.mc.lineup.info.info_slots.card_s3,this.mc.lineup.info.info_slots.card_s4];
         this._SafeStr_214 = [this.mc.lineup.info.info_slots.card_e1,this.mc.lineup.info.info_slots.card_e2,this.mc.lineup.info.info_slots.card_e3,this.mc.lineup.info.info_slots.card_e4,this.mc.lineup.info.info_slots.card_e5];
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_222.length)
         {
            if(_loc2_ < param1.weapons.length)
            {
               this._SafeStr_222[_loc2_].visible = true;
               this._SafeStr_222[_loc2_].gotoAndStop(param1.weapons[_loc2_].card);
            }
            else
            {
               this._SafeStr_222[_loc2_].visible = false;
            }
            this._SafeStr_222[_loc2_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_222[_loc2_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_214.length)
         {
            if(_loc2_ < param1.equipment.length)
            {
               this._SafeStr_214[_loc2_].visible = true;
               this._SafeStr_214[_loc2_].gotoAndStop(param1.equipment[_loc2_].card);
            }
            else
            {
               this._SafeStr_214[_loc2_].visible = false;
            }
            this._SafeStr_214[_loc2_].addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_260);
            this._SafeStr_214[_loc2_].addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_241);
            _loc2_++;
         }
         this._SafeStr_215(param1);
      }
      
      public function _SafeStr_497() : void
      {
         var _loc3_:_SafeCls_5 = null;
         var _loc1_:int = this._SafeStr_150.length * this._SafeStr_400;
         if(_loc1_ == 0)
         {
            this.mc.tanks_select.tanks_previous.visible = false;
         }
         else
         {
            this.mc.tanks_select.tanks_previous.visible = true;
         }
         if(this.user_info._SafeStr_127.length > _loc1_ + this._SafeStr_150.length)
         {
            this.mc.tanks_select.tanks_next.visible = true;
         }
         else
         {
            this.mc.tanks_select.tanks_next.visible = false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_150.length)
         {
            this._SafeStr_150[_loc2_].turret.visible = true;
            if(_loc1_ + _loc2_ < this.user_info._SafeStr_127.length)
            {
               _loc3_ = this.user_info._SafeStr_127[_loc1_ + _loc2_];
               this._SafeStr_150[_loc2_].visible = true;
               _loc3_._SafeStr_199(this._SafeStr_150[_loc2_]);
               if(this.user_info.loadout.indexOf(_loc3_.id) != -1)
               {
                  this._SafeStr_414[_loc2_].visible = true;
                  this._SafeStr_414[_loc2_].slot_number.text = "" + (this.user_info.loadout.indexOf(_loc3_.id) + 1);
               }
               else
               {
                  this._SafeStr_414[_loc2_].visible = false;
               }
               if(_loc1_ + _loc2_ == this._SafeStr_206)
               {
                  this._SafeStr_150[_loc2_].selected.visible = true;
               }
               else
               {
                  this._SafeStr_150[_loc2_].selected.visible = false;
               }
            }
            else
            {
               this._SafeStr_150[_loc2_].visible = false;
               this._SafeStr_414[_loc2_].visible = false;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1136(param1:MouseEvent) : void
      {
         --this._SafeStr_400;
         this._SafeStr_497();
      }
      
      public function _SafeStr_1167(param1:MouseEvent) : void
      {
         ++this._SafeStr_400;
         this._SafeStr_497();
      }
      
      public function _SafeStr_501(param1:MouseEvent) : void
      {
         this.mc.visible = false;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_650));
      }
      
      public function _SafeStr_1085(param1:MouseEvent) : void
      {
         this.nui._SafeStr_108("Coming Eventually!");
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
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_16 = "true"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_81 = ";0"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_116 = "^T"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_127 = "-!"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_150 = " H"
 * @identifier _SafeStr_154 = "61"
 * @identifier _SafeStr_155 = "@@"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_159 = "?1"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_173 = "4R"
 * @identifier _SafeStr_196 = "@R"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_199 = ";C"
 * @identifier _SafeStr_206 = "!!"
 * @identifier _SafeStr_214 = "%T"
 * @identifier _SafeStr_215 = "\'5"
 * @identifier _SafeStr_222 = "=#"
 * @identifier _SafeStr_223 = "0D"
 * @identifier _SafeStr_224 = "]T"
 * @identifier _SafeStr_241 = ",B"
 * @identifier _SafeStr_260 = "=7"
 * @identifier _SafeStr_284 = "7"
 * @identifier _SafeStr_333 = ";E"
 * @identifier _SafeStr_368 = "4&"
 * @identifier _SafeStr_378 = "0U"
 * @identifier _SafeStr_390 = "0E"
 * @identifier _SafeStr_396 = "&"
 * @identifier _SafeStr_400 = "%H"
 * @identifier _SafeStr_414 = "\';"
 * @identifier _SafeStr_496 = "]G"
 * @identifier _SafeStr_497 = "%U"
 * @identifier _SafeStr_501 = "3P"
 * @identifier _SafeStr_546 = "`0"
 * @identifier _SafeStr_574 = "&4"
 * @identifier _SafeStr_585 = "[L"
 * @identifier _SafeStr_650 = "#\'"
 * @identifier _SafeStr_660 = "1,"
 * @identifier _SafeStr_690 = "1B"
 * @identifier _SafeStr_730 = "90"
 * @identifier _SafeStr_752 = "++"
 * @identifier _SafeStr_763 = "`K"
 * @identifier _SafeStr_768 = "3+"
 * @identifier _SafeStr_816 = "<N"
 * @identifier _SafeStr_840 = "-F"
 * @identifier _SafeStr_845 = "0="
 * @identifier _SafeStr_877 = "[6"
 * @identifier _SafeStr_898 = "%!"
 * @identifier _SafeStr_911 = "+O"
 * @identifier _SafeStr_961 = "?Q"
 * @identifier _SafeStr_974 = "8T"
 * @identifier _SafeStr_983 = "<4"
 * @identifier _SafeStr_986 = "6I"
 * @identifier _SafeStr_989 = "+A"
 * @identifier _SafeStr_1013 = "9"
 * @identifier _SafeStr_1016 = ">M"
 * @identifier _SafeStr_1041 = " 9"
 * @identifier _SafeStr_1082 = "5"
 * @identifier _SafeStr_1085 = "[F"
 * @identifier _SafeStr_1107 = "0!"
 * @identifier _SafeStr_1110 = "\'G"
 * @identifier _SafeStr_1136 = "@U"
 * @identifier _SafeStr_1167 = " P"
 * @identifier _SafeStr_1184 = "2%"
 * @identifier _SafeStr_1203 = "\","
 * @identifier _SafeStr_1209 = "5U"
 * @identifier _SafeStr_1287 = "59"
 * @identifier _SafeStr_1289 = "1!"
 * @identifier _SafeStr_1337 = "9T"
 */
