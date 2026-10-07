package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
      
      public var target:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_924:Number;
      
      public var _SafeStr_332:Number;
      
      public var _SafeStr_2335:Number;
      
      public function b2MouseJointDef()
      {
         super();
         type = b2Joint._SafeStr_2040;
         this._SafeStr_924 = 0;
         this._SafeStr_332 = 5;
         this._SafeStr_2335 = 0.7;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafeStr_332 = "_-IY"
 * @identifier _SafeStr_924 = "_-Z"
 * @identifier _SafeStr_2040 = "_-fn"
 * @identifier _SafeStr_2335 = "_-Mv"
 */
