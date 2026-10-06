package murray
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class _SafeCls_50
   {
      
      public var mc:MovieClip;
      
      public var _SafeStr_528:Array;
      
      public var _SafeStr_165:Array = new Array();
      
      private var _SafeStr_830:_SafeCls_61;
      
      private var ed:_SafeCls_72;
      
      private const _SafeStr_1093:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.getTopScores";
      
      private const _SafeStr_1105:String = "http://api.xgenstudios.com/csv/?method=xgen.blastrage.getTopLoadouts";
      
      public function _SafeCls_50(param1:MovieClip, param2:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.ed = param2;
         param1.visible = false;
         this._SafeStr_528 = [param1.slot1,param1.slot2,param1.slot3,param1.slot4,param1.slot5,param1.slot6,param1.slot7,param1.slot8,param1.slot9];
         this._SafeStr_830 = new _SafeCls_61(param1.slot_container,param1.scroll_mask,param1.scrollbar,10);
         param1.top_bar.exit.addEventListener(MouseEvent.CLICK,this._SafeStr_291);
      }
      
      public function _SafeStr_168(param1:MouseEvent = null) : void
      {
         this.mc.visible = true;
         var _loc2_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         this.mc.top_bar.cash_field.text = "YOUR TOTAL BITS EARNED:      " + _SafeCls_10._SafeStr_179(_loc2_._SafeStr_330);
         this.mc.top_bar.bit_icon.x = this.mc.top_bar.cash_field.x + this.mc.top_bar.cash_field.width / 2 - this.mc.top_bar.cash_field.textWidth / 2 + 260;
         this.ed.notification_box._SafeStr_141("Loading high scores");
         var _loc3_:URLRequest = new URLRequest(this._SafeStr_1093);
         var _loc4_:URLLoader = new URLLoader(_loc3_);
         _loc4_.addEventListener(Event.COMPLETE,this._SafeStr_1179);
         _loc4_.load(_loc3_);
      }
      
      public function _SafeStr_1179(param1:Event) : void
      {
         var _loc6_:MovieClip = null;
         var _loc7_:Array = null;
         var _loc8_:MovieClip = null;
         this.ed.notification_box._SafeStr_141("Loading top loadouts");
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_165.length)
         {
            _loc6_ = this._SafeStr_165[_loc2_];
            this.mc.slot_container.removeChild(_loc6_);
            _loc2_++;
         }
         this._SafeStr_165 = new Array();
         var _loc3_:Array = param1.target.data.split("\r");
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            if(_loc3_[_loc2_].indexOf("|") != -1)
            {
               _loc7_ = _loc3_[_loc2_].split("|");
               if(_loc2_ < 9)
               {
                  _loc8_ = this._SafeStr_528[_loc2_];
                  _loc8_.rank.gotoAndStop(_loc2_ + 1);
                  _loc8_.player.text = _SafeCls_10._SafeStr_305(_loc7_[0]);
                  _loc8_.total_bits.text = _SafeCls_10._SafeStr_179(_loc7_[1]);
                  _loc8_.bit_icon.x = _loc8_.total_bits.x + (_loc8_.total_bits.width / 2 - _loc8_.total_bits.textWidth / 2) - _loc8_.bit_icon.width;
                  if(_loc2_ < 6)
                  {
                     _loc8_.mvpglow1.gotoAndStop(15);
                     _loc8_.mvpglow2.gotoAndStop(15);
                     if(_loc2_ == 0)
                     {
                        _loc8_.mvpglow1.gotoAndPlay(15);
                        _loc8_.mvpglow2.gotoAndPlay(15);
                     }
                  }
               }
               else
               {
                  _loc6_ = new this.ed.HighScoreSlot();
                  _loc6_.y = (_loc2_ - 9) * _loc6_.height;
                  _loc6_.player.text = _loc2_ + 1 + ". " + _SafeCls_10._SafeStr_305(_loc7_[0]);
                  _loc6_.total_bits.text = _SafeCls_10._SafeStr_179(_loc7_[1]);
                  if(_loc2_ % 2 == 1)
                  {
                     _loc6_.background.visible = false;
                  }
                  this.mc.slot_container.addChild(_loc6_);
                  this._SafeStr_165.push(_loc6_);
               }
            }
            _loc2_++;
         }
         this._SafeStr_830._SafeStr_254();
         var _loc4_:URLRequest = new URLRequest(this._SafeStr_1105);
         var _loc5_:URLLoader = new URLLoader(_loc4_);
         _loc5_.addEventListener(Event.COMPLETE,this._SafeStr_1223);
         _loc5_.load(_loc4_);
      }
      
      public function _SafeStr_1223(param1:Event) : void
      {
         var _loc5_:Array = null;
         var _loc6_:MovieClip = null;
         var _loc7_:_SafeCls_5 = null;
         this.ed.notification_box._SafeStr_197();
         var _loc2_:Array = param1.target.data.split("\r");
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].indexOf("|") != -1)
            {
               _loc5_ = _loc2_[_loc4_].split("|");
               _loc6_ = this._SafeStr_528[_loc3_];
               _loc7_ = _SafeCls_5._SafeStr_632(_loc5_[1],this.ed);
               _loc7_._SafeStr_199(_loc6_.ship);
               _loc3_++;
            }
            _loc4_++;
         }
      }
      
      public function _SafeStr_291(param1:MouseEvent) : void
      {
         var _loc3_:MovieClip = null;
         this.mc.visible = false;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_528.length)
         {
            _loc3_ = this._SafeStr_528[_loc2_];
            if(_loc3_.mvpglow1)
            {
               _loc3_.mvpglow1.gotoAndStop(1);
            }
            if(_loc3_.mvpglow2)
            {
               _loc3_.mvpglow2.gotoAndStop(1);
            }
            _loc2_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_50 = "5J"
 * @identifier _SafeCls_61 = "!&"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_165 = "-Q"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_179 = "8G"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_199 = ";C"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_291 = "6Q"
 * @identifier _SafeStr_305 = "07"
 * @identifier _SafeStr_330 = "4?"
 * @identifier _SafeStr_528 = "?\'"
 * @identifier _SafeStr_632 = "?!"
 * @identifier _SafeStr_830 = "+-"
 * @identifier _SafeStr_1093 = "\'$"
 * @identifier _SafeStr_1105 = "finally"
 * @identifier _SafeStr_1179 = "9D"
 * @identifier _SafeStr_1223 = "\"K"
 */
