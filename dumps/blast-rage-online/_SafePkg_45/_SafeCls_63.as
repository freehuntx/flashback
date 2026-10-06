package _SafePkg_45
{
   public class _SafeCls_63
   {
      
      private var _SafeStr_464:Boolean;
      
      private var _SafeStr_1272:Object;
      
      private var _SafeStr_435:String;
      
      private var _SafeStr_286:int;
      
      private var _SafeStr_124:String;
      
      private const _SafeStr_967:RegExp = /[\x00-\x1F]/;
      
      public function _SafeCls_63(param1:String, param2:Boolean)
      {
         super();
         this._SafeStr_435 = param1;
         this._SafeStr_464 = param2;
         this._SafeStr_286 = 0;
         this._SafeStr_125();
      }
      
      public function _SafeStr_861() : _SafeCls_62
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:_SafeCls_62 = null;
         this._SafeStr_1194();
         switch(this._SafeStr_124)
         {
            case "{":
               _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_571,this._SafeStr_124);
               this._SafeStr_125();
               break;
            case "}":
               _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_397,this._SafeStr_124);
               this._SafeStr_125();
               break;
            case "[":
               _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_672,this._SafeStr_124);
               this._SafeStr_125();
               break;
            case "]":
               _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_374,this._SafeStr_124);
               this._SafeStr_125();
               break;
            case ",":
               _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_383,this._SafeStr_124);
               this._SafeStr_125();
               break;
            case ":":
               _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_683,this._SafeStr_124);
               this._SafeStr_125();
               break;
            case "t":
               _loc2_ = "t" + this._SafeStr_125() + this._SafeStr_125() + this._SafeStr_125();
               if(_loc2_ == "true")
               {
                  _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_584,true);
                  this._SafeStr_125();
                  break;
               }
               this._SafeStr_149("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this._SafeStr_125() + this._SafeStr_125() + this._SafeStr_125() + this._SafeStr_125();
               if(_loc3_ == "false")
               {
                  _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_684,false);
                  this._SafeStr_125();
                  break;
               }
               this._SafeStr_149("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               _loc4_ = "n" + this._SafeStr_125() + this._SafeStr_125() + this._SafeStr_125();
               if(_loc4_ == "null")
               {
                  _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_663,null);
                  this._SafeStr_125();
                  break;
               }
               this._SafeStr_149("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               _loc5_ = "N" + this._SafeStr_125() + this._SafeStr_125();
               if(_loc5_ == "NaN")
               {
                  _loc1_ = _SafeCls_62.create(_SafeCls_65._SafeStr_602,NaN);
                  this._SafeStr_125();
                  break;
               }
               this._SafeStr_149("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this._SafeStr_1042();
               break;
            default:
               if(this._SafeStr_297(this._SafeStr_124) || this._SafeStr_124 == "-")
               {
                  _loc1_ = this._SafeStr_1181();
                  break;
               }
               if(this._SafeStr_124 == "")
               {
                  _loc1_ = null;
                  break;
               }
               this._SafeStr_149("Unexpected " + this._SafeStr_124 + " encountered");
         }
         return _loc1_;
      }
      
      final private function _SafeStr_1042() : _SafeCls_62
      {
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc1_:int = this._SafeStr_286;
         while(true)
         {
            _loc1_ = int(this._SafeStr_435.indexOf("\"",_loc1_));
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = int(_loc1_ - 1);
               while(this._SafeStr_435.charAt(_loc4_) == "\\")
               {
                  _loc3_++;
                  _loc4_--;
               }
               if((_loc3_ & 1) == 0)
               {
                  break;
               }
               _loc1_++;
            }
            else
            {
               this._SafeStr_149("Unterminated string literal");
            }
         }
         var _loc2_:_SafeCls_62 = _SafeCls_62.create(_SafeCls_65._SafeStr_482,this._SafeStr_1020(this._SafeStr_435.substr(this._SafeStr_286,_loc1_ - this._SafeStr_286)));
         this._SafeStr_286 = _loc1_ + 1;
         this._SafeStr_125();
         return _loc2_;
      }
      
      public function _SafeStr_1020(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this._SafeStr_464 && Boolean(this._SafeStr_967.test(param1)))
         {
            this._SafeStr_149("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:String = "";
         var _loc3_:int = 0;
         _loc4_ = 0;
         var _loc5_:int = int(param1.length);
         do
         {
            _loc3_ = int(param1.indexOf("\\",_loc4_));
            if(_loc3_ < 0)
            {
               _loc2_ += param1.substr(_loc4_);
               break;
            }
            _loc2_ += param1.substr(_loc4_,_loc3_ - _loc4_);
            _loc4_ = _loc3_ + 2;
            _loc6_ = param1.charAt(_loc3_ + 1);
            switch(_loc6_)
            {
               case "\"":
                  _loc2_ += _loc6_;
                  break;
               case "\\":
                  _loc2_ += _loc6_;
                  break;
               case "n":
                  _loc2_ += "\n";
                  break;
               case "r":
                  _loc2_ += "\r";
                  break;
               case "t":
                  _loc2_ += "\t";
                  break;
               case "u":
                  _loc7_ = "";
                  _loc8_ = _loc4_ + 4;
                  if(_loc8_ > _loc5_)
                  {
                     this._SafeStr_149("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                  }
                  _loc9_ = _loc4_;
                  while(_loc9_ < _loc8_)
                  {
                     _loc10_ = param1.charAt(_loc9_);
                     if(!this._SafeStr_749(_loc10_))
                     {
                        this._SafeStr_149("Excepted a hex digit, but found: " + _loc10_);
                     }
                     _loc7_ += _loc10_;
                     _loc9_++;
                  }
                  _loc2_ += String.fromCharCode(parseInt(_loc7_,16));
                  _loc4_ = _loc8_;
                  break;
               case "f":
                  _loc2_ += "\f";
                  break;
               case "/":
                  _loc2_ += "/";
                  break;
               case "b":
                  _loc2_ += "\b";
                  break;
               default:
                  _loc2_ += "\\" + _loc6_;
            }
         }
         while(_loc4_ < _loc5_);
         return _loc2_;
      }
      
      final private function _SafeStr_1181() : _SafeCls_62
      {
         var _loc1_:String = "";
         if(this._SafeStr_124 == "-")
         {
            _loc1_ += "-";
            this._SafeStr_125();
         }
         if(!this._SafeStr_297(this._SafeStr_124))
         {
            this._SafeStr_149("Expecting a digit");
         }
         if(this._SafeStr_124 == "0")
         {
            _loc1_ += this._SafeStr_124;
            this._SafeStr_125();
            if(this._SafeStr_297(this._SafeStr_124))
            {
               this._SafeStr_149("A digit cannot immediately follow 0");
            }
            else if(!this._SafeStr_464 && this._SafeStr_124 == "x")
            {
               _loc1_ += this._SafeStr_124;
               this._SafeStr_125();
               if(this._SafeStr_749(this._SafeStr_124))
               {
                  _loc1_ += this._SafeStr_124;
                  this._SafeStr_125();
               }
               else
               {
                  this._SafeStr_149("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this._SafeStr_749(this._SafeStr_124))
               {
                  _loc1_ += this._SafeStr_124;
                  this._SafeStr_125();
               }
            }
         }
         else
         {
            while(this._SafeStr_297(this._SafeStr_124))
            {
               _loc1_ += this._SafeStr_124;
               this._SafeStr_125();
            }
         }
         if(this._SafeStr_124 == ".")
         {
            _loc1_ += ".";
            this._SafeStr_125();
            if(!this._SafeStr_297(this._SafeStr_124))
            {
               this._SafeStr_149("Expecting a digit");
            }
            while(this._SafeStr_297(this._SafeStr_124))
            {
               _loc1_ += this._SafeStr_124;
               this._SafeStr_125();
            }
         }
         if(this._SafeStr_124 == "e" || this._SafeStr_124 == "E")
         {
            _loc1_ += "e";
            this._SafeStr_125();
            if(this._SafeStr_124 == "+" || this._SafeStr_124 == "-")
            {
               _loc1_ += this._SafeStr_124;
               this._SafeStr_125();
            }
            if(!this._SafeStr_297(this._SafeStr_124))
            {
               this._SafeStr_149("Scientific notation number needs exponent value");
            }
            while(this._SafeStr_297(this._SafeStr_124))
            {
               _loc1_ += this._SafeStr_124;
               this._SafeStr_125();
            }
         }
         var _loc2_:Number = Number(Number(_loc1_));
         if(Boolean(isFinite(_loc2_)) && !isNaN(_loc2_))
         {
            return _SafeCls_62.create(_SafeCls_65._SafeStr_657,_loc2_);
         }
         this._SafeStr_149("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      final private function _SafeStr_125() : String
      {
         return this._SafeStr_124 = this._SafeStr_435.charAt(this._SafeStr_286++);
      }
      
      final private function _SafeStr_1194() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this._SafeStr_286;
            this._SafeStr_1021();
            this._SafeStr_1118();
         }
         while(_loc1_ != this._SafeStr_286);
      }
      
      private function _SafeStr_1118() : void
      {
         if(this._SafeStr_124 == "/")
         {
            this._SafeStr_125();
            switch(this._SafeStr_124)
            {
               case "/":
                  do
                  {
                     this._SafeStr_125();
                  }
                  while(this._SafeStr_124 != "\n" && this._SafeStr_124 != "");
                  this._SafeStr_125();
                  break;
               case "*":
                  this._SafeStr_125();
                  while(true)
                  {
                     if(this._SafeStr_124 == "*")
                     {
                        this._SafeStr_125();
                        if(this._SafeStr_124 == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this._SafeStr_125();
                     }
                     if(this._SafeStr_124 == "")
                     {
                        this._SafeStr_149("Multi-line comment not closed");
                     }
                  }
                  this._SafeStr_125();
                  break;
               default:
                  this._SafeStr_149("Unexpected " + this._SafeStr_124 + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      final private function _SafeStr_1021() : void
      {
         while(this._SafeStr_1114(this._SafeStr_124))
         {
            this._SafeStr_125();
         }
      }
      
      final private function _SafeStr_1114(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this._SafeStr_464 && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      final private function _SafeStr_297(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      final private function _SafeStr_749(param1:String) : Boolean
      {
         return this._SafeStr_297(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      final public function _SafeStr_149(param1:String) : void
      {
         throw new JSONParseError(param1,this._SafeStr_286,this._SafeStr_435);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_62 = "5>"
 * @identifier _SafeCls_63 = "69"
 * @identifier _SafeCls_65 = " each"
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafeStr_124 = "47"
 * @identifier _SafeStr_125 = "!#"
 * @identifier _SafeStr_149 = "`S"
 * @identifier _SafeStr_286 = "4A"
 * @identifier _SafeStr_297 = "=+"
 * @identifier _SafeStr_374 = "64"
 * @identifier _SafeStr_383 = "=-"
 * @identifier _SafeStr_397 = "=M"
 * @identifier _SafeStr_435 = "#V"
 * @identifier _SafeStr_464 = "2D"
 * @identifier _SafeStr_482 = "%N"
 * @identifier _SafeStr_571 = "]>"
 * @identifier _SafeStr_584 = "1S"
 * @identifier _SafeStr_602 = "2Q"
 * @identifier _SafeStr_657 = "2?"
 * @identifier _SafeStr_663 = "8-"
 * @identifier _SafeStr_672 = "`B"
 * @identifier _SafeStr_683 = "`M"
 * @identifier _SafeStr_684 = "[R"
 * @identifier _SafeStr_749 = ";-"
 * @identifier _SafeStr_861 = " else"
 * @identifier _SafeStr_967 = "79"
 * @identifier _SafeStr_1020 = "3N"
 * @identifier _SafeStr_1021 = "0\'"
 * @identifier _SafeStr_1042 = "\"C"
 * @identifier _SafeStr_1114 = "[S"
 * @identifier _SafeStr_1118 = "^P"
 * @identifier _SafeStr_1181 = ";P"
 * @identifier _SafeStr_1194 = "3>"
 * @identifier _SafeStr_1272 = "49"
 */
