package _SafePkg_9
{
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
      
      public var type:int;
      
      public var userData:*;
      
      public var _SafeStr_1255:b2Body;
      
      public var _SafeStr_1005:b2Body;
      
      public var _SafeStr_627:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint._SafeStr_1493;
         this.userData = null;
         this._SafeStr_1255 = null;
         this._SafeStr_1005 = null;
         this._SafeStr_627 = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_627 = "_-7M"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1493 = "_-Ya"
 */
