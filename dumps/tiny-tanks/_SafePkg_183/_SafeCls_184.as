package _SafePkg_183
{
   import flash.display.Shape;
   
   public class _SafeCls_184 extends Shape
   {
      
      private var _SafeStr_1824:Number;
      
      private var _color:uint;
      
      public function _SafeCls_184(param1:Number = 1, param2:uint = 16777215, param3:String = "normal")
      {
         super();
         this._SafeStr_1824 = param1;
         this._color = param2;
         this.draw();
         blendMode = param3;
      }
      
      private function draw() : void
      {
         graphics.clear();
         graphics.beginFill(this._color);
         graphics.drawCircle(0,0,this._SafeStr_1824);
         graphics.endFill();
      }
      
      public function get _SafeStr_417() : Number
      {
         return this._SafeStr_1824;
      }
      
      public function set _SafeStr_417(param1:Number) : void
      {
         this._SafeStr_1824 = param1;
         this.draw();
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         this._color = param1;
         this.draw();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafePkg_183 = "_-CN"
 * @identifier _SafeStr_417 = "_-95"
 * @identifier _SafeStr_1824 = "_-Fk"
 */
