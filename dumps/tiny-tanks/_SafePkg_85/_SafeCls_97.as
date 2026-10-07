package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_97 extends Event
   {
      
      public static const _SafeStr_481:String = "mcplayerready";
      
      public static const _SafeStr_2568:String = "mcplayererror";
      
      public static const _SafeStr_1335:String = "mcplaybackstart";
      
      public static const _SafeStr_2596:String = "mcplaybackend";
      
      public static const _SafeStr_2247:String = "mcplayerdestroyed";
      
      public static const _SafeStr_2261:String = "configreceived";
      
      public static const _SafeStr_324:String = "playerconfigreceived";
      
      public static const _SafeStr_2462:String = "metadatareceived";
      
      public static const _SafeStr_2644:String = "soundchanged";
      
      private static var allowedEventIDs:Array = [_SafeStr_481,_SafeStr_2568,_SafeStr_1335,_SafeStr_2596,_SafeStr_2247,_SafeStr_2261,_SafeStr_324,_SafeStr_2644,_SafeStr_2462];
      
      private var _data:*;
      
      public function _SafeCls_97(param1:String, param2:Object = null)
      {
         this._data = param2;
         super(param1,false,false);
      }
      
      public static function _SafeStr_828(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in allowedEventIDs)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_97(super.type,this.data);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_97 = "_-9Q"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_324 = "_-Mo"
 * @identifier _SafeStr_481 = "_-X5"
 * @identifier _SafeStr_828 = "_-UM"
 * @identifier _SafeStr_1335 = "_-8l"
 * @identifier _SafeStr_2247 = "_-Yq"
 * @identifier _SafeStr_2261 = "_-7"
 * @identifier _SafeStr_2462 = "_-Uz"
 * @identifier _SafeStr_2568 = "_-Ki"
 * @identifier _SafeStr_2596 = "_-7R"
 * @identifier _SafeStr_2644 = "_-7q"
 */
