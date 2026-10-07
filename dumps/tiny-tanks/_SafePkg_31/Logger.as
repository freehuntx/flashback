package _SafePkg_31
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class Logger
   {
      
      public static const _SafeStr_1860:String = "log";
      
      public static const DEBUG:String = "debug";
      
      public static const _SafeStr_418:String = "info";
      
      public static const _SafeStr_1842:String = "warn";
      
      public static const ERROR:String = "error";
      
      private static const _SafeStr_1323:EventDispatcher = new EventDispatcher();
      
      private static const _SafeStr_722:Dictionary = new Dictionary();
      
      public static var _SafeStr_1292:uint = 5;
      
      _SafeStr_722[ERROR] = 1;
      _SafeStr_722[_SafeStr_1842] = 2;
      _SafeStr_722[_SafeStr_418] = 3;
      _SafeStr_722[_SafeStr_1860] = 4;
      _SafeStr_722[DEBUG] = 5;
      
      private var _name:String;
      
      public function Logger(param1:String)
      {
         super();
         this._name = param1;
      }
      
      public static function _SafeStr_1727(param1:*) : Logger
      {
         var _loc2_:Logger = null;
         var _loc3_:String = getQualifiedClassName(param1);
         if(_loc3_)
         {
            _loc2_ = new Logger(_loc3_);
         }
         return _loc2_;
      }
      
      internal static function _SafeStr_958(param1:String, param2:String, param3:String) : String
      {
         var _loc4_:String = null;
         return param1 + " [" + param2.toUpperCase() + "]: " + param3;
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return _SafeStr_1323.hasEventListener(param1);
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _SafeStr_1323.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _SafeStr_1323.removeEventListener(param1,param2,param3);
      }
      
      public static function dispatchEvent(param1:Event) : Boolean
      {
         return _SafeStr_1323.dispatchEvent(param1);
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function error(... rest) : String
      {
         return this.output.apply(null,[ERROR].concat(rest));
      }
      
      public function warn(... rest) : String
      {
         return this.output.apply(null,[_SafeStr_1842].concat(rest));
      }
      
      public function info(... rest) : String
      {
         return this.output.apply(null,[_SafeStr_418].concat(rest));
      }
      
      public function log(... rest) : String
      {
         return this.output.apply(null,[_SafeStr_1860].concat(rest));
      }
      
      public function debug(... rest) : String
      {
         return this.output.apply(null,[DEBUG].concat(rest));
      }
      
      private function output(param1:String, ... rest) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = rest.join(", ");
         var _loc6_:uint = uint(_SafeStr_722[param1]);
         if(_SafeStr_1292 >= _loc6_)
         {
            _loc4_ = _SafeStr_958(this._name,param1,_loc5_);
            try
            {
               ExternalInterface.call("console." + param1,_loc4_);
            }
            catch(e:Error)
            {
            }
            trace(_loc4_);
            _loc3_ = _loc4_;
            if(hasEventListener(_SafeCls_93._SafeStr_1860))
            {
               dispatchEvent(new _SafeCls_93(_SafeCls_93._SafeStr_1860,this._name,param1,_loc5_));
            }
         }
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_93 = "_-Mi"
 * @identifier _SafePkg_31 = "_-6z"
 * @identifier _SafeStr_418 = "_-Uk"
 * @identifier _SafeStr_722 = "_-MS"
 * @identifier _SafeStr_958 = "_-JV"
 * @identifier _SafeStr_1292 = "_-H2"
 * @identifier _SafeStr_1323 = "_-Q9"
 * @identifier _SafeStr_1727 = "_-e8"
 * @identifier _SafeStr_1842 = "_-hS"
 * @identifier _SafeStr_1860 = "_-FM"
 */
