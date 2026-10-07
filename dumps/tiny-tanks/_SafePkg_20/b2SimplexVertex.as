package _SafePkg_20
{
   import Box2D.Common.Math.b2Vec2;
   
   internal class b2SimplexVertex
   {
      
      public var _SafeStr_2507:b2Vec2;
      
      public var _SafeStr_2172:b2Vec2;
      
      public var w:b2Vec2;
      
      public var a:Number;
      
      public var _SafeStr_1143:int;
      
      public var _SafeStr_1512:int;
      
      public function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this._SafeStr_2507._SafeStr_1679(param1._SafeStr_2507);
         this._SafeStr_2172._SafeStr_1679(param1._SafeStr_2172);
         this.w._SafeStr_1679(param1.w);
         this.a = param1.a;
         this._SafeStr_1143 = param1._SafeStr_1143;
         this._SafeStr_1512 = param1._SafeStr_1512;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_1143 = "_-FK"
 * @identifier _SafeStr_1512 = "_-fY"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_2172 = "_-cN"
 * @identifier _SafeStr_2507 = "_-JZ"
 */
