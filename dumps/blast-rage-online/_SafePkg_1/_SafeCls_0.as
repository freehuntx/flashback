package _SafePkg_1
{
   import flash.display.*;
   import flash.events.*;
   
   public class _SafeCls_0
   {
      
      public static var _SafeStr_105:Array;
      
      private static var _SafeStr_235:Array;
      
      private static var _SafeStr_470:Array;
      
      private static var _SafeStr_309:Array;
      
      private static var _SafeStr_449:int;
      
      public static var _SafeStr_934:Sprite;
      
      public static var _SafeStr_562:int = 0;
      
      public static var _SafeStr_612:* = 0;
      
      public static var _SafeStr_581:Boolean = false;
      
      public function _SafeCls_0(param1:Sprite)
      {
         super();
         _SafeStr_934 = param1;
         _SafeStr_105 = new Array(222);
         this._SafeStr_1032();
         _SafeStr_235 = new Array(222);
         _SafeStr_470 = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < 222)
         {
            _SafeStr_235[_loc2_] = new int(0);
            if(_SafeStr_105[_loc2_] != undefined)
            {
               _SafeStr_470.push(_loc2_);
            }
            _loc2_++;
         }
         _SafeStr_449 = 5;
         _SafeStr_309 = new Array(_SafeStr_449);
         var _loc3_:int = 0;
         while(_loc3_ < _SafeStr_449)
         {
            _SafeStr_309[_loc3_] = new Array(0,0);
            _loc3_++;
         }
         param1.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_1210,false,0,true);
         param1.stage.addEventListener(KeyboardEvent.KEY_UP,this._SafeStr_1174,false,0,true);
         param1.stage.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_1219,false,0,true);
         param1.stage.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_1069,false,0,true);
      }
      
      public static function _SafeStr_826() : *
      {
         var _loc1_:int = 0;
         while(_loc1_ < _SafeStr_470.length)
         {
            if(_SafeStr_235[_SafeStr_470[_loc1_]] != 0)
            {
               ++_SafeStr_235[_SafeStr_470[_loc1_]];
            }
            _loc1_++;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _SafeStr_449)
         {
            ++_SafeStr_309[_loc2_][1];
            _loc2_++;
         }
      }
      
      public static function _SafeStr_1341(param1:int) : int
      {
         return Math.max(0,_SafeStr_235[param1]);
      }
      
      public static function _SafeStr_123(param1:int) : Boolean
      {
         return _SafeStr_235[param1] > 0;
      }
      
      public static function _SafeStr_1278(param1:int) : Boolean
      {
         _SafeStr_612 = 0;
         return _SafeStr_235[param1] == 1;
      }
      
      public static function _SafeStr_1015() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < _SafeStr_235.length)
         {
            _SafeStr_235[_loc1_] = 0;
            _loc1_++;
         }
      }
      
      public static function _SafeStr_1336(param1:int) : Boolean
      {
         return _SafeStr_235[param1] == -1;
      }
      
      public static function _SafeStr_1343(param1:int, param2:int, param3:int) : *
      {
         return _SafeStr_309[param2][0] == param1 && _SafeStr_309[param2][1] <= param3;
      }
      
      public static function _SafeStr_1339(param1:uint) : String
      {
         return _SafeStr_105[param1];
      }
      
      public function _SafeStr_1210(param1:KeyboardEvent) : *
      {
         _SafeStr_235[param1.keyCode] = Math.max(_SafeStr_235[param1.keyCode],1);
         _SafeStr_562 = param1.keyCode;
      }
      
      public function _SafeStr_1174(param1:KeyboardEvent) : *
      {
         _SafeStr_235[param1.keyCode] = -1;
         var _loc2_:* = int(_SafeStr_449 - 1);
         while(_loc2_ > 0)
         {
            _SafeStr_309[_loc2_] = _SafeStr_309[_loc2_ - 1];
            _loc2_--;
         }
         _SafeStr_309[0] = [param1.keyCode,0];
      }
      
      public function _SafeStr_1219(param1:MouseEvent) : void
      {
         _SafeCls_0._SafeStr_581 = true;
      }
      
      public function _SafeStr_1069(param1:MouseEvent) : void
      {
         _SafeCls_0._SafeStr_581 = false;
      }
      
      private function _SafeStr_1032() : *
      {
         _SafeStr_105[65] = "A";
         _SafeStr_105[66] = "B";
         _SafeStr_105[67] = "C";
         _SafeStr_105[68] = "D";
         _SafeStr_105[69] = "E";
         _SafeStr_105[70] = "F";
         _SafeStr_105[71] = "G";
         _SafeStr_105[72] = "H";
         _SafeStr_105[73] = "I";
         _SafeStr_105[74] = "J";
         _SafeStr_105[75] = "K";
         _SafeStr_105[76] = "L";
         _SafeStr_105[77] = "M";
         _SafeStr_105[78] = "N";
         _SafeStr_105[79] = "O";
         _SafeStr_105[80] = "P";
         _SafeStr_105[81] = "Q";
         _SafeStr_105[82] = "R";
         _SafeStr_105[83] = "S";
         _SafeStr_105[84] = "T";
         _SafeStr_105[85] = "U";
         _SafeStr_105[86] = "V";
         _SafeStr_105[87] = "W";
         _SafeStr_105[88] = "X";
         _SafeStr_105[89] = "Y";
         _SafeStr_105[90] = "Z";
         _SafeStr_105[48] = "0";
         _SafeStr_105[49] = "1";
         _SafeStr_105[50] = "2";
         _SafeStr_105[51] = "3";
         _SafeStr_105[52] = "4";
         _SafeStr_105[53] = "5";
         _SafeStr_105[54] = "6";
         _SafeStr_105[55] = "7";
         _SafeStr_105[56] = "8";
         _SafeStr_105[57] = "9";
         _SafeStr_105[32] = "Spacebar";
         _SafeStr_105[17] = "Ctrl";
         _SafeStr_105[16] = "Shift";
         _SafeStr_105[192] = "~";
         _SafeStr_105[38] = "up";
         _SafeStr_105[40] = "down";
         _SafeStr_105[37] = "left";
         _SafeStr_105[39] = "right";
         _SafeStr_105[96] = "Numpad 0";
         _SafeStr_105[97] = "Numpad 1";
         _SafeStr_105[98] = "Numpad 2";
         _SafeStr_105[99] = "Numpad 3";
         _SafeStr_105[100] = "Numpad 4";
         _SafeStr_105[101] = "Numpad 5";
         _SafeStr_105[102] = "Numpad 6";
         _SafeStr_105[103] = "Numpad 7";
         _SafeStr_105[104] = "Numpad 8";
         _SafeStr_105[105] = "Numpad 9";
         _SafeStr_105[111] = "Numpad /";
         _SafeStr_105[106] = "Numpad *";
         _SafeStr_105[109] = "Numpad -";
         _SafeStr_105[107] = "Numpad +";
         _SafeStr_105[110] = "Numpad .";
         _SafeStr_105[45] = "Insert";
         _SafeStr_105[46] = "Delete";
         _SafeStr_105[33] = "Page Up";
         _SafeStr_105[34] = "Page Down";
         _SafeStr_105[35] = "End";
         _SafeStr_105[36] = "Home";
         _SafeStr_105[112] = "F1";
         _SafeStr_105[113] = "F2";
         _SafeStr_105[114] = "F3";
         _SafeStr_105[115] = "F4";
         _SafeStr_105[116] = "F5";
         _SafeStr_105[117] = "F6";
         _SafeStr_105[118] = "F7";
         _SafeStr_105[119] = "F8";
         _SafeStr_105[188] = ",";
         _SafeStr_105[190] = ".";
         _SafeStr_105[186] = ";";
         _SafeStr_105[222] = "\'";
         _SafeStr_105[219] = "[";
         _SafeStr_105[221] = "]";
         _SafeStr_105[189] = "-";
         _SafeStr_105[187] = "+";
         _SafeStr_105[220] = "\\";
         _SafeStr_105[191] = "/";
         _SafeStr_105[9] = "TAB";
         _SafeStr_105[8] = "Backspace";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_0 = "<L"
 * @identifier _SafePkg_1 = ">"
 * @identifier _SafeStr_105 = "^="
 * @identifier _SafeStr_123 = "&G"
 * @identifier _SafeStr_235 = ">U"
 * @identifier _SafeStr_309 = "!4"
 * @identifier _SafeStr_449 = "]%"
 * @identifier _SafeStr_470 = "[-"
 * @identifier _SafeStr_562 = "2&"
 * @identifier _SafeStr_581 = "!D"
 * @identifier _SafeStr_612 = "0#"
 * @identifier _SafeStr_826 = "&%"
 * @identifier _SafeStr_934 = "3J"
 * @identifier _SafeStr_1015 = "3?"
 * @identifier _SafeStr_1032 = "#O"
 * @identifier _SafeStr_1069 = " "
 * @identifier _SafeStr_1174 = "0%"
 * @identifier _SafeStr_1210 = "`F"
 * @identifier _SafeStr_1219 = "=\'"
 * @identifier _SafeStr_1278 = "!>"
 * @identifier _SafeStr_1336 = "7E"
 * @identifier _SafeStr_1339 = ",<"
 * @identifier _SafeStr_1341 = "?A"
 * @identifier _SafeStr_1343 = "!A"
 */
