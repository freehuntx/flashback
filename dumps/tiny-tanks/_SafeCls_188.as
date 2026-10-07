package
{
   import com.google.analytics.AnalyticsTracker;
   import com.google.analytics.GATracker;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _SafeCls_188 extends Sprite
   {
      
      public static var _SafeStr_2479:AnalyticsTracker;
      
      public function _SafeCls_188()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this._SafeStr_2174);
      }
      
      private function _SafeStr_2174(param1:Event) : *
      {
         removeEventListener(Event.ADDED_TO_STAGE,this._SafeStr_2174);
         _SafeStr_2479 = new GATracker(this,"UA-47882935-2","AS3",false);
         trace("MEGALOL");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_188 = "_-dV"
 * @identifier _SafeStr_2174 = "_-2F"
 * @identifier _SafeStr_2479 = "_-3q"
 */
