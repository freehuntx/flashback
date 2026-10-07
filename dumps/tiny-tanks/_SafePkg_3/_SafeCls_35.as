package _SafePkg_3
{
   public class _SafeCls_35
   {
      
      public var parameters:Array;
      
      public var splitValues:Function;
      
      public function _SafeCls_35(param1:Function, param2:Array)
      {
         super();
         this.splitValues = param1;
         this.parameters = param2;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         _loc1_ += "[SpecialPropertySplitter ";
         _loc1_ += "splitValues:" + String(this.splitValues);
         _loc1_ += ", ";
         _loc1_ += "parameters:" + String(this.parameters);
         return _loc1_ + "]";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_35 = "_-JS"
 * @identifier _SafePkg_3 = "_-7L"
 */
