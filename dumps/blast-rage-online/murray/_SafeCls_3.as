package murray
{
   public class _SafeCls_3
   {
      
      public static var user_info:_SafeCls_3;
      
      public var username:String = "Murray May";
      
      public var _SafeStr_1019:int = 0;
      
      public var _SafeStr_173:int = 8060894;
      
      public var rank:int = 0;
      
      public var password:String = "";
      
      public var xcash:int = 0;
      
      public var _SafeStr_230:int = 0;
      
      public var _SafeStr_330:int = 0;
      
      public var _SafeStr_196:Array = [];
      
      public var secondary_weapons:Array = [];
      
      public var equipment:Array = [];
      
      public var _SafeStr_311:Array = [];
      
      public var loadout:Array;
      
      public var _SafeStr_1313:int = 0;
      
      public var _SafeStr_1280:int = 0;
      
      public var _SafeStr_1262:int = 0;
      
      public var _SafeStr_1150:Boolean = false;
      
      public var _SafeStr_569:Boolean = false;
      
      public var _SafeStr_127:Array;
      
      public function _SafeCls_3()
      {
         super();
      }
      
      public static function _SafeStr_157() : _SafeCls_3
      {
         if(user_info == null)
         {
            user_info = new _SafeCls_3();
         }
         return user_info;
      }
      
      public function _SafeStr_254() : void
      {
         user_info = new _SafeCls_3();
      }
      
      public function _SafeStr_284(param1:int) : _SafeCls_5
      {
         var _loc3_:_SafeCls_5 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_127.length)
         {
            _loc3_ = this._SafeStr_127[_loc2_];
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
            _loc2_++;
         }
         trace("Ship Config " + param1 + " not found");
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeStr_127 = "-!"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_173 = "4R"
 * @identifier _SafeStr_196 = "@R"
 * @identifier _SafeStr_230 = "-#"
 * @identifier _SafeStr_254 = "6E"
 * @identifier _SafeStr_284 = "7"
 * @identifier _SafeStr_311 = "#$"
 * @identifier _SafeStr_330 = "4?"
 * @identifier _SafeStr_569 = "^@"
 * @identifier _SafeStr_1019 = "9<"
 * @identifier _SafeStr_1150 = "5G"
 * @identifier _SafeStr_1262 = "var "
 * @identifier _SafeStr_1280 = "@3"
 * @identifier _SafeStr_1313 = "\"-"
 */
