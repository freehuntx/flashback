package _SafePkg_45
{
   import flash.utils.describeType;
   
   public class _SafeCls_59
   {
      
      private var _SafeStr_435:String;
      
      public function _SafeCls_59(param1:*)
      {
         super();
         this._SafeStr_435 = this._SafeStr_607(param1);
      }
      
      public function getString() : String
      {
         return this._SafeStr_435;
      }
      
      private function _SafeStr_607(param1:*) : String
      {
         if(param1 is String)
         {
            return this._SafeStr_813(param1 as String);
         }
         if(param1 is Number)
         {
            return isFinite(param1 as Number) ? param1.toString() : "null";
         }
         if(param1 is Boolean)
         {
            return param1 ? "true" : "false";
         }
         if(param1 is Array)
         {
            return this._SafeStr_1052(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this._SafeStr_1044(param1);
         }
         return "null";
      }
      
      private function _SafeStr_813(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:String = "";
         var _loc4_:Number = Number(param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1.charAt(_loc5_);
            switch(_loc3_)
            {
               case "\"":
                  _loc2_ += "\\\"";
                  break;
               case "\\":
                  _loc2_ += "\\\\";
                  break;
               case "\b":
                  _loc2_ += "\\b";
                  break;
               case "\f":
                  _loc2_ += "\\f";
                  break;
               case "\n":
                  _loc2_ += "\\n";
                  break;
               case "\r":
                  _loc2_ += "\\r";
                  break;
               case "\t":
                  _loc2_ += "\\t";
                  break;
               default:
                  if(_loc3_ < " ")
                  {
                     _loc6_ = _loc3_.charCodeAt(0).toString(16);
                     _loc7_ = _loc6_.length == 2 ? "00" : "000";
                     _loc2_ += "\\u" + _loc7_ + _loc6_;
                  }
                  else
                  {
                     _loc2_ += _loc3_;
                  }
            }
            _loc5_++;
         }
         return "\"" + _loc2_ + "\"";
      }
      
      private function _SafeStr_1052(param1:Array) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += ",";
            }
            _loc2_ += this._SafeStr_607(param1[_loc4_]);
            _loc4_++;
         }
         return "[" + _loc2_ + "]";
      }
      
      private function _SafeStr_1044(param1:Object) : String
      {
         var _SafeCls_36:Object = null;
         var _SafeStr_611:String = null;
         var _SafeStr_1059:XML = null;
         var _SafeStr_239:Object = param1;
         var _SafeStr_429:String = "";
         var _SafeCls_22:XML = describeType(_SafeStr_239);
         if(_SafeCls_22.@name.toString() == "Object")
         {
            for(_SafeStr_611 in _SafeStr_239)
            {
               _SafeCls_36 = _SafeStr_239[_SafeStr_611];
               if(!(_SafeCls_36 is Function))
               {
                  if(_SafeStr_429.length > 0)
                  {
                     _SafeStr_429 += ",";
                  }
                  _SafeStr_429 += this._SafeStr_813(_SafeStr_611) + ":" + this._SafeStr_607(_SafeCls_36);
               }
            }
         }
         else
         {
            for each(_SafeStr_1059 in _SafeCls_22..*.(name() == "variable" || name() == "accessor" && attribute("access").charAt(0) == "r"))
            {
               if(!(Boolean(_SafeStr_1059.metadata) && _SafeStr_1059.metadata.(@name == "Transient").length() > 0))
               {
                  if(_SafeStr_429.length > 0)
                  {
                     _SafeStr_429 += ",";
                  }
                  _SafeStr_429 += this._SafeStr_813(_SafeStr_1059.@name.toString()) + ":" + this._SafeStr_607(_SafeStr_239[_SafeStr_1059.@name]);
               }
            }
         }
         return "{" + _SafeStr_429 + "}";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_22 = " 2"
 * @identifier _SafeCls_36 = " 3"
 * @identifier _SafeCls_59 = "9\""
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafeStr_239 = " 0"
 * @identifier _SafeStr_429 = " 1"
 * @identifier _SafeStr_435 = "#V"
 * @identifier _SafeStr_607 = "#3"
 * @identifier _SafeStr_611 = " 4"
 * @identifier _SafeStr_813 = "`R"
 * @identifier _SafeStr_1044 = "&F"
 * @identifier _SafeStr_1052 = "&$"
 * @identifier _SafeStr_1059 = " 5"
 */
