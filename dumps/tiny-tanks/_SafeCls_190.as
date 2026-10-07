package
{
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.DisplacementMapFilterMode;
   import flash.geom.Point;
   
   public class _SafeCls_190 extends Sprite
   {
      
      private var myTank:MovieClip;
      
      private var staticTimes:int;
      
      private var _SafeStr_378:int;
      
      private var _SafeStr_1350:int;
      
      private var _SafeStr_2144:DisplacementMapFilter = this._SafeStr_576();
      
      public function _SafeCls_190(param1:MovieClip)
      {
         super();
         this.myTank = param1;
         this._SafeStr_485();
         addEventListener(Event.ENTER_FRAME,this._SafeStr_1444);
      }
      
      private function _SafeStr_485(param1:MouseEvent = null) : void
      {
         this._SafeStr_378 = 0;
         this._SafeStr_1350 = 6;
         this.staticTimes = 12;
      }
      
      private function _SafeStr_1552(param1:MouseEvent = null) : void
      {
         this._SafeStr_378 = 2;
         this._SafeStr_1350 = 6;
         this.staticTimes = this._SafeStr_1640(8,12);
      }
      
      private function _SafeStr_1444(param1:Event) : void
      {
         this._SafeStr_2144.scaleX = this._SafeStr_1640(this._SafeStr_378,this._SafeStr_1350);
         this._SafeStr_2144.mapPoint = new Point(0,this._SafeStr_1640(0,-160));
         this.myTank.filters = new Array(this._SafeStr_2144);
         if(this.staticTimes <= 0)
         {
            this._SafeStr_378 = 0;
            this._SafeStr_1350 = 2;
         }
      }
      
      private function _SafeStr_576() : DisplacementMapFilter
      {
         var _loc1_:BitmapData = new _SafeCls_128(0,0);
         var _loc2_:Point = new Point(0,0);
         var _loc3_:uint = uint(BitmapDataChannel.RED);
         var _loc4_:uint = _loc3_;
         var _loc5_:uint = _loc3_;
         var _loc8_:String = DisplacementMapFilterMode.COLOR;
         return new DisplacementMapFilter(_loc1_,_loc2_,_loc4_,_loc5_,5,1,_loc8_,0,0);
      }
      
      private function _SafeStr_1640(param1:int, param2:int) : int
      {
         return int(Math.floor(Math.random() * (param2 - param1 + 1)) + param1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_128 = "_-cK"
 * @identifier _SafeCls_190 = "_-Ok"
 * @identifier _SafeStr_378 = "_-W6"
 * @identifier _SafeStr_485 = "_-T3"
 * @identifier _SafeStr_576 = "_-au"
 * @identifier _SafeStr_1350 = "_-WW"
 * @identifier _SafeStr_1444 = "_-EW"
 * @identifier _SafeStr_1552 = "_-IS"
 * @identifier _SafeStr_1640 = "_-ah"
 * @identifier _SafeStr_2144 = "_-6g"
 */
