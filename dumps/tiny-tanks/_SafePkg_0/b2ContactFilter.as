package _SafePkg_0
{
   import Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactFilter
   {
      
      b2internal static var b2_defaultFilter:b2ContactFilter = new b2ContactFilter();
      
      public function b2ContactFilter()
      {
         super();
      }
      
      public function _SafeStr_2094(param1:b2Fixture, param2:b2Fixture) : Boolean
      {
         var _loc3_:b2FilterData = param1._SafeStr_1423();
         var _loc4_:b2FilterData = param2._SafeStr_1423();
         if(_loc3_._SafeStr_1100 == _loc4_._SafeStr_1100 && _loc3_._SafeStr_1100 != 0)
         {
            return _loc3_._SafeStr_1100 > 0;
         }
         return (_loc3_.maskBits & _loc4_.categoryBits) != 0 && (_loc3_.categoryBits & _loc4_.maskBits) != 0;
      }
      
      public function _SafeStr_2385(param1:*, param2:b2Fixture) : Boolean
      {
         if(!param1)
         {
            return true;
         }
         return this._SafeStr_2094(param1 as b2Fixture,param2);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_1100 = "_-aD"
 * @identifier _SafeStr_1423 = "_-4v"
 * @identifier _SafeStr_2094 = "_-5Z"
 * @identifier _SafeStr_2385 = "_-1n"
 */
