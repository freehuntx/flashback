package _SafePkg_89
{
   import flash.events.Event;
   
   public class _SafeCls_90 extends Event
   {
      
      public static var _SafeStr_436:String = "update";
      
      public var time:Number;
      
      public function _SafeCls_90(param1:String, param2:Number = NaN, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.time = param2;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_90(type,this.time,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_90 = "_-hU"
 * @identifier _SafePkg_89 = "_-jw"
 * @identifier _SafeStr_436 = "_-BT"
 */
