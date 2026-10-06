package murray
{
   import _SafePkg_41._SafeCls_96;
   import _SafePkg_45._SafeCls_44;
   import _SafePkg_74._SafeCls_73;
   import _SafePkg_74._SafeCls_88;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _SafeCls_72 extends EventDispatcher
   {
      
      public static const _SafeStr_167:String = "";
      
      public static const _SafeStr_432:Array = [3039966,3055838,3071544,3071607,3071710,3682014,7810782,9166382,9671571,11874014,13295150,14560907,14560970,14563374,14579502,14595374];
      
      public var _SafeStr_130:_SafeCls_73 = new _SafeCls_73("Murray");
      
      public var _SafeStr_885:MovieClip;
      
      public var _SafeStr_376:MovieClip;
      
      public var _SafeStr_502:MovieClip;
      
      public var _SafeStr_942:MovieClip;
      
      public var _SafeStr_242:MovieClip;
      
      public var _SafeStr_914:MovieClip;
      
      public var _SafeStr_614:MovieClip;
      
      public var _SafeStr_117:TitleScreen;
      
      public var _SafeStr_147:Hub;
      
      public var _SafeStr_459:Array = new Array();
      
      public var _SafeStr_430:Array = new Array();
      
      public var _SafeStr_440:Array = new Array();
      
      public var _SafeStr_405:Array = new Array();
      
      public var _SafeStr_446:Array = new Array();
      
      public var _SafeStr_436:Array = new Array();
      
      public var _SafeStr_748:Array = new Array();
      
      public var _SafeStr_228:Array;
      
      public var _SafeStr_316:Array;
      
      public var weapons:Array;
      
      public var equipment:Array;
      
      public var maps:Array;
      
      public var _SafeStr_863:Class;
      
      private var _SafeStr_195:MovieClip;
      
      private var _SafeStr_128:LoaderContext = new LoaderContext();
      
      private var _SafeStr_733:LoaderContext = new LoaderContext();
      
      public var _SafeStr_416:Array = new Array();
      
      public var _SafeStr_508:BitmapData;
      
      public var _SafeStr_490:BitmapData;
      
      public var _SafeStr_1222:BitmapData;
      
      public var bar_foreground_full:BitmapData;
      
      public var _SafeStr_443:Array = new Array();
      
      public var _SafeStr_488:Array = new Array();
      
      public var arrowMCClass:Class;
      
      public var _SafeStr_419:Array = new Array();
      
      public var _SafeStr_327:Array = new Array();
      
      public var notification_box:NotificationUI;
      
      public var ShopGearSlot:Class;
      
      public var ShopPremiumSlot:Class;
      
      public var ShopTankSlot:Class;
      
      public var ShopDivider:Class;
      
      public var JoinGameBar:Class;
      
      public var HighScoreSlot:Class;
      
      public var UserBar:Class;
      
      public var ServerBar:Class;
      
      private var gs:_SafeCls_4;
      
      private var _SafeStr_583:MovieClip;
      
      private var _SafeStr_677:MovieClip;
      
      public var weapon_card:MovieClip;
      
      public var equipment_card:MovieClip;
      
      public var _SafeStr_177:MovieClip;
      
      public var eula:String;
      
      public var _SafeStr_162:String;
      
      public var BROIntro:MovieClip;
      
      public var XGenIntro:MovieClip;
      
      public var _SafeStr_702:MovieClip;
      
      public function _SafeCls_72(param1:MovieClip, param2:Boolean = true)
      {
         super();
         if(param1.loaderInfo.url.indexOf("http://") == -1)
         {
            this._SafeStr_162 = "";
         }
         else
         {
            this._SafeStr_162 = _SafeCls_101._SafeStr_463;
         }
         this._SafeStr_195 = param1;
         this._SafeStr_130.add(_SafeStr_167 + "GameGraphics.swf" + this._SafeStr_162,{"context":this._SafeStr_128});
         this._SafeStr_130.add(_SafeStr_167 + "data/fabs.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "data/ships.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "data/weapons.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "data/sounds.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "data/filler-ships.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "data/settings.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "data/Equipment.txt" + this._SafeStr_162);
         this._SafeStr_130.add(_SafeStr_167 + "Sounds.swf" + this._SafeStr_162,{"context":this._SafeStr_733});
         this._SafeStr_130.add(_SafeStr_167 + "data/eula.dat" + this._SafeStr_162);
         this._SafeStr_130.addEventListener(_SafeCls_88.COMPLETE,this._SafeStr_1106);
         if(param2)
         {
            this._SafeStr_130.start();
         }
      }
      
      private function _SafeStr_721(param1:Array, param2:MovieClip, param3:MovieClip) : void
      {
         var _loc5_:String = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Array = null;
         param3.stage.addChild(param2);
         var _loc4_:int = 1;
         while(_loc4_ <= param2.framesLoaded)
         {
            param2.gotoAndStop(_loc4_);
            _loc5_ = param2.currentFrameLabel;
            _loc6_ = param2.getChildAt(0) as MovieClip;
            if(_loc6_ == null)
            {
               _loc7_ = [_SafeCls_10._SafeStr_758(param2,param3)];
            }
            else
            {
               _loc7_ = new Array();
               this._SafeStr_750(_loc6_,_loc7_);
            }
            if(_loc7_.length == 0)
            {
               trace("WTF!");
            }
            param1.push([_loc5_,_loc7_]);
            _loc4_++;
         }
         param3.stage.removeChild(param2);
      }
      
      private function _SafeStr_1143(param1:MovieClip, param2:Array) : void
      {
         var _loc4_:Bitmap = null;
         var _loc5_:BitmapData = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.framesLoaded)
         {
            param1.gotoAndStop(_loc3_ + 1);
            if(param1.getChildAt(0) is Bitmap)
            {
               _loc4_ = param1.getChildAt(0) as Bitmap;
               param2.push(_loc4_.bitmapData);
            }
            else if(param1.getChildAt(0))
            {
               _loc5_ = new BitmapData(param1.width,param1.height,true,0);
               _loc5_.draw(param1);
               param2.push(_loc5_);
            }
            _loc3_++;
         }
      }
      
      private function _SafeStr_750(param1:MovieClip, param2:Array) : void
      {
         var _loc5_:Bitmap = null;
         var _loc6_:Rectangle = null;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.framesLoaded)
         {
            param1.gotoAndStop(_loc3_ + 1);
            if(param1.getChildAt(0) is Bitmap)
            {
               _loc5_ = param1.getChildAt(0) as Bitmap;
               param2.push(new _SafeCls_96(new Bitmap(_loc5_.bitmapData),-param1.x,-param1.y));
            }
            else
            {
               _loc6_ = param1.getBounds(this._SafeStr_195);
               _loc7_ = new BitmapData(_loc6_.width,_loc6_.height,true,0);
               _loc8_ = new Matrix();
               _loc8_.translate(-_loc6_.x + param1.x,-_loc6_.y + param1.y);
               _loc7_.draw(param1,_loc8_);
               _loc5_ = new Bitmap(_loc7_);
               param2.push(new _SafeCls_96(_loc5_,-_loc6_.x,-_loc6_.y));
            }
            _loc3_++;
         }
      }
      
      private function _SafeStr_1106(param1:_SafeCls_88) : void
      {
         var _loc2_:int = 0;
         var _loc44_:Class = null;
         var _loc45_:Sound = null;
         var _loc46_:MovieClip = null;
         var _loc47_:Array = null;
         var _loc48_:String = null;
         var _loc49_:_SafeCls_2 = null;
         var _loc50_:int = 0;
         var _loc51_:int = 0;
         var _loc52_:int = 0;
         this.eula = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/eula.dat" + this._SafeStr_162);
         var _loc3_:Array = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/sounds.txt" + this._SafeStr_162).split(",");
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            _loc44_ = this._SafeStr_733.applicationDomain.getDefinition(_loc3_[_loc2_]) as Class;
            _loc45_ = new _loc44_();
            this._SafeStr_419.push([_loc3_[_loc2_],_loc45_]);
            _loc2_++;
         }
         _SafeCls_10._SafeStr_991 = this._SafeStr_119("Button_Hover");
         _SafeCls_10._SafeStr_960 = this._SafeStr_119("Button_Click");
         var _loc4_:Class = this._SafeStr_128.applicationDomain.getDefinition("Ships") as Class;
         this._SafeStr_885 = new _loc4_();
         this._SafeStr_863 = this._SafeStr_128.applicationDomain.getDefinition("Fabs") as Class;
         this._SafeStr_376 = new this._SafeStr_863();
         var _loc5_:Class = this._SafeStr_128.applicationDomain.getDefinition("FabsLoFi") as Class;
         this._SafeStr_502 = new _loc5_();
         var _loc6_:Class = this._SafeStr_128.applicationDomain.getDefinition("Objective") as Class;
         this._SafeStr_914 = new _loc6_();
         var _loc7_:Class = this._SafeStr_128.applicationDomain.getDefinition("Tilesets") as Class;
         var _loc8_:MovieClip = new _loc7_();
         this._SafeStr_1103(this._SafeStr_195,_loc8_,this._SafeStr_459);
         var _loc9_:Class = this._SafeStr_128.applicationDomain.getDefinition("Wrecks") as Class;
         var _loc10_:MovieClip = new _loc9_();
         this._SafeStr_673(this._SafeStr_195,_loc10_,this._SafeStr_446);
         var _loc11_:Class = this._SafeStr_128.applicationDomain.getDefinition("Explosions") as Class;
         var _loc12_:MovieClip = new _loc11_();
         this._SafeStr_673(this._SafeStr_195,_loc12_,this._SafeStr_436);
         var _loc13_:Class = this._SafeStr_128.applicationDomain.getDefinition("DOTEffects") as Class;
         var _loc14_:MovieClip = new _loc13_();
         this._SafeStr_673(this._SafeStr_195,_loc14_,this._SafeStr_748);
         var _loc15_:Class = this._SafeStr_128.applicationDomain.getDefinition("Thrusters") as Class;
         var _loc16_:MovieClip = new _loc15_();
         this._SafeStr_673(this._SafeStr_195,_loc16_,this._SafeStr_488);
         var _loc17_:Class = this._SafeStr_128.applicationDomain.getDefinition("BROIntro") as Class;
         this.BROIntro = new _loc17_();
         var _loc18_:Class = this._SafeStr_128.applicationDomain.getDefinition("XGenIntro") as Class;
         this.XGenIntro = new _loc18_();
         var _loc19_:Class = this._SafeStr_128.applicationDomain.getDefinition("ShieldBubble") as Class;
         this._SafeStr_702 = new _loc19_();
         var _loc20_:Class = this._SafeStr_128.applicationDomain.getDefinition("Trails") as Class;
         var _loc21_:MovieClip = new _loc20_();
         this._SafeStr_195.stage.addChild(_loc21_);
         _loc2_ = 1;
         while(_loc2_ <= _loc21_.framesLoaded)
         {
            _loc21_.gotoAndStop(_loc2_);
            _loc46_ = _loc21_.getChildAt(0) as MovieClip;
            _loc47_ = new Array();
            _loc48_ = _loc21_.currentFrameLabel;
            this._SafeStr_750(_loc46_,_loc47_);
            this._SafeStr_443.push([_loc48_,_loc47_]);
            _loc2_++;
         }
         this._SafeStr_195.stage.removeChild(_loc21_);
         this.ShopGearSlot = this._SafeStr_128.applicationDomain.getDefinition("ShopGearSlot") as Class;
         this.ShopPremiumSlot = this._SafeStr_128.applicationDomain.getDefinition("ShopPremiumSlot") as Class;
         this.ShopTankSlot = this._SafeStr_128.applicationDomain.getDefinition("ShopTankSlot") as Class;
         this.JoinGameBar = this._SafeStr_128.applicationDomain.getDefinition("JoinGameListItem") as Class;
         this.ShopDivider = this._SafeStr_128.applicationDomain.getDefinition("ShopGearDivider") as Class;
         this.UserBar = this._SafeStr_128.applicationDomain.getDefinition("UserListSlot") as Class;
         this.ServerBar = this._SafeStr_128.applicationDomain.getDefinition("ServerChangeSlot") as Class;
         this.HighScoreSlot = this._SafeStr_128.applicationDomain.getDefinition("HighScoreSlot") as Class;
         var _loc22_:Class = this._SafeStr_128.applicationDomain.getDefinition("Projectiles") as Class;
         this._SafeStr_677 = new _loc22_();
         this._SafeStr_721(this._SafeStr_430,this._SafeStr_677,this._SafeStr_195);
         var _loc23_:Class = this._SafeStr_128.applicationDomain.getDefinition("ProjectilesFizzle") as Class;
         this._SafeStr_583 = new _loc23_();
         this._SafeStr_721(this._SafeStr_440,this._SafeStr_583,this._SafeStr_195);
         var _loc24_:Class = this._SafeStr_128.applicationDomain.getDefinition("ProjectilesReact") as Class;
         var _loc25_:MovieClip = new _loc24_();
         this._SafeStr_721(this._SafeStr_405,_loc25_,this._SafeStr_195);
         var _loc26_:Class = this._SafeStr_128.applicationDomain.getDefinition("GameGraphics") as Class;
         var _loc27_:MovieClip = new _loc26_();
         _loc27_.gotoAndStop("healthbar1");
         this._SafeStr_416.push((_loc27_.getChildAt(0) as Bitmap).bitmapData);
         _loc27_.gotoAndStop("shieldbar");
         this._SafeStr_508 = (_loc27_.getChildAt(0) as Bitmap).bitmapData;
         _loc27_.gotoAndStop("energybar");
         this._SafeStr_490 = (_loc27_.getChildAt(0) as Bitmap).bitmapData;
         _loc27_.gotoAndStop("barbackground");
         this._SafeStr_1222 = (_loc27_.getChildAt(0) as Bitmap).bitmapData;
         _loc27_.gotoAndStop("bar_foreground_full");
         this.bar_foreground_full = (_loc27_.getChildAt(0) as Bitmap).bitmapData;
         var _loc28_:Class = this._SafeStr_128.applicationDomain.getDefinition("MapEditor") as Class;
         this._SafeStr_942 = new _loc28_();
         _SafeCls_10._SafeStr_328(this._SafeStr_942);
         var _loc29_:Class = this._SafeStr_128.applicationDomain.getDefinition("MapGraphics") as Class;
         this._SafeStr_242 = new _loc29_();
         var _loc30_:Class = this._SafeStr_128.applicationDomain.getDefinition("InGameUI") as Class;
         this._SafeStr_614 = new _loc30_();
         _SafeCls_10._SafeStr_328(this._SafeStr_614);
         var _loc31_:Class = this._SafeStr_128.applicationDomain.getDefinition("NotificationUI") as Class;
         this.notification_box = new NotificationUI(new _loc31_());
         var _loc32_:Class = this._SafeStr_128.applicationDomain.getDefinition("TitleScreen") as Class;
         this._SafeStr_117 = new TitleScreen(new _loc32_(),this.notification_box,this);
         _SafeCls_10._SafeStr_328(this._SafeStr_117.mc);
         this.arrowMCClass = this._SafeStr_128.applicationDomain.getDefinition("Arrows") as Class;
         var _loc33_:String = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/fabs.txt" + this._SafeStr_162);
         this._SafeStr_228 = _SafeCls_44._SafeStr_363(_loc33_);
         this._SafeStr_195.stage.addChild(this._SafeStr_376);
         this._SafeStr_195.stage.addChild(this._SafeStr_502);
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_228.length)
         {
            this._SafeStr_228[_loc2_] = _SafeCls_18._SafeStr_238(this._SafeStr_228[_loc2_]);
            this._SafeStr_376.gotoAndStop(this._SafeStr_228[_loc2_].graphic);
            this._SafeStr_502.gotoAndStop(this._SafeStr_228[_loc2_].graphic);
            this._SafeStr_228[_loc2_].width = this._SafeStr_376.width;
            this._SafeStr_228[_loc2_].height = this._SafeStr_376.height;
            this._SafeStr_228[_loc2_].grabGraphic(this._SafeStr_376,this._SafeStr_502,this._SafeStr_195);
            _loc2_++;
         }
         this._SafeStr_195.stage.removeChild(this._SafeStr_376);
         this._SafeStr_195.stage.removeChild(this._SafeStr_502);
         var _loc34_:String = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/ships.txt" + this._SafeStr_162);
         this._SafeStr_316 = _SafeCls_44._SafeStr_363(_loc34_);
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_316.length)
         {
            this._SafeStr_316[_loc2_] = _SafeCls_13._SafeStr_238(this._SafeStr_316[_loc2_],this);
            _loc2_++;
         }
         var _loc35_:String = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/weapons.txt" + this._SafeStr_162);
         this.weapons = _SafeCls_44._SafeStr_363(_loc35_);
         _loc2_ = 0;
         while(_loc2_ < this.weapons.length)
         {
            this.weapons[_loc2_] = _SafeCls_2._SafeStr_238(this.weapons[_loc2_],this);
            _loc49_ = this.weapons[_loc2_];
            _loc50_ = 0;
            while(_loc50_ < _loc49_.projectiles.length)
            {
               _loc49_.projectiles[_loc50_] = _SafeCls_32._SafeStr_238(_loc49_.projectiles[_loc50_],this);
               _loc50_++;
            }
            _loc2_++;
         }
         var _loc36_:String = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/Equipment.txt" + this._SafeStr_162);
         var _loc37_:Array = _SafeCls_44._SafeStr_363(_loc36_);
         this.equipment = new Array();
         _loc2_ = 0;
         while(_loc2_ < _loc37_.length)
         {
            this.equipment.push(_SafeCls_16._SafeStr_238(_loc37_[_loc2_]));
            _loc2_++;
         }
         var _loc38_:Array = this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/filler-ships.txt" + this._SafeStr_162).split("\n");
         _loc2_ = 0;
         while(_loc2_ < _loc38_.length)
         {
            if(_loc38_[_loc2_].length > 10)
            {
               this._SafeStr_327.push(_SafeCls_5._SafeStr_632(_loc38_[_loc2_],this));
               _loc51_ = Math.random() * _SafeStr_432.length;
               _loc52_ = Math.random() * _SafeStr_432.length;
               this._SafeStr_327[this._SafeStr_327.length - 1].color1 = _SafeStr_432[_loc51_];
               this._SafeStr_327[this._SafeStr_327.length - 1].color2 = _SafeStr_432[_loc52_];
            }
            _loc2_++;
         }
         this.gs = _SafeCls_4._SafeStr_238(_SafeCls_44._SafeStr_363(this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/settings.txt" + this._SafeStr_162)),this);
         this._SafeStr_130 = new _SafeCls_73("murray-map-loader");
         _loc2_ = 0;
         while(_loc2_ < this.gs.maps.length)
         {
            this._SafeStr_130.add(_SafeStr_167 + "data/maps/" + this.gs.maps[_loc2_] + this._SafeStr_162);
            _loc2_++;
         }
         var _loc39_:Class = this._SafeStr_128.applicationDomain.getDefinition("Hub") as Class;
         this._SafeStr_147 = new Hub(new _loc39_(),this.notification_box,this);
         _SafeCls_10._SafeStr_328(this._SafeStr_147.mc);
         var _loc40_:Class = this._SafeStr_128.applicationDomain.getDefinition("InGameName") as Class;
         this._SafeStr_177 = new _loc40_();
         var _loc41_:TextField = this._SafeStr_177.in_game_name;
         _loc41_.autoSize = TextFieldAutoSize.CENTER;
         var _loc42_:Class = this._SafeStr_128.applicationDomain.getDefinition("WeaponCard") as Class;
         this.weapon_card = new _loc42_();
         var _loc43_:Class = this._SafeStr_128.applicationDomain.getDefinition("EquipmentCard") as Class;
         this.equipment_card = new _loc43_();
         this._SafeStr_130.addEventListener(_SafeCls_88.COMPLETE,this._SafeStr_958);
         this._SafeStr_130.start();
      }
      
      public function _SafeStr_1103(param1:MovieClip, param2:MovieClip, param3:Array) : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:Array = null;
         param1.stage.addChild(param2);
         var _loc4_:int = 1;
         while(_loc4_ <= param2.framesLoaded)
         {
            param2.gotoAndStop(_loc4_);
            _loc5_ = param2.getChildAt(0) as MovieClip;
            _loc6_ = new Array();
            this._SafeStr_1143(_loc5_,_loc6_);
            param3.push(_loc6_);
            _loc4_++;
         }
         param1.stage.removeChild(param2);
      }
      
      public function _SafeStr_673(param1:MovieClip, param2:MovieClip, param3:Array) : void
      {
         var _loc5_:MovieClip = null;
         var _loc6_:Array = null;
         param1.stage.addChild(param2);
         var _loc4_:int = 1;
         while(_loc4_ <= param2.framesLoaded)
         {
            param2.gotoAndStop(_loc4_);
            _loc5_ = param2.getChildAt(0) as MovieClip;
            _loc6_ = new Array();
            this._SafeStr_750(_loc5_,_loc6_);
            param3.push(_loc6_);
            _loc4_++;
         }
         param1.stage.removeChild(param2);
      }
      
      public function _SafeStr_958(param1:_SafeCls_88) : void
      {
         this.maps = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.gs.maps.length)
         {
            this.maps.push(_SafeCls_46._SafeStr_1036(this._SafeStr_130._SafeStr_315(_SafeStr_167 + "data/maps/" + this.gs.maps[_loc2_] + this._SafeStr_162),this));
            _loc2_++;
         }
         this._SafeStr_130.removeEventListener(_SafeCls_88.COMPLETE,this._SafeStr_958);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function _SafeStr_119(param1:String) : Sound
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_419.length)
         {
            if(this._SafeStr_419[_loc2_][0] == param1)
            {
               return this._SafeStr_419[_loc2_][1];
            }
            _loc2_++;
         }
         trace("Can\'t find sound " + param1);
         return this._SafeStr_419[0][1];
      }
      
      public function _SafeStr_1073(param1:int) : _SafeCls_18
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_228.length)
         {
            if(this._SafeStr_228[_loc2_].id == param1)
            {
               return this._SafeStr_228[_loc2_];
            }
            _loc2_++;
         }
         trace("Fab not found: " + param1 + " / " + this._SafeStr_228.length);
         return this._SafeStr_228[0];
      }
      
      public function _SafeStr_175(param1:int) : _SafeCls_2
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.weapons.length)
         {
            if(this.weapons[_loc2_].id == param1)
            {
               return this.weapons[_loc2_];
            }
            _loc2_++;
         }
         trace("Weapon not found: " + param1 + " / " + this.weapons.length);
         return this.weapons[0];
      }
      
      public function _SafeStr_341(param1:int) : _SafeCls_16
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.equipment.length)
         {
            if(this.equipment[_loc2_].id == param1)
            {
               return this.equipment[_loc2_];
            }
            _loc2_++;
         }
         trace("Equipment not found: " + param1 + " / " + this.equipment.length);
         return this.equipment[0];
      }
      
      public function _SafeStr_598(param1:int) : _SafeCls_13
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_316.length)
         {
            if(this._SafeStr_316[_loc2_].id == param1)
            {
               return this._SafeStr_316[_loc2_];
            }
            _loc2_++;
         }
         trace("Ship not found: " + param1 + " / " + this._SafeStr_316.length);
         return this._SafeStr_316[0];
      }
      
      public function _SafeStr_1163(param1:String) : Array
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_430.length)
         {
            if(this._SafeStr_430[_loc2_][0] == param1)
            {
               return this._SafeStr_430[_loc2_][1];
            }
            _loc2_++;
         }
         trace("Projectile Graphic not found: " + param1);
         return this._SafeStr_430[0][1];
      }
      
      public function _SafeStr_1025(param1:String) : Array
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_440.length)
         {
            if(this._SafeStr_440[_loc2_][0] == param1)
            {
               return this._SafeStr_440[_loc2_][1];
            }
            _loc2_++;
         }
         trace("Fizzle Graphic not found: " + param1);
         return this._SafeStr_440[0][1];
      }
      
      public function _SafeStr_1072(param1:String) : Boolean
      {
         this._SafeStr_583.gotoAndStop(param1);
         var _loc2_:MovieClip = this._SafeStr_583.getChildAt(0) as MovieClip;
         if(_loc2_ != null)
         {
            _loc2_.gotoAndStop(1);
            if(_loc2_.currentFrameLabel == "halt")
            {
               return true;
            }
         }
         return false;
      }
      
      public function _SafeStr_1108(param1:String) : int
      {
         this._SafeStr_677.gotoAndStop(param1);
         var _loc2_:MovieClip = this._SafeStr_677.getChildAt(0) as MovieClip;
         if(_loc2_ != null)
         {
            try
            {
               _loc2_.gotoAndStop("loop");
               if(_loc2_.currentFrameLabel == "loop")
               {
                  return _loc2_.currentFrame;
               }
            }
            catch(er:ArgumentError)
            {
            }
         }
         return 0;
      }
      
      public function _SafeStr_1139(param1:String) : Array
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_405.length)
         {
            if(this._SafeStr_405[_loc2_][0] == param1)
            {
               return this._SafeStr_405[_loc2_][1];
            }
            _loc2_++;
         }
         trace("React Graphic not found: " + param1);
         return this._SafeStr_405[0][1];
      }
      
      public function _SafeStr_1065(param1:String) : Array
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_443.length)
         {
            if(this._SafeStr_443[_loc2_][0] == param1)
            {
               return this._SafeStr_443[_loc2_][1];
            }
            _loc2_++;
         }
         return this._SafeStr_443[0][1];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "2H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_13 = "-E"
 * @identifier _SafeCls_16 = "true"
 * @identifier _SafeCls_18 = ";M"
 * @identifier _SafeCls_32 = "6-"
 * @identifier _SafeCls_44 = "98"
 * @identifier _SafeCls_46 = "=F"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_88 = "71"
 * @identifier _SafeCls_96 = "^S"
 * @identifier _SafeCls_101 = "]Q"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafeStr_117 = "8"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_128 = "var"
 * @identifier _SafeStr_130 = "4H"
 * @identifier _SafeStr_147 = "%A"
 * @identifier _SafeStr_162 = ";3"
 * @identifier _SafeStr_167 = "9O"
 * @identifier _SafeStr_175 = "97"
 * @identifier _SafeStr_177 = "-="
 * @identifier _SafeStr_195 = "%D"
 * @identifier _SafeStr_228 = "3,"
 * @identifier _SafeStr_238 = "%R"
 * @identifier _SafeStr_242 = "&7"
 * @identifier _SafeStr_315 = "case "
 * @identifier _SafeStr_316 = "4F"
 * @identifier _SafeStr_327 = "1+"
 * @identifier _SafeStr_328 = "]E"
 * @identifier _SafeStr_341 = "6;"
 * @identifier _SafeStr_363 = "set"
 * @identifier _SafeStr_376 = "]!"
 * @identifier _SafeStr_405 = "@L"
 * @identifier _SafeStr_416 = "9,"
 * @identifier _SafeStr_419 = "-;"
 * @identifier _SafeStr_430 = ";K"
 * @identifier _SafeStr_432 = "%7"
 * @identifier _SafeStr_436 = "!8"
 * @identifier _SafeStr_440 = "@1"
 * @identifier _SafeStr_443 = "7="
 * @identifier _SafeStr_446 = "1F"
 * @identifier _SafeStr_459 = "!5"
 * @identifier _SafeStr_463 = "99"
 * @identifier _SafeStr_488 = "]U"
 * @identifier _SafeStr_490 = "40"
 * @identifier _SafeStr_502 = "8O"
 * @identifier _SafeStr_508 = ";&"
 * @identifier _SafeStr_583 = "+K"
 * @identifier _SafeStr_598 = ">K"
 * @identifier _SafeStr_614 = "2P"
 * @identifier _SafeStr_632 = "?!"
 * @identifier _SafeStr_673 = "8K"
 * @identifier _SafeStr_677 = " K"
 * @identifier _SafeStr_702 = "^C"
 * @identifier _SafeStr_721 = "^"
 * @identifier _SafeStr_733 = "^F"
 * @identifier _SafeStr_748 = "[;"
 * @identifier _SafeStr_750 = "!6"
 * @identifier _SafeStr_758 = "\"M"
 * @identifier _SafeStr_863 = "]H"
 * @identifier _SafeStr_885 = "4!"
 * @identifier _SafeStr_914 = "5E"
 * @identifier _SafeStr_942 = " N"
 * @identifier _SafeStr_958 = ",\'"
 * @identifier _SafeStr_960 = "&5"
 * @identifier _SafeStr_991 = "2K"
 * @identifier _SafeStr_1025 = "93"
 * @identifier _SafeStr_1036 = "8M"
 * @identifier _SafeStr_1065 = "7C"
 * @identifier _SafeStr_1072 = "2#"
 * @identifier _SafeStr_1073 = "7,"
 * @identifier _SafeStr_1103 = "]P"
 * @identifier _SafeStr_1106 = "override"
 * @identifier _SafeStr_1108 = "#E"
 * @identifier _SafeStr_1139 = "-L"
 * @identifier _SafeStr_1143 = "7S"
 * @identifier _SafeStr_1163 = ">,"
 * @identifier _SafeStr_1222 = "6O"
 */
