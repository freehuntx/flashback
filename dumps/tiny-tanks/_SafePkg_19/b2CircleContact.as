package _SafePkg_19
{
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2Fixture;
   import _SafePkg_20.b2Collision;
   import _SafePkg_8.b2CircleShape;
   
   use namespace b2internal;
   
   public class b2CircleContact extends b2Contact
   {
      
      public function b2CircleContact()
      {
         super();
      }
      
      public static function Create(param1:*) : b2Contact
      {
         return new b2CircleContact();
      }
      
      public static function Destroy(param1:b2Contact, param2:*) : void
      {
      }
      
      public function _SafeStr_944(param1:b2Fixture, param2:b2Fixture) : void
      {
         super.b2internal::_SafeStr_944(param1,param2);
      }
      
      override b2internal function _SafeStr_1939() : void
      {
         var _loc1_:b2Body = b2internal::_SafeStr_1281.GetBody();
         var _loc2_:b2Body = b2internal::_SafeStr_384.GetBody();
         b2Collision._SafeStr_1800(b2internal::_SafeStr_1059,b2internal::_SafeStr_1281._SafeStr_745() as b2CircleShape,_loc1_._SafeStr_1473,b2internal::_SafeStr_384._SafeStr_745() as b2CircleShape,_loc2_._SafeStr_1473);
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
 * @identifier _SafeStr_944 = "_-3"
 * @identifier _SafeStr_1059 = "_-c"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1800 = "_-f5"
 * @identifier _SafeStr_1939 = "_-XJ"
 */
