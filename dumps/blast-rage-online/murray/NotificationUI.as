package murray
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class NotificationUI
   {
      
      public var mc:MovieClip;
      
      public var notification_text:TextField;
      
      public var accept:SimpleButton;
      
      public var cancel:SimpleButton;
      
      public var ok:SimpleButton;
      
      public var decline:SimpleButton;
      
      public var get_xcash:SimpleButton;
      
      public var back:SimpleButton;
      
      private var _SafeStr_456:Function;
      
      private var _SafeStr_1338:Function;
      
      public function NotificationUI(param1:MovieClip)
      {
         super();
         this.mc = param1;
         this.notification_text = param1.notification_text;
         this.accept = param1.accept;
         this.cancel = param1.cancel;
         this.ok = param1.ok;
         this.decline = param1.decline;
         this.get_xcash = param1.get_xcash;
         this.back = param1.back;
         param1.visible = false;
         _SafeCls_10._SafeStr_113(param1.back);
         _SafeCls_10._SafeStr_113(param1.ok);
         _SafeCls_10._SafeStr_113(param1.get_xcash);
         _SafeCls_10._SafeStr_113(param1.accept);
         _SafeCls_10._SafeStr_113(param1.cancel);
         _SafeCls_10._SafeStr_113(param1.decline);
      }
      
      public function _SafeStr_141(param1:String) : void
      {
         this.mc.visible = true;
         this.notification_text.wordWrap = true;
         this.notification_text.text = param1;
         this.notification_text.height = _SafeCls_10._SafeStr_107(this.notification_text.defaultTextFormat,"size",12) * (this.notification_text.numLines + 2);
         this.notification_text.y = 242 - this.notification_text.height / 2;
         this.accept.visible = false;
         this.cancel.visible = false;
         this.ok.visible = false;
         this.decline.visible = false;
         this.get_xcash.visible = false;
         this.back.visible = false;
      }
      
      public function _SafeStr_108(param1:String, param2:Function = null) : void
      {
         this.mc.visible = true;
         this.notification_text.wordWrap = true;
         this.notification_text.text = param1;
         this.notification_text.height = _SafeCls_10._SafeStr_107(this.notification_text.defaultTextFormat,"size",12) * (this.notification_text.numLines + 2);
         this.notification_text.y = 242 - this.notification_text.height / 2;
         this.accept.visible = false;
         this.cancel.visible = false;
         this.ok.visible = true;
         this.decline.visible = false;
         this.get_xcash.visible = false;
         this.back.visible = false;
         this._SafeStr_456 = param2;
         this.ok.addEventListener(MouseEvent.CLICK,this._SafeStr_954);
      }
      
      public function _SafeStr_834(param1:String) : void
      {
         this.mc.visible = true;
         this.notification_text.wordWrap = true;
         this.notification_text.text = param1;
         this.notification_text.height = _SafeCls_10._SafeStr_107(this.notification_text.defaultTextFormat,"size",12) * (this.notification_text.numLines + 2);
         this.notification_text.y = 242 - this.notification_text.height / 2;
         this.accept.visible = false;
         this.cancel.visible = false;
         this.ok.visible = false;
         this.decline.visible = false;
         this.get_xcash.visible = true;
         this.back.visible = true;
         this._SafeStr_456 = this._SafeStr_456;
         this.back.addEventListener(MouseEvent.CLICK,this._SafeStr_937);
      }
      
      public function _SafeStr_937(param1:MouseEvent) : void
      {
         this.back.removeEventListener(MouseEvent.CLICK,this._SafeStr_937);
         this.mc.visible = false;
      }
      
      public function _SafeStr_954(param1:MouseEvent) : void
      {
         this.ok.removeEventListener(MouseEvent.CLICK,this._SafeStr_954);
         this.mc.visible = false;
         if(this._SafeStr_456 != null)
         {
            this._SafeStr_456();
            this._SafeStr_456 = null;
         }
      }
      
      public function _SafeStr_197() : void
      {
         this.mc.visible = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_456 = "=E"
 * @identifier _SafeStr_834 = "33"
 * @identifier _SafeStr_937 = "^+"
 * @identifier _SafeStr_954 = " if"
 * @identifier _SafeStr_1338 = "6G"
 */
