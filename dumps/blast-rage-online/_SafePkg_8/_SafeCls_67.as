package _SafePkg_8
{
   import flash.events.Event;
   
   public class _SafeCls_67 extends Event
   {
      
      public static const _SafeStr_319:String = "Connected";
      
      public static const _SafeStr_289:String = "Failed";
      
      public static const _SafeStr_331:String = "Disconnected";
      
      public static const _SafeStr_389:String = "Room Joined";
      
      public static const _SafeStr_355:String = "Peer Joined";
      
      public static const _SafeStr_361:String = "Peer Disconnected";
      
      public static const _SafeStr_269:String = "Room List";
      
      public static const _SafeStr_804:String = "Room Info";
      
      public static const _SafeStr_781:String = "Room Var";
      
      public static const _SafeStr_367:String = "Message";
      
      public static const _SafeStr_217:String = "Server Error";
      
      public static const _SafeStr_359:String = "Hand Shake";
      
      public static const _SafeStr_209:String = "Authenticate";
      
      public static const _SafeStr_642:String = "Banned";
      
      public static const _SafeStr_377:String = "Find Message";
      
      public static const _SafeStr_496:String = "Tank saved";
      
      public var _SafeStr_203:String;
      
      public var message:String;
      
      public var list:Array;
      
      public var info:Object;
      
      public function _SafeCls_67(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:String = null, param6:Array = null, param7:Object = null)
      {
         super(param1,param2,param3);
         this._SafeStr_203 = param4;
         this.message = param5;
         this.list = param6;
         this.info = param7;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_67(type,bubbles,cancelable,this._SafeStr_203,this.message,this.list,this.info);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafeStr_203 = "]5"
 * @identifier _SafeStr_209 = "]9"
 * @identifier _SafeStr_217 = "<,"
 * @identifier _SafeStr_269 = "`5"
 * @identifier _SafeStr_289 = "84"
 * @identifier _SafeStr_319 = "!;"
 * @identifier _SafeStr_331 = "5L"
 * @identifier _SafeStr_355 = "@B"
 * @identifier _SafeStr_359 = "2F"
 * @identifier _SafeStr_361 = "09"
 * @identifier _SafeStr_367 = "do "
 * @identifier _SafeStr_377 = "!2"
 * @identifier _SafeStr_389 = "@S"
 * @identifier _SafeStr_496 = "]G"
 * @identifier _SafeStr_642 = ",,"
 * @identifier _SafeStr_781 = "1="
 * @identifier _SafeStr_804 = "9;"
 */
