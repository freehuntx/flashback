package _SafePkg_8
{
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_20.b2AABB;
   import _SafePkg_20.b2Distance;
   import _SafePkg_20.b2DistanceInput;
   import _SafePkg_20.b2DistanceOutput;
   import _SafePkg_20.b2DistanceProxy;
   import _SafePkg_20.b2RayCastInput;
   import _SafePkg_20.b2RayCastOutput;
   import _SafePkg_20.b2SimplexCache;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const _SafeStr_1413:int = -1;
      
      b2internal static const _SafeStr_695:int = 0;
      
      b2internal static const _SafeStr_1854:int = 1;
      
      b2internal static const _SafeStr_891:int = 2;
      
      b2internal static const _SafeStr_1128:int = 3;
      
      public static const _SafeStr_1226:int = 1;
      
      public static const _SafeStr_1458:int = 0;
      
      public static const _SafeStr_2457:int = -1;
      
      b2internal var _SafeStr_972:int;
      
      b2internal var _SafeStr_874:Number;
      
      public function b2Shape()
      {
         super();
         this._SafeStr_972 = b2internal::_SafeStr_1413;
         this._SafeStr_874 = b2Settings.b2_linearSlop;
      }
      
      public static function _SafeStr_444(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput = new b2DistanceInput();
         _loc5_._SafeStr_1619 = new b2DistanceProxy();
         _loc5_._SafeStr_1619.Set(param1);
         _loc5_._SafeStr_1814 = new b2DistanceProxy();
         _loc5_._SafeStr_1814.Set(param3);
         _loc5_._SafeStr_2032 = param2;
         _loc5_._SafeStr_2350 = param4;
         _loc5_._SafeStr_951 = true;
         var _loc6_:b2SimplexCache = new b2SimplexCache();
         _loc6_.count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.Distance(_loc7_,_loc6_,_loc5_);
         return _loc7_.distance < 10 * Number.MIN_VALUE;
      }
      
      public function _SafeStr_2396() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this._SafeStr_874 = param1._SafeStr_874;
      }
      
      public function _SafeStr_978() : int
      {
         return this._SafeStr_972;
      }
      
      public function _SafeStr_1865(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         return false;
      }
      
      public function _SafeStr_2297(param1:b2AABB, param2:b2Transform) : void
      {
      }
      
      public function _SafeStr_1244(param1:b2MassData, param2:Number) : void
      {
      }
      
      public function _SafeStr_662(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         return 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_444 = "_-86"
 * @identifier _SafeStr_662 = "_-5X"
 * @identifier _SafeStr_695 = "_-Dy"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_891 = "_-dp"
 * @identifier _SafeStr_951 = "_-8S"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1128 = "_-Fc"
 * @identifier _SafeStr_1226 = "_-af"
 * @identifier _SafeStr_1244 = "_-cm"
 * @identifier _SafeStr_1413 = "_-9L"
 * @identifier _SafeStr_1458 = "_-2Z"
 * @identifier _SafeStr_1619 = "_-4F"
 * @identifier _SafeStr_1814 = "_-FJ"
 * @identifier _SafeStr_1854 = "_-4p"
 * @identifier _SafeStr_1865 = "_-aW"
 * @identifier _SafeStr_2032 = "_-iF"
 * @identifier _SafeStr_2297 = "_-5a"
 * @identifier _SafeStr_2350 = "_-FY"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2457 = "_-8r"
 */
