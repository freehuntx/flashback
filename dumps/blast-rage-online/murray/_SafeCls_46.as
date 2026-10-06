package murray
{
   import _SafePkg_45._SafeCls_44;
   
   public class _SafeCls_46
   {
      
      public var name:String;
      
      public var spawns:Array;
      
      public var fabs:Array;
      
      public var point:Array;
      
      public var tileset:int = 1;
      
      public function _SafeCls_46()
      {
         super();
         this.name = "";
         this.spawns = [new Array(),new Array()];
         this.fabs = new Array();
         this.point = [0,0];
      }
      
      public static function _SafeStr_238(param1:Object, param2:_SafeCls_72) : _SafeCls_46
      {
         var _loc3_:_SafeCls_46 = new _SafeCls_46();
         _loc3_.name = param1.name;
         _loc3_.spawns = param1.spawns;
         _loc3_.fabs = param1.fabs;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.fabs.length)
         {
            _loc3_.fabs[_loc4_] = new _SafeCls_55(_loc3_.fabs[_loc4_],param2._SafeStr_1073(_loc3_.fabs[_loc4_][0]));
            _loc4_++;
         }
         _loc3_.point = param1.point;
         _loc3_.tileset = _SafeCls_10._SafeStr_107(param1,"tileset",1);
         if(_loc3_.tileset > param2._SafeStr_459.length)
         {
            _loc3_.tileset = 1;
         }
         return _loc3_;
      }
      
      public static function _SafeStr_1036(param1:String, param2:_SafeCls_72) : _SafeCls_46
      {
         return _SafeCls_46._SafeStr_238(_SafeCls_44._SafeStr_363(param1),param2);
      }
      
      public function toJSON() : String
      {
         var _loc3_:int = 0;
         var _loc1_:String = "{\n    \"name\" : \"" + this.name + "\",\n    \"spawns\" : [";
         var _loc2_:int = 0;
         while(_loc2_ < this.spawns.length)
         {
            _loc1_ += "[";
            _loc3_ = 0;
            while(_loc3_ < this.spawns[_loc2_].length)
            {
               _loc1_ += "[" + this.spawns[_loc2_][_loc3_][0] + "," + this.spawns[_loc2_][_loc3_][1] + "]";
               if(_loc3_ < this.spawns[_loc2_].length - 1)
               {
                  _loc1_ += ",";
               }
               _loc3_++;
            }
            _loc1_ += "]";
            if(_loc2_ < this.spawns.length - 1)
            {
               _loc1_ += ",";
            }
            _loc2_++;
         }
         _loc1_ += "],\n    \"fabs\" : [";
         _loc2_ = 0;
         while(_loc2_ < this.fabs.length)
         {
            _loc1_ += this.fabs[_loc2_].toJSON();
            if(_loc2_ < this.fabs.length - 1)
            {
               _loc1_ += ",";
            }
            _loc2_++;
         }
         return _loc1_ + ("],\n\t\"point\" : [" + this.point[0] + "," + this.point[1] + "]\n}");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_44 = "98"
 * @identifier _SafeCls_46 = "=F"
 * @identifier _SafeCls_55 = "!B"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_238 = "%R"
 * @identifier _SafeStr_363 = "set"
 * @identifier _SafeStr_459 = "!5"
 * @identifier _SafeStr_1036 = "8M"
 * @identifier _SafeStr_1073 = "7,"
 */
