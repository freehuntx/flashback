package Box2D.Common
{
   import Box2D.Common.Math.b2Math;
   
   public class b2Color
   {
      
      private var _SafeStr_1916:uint = 0;
      
      private var _SafeStr_2277:uint = 0;
      
      private var _SafeStr_478:uint = 0;
      
      public function b2Color(param1:Number, param2:Number, param3:Number)
      {
         super();
         this._SafeStr_1916 = uint(255 * b2Math._SafeStr_392(param1,0,1));
         this._SafeStr_2277 = uint(255 * b2Math._SafeStr_392(param2,0,1));
         this._SafeStr_478 = uint(255 * b2Math._SafeStr_392(param3,0,1));
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this._SafeStr_1916 = uint(255 * b2Math._SafeStr_392(param1,0,1));
         this._SafeStr_2277 = uint(255 * b2Math._SafeStr_392(param2,0,1));
         this._SafeStr_478 = uint(255 * b2Math._SafeStr_392(param3,0,1));
      }
      
      public function set r(param1:Number) : void
      {
         this._SafeStr_1916 = uint(255 * b2Math._SafeStr_392(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         this._SafeStr_2277 = uint(255 * b2Math._SafeStr_392(param1,0,1));
      }
      
      public function set b(param1:Number) : void
      {
         this._SafeStr_478 = uint(255 * b2Math._SafeStr_392(param1,0,1));
      }
      
      public function get color() : uint
      {
         return this._SafeStr_1916 << 16 | this._SafeStr_2277 << 8 | this._SafeStr_478;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_478 = "_-9t"
 * @identifier _SafeStr_1916 = "_-iU"
 * @identifier _SafeStr_2277 = "_-hC"
 */
