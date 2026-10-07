package _SafePkg_19
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_20.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
      
      public var _SafeStr_2095:Vector.<b2ContactConstraintPoint>;
      
      public var localPlaneNormal:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2475:b2Vec2 = new b2Vec2();
      
      public var normal:b2Vec2 = new b2Vec2();
      
      public var normalMass:b2Mat22 = new b2Mat22();
      
      public var _SafeStr_672:b2Mat22 = new b2Mat22();
      
      public var _SafeStr_1255:b2Body;
      
      public var _SafeStr_1005:b2Body;
      
      public var type:int;
      
      public var _SafeStr_417:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var _SafeStr_1033:int;
      
      public var _SafeStr_991:b2Manifold;
      
      public function b2ContactConstraint()
      {
         super();
         this._SafeStr_2095 = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this._SafeStr_2095[_loc1_] = new b2ContactConstraintPoint();
            _loc1_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_417 = "_-95"
 * @identifier _SafeStr_672 = "_-RF"
 * @identifier _SafeStr_991 = "_-CW"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1033 = "_-i3"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_2095 = "_-Pj"
 * @identifier _SafeStr_2475 = "_-1c"
 */
