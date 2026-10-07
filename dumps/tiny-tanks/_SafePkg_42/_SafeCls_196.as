package _SafePkg_42
{
   import flash.display.Loader;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.setTimeout;
   
   public class _SafeCls_196 extends Loader
   {
      
      private var _SafeStr_876:uint;
      
      private var _SafeStr_419:uint;
      
      private var _request:URLRequest;
      
      private var _SafeStr_275:LoaderContext;
      
      private var _SafeStr_1849:uint;
      
      public function _SafeCls_196(param1:uint = 3)
      {
         super();
         super.contentLoaderInfo.addEventListener("securityError",_SafeStr_2014,false,Infinity);
         _SafeStr_876 = param1;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         _SafeStr_419 = _SafeStr_876;
         _request = param1;
         _SafeStr_275 = param2;
         _SafeStr_1849 = 200;
         loadRequest();
      }
      
      private function _SafeStr_2014(param1:SecurityErrorEvent) : void
      {
         if(_SafeStr_876)
         {
            _SafeStr_876 = _SafeStr_876 - 1;
            setTimeout(loadRequest,_SafeStr_1849);
            param1.stopImmediatePropagation();
            _SafeStr_1849 *= 2;
         }
      }
      
      private function loadRequest() : void
      {
         super.load(_request,_SafeStr_275);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_196 = "_-CI"
 * @identifier _SafePkg_42 = "_-fg"
 * @identifier _SafeStr_275 = "_-Wn"
 * @identifier _SafeStr_419 = "_-9X"
 * @identifier _SafeStr_876 = "_-2u"
 * @identifier _SafeStr_1849 = "_-Lm"
 * @identifier _SafeStr_2014 = "_-6P"
 */
