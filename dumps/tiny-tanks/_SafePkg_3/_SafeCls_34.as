package _SafePkg_3
{
   public class _SafeCls_34
   {
      
      public var modifyValues:Function;
      
      public var getValue:Function;
      
      public function _SafeCls_34(param1:Function, param2:Function)
      {
         super();
         this.modifyValues = param1;
         this.getValue = param2;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         _loc1_ += "[SpecialPropertyModifier ";
         _loc1_ += "modifyValues:" + String(this.modifyValues);
         _loc1_ += ", ";
         _loc1_ += "getValue:" + String(this.getValue);
         return _loc1_ + "]";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_34 = "_-PA"
 * @identifier _SafePkg_3 = "_-7L"
 */
