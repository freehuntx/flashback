package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_96 extends Event
   {
      
      public static const _SafeStr_666:String = "gamemanager_add_contextmenu";
      
      public static const _SafeStr_967:String = "gamemanager_play";
      
      public static const READY:String = "gamemanager_ready";
      
      public static const _SafeStr_1008:String = "gamemanager_game_ready";
      
      public static const _SafeStr_1464:String = "gamemanager_game_enable";
      
      public static const _SafeStr_356:String = "gamemanager_game_disable";
      
      private var _SafeStr_1581:String;
      
      public function _SafeCls_96(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._SafeStr_1581 = param2;
      }
      
      public function get message() : String
      {
         return this._SafeStr_1581;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_96(type,this.message,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_96 = "_-PR"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_356 = "_-em"
 * @identifier _SafeStr_666 = "_-Rh"
 * @identifier _SafeStr_967 = "_-CZ"
 * @identifier _SafeStr_1008 = "_-Je"
 * @identifier _SafeStr_1464 = "_-Dh"
 * @identifier _SafeStr_1581 = "_-Y"
 */
