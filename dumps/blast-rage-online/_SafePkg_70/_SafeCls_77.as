package _SafePkg_70
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class _SafeCls_77 extends EventDispatcher
   {
      
      private var _SafeStr_785:Number;
      
      private var _SafeStr_412:Number;
      
      private var _SafeStr_518:Boolean;
      
      private var _SafeStr_424:Number;
      
      private var _SafeStr_703:Shape;
      
      public var _SafeStr_1126:int;
      
      public function _SafeCls_77(param1:Number = 33)
      {
         super();
         this._SafeStr_518 = false;
         this._SafeStr_412 = param1;
         this._SafeStr_703 = new Shape();
         this._SafeStr_1126 = 1000 / this._SafeStr_412;
      }
      
      public function start() : void
      {
         this._SafeStr_518 = true;
         this._SafeStr_785 = getTimer();
         this._SafeStr_424 = 0;
         this._SafeStr_703.addEventListener(Event.ENTER_FRAME,this.tick,false,0,true);
      }
      
      public function stop() : void
      {
         this._SafeStr_703.removeEventListener(Event.ENTER_FRAME,this.tick);
         this._SafeStr_518 = false;
      }
      
      public function get _SafeStr_220() : int
      {
         return this._SafeStr_412;
      }
      
      public function get _SafeStr_1238() : Boolean
      {
         return this._SafeStr_518;
      }
      
      private function tick(param1:Event) : void
      {
         var _loc2_:Number = this._SafeStr_1133();
         if(!this._SafeStr_518)
         {
            return;
         }
         this._SafeStr_424 += _loc2_;
         while(this._SafeStr_424 >= this._SafeStr_412)
         {
            this._SafeStr_424 -= this._SafeStr_412;
            dispatchEvent(new _SafeCls_69(this._SafeStr_412));
         }
      }
      
      private function _SafeStr_1133() : Number
      {
         var _loc1_:Number = Number(getTimer());
         var _loc2_:Number = _loc1_ - this._SafeStr_785;
         this._SafeStr_785 = _loc1_;
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_69 = "\'I"
 * @identifier _SafeCls_77 = "^$"
 * @identifier _SafePkg_70 = "case"
 * @identifier _SafeStr_220 = ">7"
 * @identifier _SafeStr_412 = "[+"
 * @identifier _SafeStr_424 = "for "
 * @identifier _SafeStr_518 = "94"
 * @identifier _SafeStr_703 = "%@"
 * @identifier _SafeStr_785 = "9S"
 * @identifier _SafeStr_1126 = "&C"
 * @identifier _SafeStr_1133 = "!\'"
 * @identifier _SafeStr_1238 = ",A"
 */
