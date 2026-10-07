package _SafePkg_20
{
   import Box2D.Common.Math.b2Vec2;
   import _SafePkg_8.b2Shape;
   
   public class b2ContactPoint
   {
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1742:b2Vec2 = new b2Vec2();
      
      public var normal:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2162:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID = new b2ContactID();
      
      public function b2ContactPoint()
      {
         super();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_1742 = "_-jh"
 * @identifier _SafeStr_2162 = "_-fs"
 */
