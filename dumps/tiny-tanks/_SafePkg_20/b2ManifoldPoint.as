package _SafePkg_20
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2ManifoldPoint
   {
      
      public var _SafeStr_2485:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2423:Number;
      
      public var _SafeStr_1931:Number;
      
      public var _SafeStr_1658:b2ContactID = new b2ContactID();
      
      public function b2ManifoldPoint()
      {
         super();
         this._SafeStr_944();
      }
      
      public function _SafeStr_944() : void
      {
         this._SafeStr_2485._SafeStr_1807();
         this._SafeStr_2423 = 0;
         this._SafeStr_1931 = 0;
         this._SafeStr_1658.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this._SafeStr_2485._SafeStr_1679(param1._SafeStr_2485);
         this._SafeStr_2423 = param1._SafeStr_2423;
         this._SafeStr_1931 = param1._SafeStr_1931;
         this._SafeStr_1658.Set(param1._SafeStr_1658);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_944 = "_-3"
 * @identifier _SafeStr_1658 = "_-XE"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1931 = "_-At"
 * @identifier _SafeStr_2423 = "_-1A"
 * @identifier _SafeStr_2485 = "_-Ab"
 */
