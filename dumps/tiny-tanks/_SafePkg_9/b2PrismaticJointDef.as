package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
      
      public var _SafeStr_1627:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1876:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1757:b2Vec2 = new b2Vec2();
      
      public var referenceAngle:Number;
      
      public var _SafeStr_2301:Boolean;
      
      public var _SafeStr_2448:Number;
      
      public var _SafeStr_1042:Number;
      
      public var _SafeStr_2246:Boolean;
      
      public var _SafeStr_1985:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         super();
         type = b2Joint._SafeStr_1678;
         this._SafeStr_1757.Set(1,0);
         this.referenceAngle = 0;
         this._SafeStr_2301 = false;
         this._SafeStr_2448 = 0;
         this._SafeStr_1042 = 0;
         this._SafeStr_2246 = false;
         this._SafeStr_1985 = 0;
         this.motorSpeed = 0;
      }
      
      public function _SafeStr_2347(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         _SafeStr_1255 = param1;
         _SafeStr_1005 = param2;
         this._SafeStr_1627 = _SafeStr_1255._SafeStr_2059(param3);
         this._SafeStr_1876 = _SafeStr_1005._SafeStr_2059(param3);
         this._SafeStr_1757 = _SafeStr_1255._SafeStr_2287(param4);
         this.referenceAngle = _SafeStr_1005.GetAngle() - _SafeStr_1255.GetAngle();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1042 = "_-i4"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1678 = "_-dj"
 * @identifier _SafeStr_1757 = "_-gk"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_1985 = "_-2p"
 * @identifier _SafeStr_2059 = "_-Sf"
 * @identifier _SafeStr_2246 = "_-Vx"
 * @identifier _SafeStr_2287 = "_-65"
 * @identifier _SafeStr_2301 = "_-6K"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2448 = "_-aj"
 */
