package com.miniclip.utils
{
   public class uri
   {
      
      private var _source:String = "";
      
      private var _SafeStr_1737:String = "";
      
      private var _host:String = "";
      
      private var _SafeStr_706:String = "";
      
      private var _password:String = "";
      
      private var _SafeStr_1935:int = -1;
      
      private var _path:String = "";
      
      private var _SafeStr_1689:String = "";
      
      private var _SafeStr_2116:String = "";
      
      private var _SafeStr_1916:RegExp = /\\/g;
      
      public function uri(param1:String)
      {
         super();
         this._source = param1;
         this._SafeStr_1661(param1);
      }
      
      private function _parseUnixAbsoluteFilePath(param1:String) : void
      {
         this._SafeStr_1240 = "file";
         this._SafeStr_1935 = -1;
         this._SafeStr_2116 = "";
         this._SafeStr_1689 = "";
         this._host = "";
         this._path = "";
         if(param1.substr(0,2) == "//")
         {
            while(param1.charAt(0) == "/")
            {
               param1 = param1.substr(1);
            }
            this._path = "/" + param1;
         }
         if(!this._path)
         {
            this._path = param1;
         }
      }
      
      private function _parseWindowsAbsoluteFilePath(param1:String) : void
      {
         if(param1.length > 2 && param1.charAt(2) != "\\" && param1.charAt(2) != "/")
         {
            return;
         }
         this._SafeStr_1240 = "file";
         this._SafeStr_1935 = -1;
         this._SafeStr_2116 = "";
         this._SafeStr_1689 = "";
         this._host = "";
         this._path = "/" + param1.replace(this._SafeStr_1916,"/");
      }
      
      private function _SafeStr_2642(param1:String) : void
      {
         this._SafeStr_1240 = "file";
         this._SafeStr_1935 = -1;
         this._SafeStr_2116 = "";
         this._SafeStr_1689 = "";
         while(param1.charAt(0) == "\\")
         {
            param1 = param1.substr(1);
         }
         var _loc2_:int = int(param1.indexOf("\\"));
         if(_loc2_ > 0)
         {
            this._path = param1.substring(_loc2_);
            this._host = param1.substring(0,_loc2_);
         }
         else
         {
            this._host = param1;
            this._path = "";
         }
         this._path = this._path.replace(this._SafeStr_1916,"/");
      }
      
      private function _SafeStr_1661(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc2_:int = int(param1.indexOf(":"));
         if(_loc2_ < 0)
         {
            if(param1.charAt(0) == "/")
            {
               this._parseUnixAbsoluteFilePath(param1);
            }
            else if(param1.substr(0,2) == "\\\\")
            {
               this._SafeStr_2642(param1);
            }
            return;
         }
         if(_loc2_ == 1)
         {
            this._parseWindowsAbsoluteFilePath(param1);
            return;
         }
         var _loc3_:RegExp = new RegExp("^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)([?]([^#]*))?(#(.*))?",null);
         var _loc4_:Object = _loc3_.exec(param1);
         if(Boolean(_loc4_[1]) && Boolean(_loc4_[2]))
         {
            this._SafeStr_1240 = _loc4_[2];
         }
         if(_loc4_[3])
         {
            _loc5_ = _loc4_[4];
            _loc6_ = "";
            if(_loc5_.indexOf("@") > -1)
            {
               _loc7_ = _loc5_.split("@")[0];
               _loc6_ = _loc5_.split("@")[1];
               if(_loc7_.indexOf(":") != -1)
               {
                  this._SafeStr_706 = _loc7_.split(":")[0];
                  this._password = _loc7_.split(":")[1];
               }
               else
               {
                  this._SafeStr_706 = _loc7_;
               }
            }
            else
            {
               _loc6_ = _loc5_;
            }
            if(_loc6_.indexOf(":") > -1)
            {
               _loc8_ = _loc6_.split(":")[1];
               _loc11_ = true;
               _loc9_ = 0;
               while(_loc9_ < _loc8_.length)
               {
                  _loc10_ = _loc8_.charAt(_loc9_);
                  if(!("0" <= _loc10_ && _loc10_ <= "9"))
                  {
                     _loc11_ = false;
                  }
                  _loc9_++;
               }
               if(_loc11_)
               {
                  _loc6_ = _loc6_.split(":")[0];
                  if(Boolean(_loc8_) && _loc8_.length > 0)
                  {
                     this.port = parseInt(_loc8_);
                  }
               }
            }
            this.host = _loc6_;
         }
         if(_loc4_[5])
         {
            this.path = _loc4_[5];
         }
         if(_loc4_[6])
         {
            this._SafeStr_1689 = _loc4_[7];
         }
         if(_loc4_[8])
         {
            this._SafeStr_2116 = _loc4_[9];
         }
      }
      
      public function get authority() : String
      {
         var _loc1_:String = "";
         if(this._SafeStr_555)
         {
            _loc1_ += this._SafeStr_555 + "@";
         }
         _loc1_ += this.host;
         if(this.host != "" && this.port > -1)
         {
            _loc1_ += ":" + this.port;
         }
         return _loc1_;
      }
      
      public function get fragment() : String
      {
         return this._SafeStr_2116;
      }
      
      public function set fragment(param1:String) : void
      {
         this._SafeStr_2116 = param1;
      }
      
      public function get host() : String
      {
         return this._host;
      }
      
      public function set host(param1:String) : void
      {
         this._host = param1;
      }
      
      public function get path() : String
      {
         return this._path;
      }
      
      public function set path(param1:String) : void
      {
         this._path = param1;
      }
      
      public function get port() : int
      {
         return this._SafeStr_1935;
      }
      
      public function set port(param1:int) : void
      {
         this._SafeStr_1935 = param1;
      }
      
      public function get _SafeStr_1240() : String
      {
         return this._SafeStr_1737;
      }
      
      public function set _SafeStr_1240(param1:String) : void
      {
         this._SafeStr_1737 = param1;
      }
      
      public function get source() : String
      {
         return this._source;
      }
      
      public function get _SafeStr_555() : String
      {
         if(!this._SafeStr_706)
         {
            return "";
         }
         var _loc1_:String = "";
         _loc1_ += this._SafeStr_706;
         return _loc1_ + (":" + this._password);
      }
      
      public function get query() : String
      {
         return this._SafeStr_1689;
      }
      
      public function set query(param1:String) : void
      {
         this._SafeStr_1689 = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         if(this._SafeStr_1240)
         {
            _loc1_ += this._SafeStr_1240 + ":";
         }
         if(this.authority)
         {
            _loc1_ += "//" + this.authority;
         }
         if(this.authority == "" && this._SafeStr_1240 == "file")
         {
            _loc1_ += "//";
         }
         _loc1_ += this.path;
         if(this.query)
         {
            _loc1_ += "?" + this.query;
         }
         if(this.fragment)
         {
            _loc1_ += "#" + this.fragment;
         }
         return _loc1_;
      }
      
      public function valueOf() : String
      {
         return this.toString();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_555 = "_-Br"
 * @identifier _SafeStr_706 = "_-V8"
 * @identifier _SafeStr_1240 = "_-3L"
 * @identifier _SafeStr_1661 = "_-Rb"
 * @identifier _SafeStr_1689 = "_-8e"
 * @identifier _SafeStr_1737 = "_-Gb"
 * @identifier _SafeStr_1916 = "_-iU"
 * @identifier _SafeStr_1935 = "_-Sy"
 * @identifier _SafeStr_2116 = "_-GQ"
 * @identifier _SafeStr_2642 = "_-1V"
 */
