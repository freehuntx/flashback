package com.miniclip.loggers
{
   import _SafePkg_69._SafeCls_68;
   import flash.utils.getDefinitionByName;
   
   public class LogsHandler
   {
      
      private static var _SafeStr_2126:Array;
      
      private static var instance:LogsHandler;
      
      private static var appDoaminId:String = "";
      
      private var entryIndex:int = -1;
      
      private var _SafeStr_1422:Vector.<_SafeCls_62>;
      
      private var filter:Vector.<String>;
      
      public function LogsHandler(param1:Lock)
      {
         var _loc2_:* = undefined;
         super();
         if(param1)
         {
            this._SafeStr_1261();
            this.entryIndex = -1;
            this._SafeStr_2599();
            if(Boolean(_SafeStr_2126) && _SafeStr_2126.length > 0)
            {
               if(!this.filter)
               {
                  this.filter = new Vector.<String>();
               }
               for each(_loc2_ in _SafeStr_2126)
               {
                  this.filter.push(String(_loc2_));
               }
            }
            return;
         }
         throw new Error("You don\'t have permission to call this constructor");
      }
      
      public static function addFilter(param1:String) : void
      {
         if(!instance.filter)
         {
            instance.filter = new Vector.<String>();
         }
         instance.filter.push(param1);
      }
      
      public static function _SafeStr_997() : void
      {
         instance.filter = null;
      }
      
      public static function _SafeStr_2191(param1:_SafeCls_62) : void
      {
         instance._SafeStr_1422.push(param1);
      }
      
      public static function _SafeStr_2206(param1:_SafeCls_62) : void
      {
         instance._SafeStr_1422.splice(instance._SafeStr_1422.indexOf(param1),1);
      }
      
      public static function log(param1:*, ... rest) : void
      {
         if(!instance)
         {
            instance = new LogsHandler(new Lock());
         }
         rest.unshift(param1);
         instance._SafeStr_686.apply(instance,rest);
      }
      
      public static function debug(param1:*, ... rest) : void
      {
         rest.unshift(param1);
         LogsHandler.log.apply(null,rest);
      }
      
      public static function error(param1:*, ... rest) : void
      {
         rest.unshift(param1);
         LogsHandler.log.apply(null,rest);
      }
      
      public static function _SafeStr_2649(param1:*, ... rest) : void
      {
         rest.unshift(param1);
         LogsHandler.log.apply(null,rest);
      }
      
      public static function info(param1:*, ... rest) : void
      {
         rest.unshift(param1);
         LogsHandler.log.apply(null,rest);
      }
      
      public static function warn(param1:*, ... rest) : void
      {
         rest.unshift(param1);
         LogsHandler.log.apply(null,rest);
      }
      
      public function _SafeStr_686(param1:*, ... rest) : void
      {
         var entryLog:String = null;
         var arg0:* = param1;
         entryLog = this._SafeStr_1633(arg0);
         var broadcast:Boolean = false;
         while(rest.length > 0)
         {
            entryLog += "\r\t" + this._SafeStr_1633(rest.shift());
         }
         if(!instance.filter)
         {
            broadcast = true;
         }
         else
         {
            instance.filter.some(function myFunction(param1:String, param2:int, param3:Vector.<String>):Boolean
            {
               if(entryLog.indexOf(param1) >= 0)
               {
                  broadcast = true;
                  return true;
               }
               return false;
            });
         }
         if(broadcast)
         {
            this._SafeStr_1717(entryLog);
         }
      }
      
      private function _SafeStr_2599() : void
      {
         var _loc1_:Class = null;
         this._SafeStr_1422 = new Vector.<_SafeCls_62>();
         for each(_loc1_ in _SafeCls_68._SafeStr_1422)
         {
            this._SafeStr_1422.push(new _loc1_());
         }
      }
      
      private function _SafeStr_1717(param1:String) : void
      {
         var msg:String = param1;
         ++this.entryIndex;
         this._SafeStr_1422.forEach(function(param1:_SafeCls_62, param2:int, param3:Vector.<_SafeCls_62>):void
         {
            if(param1)
            {
               param1.log(appDoaminId + String(entryIndex) + ":\r\t" + msg);
            }
         });
      }
      
      private function _SafeStr_1633(param1:*) : String
      {
         if(param1 is String)
         {
            return param1;
         }
         if(!isNaN(param1))
         {
            return String(param1);
         }
         if(Boolean(param1) && Boolean(param1["toString"]) && param1["toString"] is Function)
         {
            return param1["toString"]();
         }
         return String(param1);
      }
      
      private function _SafeStr_1261() : void
      {
         var info:* = undefined;
         try
         {
            info = getDefinitionByName("info.AppDomainID");
            appDoaminId = "[" + info["ID"] + "] ";
         }
         catch(er:Error)
         {
            appDoaminId = "";
         }
      }
   }
}

class Lock
{
   
   public function Lock()
   {
      super();
   }
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_62 = "_-7p"
 * @identifier _SafeCls_68 = "_-AZ"
 * @identifier _SafePkg_69 = "_-Dw"
 * @identifier _SafeStr_686 = "_-60"
 * @identifier _SafeStr_997 = "_-7j"
 * @identifier _SafeStr_1261 = "_-bj"
 * @identifier _SafeStr_1422 = "_-HP"
 * @identifier _SafeStr_1633 = "_-I8"
 * @identifier _SafeStr_1717 = "_-i2"
 * @identifier _SafeStr_2126 = "_-ff"
 * @identifier _SafeStr_2191 = "_-4C"
 * @identifier _SafeStr_2206 = "_-2B"
 * @identifier _SafeStr_2599 = "_-P"
 * @identifier _SafeStr_2649 = "_-jD"
 */
