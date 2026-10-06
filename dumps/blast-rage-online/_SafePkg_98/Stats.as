package _SafePkg_98
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.system.System;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class Stats extends Sprite
   {
      
      protected const _SafeStr_553:uint = 70;
      
      protected const _SafeStr_579:uint = 100;
      
      protected var xml:XML;
      
      protected var text:TextField;
      
      protected var _SafeStr_388:StyleSheet;
      
      protected var timer:uint;
      
      protected var fps:uint;
      
      protected var ms:uint;
      
      protected var _SafeStr_860:uint;
      
      protected var mem:Number;
      
      protected var _SafeStr_434:Number;
      
      protected var _SafeStr_172:BitmapData;
      
      protected var _SafeStr_920:Rectangle;
      
      protected var _SafeStr_964:uint;
      
      protected var _SafeStr_1008:uint;
      
      protected var _SafeStr_927:uint;
      
      protected var _SafeStr_256:Colors = new Colors();
      
      public function Stats()
      {
         super();
         this._SafeStr_434 = 0;
         this.xml = <xml><fps>FPS:</fps><ms>MS:</ms><mem>MEM:</mem><memMax>MAX:</memMax></xml>;
         this._SafeStr_388 = new StyleSheet();
         this._SafeStr_388.setStyle("xml",{
            "fontSize":"9px",
            "fontFamily":"_sans",
            "leading":"-2px"
         });
         this._SafeStr_388.setStyle("fps",{"color":this._SafeStr_667(this._SafeStr_256.fps)});
         this._SafeStr_388.setStyle("ms",{"color":this._SafeStr_667(this._SafeStr_256.ms)});
         this._SafeStr_388.setStyle("mem",{"color":this._SafeStr_667(this._SafeStr_256.mem)});
         this._SafeStr_388.setStyle("memMax",{"color":this._SafeStr_667(this._SafeStr_256.memmax)});
         this.text = new TextField();
         this.text.width = this._SafeStr_553;
         this.text.height = 50;
         this.text.styleSheet = this._SafeStr_388;
         this.text.condenseWhite = true;
         this.text.selectable = false;
         this.text.mouseEnabled = false;
         this._SafeStr_920 = new Rectangle(this._SafeStr_553 - 1,0,1,this._SafeStr_579 - 50);
         addEventListener(Event.ADDED_TO_STAGE,this._SafeStr_1162,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.destroy,false,0,true);
      }
      
      private function _SafeStr_1162(param1:Event) : void
      {
         graphics.beginFill(this._SafeStr_256.bg);
         graphics.drawRect(0,0,this._SafeStr_553,this._SafeStr_579);
         graphics.endFill();
         addChild(this.text);
         this._SafeStr_172 = new BitmapData(this._SafeStr_553,this._SafeStr_579 - 50,false,this._SafeStr_256.bg);
         graphics.beginBitmapFill(this._SafeStr_172,new Matrix(1,0,0,1,0,50));
         graphics.drawRect(0,50,this._SafeStr_553,this._SafeStr_579 - 50);
         addEventListener(MouseEvent.CLICK,this._SafeStr_847);
         addEventListener(Event.ENTER_FRAME,this._SafeStr_826);
      }
      
      private function destroy(param1:Event) : void
      {
         graphics.clear();
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this._SafeStr_172.dispose();
         removeEventListener(MouseEvent.CLICK,this._SafeStr_847);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_826);
      }
      
      private function _SafeStr_826(param1:Event) : void
      {
         this.timer = getTimer();
         if(this.timer - 1000 > this._SafeStr_860)
         {
            this._SafeStr_860 = this.timer;
            this.mem = Number((System.totalMemory * 9.54e-7).toFixed(3));
            this._SafeStr_434 = this._SafeStr_434 > this.mem ? this._SafeStr_434 : this.mem;
            this._SafeStr_964 = Math.min(this._SafeStr_172.height,this.fps / stage.frameRate * this._SafeStr_172.height);
            this._SafeStr_1008 = Math.min(this._SafeStr_172.height,Math.sqrt(Math.sqrt(this.mem * 5000))) - 2;
            this._SafeStr_927 = Math.min(this._SafeStr_172.height,Math.sqrt(Math.sqrt(this._SafeStr_434 * 5000))) - 2;
            this._SafeStr_172.scroll(-1,0);
            this._SafeStr_172.fillRect(this._SafeStr_920,this._SafeStr_256.bg);
            this._SafeStr_172.setPixel(this._SafeStr_172.width - 1,this._SafeStr_172.height - this._SafeStr_964,this._SafeStr_256.fps);
            this._SafeStr_172.setPixel(this._SafeStr_172.width - 1,this._SafeStr_172.height - (this.timer - this.ms >> 1),this._SafeStr_256.ms);
            this._SafeStr_172.setPixel(this._SafeStr_172.width - 1,this._SafeStr_172.height - this._SafeStr_1008,this._SafeStr_256.mem);
            this._SafeStr_172.setPixel(this._SafeStr_172.width - 1,this._SafeStr_172.height - this._SafeStr_927,this._SafeStr_256.memmax);
            this.xml.fps = "FPS: " + this.fps + " / " + stage.frameRate;
            this.xml.mem = "MEM: " + this.mem;
            this.xml.memMax = "MAX: " + this._SafeStr_434;
            this.fps = 0;
         }
         ++this.fps;
         this.xml.ms = "MS: " + (this.timer - this.ms);
         this.ms = this.timer;
         this.text.htmlText = this.xml;
      }
      
      private function _SafeStr_847(param1:MouseEvent) : void
      {
         if(mouseY / height > 0.5)
         {
            --stage.frameRate;
         }
         else
         {
            ++stage.frameRate;
         }
         this.xml.fps = "FPS: " + this.fps + " / " + stage.frameRate;
         this.text.htmlText = this.xml;
      }
      
      private function _SafeStr_667(param1:int) : String
      {
         return "#" + param1.toString(16);
      }
   }
}

class Colors
{
   
   public var bg:uint = 51;
   
   public var fps:uint = 16776960;
   
   public var ms:uint = 65280;
   
   public var mem:uint = 65535;
   
   public var memmax:uint = 16711792;
   
   public function Colors()
   {
      super();
   }
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_98 = "&6"
 * @identifier _SafeStr_172 = ",U"
 * @identifier _SafeStr_256 = "2="
 * @identifier _SafeStr_388 = "-P"
 * @identifier _SafeStr_434 = "3D"
 * @identifier _SafeStr_553 = "%E"
 * @identifier _SafeStr_579 = "1U"
 * @identifier _SafeStr_667 = "!7"
 * @identifier _SafeStr_826 = "&%"
 * @identifier _SafeStr_847 = "\'O"
 * @identifier _SafeStr_860 = "\"!"
 * @identifier _SafeStr_920 = "\"N"
 * @identifier _SafeStr_927 = "&?"
 * @identifier _SafeStr_964 = "&R"
 * @identifier _SafeStr_1008 = "3Q"
 * @identifier _SafeStr_1162 = "0,"
 */
