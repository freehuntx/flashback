package _SafePkg_20
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2RayCastInput
   {
      
      public var p1:b2Vec2 = new b2Vec2();
      
      public var p2:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1595:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         super();
         if(param1)
         {
            this.p1._SafeStr_1679(param1);
         }
         if(param2)
         {
            this.p2._SafeStr_1679(param2);
         }
         this._SafeStr_1595 = param3;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_1595 = "_-9G"
 * @identifier _SafeStr_1679 = "_-MI"
 */
