package _SafePkg_20
{
   public class b2DynamicTreeNode
   {
      
      public var userData:*;
      
      public var aabb:b2AABB = new b2AABB();
      
      public var parent:b2DynamicTreeNode;
      
      public var child1:b2DynamicTreeNode;
      
      public var child2:b2DynamicTreeNode;
      
      public function b2DynamicTreeNode()
      {
         super();
      }
      
      public function _SafeStr_1420() : Boolean
      {
         return this.child1 == null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_1420 = "_-4T"
 */
