package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2Joint
   {
      
      b2internal static const _SafeStr_1493:int = 0;
      
      b2internal static const _SafeStr_2374:int = 1;
      
      b2internal static const _SafeStr_1678:int = 2;
      
      b2internal static const _SafeStr_1330:int = 3;
      
      b2internal static const _SafeStr_803:int = 4;
      
      b2internal static const _SafeStr_2040:int = 5;
      
      b2internal static const _SafeStr_2225:int = 6;
      
      b2internal static const _SafeStr_617:int = 7;
      
      b2internal static const _SafeStr_1351:int = 8;
      
      b2internal static const _SafeStr_1494:int = 9;
      
      b2internal static const _SafeStr_397:int = 10;
      
      b2internal static const _SafeStr_1946:int = 0;
      
      b2internal static const _SafeStr_1017:int = 1;
      
      b2internal static const _SafeStr_2351:int = 2;
      
      b2internal static const _SafeStr_1905:int = 3;
      
      b2internal var _SafeStr_972:int;
      
      b2internal var _SafeStr_2380:b2Joint;
      
      b2internal var _SafeStr_2195:b2Joint;
      
      b2internal var _SafeStr_864:b2JointEdge = new b2JointEdge();
      
      b2internal var _SafeStr_2349:b2JointEdge = new b2JointEdge();
      
      b2internal var _SafeStr_496:b2Body;
      
      b2internal var _SafeStr_907:b2Body;
      
      b2internal var _SafeStr_2407:Boolean;
      
      b2internal var _SafeStr_643:Boolean;
      
      private var _SafeStr_961:*;
      
      b2internal var _SafeStr_664:b2Vec2 = new b2Vec2();
      
      b2internal var _SafeStr_266:b2Vec2 = new b2Vec2();
      
      b2internal var _SafeStr_1267:Number;
      
      b2internal var _SafeStr_2043:Number;
      
      b2internal var _SafeStr_2629:Number;
      
      b2internal var _SafeStr_557:Number;
      
      public function b2Joint(param1:b2JointDef)
      {
         super();
         b2Settings.b2Assert(param1._SafeStr_1255 != param1._SafeStr_1005);
         this._SafeStr_972 = param1.type;
         this._SafeStr_2380 = null;
         this._SafeStr_2195 = null;
         this._SafeStr_496 = param1._SafeStr_1255;
         this._SafeStr_907 = param1._SafeStr_1005;
         this._SafeStr_643 = param1._SafeStr_627;
         this._SafeStr_2407 = false;
         this._SafeStr_961 = param1.userData;
      }
      
      b2internal static function Create(param1:b2JointDef, param2:*) : b2Joint
      {
         var _loc3_:b2Joint = null;
         switch(param1.type)
         {
            case b2internal::_SafeStr_1330:
               _loc3_ = new b2DistanceJoint(param1 as b2DistanceJointDef);
               break;
            case b2internal::_SafeStr_2040:
               _loc3_ = new b2MouseJoint(param1 as b2MouseJointDef);
               break;
            case b2internal::_SafeStr_1678:
               _loc3_ = new b2PrismaticJoint(param1 as b2PrismaticJointDef);
               break;
            case b2internal::_SafeStr_2374:
               _loc3_ = new b2RevoluteJoint(param1 as b2RevoluteJointDef);
               break;
            case b2internal::_SafeStr_803:
               _loc3_ = new b2PulleyJoint(param1 as b2PulleyJointDef);
               break;
            case b2internal::_SafeStr_2225:
               _loc3_ = new b2GearJoint(param1 as b2GearJointDef);
               break;
            case b2internal::_SafeStr_617:
               _loc3_ = new b2LineJoint(param1 as b2LineJointDef);
               break;
            case b2internal::_SafeStr_1351:
               _loc3_ = new b2WeldJoint(param1 as b2WeldJointDef);
               break;
            case b2internal::_SafeStr_1494:
               _loc3_ = new b2FrictionJoint(param1 as b2FrictionJointDef);
               break;
            case b2internal::_SafeStr_397:
               _loc3_ = new b2RopeJoint(param1 as b2RopeJointDef);
         }
         return _loc3_;
      }
      
      b2internal static function Destroy(param1:b2Joint, param2:*) : void
      {
      }
      
      public function _SafeStr_978() : int
      {
         return this._SafeStr_972;
      }
      
      public function _SafeStr_2153() : b2Vec2
      {
         return null;
      }
      
      public function _SafeStr_2506() : b2Vec2
      {
         return null;
      }
      
      public function _SafeStr_600(param1:Number) : b2Vec2
      {
         return null;
      }
      
      public function _SafeStr_2643(param1:Number) : Number
      {
         return 0;
      }
      
      public function _SafeStr_1576() : b2Body
      {
         return this._SafeStr_496;
      }
      
      public function _SafeStr_1887() : b2Body
      {
         return this._SafeStr_907;
      }
      
      public function _SafeStr_1023() : b2Joint
      {
         return this._SafeStr_2195;
      }
      
      public function GetUserData() : *
      {
         return this._SafeStr_961;
      }
      
      public function SetUserData(param1:*) : void
      {
         this._SafeStr_961 = param1;
      }
      
      public function _SafeStr_1861() : Boolean
      {
         return this._SafeStr_496._SafeStr_1861() && this._SafeStr_907._SafeStr_1861();
      }
      
      b2internal function _SafeStr_849(param1:b2TimeStep) : void
      {
      }
      
      b2internal function _SafeStr_1028(param1:b2TimeStep) : void
      {
      }
      
      b2internal function _SafeStr_938() : void
      {
      }
      
      b2internal function _SafeStr_547(param1:Number) : Boolean
      {
         return false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_266 = "_-4Z"
 * @identifier _SafeStr_397 = "_-iY"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_547 = "_-er"
 * @identifier _SafeStr_557 = "_-B7"
 * @identifier _SafeStr_600 = "_-dy"
 * @identifier _SafeStr_617 = "_-La"
 * @identifier _SafeStr_627 = "_-7M"
 * @identifier _SafeStr_643 = "_-52"
 * @identifier _SafeStr_664 = "_-N3"
 * @identifier _SafeStr_803 = "_-X3"
 * @identifier _SafeStr_849 = "_-Xm"
 * @identifier _SafeStr_864 = "_-7e"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_938 = "_-Dg"
 * @identifier _SafeStr_961 = "_-8N"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1017 = "_-OZ"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1028 = "_-AA"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1267 = "_-Wm"
 * @identifier _SafeStr_1330 = "_-TX"
 * @identifier _SafeStr_1351 = "_-Ly"
 * @identifier _SafeStr_1493 = "_-Ya"
 * @identifier _SafeStr_1494 = "_-Rw"
 * @identifier _SafeStr_1576 = "_-dP"
 * @identifier _SafeStr_1678 = "_-dj"
 * @identifier _SafeStr_1861 = "_-Mb"
 * @identifier _SafeStr_1887 = "_-WI"
 * @identifier _SafeStr_1905 = "_-OR"
 * @identifier _SafeStr_1946 = "_-Gf"
 * @identifier _SafeStr_2040 = "_-fn"
 * @identifier _SafeStr_2043 = "_-ME"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2225 = "_-Rd"
 * @identifier _SafeStr_2349 = "_-Jp"
 * @identifier _SafeStr_2351 = "_-Vc"
 * @identifier _SafeStr_2374 = "_-ib"
 * @identifier _SafeStr_2380 = "_-36"
 * @identifier _SafeStr_2407 = "_-IV"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2629 = "_-Nz"
 * @identifier _SafeStr_2643 = "_-Y6"
 */
