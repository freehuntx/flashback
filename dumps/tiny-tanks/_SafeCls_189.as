package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _SafeCls_189 extends Sprite
   {
      
      private var _SafeStr_2273:Bitmap;
      
      private var _SafeStr_2586:Number;
      
      private var _SafeStr_703:Number = 0;
      
      private var _SafeStr_2178:Bitmap;
      
      public function _SafeCls_189(param1:BitmapData)
      {
         super();
         this._SafeStr_2273 = new Bitmap(new BitmapData(125,125));
         addChild(this._SafeStr_2273);
         this._SafeStr_2273.x = -this._SafeStr_2273.width / 2;
         this._SafeStr_2273.y = -this._SafeStr_2273.height / 2;
         addEventListener(Event.ENTER_FRAME,this._SafeStr_1121);
         this._SafeStr_2586 = 0;
         this._SafeStr_2178 = new Bitmap(param1);
         this._SafeStr_1827(this._SafeStr_2273,this._SafeStr_2178,this._SafeStr_2586);
      }
      
      private function _SafeStr_1121(param1:Event) : *
      {
         ++this._SafeStr_703;
         if(this._SafeStr_703 % 2 == 1)
         {
            if(this._SafeStr_2586 >= 40)
            {
               removeEventListener(Event.ENTER_FRAME,this._SafeStr_1121);
               parent.removeChild(this);
            }
            else
            {
               this._SafeStr_1827(this._SafeStr_2273,this._SafeStr_2178,this._SafeStr_2586);
               ++this._SafeStr_2586;
            }
         }
      }
      
      private function _SafeStr_1827(param1:Bitmap, param2:Bitmap, param3:int) : void
      {
         param1.bitmapData.copyPixels(param2.bitmapData,new Rectangle(param3 % 8 * 125,Math.floor(param3 / 8) * 125,125,125),new Point(0,0));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_189 = "_-dx"
 * @identifier _SafeStr_703 = "_-cG"
 * @identifier _SafeStr_1121 = "_-SG"
 * @identifier _SafeStr_1827 = "_-h3"
 * @identifier _SafeStr_2178 = "_-6M"
 * @identifier _SafeStr_2273 = "_-VL"
 * @identifier _SafeStr_2586 = "_-LM"
 */
