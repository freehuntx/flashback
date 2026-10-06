package _SafePkg_8
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class _SafeCls_79 extends EventDispatcher
   {
      
      public static const _SafeStr_209:String = "xgen.users.authenticate";
      
      public static const _SafeStr_180:String = "xgen.users.add";
      
      public static const _SafeStr_272:String = "xgen.stats.submit";
      
      public static const _SafeStr_277:String = "xgen.stats.get";
      
      public static const _SafeStr_281:String = "xgen.stats.get";
      
      protected var loader:URLLoader;
      
      protected var _SafeStr_904:String;
      
      protected var username:String;
      
      protected var password:String;
      
      protected var _SafeStr_561:String;
      
      protected var value:int;
      
      public function _SafeCls_79(param1:String, param2:String, param3:String = null, param4:String = null, param5:String = null, param6:int = 0, param7:String = null)
      {
         super();
         this._SafeStr_904 = param1;
         this.username = param2;
         this.password = param3;
         this._SafeStr_561 = param5;
         this.value = param6;
         var _loc8_:String = "http://api.xgenstudios.com/?method=" + param1 + "&username=" + param2;
         if(param3)
         {
            _loc8_ += "&password=" + param3;
         }
         if(param4)
         {
            _loc8_ += "&game_id=" + param4;
         }
         if(param5)
         {
            _loc8_ += "&stat_id=" + param5 + "&value=" + param6;
         }
         if(param7)
         {
            _loc8_ += "&email_address=" + param7;
         }
         var _loc9_:URLRequest = new URLRequest(_loc8_);
         this.loader = new URLLoader(_loc9_);
         this.loader.addEventListener(Event.COMPLETE,this._SafeStr_903);
      }
      
      protected function _SafeStr_903(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:XMLList = null;
         var _loc7_:String = null;
         this.loader.removeEventListener(Event.COMPLETE,this._SafeStr_903);
         var _loc2_:XML = new XML(this.loader.data);
         switch(this._SafeStr_904)
         {
            case _SafeStr_209:
               if(_loc2_.attribute("stat").toString() == "ok")
               {
                  dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_209,false,false,this.username,this.password));
                  break;
               }
               dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_209,false,false,this.username,this.password,null,0,null,_loc2_.err.@msg.toXMLString()));
               break;
            case _SafeStr_180:
               if(_loc2_.attribute("stat").toString() == "ok")
               {
                  dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_180,false,false,this.username,this.password));
                  break;
               }
               dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_180,false,false,this.username,this.password,null,0,null,_loc2_.err.@msg.toXMLString()));
               break;
            case _SafeStr_272:
               if(_loc2_.attribute("stat").toString() != "fail")
               {
                  dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_272,false,false,this.username,null,this._SafeStr_561,this.value));
                  break;
               }
               dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_272,false,false,this.username,null,this._SafeStr_561,this.value,null,_loc2_.err.@msg.toXMLString()));
               break;
            case _SafeStr_277:
            case _SafeStr_281:
               if(this._SafeStr_561)
               {
                  _loc3_ = _loc2_.stats.game.user["stat"];
                  _loc4_ = null;
                  if(_loc3_ == "")
                  {
                     _loc4_ = _SafeCls_68._SafeStr_759;
                  }
                  dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_277,false,false,this.username,null,this._SafeStr_561,int(_loc3_),null,_loc4_));
                  break;
               }
               _loc5_ = {};
               _loc6_ = _loc2_.stats.game.user.*;
               for(_loc7_ in _loc6_)
               {
                  _loc5_[_loc6_[_loc7_].@id] = int(_loc6_[_loc7_]);
               }
               dispatchEvent(new _SafeCls_68(_SafeCls_68._SafeStr_281,false,false,this.username,null,null,0,_loc5_));
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_68 = "76"
 * @identifier _SafeCls_79 = "do"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafeStr_180 = "^I"
 * @identifier _SafeStr_209 = "]9"
 * @identifier _SafeStr_272 = "8&"
 * @identifier _SafeStr_277 = "`D"
 * @identifier _SafeStr_281 = "%\'"
 * @identifier _SafeStr_561 = "+>"
 * @identifier _SafeStr_759 = "4O"
 * @identifier _SafeStr_903 = "%9"
 * @identifier _SafeStr_904 = "0\""
 */
