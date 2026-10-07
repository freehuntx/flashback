package _SafePkg_123
{
   import _SafePkg_85._SafeCls_103;
   import com.miniclip.gamemanager._SafeCls_75;
   import flash.events.EventDispatcher;
   
   public class _SafeCls_137 extends EventDispatcher implements _SafeCls_75
   {
      
      public function _SafeCls_137()
      {
         super();
      }
      
      public function init() : void
      {
         dispatchEvent(new _SafeCls_103(_SafeCls_103._SafeStr_448));
      }
      
      public function getWordsBeginning(param1:String) : Array
      {
         var _loc2_:Array = new Array();
         _loc2_.push(param1);
         return _loc2_;
      }
      
      public function getFirstWordBeginning(param1:String) : String
      {
         return param1;
      }
      
      public function _SafeStr_1197(param1:String) : Boolean
      {
         return true;
      }
      
      public function _SafeStr_980(param1:int, param2:Array) : void
      {
         dispatchEvent(new _SafeCls_103(_SafeCls_103._SafeStr_1433));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_75 = "_-Z3"
 * @identifier _SafeCls_103 = "_-OX"
 * @identifier _SafeCls_137 = "_-Uh"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_448 = "_-ZQ"
 * @identifier _SafeStr_980 = "_-W7"
 * @identifier _SafeStr_1197 = "_-Fo"
 * @identifier _SafeStr_1433 = "_-E2"
 */
