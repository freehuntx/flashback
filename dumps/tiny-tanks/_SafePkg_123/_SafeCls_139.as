package _SafePkg_123
{
   import com.miniclip.gamemanager._SafeCls_80;
   import com.miniclip.loggers.LogsHandler;
   import flash.events.EventDispatcher;
   
   public class _SafeCls_139 extends EventDispatcher implements _SafeCls_80
   {
      
      private var _data:Object;
      
      private var _SafeStr_2444:Boolean;
      
      public function _SafeCls_139()
      {
         super();
         this._data = {};
         this._SafeStr_2444 = false;
      }
      
      public function get notifications() : Boolean
      {
         return this._SafeStr_2444;
      }
      
      public function set notifications(param1:Boolean) : void
      {
         this._SafeStr_2444 = param1;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function get _SafeStr_717() : uint
      {
         return 1024;
      }
      
      public function load() : void
      {
         LogsHandler.info("storage.load()");
      }
      
      public function save() : void
      {
         LogsHandler.info("storage.save()");
      }
   }
}

import _SafePkg_85._SafeCls_105;

_SafeCls_105;


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_80 = "_-TZ"
 * @identifier _SafeCls_105 = "_-QG"
 * @identifier _SafeCls_139 = "_-Ec"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_717 = "_-5p"
 * @identifier _SafeStr_2444 = "_-Db"
 */
