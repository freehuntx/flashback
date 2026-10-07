package _SafePkg_0
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_20.*;
   import _SafePkg_8.*;
   import _SafePkg_19.*;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var _SafeStr_343:uint = 1;
      
      public static var _SafeStr_1856:uint = 2;
      
      public static var _SafeStr_841:uint = 4;
      
      public static var _SafeStr_425:uint = 8;
      
      public static var _SafeStr_2304:uint = 16;
      
      public static var _SafeStr_1587:uint = 32;
      
      private var _SafeStr_1979:uint;
      
      b2internal var _SafeStr_2106:Sprite;
      
      private var _SafeStr_2108:Number = 1;
      
      private var _SafeStr_727:Number = 1;
      
      private var _SafeStr_789:Number = 1;
      
      private var _SafeStr_2505:Number = 1;
      
      private var _SafeStr_929:Number = 1;
      
      public function b2DebugDraw()
      {
         super();
         this._SafeStr_1979 = 0;
      }
      
      public function _SafeStr_970(param1:uint) : void
      {
         this._SafeStr_1979 = param1;
      }
      
      public function _SafeStr_815() : uint
      {
         return this._SafeStr_1979;
      }
      
      public function _SafeStr_1445(param1:uint) : void
      {
         this._SafeStr_1979 |= param1;
      }
      
      public function _SafeStr_1382(param1:uint) : void
      {
         this._SafeStr_1979 &= ~param1;
      }
      
      public function _SafeStr_330(param1:Sprite) : void
      {
         this._SafeStr_2106 = param1;
      }
      
      public function _SafeStr_624() : Sprite
      {
         return this._SafeStr_2106;
      }
      
      public function _SafeStr_705(param1:Number) : void
      {
         this._SafeStr_2108 = param1;
      }
      
      public function _SafeStr_1479() : Number
      {
         return this._SafeStr_2108;
      }
      
      public function _SafeStr_1995(param1:Number) : void
      {
         this._SafeStr_727 = param1;
      }
      
      public function _SafeStr_2034() : Number
      {
         return this._SafeStr_727;
      }
      
      public function _SafeStr_1294(param1:Number) : void
      {
         this._SafeStr_789 = param1;
      }
      
      public function _SafeStr_2088() : Number
      {
         return this._SafeStr_789;
      }
      
      public function _SafeStr_2112(param1:Number) : void
      {
         this._SafeStr_2505 = param1;
      }
      
      public function _SafeStr_2165() : Number
      {
         return this._SafeStr_2505;
      }
      
      public function _SafeStr_1436(param1:Number) : void
      {
         this._SafeStr_929 = param1;
      }
      
      public function _SafeStr_2332() : Number
      {
         return this._SafeStr_929;
      }
      
      public function _SafeStr_2311(param1:Array, param2:int, param3:b2Color) : void
      {
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,param3.color,this._SafeStr_789);
         this._SafeStr_2106.graphics.moveTo(param1[0].x * this._SafeStr_2108,param1[0].y * this._SafeStr_2108);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this._SafeStr_2106.graphics.lineTo(param1[_loc4_].x * this._SafeStr_2108,param1[_loc4_].y * this._SafeStr_2108);
            _loc4_++;
         }
         this._SafeStr_2106.graphics.lineTo(param1[0].x * this._SafeStr_2108,param1[0].y * this._SafeStr_2108);
      }
      
      public function _SafeStr_1463(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,param3.color,this._SafeStr_789);
         this._SafeStr_2106.graphics.moveTo(param1[0].x * this._SafeStr_2108,param1[0].y * this._SafeStr_2108);
         this._SafeStr_2106.graphics.beginFill(param3.color,this._SafeStr_2505);
         var _loc4_:int = 1;
         while(_loc4_ < param2)
         {
            this._SafeStr_2106.graphics.lineTo(param1[_loc4_].x * this._SafeStr_2108,param1[_loc4_].y * this._SafeStr_2108);
            _loc4_++;
         }
         this._SafeStr_2106.graphics.lineTo(param1[0].x * this._SafeStr_2108,param1[0].y * this._SafeStr_2108);
         this._SafeStr_2106.graphics.endFill();
      }
      
      public function _SafeStr_637(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,param3.color,this._SafeStr_789);
         this._SafeStr_2106.graphics.drawCircle(param1.x * this._SafeStr_2108,param1.y * this._SafeStr_2108,param2 * this._SafeStr_2108);
      }
      
      public function _SafeStr_1377(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,param4.color,this._SafeStr_789);
         this._SafeStr_2106.graphics.moveTo(0,0);
         this._SafeStr_2106.graphics.beginFill(param4.color,this._SafeStr_2505);
         this._SafeStr_2106.graphics.drawCircle(param1.x * this._SafeStr_2108,param1.y * this._SafeStr_2108,param2 * this._SafeStr_2108);
         this._SafeStr_2106.graphics.endFill();
         this._SafeStr_2106.graphics.moveTo(param1.x * this._SafeStr_2108,param1.y * this._SafeStr_2108);
         this._SafeStr_2106.graphics.lineTo((param1.x + param3.x * param2) * this._SafeStr_2108,(param1.y + param3.y * param2) * this._SafeStr_2108);
      }
      
      public function _SafeStr_1956(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,param3.color,this._SafeStr_789);
         this._SafeStr_2106.graphics.moveTo(param1.x * this._SafeStr_2108,param1.y * this._SafeStr_2108);
         this._SafeStr_2106.graphics.lineTo(param2.x * this._SafeStr_2108,param2.y * this._SafeStr_2108);
      }
      
      public function _SafeStr_1373(param1:b2Transform) : void
      {
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,16711680,this._SafeStr_789);
         this._SafeStr_2106.graphics.moveTo(param1.position.x * this._SafeStr_2108,param1.position.y * this._SafeStr_2108);
         this._SafeStr_2106.graphics.lineTo((param1.position.x + this._SafeStr_929 * param1._SafeStr_945.col1.x) * this._SafeStr_2108,(param1.position.y + this._SafeStr_929 * param1._SafeStr_945.col1.y) * this._SafeStr_2108);
         this._SafeStr_2106.graphics.lineStyle(this._SafeStr_727,65280,this._SafeStr_789);
         this._SafeStr_2106.graphics.moveTo(param1.position.x * this._SafeStr_2108,param1.position.y * this._SafeStr_2108);
         this._SafeStr_2106.graphics.lineTo((param1.position.x + this._SafeStr_929 * param1._SafeStr_945.col2.x) * this._SafeStr_2108,(param1.position.y + this._SafeStr_929 * param1._SafeStr_945.col2.y) * this._SafeStr_2108);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_330 = "_-dh"
 * @identifier _SafeStr_343 = "_-Qu"
 * @identifier _SafeStr_425 = "_-Hl"
 * @identifier _SafeStr_624 = "_-C3"
 * @identifier _SafeStr_637 = "_-1Q"
 * @identifier _SafeStr_705 = "_-57"
 * @identifier _SafeStr_727 = "_-8y"
 * @identifier _SafeStr_789 = "_-1i"
 * @identifier _SafeStr_815 = "_-Rg"
 * @identifier _SafeStr_841 = "_-8E"
 * @identifier _SafeStr_929 = "_-Vp"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_970 = "_-4m"
 * @identifier _SafeStr_1294 = "_-Hm"
 * @identifier _SafeStr_1373 = "_-A4"
 * @identifier _SafeStr_1377 = "_-gw"
 * @identifier _SafeStr_1382 = "_-8D"
 * @identifier _SafeStr_1436 = "_-PY"
 * @identifier _SafeStr_1445 = "_-GK"
 * @identifier _SafeStr_1463 = "_-Gh"
 * @identifier _SafeStr_1479 = "_-XU"
 * @identifier _SafeStr_1587 = "_-3Q"
 * @identifier _SafeStr_1856 = "_-fk"
 * @identifier _SafeStr_1956 = "_-NH"
 * @identifier _SafeStr_1979 = "_-Sv"
 * @identifier _SafeStr_1995 = "_-jE"
 * @identifier _SafeStr_2034 = "_-gE"
 * @identifier _SafeStr_2088 = "_-g6"
 * @identifier _SafeStr_2106 = "_-UE"
 * @identifier _SafeStr_2108 = "_-YS"
 * @identifier _SafeStr_2112 = "_-fC"
 * @identifier _SafeStr_2165 = "_-ay"
 * @identifier _SafeStr_2304 = "_-hO"
 * @identifier _SafeStr_2311 = "_-U0"
 * @identifier _SafeStr_2332 = "_-8K"
 * @identifier _SafeStr_2505 = "_-fZ"
 */
