package _SafePkg_19
{
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.b2Settings;
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2Fixture;
   import _SafePkg_20.b2Manifold;
   import _SafePkg_8.b2EdgeShape;
   import _SafePkg_8.b2PolygonShape;
   import _SafePkg_8.b2Shape;
   
   use namespace b2internal;
   
   public class b2PolyAndEdgeContact extends b2Contact
   {
      
      public function b2PolyAndEdgeContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2PolyAndEdgeContact();
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : void
      {
      }
      
      public function _SafeStr_944(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.b2internal::_SafeStr_944(param1,param2);
         b2Settings.b2Assert(param1._SafeStr_978() == b2Shape._SafeStr_1854);
         b2Settings.b2Assert(param2._SafeStr_978() == b2Shape._SafeStr_891);
      }
      
      override b2internal function _SafeStr_1939() : void
      {
         var _loc1_:b2Body = b2internal::_SafeStr_1281.GetBody();
         var _loc2_:b2Body = b2internal::_SafeStr_384.GetBody();
         this.b2CollidePolyAndEdge(b2internal::_SafeStr_1059,b2internal::_SafeStr_1281._SafeStr_745() as b2PolygonShape,_loc1_._SafeStr_1473,b2internal::_SafeStr_384._SafeStr_745() as b2EdgeShape,_loc2_._SafeStr_1473);
      }
      
      private function b2CollidePolyAndEdge(param1:b2Manifold, param2:b2PolygonShape, param3:b2Transform, param4:b2EdgeShape, param5:b2Transform) : void
      {
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_384 = "_-Wi"
 * @identifier _SafeStr_745 = "_-KP"
 * @identifier _SafeStr_891 = "_-dp"
 * @identifier _SafeStr_944 = "_-3"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1059 = "_-c"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1854 = "_-4p"
 * @identifier _SafeStr_1939 = "_-XJ"
 */
