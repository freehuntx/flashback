package murray
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class _SafeCls_86 extends EventDispatcher
   {
      
      public var value:int = 100;
      
      public var _SafeStr_600:int = 100;
      
      private var _SafeStr_523:int;
      
      private var mc:MovieClip;
      
      private var _SafeStr_622:int;
      
      public function _SafeCls_86(param1:MovieClip)
      {
         super();
         param1.addEventListener(MouseEvent.CLICK,this._SafeStr_1224);
         param1.handle.buttonMode = true;
         param1.handle.useHandCursor = true;
         param1.handle.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_765);
         this._SafeStr_523 = param1.width;
         this.mc = param1;
      }
      
      public function _SafeStr_1224(param1:MouseEvent) : void
      {
         if(param1.target == this.mc)
         {
            if(param1.localX < this.mc.handle.x)
            {
               this.value -= 20;
               if(this.value < 0)
               {
                  this.value = 0;
               }
            }
            else
            {
               this.value += 20;
               if(this.value > this._SafeStr_600)
               {
                  this.value = this._SafeStr_600;
               }
            }
            this._SafeStr_559(this.value);
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function _SafeStr_765(param1:MouseEvent) : void
      {
         this.mc.stage.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_520);
         this.mc.addEventListener(Event.ENTER_FRAME,this._SafeStr_560);
         this._SafeStr_622 = param1.stageX;
      }
      
      public function _SafeStr_520(param1:MouseEvent) : void
      {
         this.mc.stage.removeEventListener(MouseEvent.MOUSE_UP,this._SafeStr_520);
         this.mc.removeEventListener(Event.ENTER_FRAME,this._SafeStr_560);
      }
      
      public function _SafeStr_560(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         if(this._SafeStr_622 != this.mc.stage.mouseX)
         {
            _loc2_ = this.mc.stage.mouseX - this._SafeStr_622;
            this.mc.handle.x += _loc2_;
            if(this.mc.handle.x < 0)
            {
               this.mc.handle.x = 0;
            }
            else if(this.mc.handle.x > this._SafeStr_523)
            {
               this.mc.handle.x = this._SafeStr_523;
            }
            this._SafeStr_622 = this.mc.stage.mouseX;
            _loc3_ = 1 * this.mc.handle.x / this._SafeStr_523;
            this.value = _loc3_ * this._SafeStr_600;
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function _SafeStr_559(param1:int) : void
      {
         this.value = param1;
         var _loc2_:Number = 1 * this.value / this._SafeStr_600;
         this.mc.handle.x = _loc2_ * this._SafeStr_523;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_86 = "-J"
 * @identifier _SafeStr_520 = "9I"
 * @identifier _SafeStr_523 = "85"
 * @identifier _SafeStr_559 = "1G"
 * @identifier _SafeStr_560 = "#%"
 * @identifier _SafeStr_600 = "7B"
 * @identifier _SafeStr_622 = "9K"
 * @identifier _SafeStr_765 = "&>"
 * @identifier _SafeStr_1224 = "7!"
 */
