package _SafePkg_69
{
   import flash.external.ExternalInterface;
   
   public class _SafeCls_143 implements _SafeCls_127
   {
      
      private var _name:String;
      
      private var _SafeStr_1780:Boolean;
      
      public function _SafeCls_143()
      {
         super();
         this._SafeStr_1780 = false;
         if(this._SafeStr_1347())
         {
            try
            {
               ExternalInterface.call("console.log","");
            }
            catch(e:SecurityError)
            {
               _SafeStr_1780 = true;
            }
         }
      }
      
      public function get available() : Boolean
      {
         return this._SafeStr_1780;
      }
      
      private function _SafeStr_1347() : Boolean
      {
         return ExternalInterface.available;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function log(param1:String) : void
      {
         if(this._SafeStr_1347() && !this._SafeStr_1780)
         {
            ExternalInterface.call("console.log",param1);
         }
      }
      
      public function info(param1:String) : void
      {
         if(this._SafeStr_1347() && !this._SafeStr_1780)
         {
            ExternalInterface.call("console.info",param1);
         }
      }
      
      public function debug(param1:String) : void
      {
         if(this._SafeStr_1347() && !this._SafeStr_1780)
         {
            ExternalInterface.call("console.debug",param1);
         }
      }
      
      public function warn(param1:String) : void
      {
         if(this._SafeStr_1347() && !this._SafeStr_1780)
         {
            ExternalInterface.call("console.warn",param1);
         }
      }
      
      public function error(param1:String) : void
      {
         if(this._SafeStr_1347() && !this._SafeStr_1780)
         {
            ExternalInterface.call("console.error",param1);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_127 = "_-V4"
 * @identifier _SafeCls_143 = "_-be"
 * @identifier _SafePkg_69 = "_-Dw"
 * @identifier _SafeStr_1347 = "_-T5"
 * @identifier _SafeStr_1780 = "_-e0"
 */
