package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
      
      public var _SafeStr_1627:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1876:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_924:Number;
      
      public var _SafeStr_341:Number;
      
      public function b2FrictionJointDef()
      {
         super();
         type = b2Joint._SafeStr_1494;
         this._SafeStr_924 = 0;
         this._SafeStr_341 = 0;
      }
      
      public function _SafeStr_2347(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         _SafeStr_1255 = param1;
         _SafeStr_1005 = param2;
         this._SafeStr_1627._SafeStr_1679(_SafeStr_1255._SafeStr_2059(param3));
         this._SafeStr_1876._SafeStr_1679(_SafeStr_1005._SafeStr_2059(param3));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_341 = "_-1s"
 * @identifier _SafeStr_924 = "_-Z"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1494 = "_-Rw"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_2059 = "_-Sf"
 * @identifier _SafeStr_2347 = "_-Wk"
 */
