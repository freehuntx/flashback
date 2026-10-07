package _SafePkg_3
{
   public class _SafeCls_36
   {
      
      public var getValue:Function;
      
      public var setValue:Function;
      
      public var parameters:Array;
      
      public var preProcess:Function;
      
      public function _SafeCls_36(param1:Function, param2:Function, param3:Array = null, param4:Function = null)
      {
         super();
         this.getValue = param1;
         this.setValue = param2;
         this.parameters = param3;
         this.preProcess = param4;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         _loc1_ += "[SpecialProperty ";
         _loc1_ += "getValue:" + String(this.getValue);
         _loc1_ += ", ";
         _loc1_ += "setValue:" + String(this.setValue);
         _loc1_ += ", ";
         _loc1_ += "parameters:" + String(this.parameters);
         _loc1_ += ", ";
         _loc1_ += "preProcess:" + String(this.preProcess);
         return _loc1_ + "]";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_36 = "_-DC"
 * @identifier _SafePkg_3 = "_-7L"
 */
