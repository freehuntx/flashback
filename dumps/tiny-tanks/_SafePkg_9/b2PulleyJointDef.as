package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   
   use namespace b2internal;
   
   public class b2PulleyJointDef extends b2JointDef
   {
      
      public var _SafeStr_1331:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_394:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1627:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1876:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1632:Number;
      
      public var _SafeStr_1304:Number;
      
      public var _SafeStr_1873:Number;
      
      public var _SafeStr_950:Number;
      
      public var _SafeStr_2548:Number;
      
      public function b2PulleyJointDef()
      {
         super();
         type = b2Joint._SafeStr_803;
         this._SafeStr_1331.Set(-1,1);
         this._SafeStr_394.Set(1,1);
         this._SafeStr_1627.Set(-1,0);
         this._SafeStr_1876.Set(1,0);
         this._SafeStr_1632 = 0;
         this._SafeStr_1304 = 0;
         this._SafeStr_1873 = 0;
         this._SafeStr_950 = 0;
         this._SafeStr_2548 = 1;
         _SafeStr_627 = true;
      }
      
      public function _SafeStr_2347(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2, param5:b2Vec2, param6:b2Vec2, param7:Number) : void
      {
         _SafeStr_1255 = param1;
         _SafeStr_1005 = param2;
         this._SafeStr_1331._SafeStr_1679(param3);
         this._SafeStr_394._SafeStr_1679(param4);
         this._SafeStr_1627 = _SafeStr_1255._SafeStr_2059(param5);
         this._SafeStr_1876 = _SafeStr_1005._SafeStr_2059(param6);
         var _loc8_:Number = param5.x - param3.x;
         var _loc9_:Number = param5.y - param3.y;
         this._SafeStr_1632 = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         var _loc10_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         this._SafeStr_1873 = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
         this._SafeStr_2548 = param7;
         var _loc12_:Number = this._SafeStr_1632 + this._SafeStr_2548 * this._SafeStr_1873;
         this._SafeStr_1304 = _loc12_ - this._SafeStr_2548 * b2PulleyJoint.b2_minPulleyLength;
         this._SafeStr_950 = (_loc12_ - b2PulleyJoint.b2_minPulleyLength) / this._SafeStr_2548;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_394 = "_-ZG"
 * @identifier _SafeStr_627 = "_-7M"
 * @identifier _SafeStr_803 = "_-X3"
 * @identifier _SafeStr_950 = "_-QE"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1304 = "_-EH"
 * @identifier _SafeStr_1331 = "_-Un"
 * @identifier _SafeStr_1627 = "_-Au"
 * @identifier _SafeStr_1632 = "_-Iy"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1873 = "_-Va"
 * @identifier _SafeStr_1876 = "_-J0"
 * @identifier _SafeStr_2059 = "_-Sf"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2548 = "_-Fx"
 */
