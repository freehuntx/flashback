package murray
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _SafeCls_61
   {
      
      public var _SafeStr_129:DisplayObject;
      
      public var _SafeStr_174:MovieClip;
      
      public var scroll_mask:MovieClip;
      
      public var _SafeStr_711:int;
      
      public var handle:MovieClip;
      
      private var _SafeStr_282:int;
      
      private var _SafeStr_439:int;
      
      private var _SafeStr_735:int;
      
      public var _SafeStr_815:Boolean = true;
      
      public function _SafeCls_61(param1:DisplayObject, param2:MovieClip, param3:MovieClip, param4:int)
      {
         super();
         this._SafeStr_129 = param1;
         this.scroll_mask = param2;
         this._SafeStr_174 = param3;
         this._SafeStr_711 = param4;
         this._SafeStr_282 = param1.y;
         param3.scroll_top.addEventListener(MouseEvent.CLICK,this._SafeStr_952);
         this.handle = param3.handle;
         param3.scroll_bottom.addEventListener(MouseEvent.CLICK,this._SafeStr_869);
         param3.scroll_background.addEventListener(MouseEvent.CLICK,this._SafeStr_1059);
         param1.addEventListener(MouseEvent.MOUSE_WHEEL,this._SafeStr_1079);
         this.handle.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_765);
      }
      
      public function _SafeStr_952(param1:MouseEvent) : void
      {
         this._SafeStr_129.y += this._SafeStr_711;
         this._SafeStr_323();
      }
      
      public function _SafeStr_869(param1:MouseEvent) : void
      {
         this._SafeStr_129.y -= this._SafeStr_711;
         this._SafeStr_323();
      }
      
      public function _SafeStr_1172() : void
      {
         this._SafeStr_129.y = this._SafeStr_282;
         this._SafeStr_323();
      }
      
      public function include() : void
      {
         if(this._SafeStr_129.height < this.scroll_mask.height)
         {
            this._SafeStr_129.y = this._SafeStr_282;
         }
         else
         {
            this._SafeStr_129.y = this.scroll_mask.height + this.scroll_mask.y - this._SafeStr_129.height;
         }
         this._SafeStr_323();
      }
      
      public function _SafeStr_323() : void
      {
         this._SafeStr_815 = false;
         if(this._SafeStr_129.y > this._SafeStr_282)
         {
            this._SafeStr_129.y = this._SafeStr_282;
         }
         else if(Math.floor(this._SafeStr_129.height + this._SafeStr_129.y) <= this.scroll_mask.height + this.scroll_mask.y)
         {
            if(this._SafeStr_129.height < this.scroll_mask.height)
            {
               this._SafeStr_129.y = this._SafeStr_282;
            }
            else
            {
               this._SafeStr_129.y = this.scroll_mask.height + this.scroll_mask.y - this._SafeStr_129.height;
            }
            this._SafeStr_815 = true;
         }
         var _loc1_:int = this._SafeStr_282 - this._SafeStr_129.y;
         var _loc2_:Number = _loc1_ * 1 / this._SafeStr_439;
         this.handle.y = this._SafeStr_174.scroll_background.y + (this._SafeStr_174.scroll_background.height - this.handle.height) * _loc2_;
      }
      
      public function _SafeStr_765(param1:MouseEvent) : void
      {
         this._SafeStr_735 = this._SafeStr_174.stage.mouseY;
         this._SafeStr_174.stage.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_520);
         this._SafeStr_174.addEventListener(Event.ENTER_FRAME,this._SafeStr_560);
      }
      
      public function _SafeStr_520(param1:MouseEvent) : void
      {
         this._SafeStr_174.stage.removeEventListener(MouseEvent.MOUSE_UP,this._SafeStr_520);
         this._SafeStr_174.removeEventListener(Event.ENTER_FRAME,this._SafeStr_560);
      }
      
      public function _SafeStr_560(param1:Event) : void
      {
         this.handle.y += this._SafeStr_174.stage.mouseY - this._SafeStr_735;
         this._SafeStr_735 = this._SafeStr_174.stage.mouseY;
         var _loc2_:* = 1 * this.handle.y / (this._SafeStr_174.scroll_background.y + this._SafeStr_174.scroll_background.height - this.handle.height);
         if(this.handle.y < this._SafeStr_174.scroll_background.y)
         {
            _loc2_ = 0;
            this.handle.y = this._SafeStr_174.scroll_background.y - 1;
         }
         else if(this.handle.y > this._SafeStr_174.scroll_background.y + this._SafeStr_174.scroll_background.height - this.handle.height)
         {
            _loc2_ = 1;
            this.handle.y = this._SafeStr_174.scroll_background.y + this._SafeStr_174.scroll_background.height - this.handle.height;
         }
         this._SafeStr_129.y = this._SafeStr_282 - this._SafeStr_439 * _loc2_;
      }
      
      public function _SafeStr_1059(param1:MouseEvent) : void
      {
         if(param1.localY > this.handle.y)
         {
            this._SafeStr_129.y -= this.scroll_mask.height;
         }
         else
         {
            this._SafeStr_129.y += this.scroll_mask.height;
         }
         this._SafeStr_323();
      }
      
      public function _SafeStr_1079(param1:MouseEvent) : void
      {
         if(param1.delta > 0)
         {
            this._SafeStr_952(param1);
         }
         else
         {
            this._SafeStr_869(param1);
         }
      }
      
      public function _SafeStr_254() : void
      {
         this._SafeStr_129.y = this._SafeStr_282;
         this._SafeStr_439 = this._SafeStr_282 + this._SafeStr_129.height - (this.scroll_mask.y + this.scroll_mask.height);
         if(this._SafeStr_439 < 1)
         {
            this._SafeStr_439 = 1;
         }
         var _loc1_:Number = this.scroll_mask.height / (this.scroll_mask.height + this._SafeStr_439 * 1);
         if(_loc1_ > 1)
         {
            _loc1_ = 1;
         }
         else if(_loc1_ < 0)
         {
            _loc1_ = 0.02;
         }
         this.handle.handle_middle.height = this._SafeStr_174.scroll_background.height * _loc1_ - 3;
         this.handle.handle_bottom.y = this.handle.handle_middle.height + this.handle.handle_middle.y;
         this.handle.y = this._SafeStr_174.scroll_background.y;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_61 = "!&"
 * @identifier _SafeStr_129 = "35"
 * @identifier _SafeStr_174 = "=\""
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_282 = "`L"
 * @identifier _SafeStr_323 = "-R"
 * @identifier _SafeStr_439 = "9P"
 * @identifier _SafeStr_520 = "9I"
 * @identifier _SafeStr_560 = "#%"
 * @identifier _SafeStr_711 = "&O"
 * @identifier _SafeStr_735 = "1-"
 * @identifier _SafeStr_765 = "&>"
 * @identifier _SafeStr_815 = "each "
 * @identifier _SafeStr_869 = " A"
 * @identifier _SafeStr_952 = "!T"
 * @identifier _SafeStr_1059 = " 5"
 * @identifier _SafeStr_1079 = "\'2"
 * @identifier _SafeStr_1172 = "0;"
 */
