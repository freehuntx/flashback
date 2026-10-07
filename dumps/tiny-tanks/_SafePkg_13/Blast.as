package _SafePkg_13
{
   import _SafePkg_131._SafeCls_130;
   
   public class Blast implements _SafeCls_12
   {
      
      private var _SafeStr_984:uint;
      
      private var _SafeStr_453:Boolean = false;
      
      public function Blast(param1:uint = 0)
      {
         super();
         this._SafeStr_984 = param1;
      }
      
      public function get startCount() : Number
      {
         return this._SafeStr_984;
      }
      
      public function set startCount(param1:Number) : void
      {
         this._SafeStr_984 = param1;
      }
      
      public function stop() : void
      {
      }
      
      public function _SafeStr_868() : void
      {
      }
      
      public function startEmitter(param1:_SafeCls_130) : uint
      {
         this._SafeStr_453 = true;
         param1._SafeStr_1961();
         return this._SafeStr_984;
      }
      
      public function _SafeStr_551(param1:_SafeCls_130, param2:Number) : uint
      {
         return 0;
      }
      
      public function get complete() : Boolean
      {
         return this._SafeStr_453;
      }
      
      public function get running() : Boolean
      {
         return false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-5H"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafePkg_13 = "_-DG"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_453 = "_-3m"
 * @identifier _SafeStr_551 = "_-bk"
 * @identifier _SafeStr_868 = "_-gc"
 * @identifier _SafeStr_984 = "_-N7"
 * @identifier _SafeStr_1961 = "_-Ie"
 */
