package murray
{
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class _SafeCls_80 extends EventDispatcher
   {
      
      public var mc:MovieClip;
      
      private var ed:_SafeCls_72;
      
      public var _SafeStr_129:_SafeCls_61;
      
      public var _SafeStr_329:Array = new Array();
      
      public function _SafeCls_80(param1:MovieClip, param2:_SafeCls_72)
      {
         super();
         this.mc = param1;
         this.ed = param2;
         param1.visible = false;
         param1.ok.addEventListener(MouseEvent.CLICK,this._SafeStr_291);
         this._SafeStr_129 = new _SafeCls_61(param1.slot_container,param1.scroll_mask,param1.scrollbar_server,10);
      }
      
      public function _SafeStr_168() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         this.mc.visible = true;
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_329.length)
         {
            _loc2_ = this._SafeStr_329[_loc3_];
            _loc2_.removeEventListener(MouseEvent.CLICK,this._SafeStr_795);
            this.mc.slot_container.removeChild(_loc2_);
            _loc3_++;
         }
         this._SafeStr_329 = new Array();
         var _loc1_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         _loc2_ = new this.ed.ServerBar();
         _loc2_.server_text.text = "Choose for me";
         _loc2_.mouseChildren = false;
         _loc2_.buttonMode = true;
         _loc2_.useHandCursor = true;
         _loc2_.addEventListener(MouseEvent.CLICK,this._SafeStr_795);
         this.mc.slot_container.addChild(_loc2_);
         this._SafeStr_329.push(_loc2_);
         _loc3_ = 0;
         while(_loc3_ < _loc1_.servers.length)
         {
            _loc2_ = new this.ed.ServerBar();
            _loc2_.server_text.text = _loc1_.servers[_loc3_][0];
            _loc2_.mouseChildren = false;
            _loc2_.buttonMode = true;
            _loc2_.useHandCursor = true;
            _loc2_.addEventListener(MouseEvent.CLICK,this._SafeStr_795);
            _loc2_.y = (_loc3_ + 1) * (_loc2_.height + 1);
            this.mc.slot_container.addChild(_loc2_);
            this._SafeStr_329.push(_loc2_);
            _loc3_++;
         }
         this._SafeStr_129._SafeStr_254();
      }
      
      public function _SafeStr_291(param1:Event = null) : void
      {
         this.mc.visible = false;
      }
      
      public function _SafeStr_795(param1:MouseEvent) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_329.length)
         {
            if(param1.target == this._SafeStr_329[_loc2_])
            {
               _loc3_ = new Object();
               _loc3_.index = _loc2_ - 1;
               dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_399,_loc3_));
               this._SafeStr_291();
            }
            _loc2_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_61 = "!&"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_80 = ">C"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_129 = "35"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_291 = "6Q"
 * @identifier _SafeStr_329 = ";9"
 * @identifier _SafeStr_399 = "1Q"
 * @identifier _SafeStr_795 = " #"
 */
