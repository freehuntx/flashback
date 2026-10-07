package org.flintparticles.common.utils
{
   import _SafePkg_89._SafeCls_90;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class _SafeCls_133 extends EventDispatcher
   {
      
      private static var _instance:_SafeCls_133;
      
      private var _SafeStr_1306:Shape;
      
      private var _SafeStr_538:Number;
      
      private var _running:Boolean = false;
      
      public function _SafeCls_133()
      {
         super();
         this._SafeStr_1306 = new Shape();
      }
      
      public static function get instance() : _SafeCls_133
      {
         if(_instance == null)
         {
            _instance = new _SafeCls_133();
         }
         return _instance;
      }
      
      private function startTimer() : void
      {
         this._SafeStr_1306.addEventListener(Event.ENTER_FRAME,this._SafeStr_572,false,0,true);
         this._SafeStr_538 = getTimer();
         this._running = true;
      }
      
      private function stopTimer() : void
      {
         this._SafeStr_1306.removeEventListener(Event.ENTER_FRAME,this._SafeStr_572);
         this._running = false;
      }
      
      private function _SafeStr_572(param1:Event) : void
      {
         var _loc2_:int = this._SafeStr_538;
         this._SafeStr_538 = getTimer();
         var _loc3_:Number = (this._SafeStr_538 - _loc2_) * 0.001;
         dispatchEvent(new _SafeCls_90(_SafeCls_90._SafeStr_436,_loc3_));
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.addEventListener(param1,param2,param3,param4,param5);
         if(!this._running && Boolean(hasEventListener(_SafeCls_90._SafeStr_436)))
         {
            this.startTimer();
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         super.removeEventListener(param1,param2,param3);
         if(this._running && !hasEventListener(_SafeCls_90._SafeStr_436))
         {
            this.stopTimer();
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_90 = "_-hU"
 * @identifier _SafeCls_133 = "_-iq"
 * @identifier _SafePkg_89 = "_-jw"
 * @identifier _SafeStr_436 = "_-BT"
 * @identifier _SafeStr_538 = "_-7d"
 * @identifier _SafeStr_572 = "_-72"
 * @identifier _SafeStr_1306 = "_-6u"
 */
