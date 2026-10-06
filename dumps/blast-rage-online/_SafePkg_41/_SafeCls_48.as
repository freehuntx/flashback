package _SafePkg_41
{
   public class _SafeCls_48
   {
      
      private var _SafeStr_468:int;
      
      private var _SafeStr_448:int;
      
      public var min:int;
      
      public var max:int;
      
      public var _SafeStr_476:int;
      
      public var _SafeStr_409:int;
      
      public function _SafeCls_48(param1:int, param2:int, param3:int = -2147483648, param4:int = 2147483647)
      {
         super();
         this.min = param3;
         this.max = param4;
         this._SafeStr_468 = param1;
         this._SafeStr_448 = param2;
         this._SafeStr_476 = this._SafeStr_468;
         this._SafeStr_409 = this._SafeStr_448;
      }
      
      public function set x(param1:int) : void
      {
         if(param1 < this.max)
         {
            if(param1 > this.min)
            {
               this._SafeStr_468 = param1;
            }
            else
            {
               this._SafeStr_468 = this.min;
            }
         }
         else
         {
            this._SafeStr_468 = this.max;
         }
      }
      
      public function get x() : int
      {
         return this._SafeStr_468;
      }
      
      public function set y(param1:int) : void
      {
         if(param1 < this.max)
         {
            if(param1 > this.min)
            {
               this._SafeStr_448 = param1;
            }
            else
            {
               this._SafeStr_448 = this.min;
            }
         }
         else
         {
            this._SafeStr_448 = this.max;
         }
      }
      
      public function get y() : int
      {
         return this._SafeStr_448;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_48 = "@C"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_409 = "9G"
 * @identifier _SafeStr_448 = "1I"
 * @identifier _SafeStr_468 = "8R"
 * @identifier _SafeStr_476 = "=&"
 */
