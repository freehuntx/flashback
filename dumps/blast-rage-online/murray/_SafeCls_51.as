package murray
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   import flash.ui.Keyboard;
   
   public class _SafeCls_51
   {
      
      public var mc:MovieClip;
      
      public var gs:_SafeCls_4;
      
      private var _SafeStr_594:Function;
      
      public var labels:Array;
      
      public var _SafeStr_473:Array;
      
      public var _SafeStr_969:Array;
      
      public var _SafeStr_875:Array;
      
      public var _SafeStr_844:Boolean;
      
      public var _SafeStr_477:int = -1;
      
      private var nui:NotificationUI;
      
      private var bro_so:SharedObject;
      
      public function _SafeCls_51(param1:MovieClip)
      {
         super();
         this.mc = param1;
         param1.visible = false;
         this.labels = [param1.forward,param1.backward,param1.left,param1.right,param1.chat,param1.scoreboard,param1.primary,param1.secondary1,param1.secondary2,param1.secondary3,param1.secondary4];
         var _loc2_:int = 0;
         while(_loc2_ < this.labels.length)
         {
            this.labels[_loc2_].mouseEnabled = false;
            _loc2_++;
         }
         this._SafeStr_473 = [param1.forward_button,param1.backward_button,param1.left_button,param1.right_button,param1.chat_button,param1.scoreboard_button,param1.primary_button,param1.secondary1_button,param1.secondary2_button,param1.secondary3_button,param1.secondary4_button];
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_473.length)
         {
            this._SafeStr_473[_loc2_].addEventListener(MouseEvent.CLICK,this._SafeStr_1177);
            _loc2_++;
         }
         this._SafeStr_969 = [param1.forward_text,param1.backward_text,param1.left_text,param1.right_text,param1.chat_text,param1.scoreboard_text,param1.primary_text,param1.secondary1_text,param1.secondary2_text,param1.secondary3_text,param1.secondary4_text];
         param1.ok.addEventListener(MouseEvent.CLICK,this._SafeStr_291);
         param1.cancel.addEventListener(MouseEvent.CLICK,this._SafeStr_1017);
         param1.customize_checkbox.addEventListener(MouseEvent.CLICK,this._SafeStr_1134);
         param1.customize_checkbox.buttonMode = true;
         param1.customize_checkbox.useHandCursor = true;
         param1.default_checkbox.addEventListener(MouseEvent.CLICK,this._SafeStr_1189);
         param1.default_checkbox.buttonMode = true;
         param1.default_checkbox.useHandCursor = true;
         this.bro_so = SharedObject.getLocal("bro_so");
      }
      
      public function _SafeStr_1017(param1:MouseEvent) : void
      {
         this.gs.custom_controls = this._SafeStr_844;
         this.gs.controls = this._SafeStr_875;
         this.bro_so.data.custom_controls = this.gs.custom_controls;
         this.bro_so.data.controls = this.gs.controls;
         this._SafeStr_291();
      }
      
      public function _SafeStr_1134(param1:MouseEvent) : void
      {
         this.gs.custom_controls = true;
         this.mc.customize_checkbox.gotoAndStop(2);
         this.mc.default_checkbox.gotoAndStop(1);
         this.bro_so.data.custom_controls = this.gs.custom_controls;
         this.bro_so.data.controls = this.gs.controls;
      }
      
      public function _SafeStr_1189(param1:MouseEvent) : void
      {
         this.gs.custom_controls = false;
         this.mc.customize_checkbox.gotoAndStop(1);
         this.mc.default_checkbox.gotoAndStop(2);
         this.bro_so.data.custom_controls = this.gs.custom_controls;
         this.bro_so.data.controls = this.gs.controls;
      }
      
      public function _SafeStr_168(param1:Function, param2:NotificationUI) : void
      {
         this.nui = param2;
         this.gs = _SafeCls_4._SafeStr_121();
         this._SafeStr_875 = this.gs.controls.slice();
         this._SafeStr_844 = this.gs.custom_controls;
         this.mc.visible = true;
         this._SafeStr_594 = param1;
         if(this.gs.custom_controls)
         {
            this.mc.customize_checkbox.gotoAndStop(2);
            this.mc.default_checkbox.gotoAndStop(1);
         }
         else
         {
            this.mc.customize_checkbox.gotoAndStop(1);
            this.mc.default_checkbox.gotoAndStop(2);
         }
         this._SafeStr_935();
      }
      
      public function _SafeStr_935() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.labels.length)
         {
            if(_loc1_ < this.gs.controls.length)
            {
               this.labels[_loc1_].text = this._SafeStr_1027(this.gs.controls[_loc1_]);
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_291(param1:MouseEvent = null) : void
      {
         this.mc.visible = false;
         if(this._SafeStr_594 != null)
         {
            this._SafeStr_594();
            this._SafeStr_594 = null;
         }
      }
      
      public function _SafeStr_1177(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_473.length)
         {
            if(this._SafeStr_473[_loc2_] == param1.target)
            {
               this._SafeStr_477 = _loc2_;
               break;
            }
            _loc2_++;
         }
         if(this._SafeStr_477 < this._SafeStr_473.length)
         {
            trace("Change key for: " + this._SafeStr_477);
            this.nui._SafeStr_141("Press a key for " + this._SafeStr_969[this._SafeStr_477].text);
            this.nui.mc.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_970);
         }
      }
      
      public function _SafeStr_970(param1:KeyboardEvent) : void
      {
         this.nui._SafeStr_197();
         this.nui.mc.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_970);
         if(param1.keyCode != Keyboard.ESCAPE)
         {
            this.gs.controls[this._SafeStr_477] = param1.keyCode;
            this._SafeStr_935();
            this.bro_so.data.controls = this.gs.controls;
         }
      }
      
      public function _SafeStr_1027(param1:int) : String
      {
         if(param1 == Keyboard.UP)
         {
            return "UP";
         }
         if(param1 == Keyboard.DOWN)
         {
            return "DOWN";
         }
         if(param1 == Keyboard.LEFT)
         {
            return "LEFT";
         }
         if(param1 == Keyboard.RIGHT)
         {
            return "RIGHT";
         }
         if(param1 == Keyboard.ENTER)
         {
            return "ENTER";
         }
         if(param1 == Keyboard.BACKSPACE)
         {
            return "BACKSPACE";
         }
         if(param1 == Keyboard.SHIFT)
         {
            return "SHIFT";
         }
         if(param1 == Keyboard.SPACE)
         {
            return "SPACE";
         }
         if(param1 == Keyboard.TAB)
         {
            return "TAB";
         }
         if(param1 == Keyboard.INSERT)
         {
            return "INSERT";
         }
         if(param1 == Keyboard.HOME)
         {
            return "HOME";
         }
         if(param1 == Keyboard.DELETE)
         {
            return "DELETE";
         }
         if(param1 == Keyboard.PAGE_UP)
         {
            return "PGUP";
         }
         if(param1 == Keyboard.PAGE_DOWN)
         {
            return "PGDN";
         }
         if(param1 == Keyboard.END)
         {
            return "END";
         }
         if(param1 == Keyboard.ESCAPE)
         {
            return "ESCAPE";
         }
         if(param1 == Keyboard.SEMICOLON)
         {
            return ";";
         }
         if(param1 == Keyboard.SLASH)
         {
            return "/";
         }
         if(param1 == Keyboard.BACKSLASH)
         {
            return "\\";
         }
         if(param1 == Keyboard.BACKQUOTE)
         {
            return "`";
         }
         if(param1 == Keyboard.LEFTBRACKET)
         {
            return "[";
         }
         if(param1 == Keyboard.RIGHTBRACKET)
         {
            return "]";
         }
         if(param1 == Keyboard.MINUS)
         {
            return "-";
         }
         if(param1 == Keyboard.EQUAL)
         {
            return "=";
         }
         if(param1 == Keyboard.NUMPAD_ADD)
         {
            return "NUM+";
         }
         if(param1 == Keyboard.NUMPAD_DIVIDE)
         {
            return "/";
         }
         if(param1 == Keyboard.NUMPAD_MULTIPLY)
         {
            return "*";
         }
         if(param1 == Keyboard.NUMPAD_ENTER)
         {
            return "NUMENTER";
         }
         if(param1 <= Keyboard.NUMBER_9 && param1 >= Keyboard.NUMBER_0)
         {
            return "" + (param1 - 48);
         }
         if(param1 <= Keyboard.NUMPAD_9 && param1 >= Keyboard.NUMPAD_0)
         {
            return "NUM" + (param1 - 96);
         }
         var _loc2_:String = String.fromCharCode(param1);
         if(_loc2_ == _loc2_.toLowerCase())
         {
            return "{" + param1 + "}";
         }
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_51 = "]@"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_168 = "+%"
 * @identifier _SafeStr_197 = ">0"
 * @identifier _SafeStr_291 = "6Q"
 * @identifier _SafeStr_473 = "2I"
 * @identifier _SafeStr_477 = "96"
 * @identifier _SafeStr_594 = "#M"
 * @identifier _SafeStr_844 = "\'A"
 * @identifier _SafeStr_875 = "5+"
 * @identifier _SafeStr_935 = "!="
 * @identifier _SafeStr_969 = "!P"
 * @identifier _SafeStr_970 = "?;"
 * @identifier _SafeStr_1017 = "\"Q"
 * @identifier _SafeStr_1027 = "?,"
 * @identifier _SafeStr_1134 = "<\'"
 * @identifier _SafeStr_1177 = "catch"
 * @identifier _SafeStr_1189 = "3L"
 */
