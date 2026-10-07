package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
      
      public var _SafeStr_1627:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1876:b2Vec2 = new b2Vec2();
      
      public var referenceAngle:Number;
      
      public var _SafeStr_2301:Boolean;
      
      public var lowerAngle:Number;
      
      public var upperAngle:Number;
      
      public var _SafeStr_2246:Boolean;
      
      public var motorSpeed:Number;
      
      public var _SafeStr_1457:Number;
      
      public function b2RevoluteJointDef()
      {
         super();
         type = b2Joint._SafeStr_2374;
         this._SafeStr_1627.Set(0,0);
         this._SafeStr_1876.Set(0,0);
         this.referenceAngle = 0;
         this.lowerAngle = 0;
         this.upperAngle = 0;
         this._SafeStr_1457 = 0;
         this.motorSpeed = 0;
         this._SafeStr_2301 = false;
         this._SafeStr_2246 = false;
      }
      
      public function _SafeStr_2347(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         _SafeStr_1255 = param1;
         _SafeStr_1005 = param2;
         this._SafeStr_1627 = _SafeStr_1255._SafeStr_2059(param3);
         this._SafeStr_1876 = _SafeStr_1005._SafeStr_2059(param3);
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
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1457 = "_-SO"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_2059 = "_-Sf"
 * @identifier _SafeStr_2246 = "_-Vx"
 * @identifier _SafeStr_2301 = "_-6K"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2374 = "_-ib"
 */
