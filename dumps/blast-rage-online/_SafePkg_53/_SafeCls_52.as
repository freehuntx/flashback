package _SafePkg_53
{
   public class _SafeCls_52
   {
      
      public var _SafeStr_631:String;
      
      public var protocol:String;
      
      public var port:int;
      
      public var host:String;
      
      public var path:String;
      
      public var _SafeStr_545:String;
      
      public var _SafeStr_1011:Object;
      
      public var _SafeStr_794:int = 0;
      
      public function _SafeCls_52(param1:String)
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         super();
         this._SafeStr_631 = param1;
         var _loc2_:RegExp = /((?P<protocol>[a-zA-Z]+: \/\/)   (?P<host>[^:\/]*) (:(?P<port>\d+))?)?  (?P<path>[^?]*)? ((?P<query>.*))? /x;
         var _loc3_:* = _loc2_.exec(param1);
         if(_loc3_)
         {
            this.protocol = Boolean(_loc3_.protocol) ? _loc3_.protocol : "http://";
            this.protocol = this.protocol.substr(0,this.protocol.indexOf("://"));
            this.host = _loc3_.host || null;
            this.port = _loc3_.port ? int(int(_loc3_.port)) : 80;
            this.path = _loc3_.path;
            this._SafeStr_545 = _loc3_.query;
            if(this._SafeStr_545)
            {
               this._SafeStr_1011 = {};
               this._SafeStr_545 = this._SafeStr_545.substr(1);
               for each(_loc6_ in this._SafeStr_545.split("&"))
               {
                  _loc5_ = _loc6_.split("=")[0];
                  _loc4_ = _loc6_.split("=")[1];
                  this._SafeStr_1011[_loc5_] = _loc4_;
                  ++this._SafeStr_794;
               }
            }
         }
         else
         {
            trace("no match");
         }
      }
      
      public function toString(... rest) : String
      {
         if(rest.length > 0 && rest[0] == true)
         {
            return "[URL] rawString :" + this._SafeStr_631 + ", protocol: " + this.protocol + ", port: " + this.port + ", host: " + this.host + ", path: " + this.path + ". queryLength: " + this._SafeStr_794;
         }
         return this._SafeStr_631;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_52 = "80"
 * @identifier _SafePkg_53 = "0N"
 * @identifier _SafeStr_545 = "\"9"
 * @identifier _SafeStr_631 = "5T"
 * @identifier _SafeStr_794 = "#H"
 * @identifier _SafeStr_1011 = "[1"
 */
