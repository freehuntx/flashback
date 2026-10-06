package murray
{
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_8._SafeCls_7;
   import _SafePkg_8._SafeCls_67;
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class _SafeCls_85 extends EventDispatcher
   {
      
      public var mc:MovieClip;
      
      public var _SafeStr_856:_SafeCls_61;
      
      public var mmocha:_SafeCls_71;
      
      public var _SafeStr_307:Array = new Array();
      
      public var ed:_SafeCls_72;
      
      public var _SafeStr_658:String = "";
      
      public var _SafeStr_453:Timer = new Timer(3000);
      
      public function _SafeCls_85(param1:MovieClip)
      {
         super();
         this.mc = param1;
         param1.visible = false;
         param1.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_771);
         param1.private_game_name.text = "";
         param1.join.addEventListener(MouseEvent.CLICK,this._SafeStr_1185);
         param1.enter.addEventListener(MouseEvent.CLICK,this._SafeStr_1067);
         this._SafeStr_453.addEventListener(TimerEvent.TIMER,this._SafeStr_1050);
         this._SafeStr_856 = new _SafeCls_61(param1.slot_container,param1.scroll_mask,param1.scrollbar_join_game,17);
      }
      
      public function _SafeStr_1067(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(this.mc.private_game_name.text == "")
         {
            this.ed.notification_box._SafeStr_108("You must enter a game name");
         }
         else
         {
            _loc2_ = new Object();
            _loc2_.name = this.mc.private_game_name.text;
            dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_324,_loc2_));
            this._SafeStr_453.stop();
            this.mc.visible = false;
         }
      }
      
      public function _SafeStr_1185(param1:MouseEvent) : void
      {
         if(this._SafeStr_658 == "")
         {
            this.ed.notification_box._SafeStr_108("You must select a game to join");
            return;
         }
         var _loc2_:Object = new Object();
         _loc2_.name = this._SafeStr_658;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_324,_loc2_));
         this._SafeStr_453.stop();
         this.mc.visible = false;
      }
      
      public function _SafeStr_168(param1:_SafeCls_71, param2:_SafeCls_72) : void
      {
         this.mc.private_game_name.text = "";
         this.mmocha = param1;
         this.ed = param2;
         this.mc.visible = true;
         param1.addEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_805);
         param1._SafeStr_491();
         this._SafeStr_453.start();
      }
      
      public function _SafeStr_1050(param1:TimerEvent) : void
      {
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_805);
         this.mmocha._SafeStr_491();
      }
      
      public function _SafeStr_805(param1:_SafeCls_67) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:_SafeCls_7 = null;
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_269,this._SafeStr_805);
         if(this._SafeStr_307.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_307.length)
            {
               _loc3_ = this._SafeStr_307[_loc2_];
               this.mc.slot_container.removeChild(_loc3_);
               _loc3_.removeEventListener(MouseEvent.CLICK,this._SafeStr_836);
               _SafeCls_10._SafeStr_483(_loc3_);
               _loc2_++;
            }
         }
         this._SafeStr_307 = new Array();
         _loc2_ = 0;
         while(_loc2_ < param1.list.length)
         {
            _loc4_ = param1.list[_loc2_];
            if(_loc4_.name != "_")
            {
               _loc3_ = new this.ed.JoinGameBar();
               if(_loc4_.name != this._SafeStr_658)
               {
                  _loc3_.gotoAndStop(1);
               }
               else
               {
                  _loc3_.gotoAndStop(3);
               }
               _loc3_.mouseChildren = false;
               _loc3_.game_name.text = _loc4_.name.replace("!","Quick Start ").replace("~","Quick Play ");
               _loc3_.real_name = _loc4_.name;
               switch(_loc4_._SafeStr_122)
               {
                  case _SafeCls_4._SafeStr_144:
                     _loc3_.game_mode.text = "MODE: DEATHMATCH";
                     break;
                  case _SafeCls_4._SafeStr_164:
                     _loc3_.game_mode.text = "MODE: OVERLOAD";
                     break;
                  case _SafeCls_4._SafeStr_213:
                     _loc3_.game_mode.text = "MODE: TEAM DEATHMATCH";
                     break;
                  default:
                     _loc3_.game_mode.text = "ERROR: INVALID GAME MODE";
               }
               _loc3_.game_players.text = _loc4_._SafeStr_563 + "/8";
               _loc3_.y = this._SafeStr_307.length * _loc3_.height;
               _loc3_.addEventListener(MouseEvent.CLICK,this._SafeStr_836);
               this.mc.slot_container.addChild(_loc3_);
               _SafeCls_10._SafeStr_113(_loc3_);
               this._SafeStr_307.push(_loc3_);
            }
            _loc2_++;
         }
         this._SafeStr_856._SafeStr_254();
      }
      
      public function _SafeStr_836(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_307.length)
         {
            this._SafeStr_307[_loc2_].gotoAndStop(1);
            _loc2_++;
         }
         var _loc3_:MovieClip = MovieClip(param1.target);
         _loc3_.gotoAndStop(3);
         this._SafeStr_658 = _loc3_.real_name;
      }
      
      public function _SafeStr_771(param1:MouseEvent) : void
      {
         this.mc.visible = false;
         this._SafeStr_453.stop();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_7 = "8$"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_61 = "!&"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_85 = "7L"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_122 = "5#"
 * @identifier _SafeStr_144 = "set "
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_269 = "`5"
 * @identifier _SafeStr_307 = "2\'"
 * @identifier _SafeStr_324 = "^M"
 * @identifier _SafeStr_453 = ",Q"
 * @identifier _SafeStr_483 = ">F"
 * @identifier _SafeStr_491 = "?4"
 * @identifier _SafeStr_563 = "7A"
 * @identifier _SafeStr_658 = "\'M"
 * @identifier _SafeStr_771 = "6&"
 * @identifier _SafeStr_805 = ">8"
 * @identifier _SafeStr_836 = "+M"
 * @identifier _SafeStr_856 = "1P"
 * @identifier _SafeStr_1050 = "\'C"
 * @identifier _SafeStr_1067 = "[E"
 * @identifier _SafeStr_1185 = "\'<"
 */
