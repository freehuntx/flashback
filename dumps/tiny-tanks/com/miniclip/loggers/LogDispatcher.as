package com.miniclip.loggers
{
   public class LogDispatcher implements Logger
   {
      
      private var _name:String;
      
      private var _level:_SafeCls_65;
      
      private var _SafeStr_2192:Array;
      
      public function LogDispatcher(param1:String, param2:_SafeCls_65 = null)
      {
         super();
         if(param2 == null)
         {
            param2 = _SafeCls_65.everything;
         }
         this._name = param1;
         this._level = param2;
         this.removeAll();
      }
      
      private function _SafeStr_820(param1:_SafeCls_62) : void
      {
         var _loc2_:int = int(this._SafeStr_2192.indexOf(param1));
         if(_loc2_ == -1)
         {
            this._SafeStr_2192.push(param1);
         }
      }
      
      private function _SafeStr_1058(param1:_SafeCls_62) : void
      {
         var _loc2_:int = int(this._SafeStr_2192.indexOf(param1));
         if(_loc2_ > -1)
         {
            this._SafeStr_2192.splice(_loc2_,1);
         }
      }
      
      private function _SafeStr_949(param1:String) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:_SafeCls_62 = null;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2192.length)
         {
            _loc3_ = this._SafeStr_2192[_loc2_];
            if(_loc3_.name == param1)
            {
               this._SafeStr_2192.splice(_loc2_,1);
            }
            _loc2_++;
         }
      }
      
      private function _SafeStr_514(param1:String, param2:String = "") : void
      {
         var _loc3_:uint = 0;
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_2192.length)
         {
            this._SafeStr_2192[_loc3_][param1](param2);
            _loc3_++;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function log(param1:String) : void
      {
         LogsHandler.log(param1);
      }
      
      public function info(param1:String) : void
      {
         LogsHandler.info(param1);
      }
      
      public function debug(param1:String) : void
      {
         LogsHandler.debug(param1);
      }
      
      public function warn(param1:String) : void
      {
         LogsHandler.warn(param1);
      }
      
      public function error(param1:String) : void
      {
         LogsHandler.error(param1);
      }
      
      public function add(... rest) : void
      {
         var _loc2_:* = undefined;
         for each(_loc2_ in rest)
         {
            if(_loc2_ is _SafeCls_62)
            {
               LogsHandler._SafeStr_2191(_loc2_);
            }
         }
      }
      
      public function remove(... rest) : void
      {
      }
      
      public function _SafeStr_1327(... rest) : void
      {
      }
      
      public function removeAll() : void
      {
      }
      
      public function get level() : _SafeCls_65
      {
         return this._level;
      }
      
      public function set level(param1:_SafeCls_65) : void
      {
         this._level = param1;
      }
      
      public function get length() : uint
      {
         return 0;
      }
      
      public function get list() : Array
      {
         return [];
      }
      
      public function get listByName() : Array
      {
         return [];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_62 = "_-7p"
 * @identifier _SafeCls_65 = "_-Pd"
 * @identifier _SafeStr_514 = "_-F4"
 * @identifier _SafeStr_820 = "_-ej"
 * @identifier _SafeStr_949 = "_-je"
 * @identifier _SafeStr_1058 = "_-cV"
 * @identifier _SafeStr_1327 = "_-EJ"
 * @identifier _SafeStr_2191 = "_-4C"
 * @identifier _SafeStr_2192 = "_-AV"
 */
