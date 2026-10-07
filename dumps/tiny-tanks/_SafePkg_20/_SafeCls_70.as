package _SafePkg_20
{
   import Box2D.Common.Math.b2Vec2;
   
   public class _SafeCls_70
   {
      
      public var v:b2Vec2 = new b2Vec2();
      
      public var id:b2ContactID = new b2ContactID();
      
      public function _SafeCls_70()
      {
         super();
      }
      
      public function Set(param1:_SafeCls_70) : void
      {
         this.v._SafeStr_1679(param1.v);
         this.id.Set(param1.id);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_70 = "_-UO"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_1679 = "_-MI"
 */
