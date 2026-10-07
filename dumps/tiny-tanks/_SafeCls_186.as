package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.text.*;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   
   public class _SafeCls_186 extends Sprite
   {
      
      public var _SafeStr_534:Number = 145;
      
      public var _SafeStr_2650:int = 14;
      
      public var _SafeStr_707:Boolean = true;
      
      public var createVarsThatDontExist:Boolean = true;
      
      public var _SafeStr_797:Boolean = true;
      
      public var _SafeStr_2058:Number = 15;
      
      public var _SafeStr_853:Boolean = true;
      
      public var _SafeStr_670:Boolean = false;
      
      public var _SafeStr_567:Boolean = false;
      
      public var _SafeStr_1949:String = "name : value";
      
      public var _SafeStr_2392:Boolean = true;
      
      public var _SafeStr_569:String = "   ";
      
      private const _SafeStr_320:String = "06C1FF";
      
      private const _SafeStr_1929:String = "B5B5B5";
      
      private const _SafeStr_2151:String = "Torrunt\'s AS3 Developer Console";
      
      private const _SafeStr_2310:String = " - Type \'clear\' to clear the console\n" + " - Type \'author\' to get info on the author of this console\n" + " - Use Quotations when you want enter string literal with spaces (\"\")\n" + " - Use Square Brackets when you want to use an arral literal (e.g:[0][1])\n" + " - You can do multiple commands at once by seperating them with \';\'s\n" + " - You can also put x# after a \';\' to do that command # many times\n" + " - Calculations are allowed when assigning or in parameters (+,-,*,/,%). BIMDAS is not supported\n" + " - Type \'trace:something\' to start tracing something or \'stoptrace:something\' to stop tracing it\n" + " - You can also use \'trace:fps\' to check your fps\n" + " - Toggle Fullscreen console with the F7 key\n" + " - Use the Up/Down arrow keys to go through your previous used commands or suggestions\n" + " - Use PAGE UP/DOWN and HOME/END on your keyboard to scroll up and down";
      
      private const _SafeStr_1620:String = this._SafeStr_2151 + " was programmed by Corey Zeke Womack (Torrunt)\nme@torrunt.net\nhttp://torrunt.net";
      
      private var main:*;
      
      private var _SafeStr_300:Boolean = false;
      
      private var container:Sprite = new Sprite();
      
      private var _SafeStr_563:TextField;
      
      private var _SafeStr_1877:TextFormat;
      
      private var _SafeStr_1776:TextField;
      
      private var _SafeStr_905:TextField;
      
      private var cmdSuggest:Array = new Array();
      
      private var _SafeStr_1456:Array = new Array();
      
      private var _SafeStr_537:Array;
      
      private var _SafeStr_1505:int = -1;
      
      private const _SafeStr_1733:Number = this._SafeStr_534;
      
      private var _SafeStr_1236:Array = new Array();
      
      private var _SafeStr_2652:Array = new Array();
      
      private var slideAnimation_animating:Boolean = false;
      
      private var _SafeStr_560:Number = 0;
      
      private var _SafeStr_2515:TextField;
      
      private var _SafeStr_1407:TextField;
      
      private var _SafeStr_2405:Array = new Array();
      
      private var _SafeStr_2099:Number;
      
      private var _SafeStr_2057:Number;
      
      public var fps:String;
      
      private var last:uint = getTimer();
      
      private var _SafeStr_2056:uint = 0;
      
      private var activated:Boolean = false;
      
      private var _SafeStr_427:Boolean = false;
      
      private var _SafeStr_2619:Boolean = false;
      
      private var _SafeStr_2340:Boolean = false;
      
      public function _SafeCls_186(param1:*)
      {
         super();
         this.main = param1;
         addChild(this.container);
         this._SafeStr_1877 = new TextFormat();
         this._SafeStr_1877.size = 14;
         this._SafeStr_1877.font = "Courier New";
         this._SafeStr_1877.color = 16777215;
         this._SafeStr_1776 = new TextField();
         this.container.addChild(this._SafeStr_1776);
         this._SafeStr_1776.width = this.main.stage.stageWidth;
         this._SafeStr_1776.height = this._SafeStr_534 - 20;
         this._SafeStr_1776.alpha = 0.85;
         this._SafeStr_1776.selectable = false;
         this._SafeStr_1776.multiline = true;
         this._SafeStr_1776.wordWrap = true;
         this._SafeStr_1776.defaultTextFormat = this._SafeStr_1877;
         this._SafeStr_1776.background = true;
         this._SafeStr_1776.backgroundColor = 0;
         this._SafeStr_905 = new TextField();
         this._SafeStr_905.type = TextFieldType.INPUT;
         this.container.addChild(this._SafeStr_905);
         this._SafeStr_905.width = this.main.stage.stageWidth;
         this._SafeStr_905.height = 21;
         this._SafeStr_905.y = this._SafeStr_1776.height;
         this._SafeStr_905.x = 0;
         this._SafeStr_905.alpha = 0.85;
         this._SafeStr_905.defaultTextFormat = this._SafeStr_1877;
         this._SafeStr_905.background = true;
         this._SafeStr_905.backgroundColor = 4934475;
         this._SafeStr_563 = new TextField();
         this.container.addChild(this._SafeStr_563);
         this._SafeStr_563.width = 150;
         this._SafeStr_563.height = 20;
         this._SafeStr_563.y = this._SafeStr_905.y + this._SafeStr_905.height;
         this._SafeStr_563.alpha = 0.85;
         this._SafeStr_563.selectable = false;
         this._SafeStr_563.defaultTextFormat = this._SafeStr_1877;
         this._SafeStr_563.background = true;
         this._SafeStr_563.backgroundColor = 0;
         this._SafeStr_563.autoSize = TextFieldAutoSize.LEFT;
         this._SafeStr_563.visible = false;
         this._SafeStr_563.multiline = true;
         this._SafeStr_2099 = this.main.stage.stageWidth - 5;
         this._SafeStr_2057 = 5;
         this._SafeStr_1877.bold = true;
         this._SafeStr_2515 = new TextField();
         addChild(this._SafeStr_2515);
         this._SafeStr_2515.alpha = 0.75;
         this._SafeStr_2515.selectable = false;
         this._SafeStr_1877.align = "right";
         this._SafeStr_2515.defaultTextFormat = this._SafeStr_1877;
         this._SafeStr_2515.background = true;
         this._SafeStr_2515.backgroundColor = 6710886;
         this._SafeStr_2515.autoSize = TextFieldAutoSize.LEFT;
         this._SafeStr_2515.visible = false;
         this._SafeStr_1407 = new TextField();
         addChild(this._SafeStr_1407);
         this._SafeStr_1407.alpha = 0.75;
         this._SafeStr_1407.selectable = false;
         this._SafeStr_1877.align = "left";
         this._SafeStr_1407.defaultTextFormat = this._SafeStr_1877;
         this._SafeStr_1407.background = true;
         this._SafeStr_1407.backgroundColor = 6710886;
         this._SafeStr_1407.autoSize = TextFieldAutoSize.LEFT;
         this._SafeStr_1407.visible = false;
         this._SafeStr_1048(this._SafeStr_2151,"-","torrunt.net");
         if(this._SafeStr_797)
         {
            this.container.y = -this._SafeStr_1776.height - this._SafeStr_905.height;
         }
         this.container.visible = false;
      }
      
      public function open() : void
      {
         if(this._SafeStr_300)
         {
            return;
         }
         this.container.visible = true;
         this._SafeStr_300 = true;
         this.main.stage.focus = this._SafeStr_905;
         this.main.stage.addEventListener(KeyboardEvent.KEY_UP,this._SafeStr_1082);
         this.main.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_2424);
         this._SafeStr_905.addEventListener(TextEvent.TEXT_INPUT,this.onTextInput);
         if(this._SafeStr_797)
         {
            this.startSlideAnimation(true);
         }
      }
      
      public function close() : void
      {
         if(!this._SafeStr_300)
         {
            return;
         }
         this.container.visible = false;
         this._SafeStr_300 = false;
         this._SafeStr_905.text = "";
         this._SafeStr_1505 = -1;
         this.main.stage.removeEventListener(KeyboardEvent.KEY_UP,this._SafeStr_1082);
         this.main.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_2424);
         this._SafeStr_905.removeEventListener(TextEvent.TEXT_INPUT,this.onTextInput);
         if(this._SafeStr_797)
         {
            this.startSlideAnimation(false);
         }
      }
      
      public function toggle() : void
      {
         if(this._SafeStr_300)
         {
            this.close();
         }
         else
         {
            this.open();
         }
      }
      
      public function isOpen() : Boolean
      {
         return this._SafeStr_300;
      }
      
      private function _SafeStr_2424(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13 && this._SafeStr_905.text != "")
         {
            this._SafeStr_1048(this._SafeStr_905.text,"#999999");
            if(this._SafeStr_1456[this._SafeStr_1456.length - 1] != this._SafeStr_905.text)
            {
               this._SafeStr_1456.push(this._SafeStr_905.text);
               this._SafeStr_1505 = -1;
            }
            this._SafeStr_1385(this._SafeStr_905.text);
            this._SafeStr_905.text = "";
            this._SafeStr_2159();
         }
         if(param1.keyCode == 8)
         {
            if(this._SafeStr_905.length - 1 <= 0)
            {
               this._SafeStr_2159();
            }
            else
            {
               this._SafeStr_473(this._SafeStr_905.text.substr(0,this._SafeStr_905.length - 1));
            }
         }
         if(this._SafeStr_563.visible)
         {
            this._SafeStr_537 = this.cmdSuggest;
         }
         else
         {
            this._SafeStr_537 = this._SafeStr_1456;
         }
         if(param1.keyCode == 38 && this._SafeStr_537[this._SafeStr_537.length - 1 - (this._SafeStr_1505 + 1)] != null)
         {
            ++this._SafeStr_1505;
            this._SafeStr_2111();
            this._SafeStr_427 = true;
         }
         if(param1.keyCode == 40)
         {
            if(this._SafeStr_537[this._SafeStr_537.length - 1 - (this._SafeStr_1505 - 1)] != null)
            {
               --this._SafeStr_1505;
               this._SafeStr_2111();
            }
            else if(this._SafeStr_537 == this._SafeStr_1456)
            {
               this._SafeStr_905.text = "";
               this._SafeStr_1505 = -1;
            }
         }
         if(param1.keyCode == 33)
         {
            --this._SafeStr_1776.scrollV;
         }
         if(param1.keyCode == 34)
         {
            ++this._SafeStr_1776.scrollV;
         }
         if(param1.keyCode == 36)
         {
            this._SafeStr_1776.scrollV = 0;
         }
         if(param1.keyCode == 35)
         {
            this._SafeStr_1776.scrollV = this._SafeStr_1776.maxScrollV;
         }
         if(param1.keyCode == 118)
         {
            this._SafeStr_548();
         }
      }
      
      private function _SafeStr_1082(param1:KeyboardEvent) : void
      {
         if(this._SafeStr_427)
         {
            this._SafeStr_905.setSelection(this._SafeStr_905.length,this._SafeStr_905.length);
            this._SafeStr_427 = false;
         }
      }
      
      private function _SafeStr_2111() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this._SafeStr_537 == this.cmdSuggest)
         {
            if(this._SafeStr_905.text.lastIndexOf("();") + 3 == this._SafeStr_905.length)
            {
               this._SafeStr_905.text = this._SafeStr_905.text.substr(0,this._SafeStr_905.length - 3);
            }
            _loc1_ = this._SafeStr_333(_loc1_,this._SafeStr_905.text,["."," ","(",",","-","+","/","*","%",";",":","["]);
            _loc2_ = int(_loc1_[0]);
            _loc3_ = 1;
            while(_loc3_ < _loc1_.length)
            {
               if(_loc1_[_loc3_] > _loc2_)
               {
                  _loc2_ = int(_loc1_[_loc3_]);
               }
               _loc3_++;
            }
            if(this._SafeStr_905.text.charAt(_loc2_) == "(" && _loc2_ == this._SafeStr_905.length - 1)
            {
               this._SafeStr_905.text = this._SafeStr_905.text.substr(0,_loc2_);
               this._SafeStr_2111();
               return;
            }
            this._SafeStr_905.text = this._SafeStr_905.text.substr(0,_loc2_ + 1);
            this._SafeStr_905.appendText(this._SafeStr_537[this._SafeStr_537.length - 1 - this._SafeStr_1505]);
         }
         else
         {
            this._SafeStr_905.text = this._SafeStr_537[this._SafeStr_537.length - 1 - this._SafeStr_1505];
         }
         this._SafeStr_905.setSelection(this._SafeStr_905.length,this._SafeStr_905.length);
      }
      
      private function onTextInput(param1:TextEvent) : void
      {
         if(param1.text == "`" || this._SafeStr_905.text == "`")
         {
            this._SafeStr_905.text = this._SafeStr_905.text.slice(0,-1);
         }
         this._SafeStr_473(this._SafeStr_905.text + param1.text);
      }
      
      private function _SafeStr_473(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:XML = null;
         var _loc12_:String = null;
         var _loc13_:Boolean = false;
         var _loc14_:XML = null;
         this._SafeStr_2159();
         this._SafeStr_2619 = false;
         this._SafeStr_2340 = false;
         if(param1.length == 0)
         {
            return;
         }
         if(param1.indexOf(";") > 1)
         {
            param1 = param1.slice(param1.lastIndexOf(";") + 1,param1.length);
         }
         param1 = this.stringReplaceAll(param1," ");
         _loc2_ = this._SafeStr_333(_loc2_,param1,["(","=",",","-","+","/","*","%",":","["]);
         if(this._SafeStr_811(param1,"]") == this._SafeStr_811(param1,"["))
         {
            _loc2_.pop();
         }
         if(this._SafeStr_811(param1,")") == this._SafeStr_811(param1,"("))
         {
            _loc2_.shift();
         }
         var _loc3_:int = int(_loc2_[0]);
         var _loc4_:int = 1;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_] > _loc3_)
            {
               _loc3_ = int(_loc2_[_loc4_]);
            }
            _loc4_++;
         }
         param1 = param1.substring(_loc3_ + 1,param1.length);
         if(param1 != "")
         {
            try
            {
               _loc5_ = this.stringToVarWithCalculation(param1,this.main,true);
               _loc6_ = param1.substring(param1.lastIndexOf(".") + 1,param1.length);
               _loc7_ = describeType(_loc5_);
               _loc8_ = "";
               if(_loc7_.*.length() > 3)
               {
                  for each(_loc9_ in _loc7_.variable)
                  {
                     if(this._SafeStr_563.numLines >= this._SafeStr_2650)
                     {
                        this._SafeStr_2340 = true;
                        break;
                     }
                     if(_loc9_.@name.indexOf(_loc6_) == 0)
                     {
                        if(this._SafeStr_707)
                        {
                           _loc8_ = ":" + "<font color=\"#" + this._SafeStr_320 + "\">" + _loc9_.@type + "</font>";
                        }
                        this.cmdSuggest.push(_loc9_.@name);
                        this._SafeStr_563.htmlText += _loc9_.@name + _loc8_ + "<br>";
                        this._SafeStr_2619 = true;
                     }
                  }
                  for each(_loc10_ in _loc7_.accessor)
                  {
                     if(this._SafeStr_563.numLines >= this._SafeStr_2650)
                     {
                        this._SafeStr_2340 = true;
                        break;
                     }
                     if(_loc10_.@name.indexOf(_loc6_) == 0)
                     {
                        if(this._SafeStr_707)
                        {
                           _loc8_ = ":" + "<font color=\"#" + this._SafeStr_320 + "\">" + _loc10_.@type + "</font>";
                        }
                        this.cmdSuggest.push(_loc10_.@name);
                        this._SafeStr_563.htmlText += _loc10_.@name + _loc8_ + " <font color=\"#818181\">(accessor)</font><br>";
                        this._SafeStr_2619 = true;
                     }
                  }
                  for each(_loc11_ in _loc7_.method)
                  {
                     if(this._SafeStr_563.numLines >= this._SafeStr_2650)
                     {
                        this._SafeStr_2340 = true;
                        break;
                     }
                     if(_loc11_.@name.indexOf(_loc6_) == 0)
                     {
                        if(this._SafeStr_707)
                        {
                           _loc8_ = ":" + "<font color=\"#" + this._SafeStr_320 + "\">" + _loc11_.@returnType + "</font>";
                        }
                        _loc12_ = _loc11_.@name + "(";
                        this._SafeStr_2619 = true;
                        if(_loc11_.parameter != undefined)
                        {
                           _loc13_ = true;
                           for each(_loc14_ in _loc11_.parameter)
                           {
                              if(!_loc13_)
                              {
                                 _loc12_ += ", ";
                              }
                              else
                              {
                                 _loc13_ = false;
                              }
                              _loc12_ += "<font color=\"#" + this._SafeStr_1929 + "\">" + _loc14_.@type + "</font>";
                           }
                           this.cmdSuggest.push(_loc11_.@name + "(");
                        }
                        else
                        {
                           this.cmdSuggest.push(_loc11_.@name + "();");
                        }
                        this._SafeStr_563.htmlText += _loc12_ + ")" + _loc8_ + "<br>";
                     }
                  }
               }
               if(this._SafeStr_2619)
               {
                  if(this._SafeStr_2340)
                  {
                     this._SafeStr_563.htmlText += "...";
                  }
                  if(this._SafeStr_534 == this.main.stage.stageHeight)
                  {
                     this._SafeStr_563.y = this._SafeStr_905.y - this._SafeStr_563.height;
                  }
                  else
                  {
                     this._SafeStr_563.y = this._SafeStr_905.y + this._SafeStr_905.height;
                  }
                  this._SafeStr_563.visible = true;
                  this._SafeStr_1505 = this.cmdSuggest.length;
               }
            }
            catch(er:Error)
            {
            }
         }
      }
      
      private function _SafeStr_2159() : void
      {
         this._SafeStr_563.visible = false;
         this._SafeStr_563.htmlText = "";
         this._SafeStr_563.height = 20;
         this.cmdSuggest = new Array();
         this._SafeStr_1505 = -1;
      }
      
      public function _SafeStr_1385(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.activated)
         {
            if(param1.indexOf(";") > 1)
            {
               _loc2_ = param1.split(";");
               _loc3_ = 0;
               while(_loc3_ < _loc2_.length)
               {
                  if(_loc2_[_loc3_].indexOf("x") == 0)
                  {
                     _loc2_[_loc3_] = Number(_loc2_[_loc3_].slice(1,_loc2_[_loc3_].length));
                     _loc4_ = 1;
                     while(_loc4_ < _loc2_[_loc3_])
                     {
                        this.interpretString(_loc2_[_loc3_ - 1]);
                        _loc4_++;
                     }
                  }
                  else if(_loc2_[_loc3_] != "")
                  {
                     this.interpretString(_loc2_[_loc3_]);
                  }
                  _loc3_++;
               }
            }
            else
            {
               this.interpretString(param1);
            }
         }
         else if(param1 == "fucklittleshits")
         {
            this.activated = true;
            this._SafeStr_1048("Console activated.");
         }
         else
         {
            this.warn("Console must be activated first!");
         }
      }
      
      public function interpretString(param1:String) : void
      {
         var _loc2_:Array = null;
         param1 = this.stringReplaceAll(param1,";");
         param1 = this.stringReplaceButExclude(param1," ",["\""],"",[false]);
         if(param1.indexOf("&") >= 0)
         {
            param1 = param1.split("&").join("");
            this.main.sendStream.send("recvDevConsoleCommand",param1);
         }
         if(param1.indexOf("=") > 0)
         {
            _loc2_ = param1.split("=");
            _loc2_ = this._SafeStr_2493(_loc2_);
            _loc2_[1] = this.stringToVarWithCalculation(_loc2_[1]);
            this._SafeStr_2583(_loc2_[0],_loc2_[1]);
         }
         else if(param1.indexOf("trace:") == 0)
         {
            this._SafeStr_2050(param1);
         }
         else if(param1.indexOf("stoptrace:") == 0)
         {
            this.stopTrace(param1);
         }
         else
         {
            switch(param1)
            {
               case "clear":
                  this._SafeStr_1776.text = "";
                  break;
               case "help":
                  this._SafeStr_1048(this._SafeStr_2310,"#0099CC");
                  break;
               case "author":
                  this._SafeStr_1048(this._SafeStr_1620,"#0099CC");
                  break;
               default:
                  this._SafeStr_2168(param1);
            }
         }
      }
      
      private function _SafeStr_2168(param1:String) : void
      {
         var value:* = undefined;
         var varname:String = param1;
         var rstring:String = varname + " returned ";
         try
         {
            value = this.stringToVarWithCalculation(varname);
            if(value == undefined)
            {
               return;
            }
            rstring += value;
            this._SafeStr_1048(rstring);
         }
         catch(er:Error)
         {
            error(er.message);
         }
      }
      
      private function _SafeStr_2583(param1:String, param2:*) : void
      {
         var str:String = null;
         var v:Array = null;
         var index:int = 0;
         var varname:String = param1;
         var vset:* = param2;
         try
         {
            try
            {
               if(vset is String)
               {
                  vset = this.stringToArray(vset);
               }
            }
            catch(er:Error)
            {
            }
            if(vset == "true")
            {
               vset = true;
            }
            else if(vset == "false")
            {
               vset = false;
            }
            if(!isNaN(vset))
            {
               vset = Number(vset);
            }
            str = this.stringReplaceButExclude(varname,".",["[","]","(",")"],"`",[false,false,false,false]);
            v = str.split("`");
            if(!this._SafeStr_1112(varname,vset,v,this.main))
            {
               throw new Error();
            }
         }
         catch(er:Error)
         {
            index = int(_SafeStr_1236.indexOf(v[0]));
            if(index == -1 && stringToVar(varname) != varname)
            {
               error("Invalid type");
            }
            else if(createVarsThatDontExist && v.length == 1)
            {
               _SafeStr_1236.push(v[0]);
               _SafeStr_2652.push(vset);
               warn("Temporary variable called \"" + v[0] + "\" created with the value " + vset);
            }
            else
            {
               error(er.message);
            }
         }
      }
      
      private function _SafeStr_1112(param1:String, param2:*, param3:Array, param4:*, param5:Boolean = false) : Boolean
      {
         var tempAry:Array = null;
         var i:int = 0;
         var cl:* = undefined;
         var index:int = 0;
         var varname:String = param1;
         var vset:* = param2;
         var v:Array = param3;
         var ob:* = param4;
         var skipFirstIndex:Boolean = param5;
         try
         {
            i = skipFirstIndex ? 1 : 0;
            for(; i < v.length - 1; i++)
            {
               if(v[i].indexOf("[") <= -1)
               {
                  ob = ob[v[i]];
                  continue;
               }
               tempAry = this.stringToArrayItem(v[i]);
               switch(tempAry.length)
               {
                  case 4:
                     ob = ob[tempAry[0]][tempAry[1]][tempAry[2]][tempAry[3]];
                     break;
                  case 3:
                     ob = ob[tempAry[0]][tempAry[1]][tempAry[2]];
                     break;
                  default:
                     ob = ob[tempAry[0]][tempAry[1]];
               }
            }
            if(v[v.length - 1].indexOf("[") == -1)
            {
               ob[v[v.length - 1]] = vset;
               this._SafeStr_1048(varname + " is now " + ob[v[v.length - 1]]);
            }
            else
            {
               tempAry = this.stringToArrayItem(v[v.length - 1]);
               switch(tempAry.length)
               {
                  case 4:
                     ob[tempAry[0]][tempAry[1]][tempAry[2]][tempAry[3]] = vset;
                     break;
                  case 3:
                     ob[tempAry[0]][tempAry[1]][tempAry[2]] = vset;
                     break;
                  default:
                     ob[tempAry[0]][tempAry[1]] = vset;
               }
            }
            return true;
         }
         catch(e:Error)
         {
            cl = v[0];
            i = 0;
            while(i < v.length)
            {
               try
               {
                  ob = getDefinitionByName(cl) as Class;
                  break;
               }
               catch(e:Error)
               {
                  cl = cl + "." + v[i + 1];
               }
               i++;
            }
            if(ob is Class)
            {
               i++;
               while(i < v.length)
               {
                  ob[v[v.length - 1]] = vset;
                  _SafeStr_1048(varname + " is now " + ob[v[v.length - 1]]);
                  i++;
               }
               return v.length > 1;
            }
            index = int(_SafeStr_1236.indexOf(v[0].indexOf("[") == -1 ? v[0] : v[0].substring(0,v[0].indexOf("["))));
            if(index != -1)
            {
               if(v.length > 1 || v[0].indexOf("[") != -1)
               {
                  ob = _SafeStr_2652[index];
                  i = v[0].indexOf("[") != -1 ? 0 : 1;
                  for(; i < v.length; i++)
                  {
                     if(v[i].indexOf("[") == -1)
                     {
                        ob[v[i]] = vset;
                        _SafeStr_1048(varname + " is now " + ob[v[i]]);
                        continue;
                     }
                     tempAry = stringToArrayItem(v[i]);
                     if(i == 0)
                     {
                        tempAry.shift();
                     }
                     switch(tempAry.length)
                     {
                        case 4:
                           ob[tempAry[0]][tempAry[1]][tempAry[2]][tempAry[3]] = vset;
                           break;
                        case 3:
                           ob[tempAry[0]][tempAry[1]][tempAry[2]] = vset;
                           break;
                        case 2:
                           ob[tempAry[0]][tempAry[1]] = vset;
                           break;
                        default:
                           ob[tempAry[0]] = vset;
                     }
                  }
               }
               else
               {
                  _SafeStr_2652[index] = vset;
                  _SafeStr_1048(varname + " is now " + _SafeStr_2652[index]);
               }
               return true;
            }
            return false;
         }
      }
      
      private function stringToVar(param1:String, param2:* = null, param3:Boolean = false) : *
      {
         var ob:* = undefined;
         var lo:int = 0;
         var splitString:String = null;
         var v:Array = null;
         var i:int = 0;
         var tempAry:Array = null;
         var cl:* = undefined;
         var index:int = 0;
         var str:String = param1;
         var base:* = param2;
         var leaveOutLast:Boolean = param3;
         if(base == null)
         {
            base = this.main;
         }
         ob = str;
         lo = 0;
         if(leaveOutLast)
         {
            lo = 1;
         }
         if(str.indexOf("\"") == -1 && Boolean(isNaN(Number(str))))
         {
            splitString = this.stringReplaceButExclude(str,".",["[","]","(",")"],"`",[false,false,false,false]);
            v = splitString.split("`");
            try
            {
               ob = base;
               i = 0;
               for(; i < v.length - lo; i++)
               {
                  if(v[i].indexOf("[") == -1)
                  {
                     ob = ob[v[i]];
                     continue;
                  }
                  tempAry = this.stringToArrayItem(v[i]);
                  switch(tempAry.length)
                  {
                     case 4:
                        ob = ob[tempAry[0]][tempAry[1]][tempAry[2]][tempAry[3]];
                        break;
                     case 3:
                        ob = ob[tempAry[0]][tempAry[1]][tempAry[2]];
                        break;
                     default:
                        ob = ob[tempAry[0]][tempAry[1]];
                  }
               }
               if(ob == undefined)
               {
                  throw new Error();
               }
            }
            catch(e:Error)
            {
               cl = v[0];
               i = 0;
               while(i < v.length)
               {
                  try
                  {
                     ob = getDefinitionByName(cl) as Class;
                     break;
                  }
                  catch(e:Error)
                  {
                     cl = cl + "." + v[i + 1];
                  }
                  i++;
               }
               if(ob is Class)
               {
                  i++;
                  for(; i < v.length - lo; i++)
                  {
                     if(v[i].indexOf("[") == -1)
                     {
                        ob = ob[v[i]];
                        continue;
                     }
                     tempAry = stringToArrayItem(v[i]);
                     switch(tempAry.length)
                     {
                        case 4:
                           ob = ob[tempAry[0]][tempAry[1]][tempAry[2]][tempAry[3]];
                           break;
                        case 3:
                           ob = ob[tempAry[0]][tempAry[1]][tempAry[2]];
                           break;
                        default:
                           ob = ob[tempAry[0]][tempAry[1]];
                     }
                  }
               }
               else
               {
                  index = int(_SafeStr_1236.indexOf(v[0].indexOf("[") == -1 ? v[0] : v[0].substring(0,v[0].indexOf("["))));
                  if(index != -1)
                  {
                     ob = _SafeStr_2652[index];
                     i = v[0].indexOf("[") != -1 ? 0 : 1;
                     for(; i < v.length; i++)
                     {
                        if(v[i].indexOf("[") == -1)
                        {
                           ob = ob[v[i]];
                           continue;
                        }
                        tempAry = stringToArrayItem(v[i]);
                        if(i == 0)
                        {
                           tempAry.shift();
                        }
                        switch(tempAry.length)
                        {
                           case 4:
                              ob = ob[tempAry[0]][tempAry[1]][tempAry[2]][tempAry[3]];
                              break;
                           case 3:
                              ob = ob[tempAry[0]][tempAry[1]][tempAry[2]];
                              break;
                           case 2:
                              ob = ob[tempAry[0]][tempAry[1]];
                              break;
                           default:
                              ob = ob[tempAry[0]];
                        }
                     }
                  }
                  else
                  {
                     ob = str;
                  }
               }
            }
         }
         return ob;
      }
      
      private function stringToFunc(param1:String, param2:* = null, param3:Boolean = false) : *
      {
         var _loc7_:Array = null;
         var _loc4_:String = param1.substring(param1.indexOf(")") + 2);
         param1 = param1.substring(0,param1.indexOf(")"));
         var _loc5_:String = param1.substring(0,param1.indexOf("("));
         var _loc6_:String = param1.substring(param1.indexOf("(") + 1);
         if(_loc6_ == "")
         {
            _loc7_ = new Array();
         }
         else
         {
            _loc7_ = this.stringToPars(_loc6_);
         }
         if(_loc4_ == "")
         {
            return this.stringToVar(_loc5_,param2,param3).apply(null,_loc7_);
         }
         return this.stringToVarWithCalculation(_loc4_,this.stringToVar(_loc5_).apply(null,_loc7_),param3);
      }
      
      private function stringToNewInstance(param1:String, param2:Boolean = true) : *
      {
         var pars:Array = null;
         var obj:* = undefined;
         var str:String = param1;
         var allowError:Boolean = param2;
         str = str.replace("new","");
         str = this.stringReplaceAll(str,")");
         var cl:* = str;
         var p:String = "";
         if(str.indexOf("(") != -1)
         {
            cl = str.substring(0,str.indexOf("("));
            p = str.substring(str.indexOf("(") + 1);
         }
         if(p == "")
         {
            pars = new Array();
         }
         else
         {
            pars = this.stringToPars(p);
         }
         cl = this.stringToVar(cl);
         try
         {
            switch(pars.length)
            {
               default:
                  obj = new cl();
                  break;
               case 1:
                  obj = new cl(pars[0]);
                  break;
               case 2:
                  obj = new cl(pars[0],pars[1]);
                  break;
               case 3:
                  obj = new cl(pars[0],pars[1],pars[2]);
                  break;
               case 4:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3]);
                  break;
               case 5:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4]);
                  break;
               case 6:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4],pars[5]);
                  break;
               case 7:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4],pars[5],pars[6]);
                  break;
               case 8:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4],pars[5],pars[6],pars[7]);
                  break;
               case 9:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4],pars[5],pars[6],pars[7],pars[8]);
                  break;
               case 10:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4],pars[5],pars[6],pars[7],pars[8],pars[9]);
                  break;
               case 11:
                  obj = new cl(pars[0],pars[1],pars[2],pars[3],pars[4],pars[5],pars[6],pars[7],pars[8],pars[9],pars[10]);
            }
         }
         catch(e:Error)
         {
            if(!allowError)
            {
               error(e.message);
            }
         }
         return obj;
      }
      
      private function stringToPars(param1:String) : Array
      {
         param1 = param1.replace("[","|");
         param1 = param1.replace("]","|");
         param1 = this.stringReplaceButExclude(param1,",",["|","(",")"],"`",[true,false,false]);
         var _loc2_:Array = param1.split("`");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            try
            {
               _loc2_[_loc3_] = this.stringToVarWithCalculation(_loc2_[_loc3_]);
               if(_loc2_[_loc3_].indexOf(",") > -1)
               {
                  _loc2_[_loc3_] = this.stringToArray(_loc2_[_loc3_],false);
               }
            }
            catch(er:Error)
            {
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function stringToArray(param1:String, param2:Boolean = true) : *
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         if(param1.indexOf("[") == 0 && param1.lastIndexOf("]") == param1.length - 1 || !param2)
         {
            if(param2)
            {
               param1 = param1.substr(1,param1.length - 2);
            }
            _loc3_ = param1.split(",");
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               try
               {
                  _loc3_[_loc4_] = this.stringToVarWithCalculation(_loc3_[_loc4_]);
               }
               catch(er:Error)
               {
               }
               _loc4_++;
            }
         }
         else
         {
            _loc3_ = this.stringToVarWithCalculation(_loc3_);
         }
         return _loc3_;
      }
      
      private function stringToArrayItem(param1:String) : *
      {
         var _loc3_:uint = 0;
         var _loc2_:* = param1;
         if(param1.indexOf("[") > -1 && param1.lastIndexOf("]") == param1.length - 1)
         {
            param1 = this.stringReplaceAll(param1,"]");
            _loc2_ = param1.split("[");
            _loc3_ = 1;
            while(_loc3_ < _loc2_.length)
            {
               _loc2_[_loc3_] = this.stringToVarWithCalculation(_loc2_[_loc3_]);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      private function stringToVarWithCalculation(param1:*, param2:* = null, param3:Boolean = false) : *
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:uint = 0;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:uint = 0;
         var _loc14_:Array = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:uint = 0;
         var _loc18_:int = 0;
         if(param1 == "this")
         {
            return this.main;
         }
         if(param1 == "true")
         {
            return true;
         }
         if(param1 == "false")
         {
            return false;
         }
         if(this._SafeStr_2005(param1,"[","]") && this._SafeStr_2005(param1,"(",")"))
         {
            _loc4_ = new Array();
            _loc5_ = 0;
            _loc6_ = "";
            _loc7_ = false;
            _loc8_ = new Array();
            _loc10_ = 0;
            _loc11_ = ["-","+","/","*","%"];
            _loc12_ = [["\"","\""],["[","]"],["(",")"]];
            _loc13_ = 0;
            while(_loc13_ < param1.length)
            {
               _loc9_ = false;
               _loc10_ = 0;
               _loc17_ = 0;
               while(_loc17_ < _loc12_.length)
               {
                  if(param1.charAt(_loc13_) == _loc12_[_loc17_][0])
                  {
                     _loc10_ = 1;
                     break;
                  }
                  if(param1.charAt(_loc13_) == _loc12_[_loc17_][1])
                  {
                     _loc10_ = 2;
                     break;
                  }
                  _loc17_++;
               }
               if(_loc10_ != 0)
               {
                  if(_loc8_.length == 0 || _loc10_ == 1)
                  {
                     _loc7_ = true;
                  }
                  else if(_loc8_[_loc8_.length - 1] == _loc12_[_loc17_][0])
                  {
                     _loc7_ = false;
                     _loc8_.pop();
                  }
                  _loc8_.push(param1.charAt(_loc13_));
               }
               else
               {
                  if(!_loc7_)
                  {
                     _loc18_ = 0;
                     while(!_loc9_ && _loc18_ < _loc11_.length)
                     {
                        if(param1.charAt(_loc13_) == _loc11_[_loc18_])
                        {
                           _loc9_ = true;
                           _loc4_[_loc5_] = _loc18_;
                           _loc5_++;
                        }
                        _loc18_++;
                     }
                  }
                  if(_loc9_)
                  {
                     _loc6_ += "`";
                  }
                  else
                  {
                     _loc6_ += param1.charAt(_loc13_);
                  }
               }
               _loc13_++;
            }
            param1 = _loc6_;
            _loc14_ = param1.split("`");
            _loc15_ = 0;
            while(_loc15_ < _loc14_.length)
            {
               if(!isNaN(_loc14_[_loc15_]))
               {
                  _loc14_[_loc15_] = Number(_loc14_[_loc15_]);
               }
               else if(_loc14_[_loc15_].indexOf("(") > 0)
               {
                  _loc14_[_loc15_] = this.stringToFunc(_loc14_[_loc15_],param2,param3);
               }
               else
               {
                  _loc14_[_loc15_] = this.stringToVar(_loc14_[_loc15_],param2,param3);
               }
               _loc15_++;
            }
            param1 = _loc14_[0];
            _loc5_ = 0;
            _loc16_ = 1;
            while(_loc16_ < _loc14_.length)
            {
               switch(_loc4_[_loc5_])
               {
                  case 0:
                     param1 -= _loc14_[_loc16_];
                     break;
                  case 1:
                     param1 += _loc14_[_loc16_];
                     break;
                  case 2:
                     param1 /= _loc14_[_loc16_];
                     break;
                  case 3:
                     param1 *= _loc14_[_loc16_];
                     break;
                  case 4:
                     param1 %= _loc14_[_loc16_];
               }
               _loc5_++;
               _loc16_++;
            }
         }
         else
         {
            param1 = this.stringReplaceAll(param1,"\"");
            try
            {
               if(param1.indexOf("new") == 0)
               {
                  param1 = this.stringToNewInstance(param1,param3);
               }
               else if(param1.indexOf("(") > 0)
               {
                  param1 = this.stringToFunc(param1,param2,param3);
               }
               else
               {
                  param1 = this.stringToVar(param1,param2,param3);
               }
            }
            catch(er:Error)
            {
            }
         }
         return param1;
      }
      
      private function _SafeStr_2493(param1:Array) : Array
      {
         if(param1[0].indexOf("+") == param1[0].length - 1 || param1[0].indexOf("-") == param1[0].length - 1 || param1[0].indexOf("/") == param1[0].length - 1 || param1[0].indexOf("*") == param1[0].length - 1 || param1[0].indexOf("%") == param1[0].length - 1)
         {
            param1[1] = param1[0] + param1[1];
            param1[0] = param1[0].substr(0,param1[0].length - 1);
         }
         return param1;
      }
      
      private function _SafeStr_2005(param1:String, param2:String = "", param3:String = "") : Boolean
      {
         var _loc6_:int = 0;
         var _loc4_:Array = new Array("+","-","/","*","%");
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            _loc6_ = int(param1.indexOf(_loc4_[_loc5_]));
            if(_loc6_ != -1 && (param2 == "" || _loc6_ < param1.indexOf(param2) || param1.indexOf(param2) == -1) && (param3 == "" || _loc6_ > param1.indexOf(param3)))
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }
      
      public function _SafeStr_1048(... rest) : void
      {
         var _loc2_:String = null;
         if(rest[rest.length - 1] is String && rest[rest.length - 1].charAt(0) == "#")
         {
            _loc2_ = rest[rest.length - 1];
            rest.pop();
         }
         else
         {
            _loc2_ = "#FFFFFF";
         }
         var _loc3_:String = "";
         var _loc4_:uint = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_ += rest[_loc4_];
            if(_loc4_ < rest.length - 1)
            {
               _loc3_ += " ";
            }
            _loc4_++;
         }
         this._SafeStr_1776.htmlText += "<font color=\"" + _loc2_ + "\">" + _loc3_ + "</font>\n";
         this._SafeStr_1776.scrollV = this._SafeStr_1776.maxScrollV;
      }
      
      public function error(... rest) : void
      {
         rest.push("#FF0000");
         this._SafeStr_1048.apply(null,rest);
      }
      
      public function warn(... rest) : void
      {
         rest.push("#00CCFF");
         this._SafeStr_1048.apply(null,rest);
      }
      
      private function stringReplaceAll(param1:String, param2:String, param3:String = "") : String
      {
         do
         {
            param1 = param1.replace(param2,param3);
         }
         while(param1.indexOf(param2) > -1);
         return param1;
      }
      
      private function stringReplaceButExclude(param1:String, param2:String, param3:Array, param4:String, param5:Array) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:int = 0;
         var _loc6_:String = "";
         if(this.stringContains(param1,param3))
         {
            _loc7_ = false;
            _loc8_ = 0;
            while(_loc8_ < param1.length)
            {
               if(this._SafeStr_1451(param1.charAt(_loc8_),param3))
               {
                  _loc7_ = !_loc7_;
                  if(!param5[param3.indexOf(param1.charAt(_loc8_))])
                  {
                     _loc6_ += param1.charAt(_loc8_);
                  }
               }
               else if(param1.charAt(_loc8_) == param2 && !_loc7_)
               {
                  _loc6_ += param4;
               }
               else
               {
                  _loc6_ += param1.charAt(_loc8_);
               }
               _loc8_++;
            }
         }
         else
         {
            _loc6_ = this.stringReplaceAll(param1,param2,param4);
         }
         return _loc6_;
      }
      
      private function stringContains(param1:String, param2:Array) : Boolean
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            if(param1.indexOf(param2[_loc3_]) > -1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function _SafeStr_1451(param1:String, param2:Array) : Boolean
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            if(param1 == param2[_loc3_])
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function _SafeStr_333(param1:Array, param2:String, param3:Array, param4:int = -1) : Array
      {
         if(param1 == null)
         {
            param1 = new Array();
         }
         if(param4 == -1)
         {
            param4 = param2.length - 1;
         }
         var _loc5_:int = 0;
         while(_loc5_ < param3.length)
         {
            param1[_loc5_] = param2.lastIndexOf(param3[_loc5_],param4);
            _loc5_++;
         }
         return param1;
      }
      
      private function _SafeStr_811(param1:String, param2:String) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            if(param1.charAt(_loc4_) == param2)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function startSlideAnimation(param1:Boolean) : void
      {
         this.main.addEventListener(Event.ENTER_FRAME,this._SafeStr_1564);
         this.slideAnimation_animating = true;
         if(param1)
         {
            this._SafeStr_560 = 0;
         }
         else
         {
            this.container.visible = true;
            this._SafeStr_560 = -this._SafeStr_1776.height - this._SafeStr_905.height;
         }
      }
      
      private function stopSlideAnimation() : void
      {
         this.container.y = this._SafeStr_560;
         this.main.removeEventListener(Event.ENTER_FRAME,this._SafeStr_1564);
         this.slideAnimation_animating = false;
      }
      
      private function _SafeStr_1564(param1:Event) : void
      {
         if(this.container.y <= this._SafeStr_560)
         {
            this.container.y += this._SafeStr_2058;
            if(this.container.y >= this._SafeStr_560)
            {
               this.stopSlideAnimation();
            }
         }
         else if(this.container.y >= this._SafeStr_560)
         {
            this.container.y -= this._SafeStr_2058;
            if(this.container.y <= this._SafeStr_560)
            {
               this.stopSlideAnimation();
               this.container.visible = false;
            }
         }
      }
      
      private function _SafeStr_548() : void
      {
         if(this._SafeStr_534 != this.main.stage.stageHeight)
         {
            this._SafeStr_534 = this.main.stage.stageHeight;
         }
         else
         {
            this._SafeStr_534 = this._SafeStr_1733;
         }
         if(this._SafeStr_797)
         {
            this.main.addEventListener(Event.ENTER_FRAME,this._SafeStr_1184);
            this.slideAnimation_animating = true;
            this._SafeStr_560 = this._SafeStr_534 - 20;
            this._SafeStr_563.visible = false;
         }
         else
         {
            this._SafeStr_1776.height = this._SafeStr_534 - 20;
            this._SafeStr_905.y = this._SafeStr_1776.height;
         }
      }
      
      private function stopFullscreenSlideAnimation() : void
      {
         this._SafeStr_1776.height = this._SafeStr_534 - 20;
         this._SafeStr_905.y = this._SafeStr_1776.height;
         this._SafeStr_563.y = this._SafeStr_905.y + this._SafeStr_905.height;
         this._SafeStr_1776.scrollV = this._SafeStr_1776.maxScrollV;
         this.main.removeEventListener(Event.ENTER_FRAME,this._SafeStr_1184);
         this.slideAnimation_animating = false;
      }
      
      private function _SafeStr_1184(param1:Event) : void
      {
         if(this._SafeStr_1776.height <= this._SafeStr_560)
         {
            this._SafeStr_1776.height += this._SafeStr_2058;
            this._SafeStr_905.y = this._SafeStr_1776.height;
            if(this._SafeStr_1776.height >= this._SafeStr_560)
            {
               this.stopFullscreenSlideAnimation();
            }
         }
         else if(this._SafeStr_1776.height >= this._SafeStr_560)
         {
            this._SafeStr_1776.height -= this._SafeStr_2058;
            this._SafeStr_905.y = this._SafeStr_1776.height;
            this._SafeStr_1776.scrollV = this._SafeStr_1776.maxScrollV;
            if(this._SafeStr_1776.height <= this._SafeStr_560)
            {
               this.stopFullscreenSlideAnimation();
            }
         }
      }
      
      public function _SafeStr_2050(param1:String) : void
      {
         var _loc2_:int = int(this._SafeStr_2405.length);
         param1 = param1.replace("trace:","");
         if(param1 == "fps")
         {
            addEventListener(Event.ENTER_FRAME,this._SafeStr_2539);
         }
         var _loc3_:Array = param1.split(",");
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(this._SafeStr_2405.indexOf(_loc3_[_loc4_]) == -1)
            {
               this._SafeStr_2405.push(_loc3_[_loc4_]);
            }
            _loc4_++;
         }
         if(_loc2_ == 0 && this._SafeStr_2405.length != 0)
         {
            this._SafeStr_2515.addEventListener(Event.ENTER_FRAME,this._SafeStr_265);
         }
      }
      
      public function stopTrace(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         param1 = param1.replace("stoptrace:","");
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_2539);
         if(param1 == "all")
         {
            this._SafeStr_2405 = new Array();
         }
         else
         {
            _loc2_ = param1.split(",");
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = 0;
               while(_loc4_ < this._SafeStr_2405.length)
               {
                  if(this._SafeStr_2405[_loc4_] == _loc2_[_loc3_])
                  {
                     this._SafeStr_2405.splice(_loc4_,1);
                  }
                  _loc4_++;
               }
               _loc3_++;
            }
         }
         if(this._SafeStr_2405.length == 0)
         {
            this._SafeStr_2515.removeEventListener(Event.ENTER_FRAME,this._SafeStr_265);
            this._SafeStr_2515.visible = false;
            this._SafeStr_1407.visible = false;
         }
      }
      
      private function _SafeStr_265(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(this._SafeStr_670)
         {
            if(this._SafeStr_2392)
            {
               _loc4_ = "";
            }
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_2405.length)
            {
               if(this._SafeStr_2405[_loc3_] != "fps" || this._SafeStr_567)
               {
                  _loc5_ = this._SafeStr_1949;
                  _loc2_ = this._SafeStr_2405[_loc3_];
                  _loc5_ = _loc5_.replace("name",_loc2_);
                  if(_loc2_ == "fps")
                  {
                     _loc5_ = _loc5_.replace("value",this.fps);
                  }
                  else
                  {
                     _loc5_ = _loc5_.replace("value",this.stringToVarWithCalculation(this._SafeStr_2405[_loc3_]));
                  }
                  if(!this._SafeStr_2392)
                  {
                     trace(_loc5_);
                  }
                  else
                  {
                     _loc4_ += _loc5_ + this._SafeStr_569;
                  }
               }
               _loc3_++;
            }
            if(this._SafeStr_2392)
            {
               trace(_loc4_);
            }
         }
         if(this._SafeStr_853)
         {
            this._SafeStr_2515.visible = true;
            this._SafeStr_1407.visible = true;
            this._SafeStr_2515.text = "";
            this._SafeStr_1407.text = "";
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_2405.length)
            {
               _loc2_ = this._SafeStr_2405[_loc3_];
               this._SafeStr_1407.appendText(_loc2_ + "\n");
               if(_loc2_ == "fps")
               {
                  this._SafeStr_2515.appendText(this.fps + "\n");
               }
               else
               {
                  this._SafeStr_2515.appendText(this.stringToVarWithCalculation(this._SafeStr_2405[_loc3_]) + "\n");
               }
               _loc3_++;
            }
            this._SafeStr_1407.x = this._SafeStr_2099 - this._SafeStr_1407.width;
            this._SafeStr_2515.x = this._SafeStr_1407.x - this._SafeStr_2515.width - 10;
            if(this._SafeStr_2057 < this._SafeStr_1776.height + this._SafeStr_905.height)
            {
               this._SafeStr_2515.y = this.container.y + this._SafeStr_905.y + this._SafeStr_905.height + this._SafeStr_2057;
               this._SafeStr_1407.y = this.container.y + this._SafeStr_905.y + this._SafeStr_905.height + this._SafeStr_2057;
            }
            else
            {
               this._SafeStr_2515.y = this._SafeStr_2057;
               this._SafeStr_1407.y = this._SafeStr_2057;
            }
         }
         else
         {
            this._SafeStr_2515.visible = false;
            this._SafeStr_1407.visible = false;
         }
      }
      
      private function _SafeStr_2539(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         ++this._SafeStr_2056;
         var _loc2_:uint = uint(getTimer());
         var _loc3_:uint = _loc2_ - this.last;
         if(_loc3_ >= 1000)
         {
            _loc4_ = this._SafeStr_2056 / _loc3_ * 1000;
            this.fps = _loc4_.toFixed(1);
            this._SafeStr_2056 = 0;
            this.last = _loc2_;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_186 = "_-e4"
 * @identifier _SafeStr_265 = "_-Mu"
 * @identifier _SafeStr_300 = "_-1K"
 * @identifier _SafeStr_320 = "_-1I"
 * @identifier _SafeStr_333 = "_-E3"
 * @identifier _SafeStr_427 = "_-3j"
 * @identifier _SafeStr_473 = "_-aA"
 * @identifier _SafeStr_534 = "_-w"
 * @identifier _SafeStr_537 = "_-TU"
 * @identifier _SafeStr_548 = "_-h6"
 * @identifier _SafeStr_560 = "_-iE"
 * @identifier _SafeStr_563 = "_-JA"
 * @identifier _SafeStr_567 = "_-Dt"
 * @identifier _SafeStr_569 = "_-Ou"
 * @identifier _SafeStr_670 = "_-Os"
 * @identifier _SafeStr_707 = "_-I9"
 * @identifier _SafeStr_797 = "_-G0"
 * @identifier _SafeStr_811 = "_-6j"
 * @identifier _SafeStr_853 = "_-AD"
 * @identifier _SafeStr_905 = "_-h7"
 * @identifier _SafeStr_1048 = "_-XX"
 * @identifier _SafeStr_1082 = "_-S7"
 * @identifier _SafeStr_1112 = "_-ew"
 * @identifier _SafeStr_1184 = "_-Y3"
 * @identifier _SafeStr_1236 = "_-C6"
 * @identifier _SafeStr_1385 = "_-K9"
 * @identifier _SafeStr_1407 = "_-Nb"
 * @identifier _SafeStr_1451 = "_-h1"
 * @identifier _SafeStr_1456 = "_-A1"
 * @identifier _SafeStr_1505 = "_-KU"
 * @identifier _SafeStr_1564 = "_-GA"
 * @identifier _SafeStr_1620 = "_-6U"
 * @identifier _SafeStr_1733 = "_-L3"
 * @identifier _SafeStr_1776 = "_-F9"
 * @identifier _SafeStr_1877 = "_-hB"
 * @identifier _SafeStr_1929 = "_-eF"
 * @identifier _SafeStr_1949 = "_-Jj"
 * @identifier _SafeStr_2005 = "_-7I"
 * @identifier _SafeStr_2050 = "_-dW"
 * @identifier _SafeStr_2056 = "_-h5"
 * @identifier _SafeStr_2057 = "_-JN"
 * @identifier _SafeStr_2058 = "_-Ey"
 * @identifier _SafeStr_2099 = "_-CD"
 * @identifier _SafeStr_2111 = "_-9p"
 * @identifier _SafeStr_2151 = "_-FP"
 * @identifier _SafeStr_2159 = "_-PO"
 * @identifier _SafeStr_2168 = "_-MO"
 * @identifier _SafeStr_2310 = "_-aU"
 * @identifier _SafeStr_2340 = "_-PT"
 * @identifier _SafeStr_2392 = "_-O1"
 * @identifier _SafeStr_2405 = "_-OJ"
 * @identifier _SafeStr_2424 = "_-QF"
 * @identifier _SafeStr_2493 = "_-Bg"
 * @identifier _SafeStr_2515 = "_-2q"
 * @identifier _SafeStr_2539 = "_-UV"
 * @identifier _SafeStr_2583 = "_-BK"
 * @identifier _SafeStr_2619 = "_-WF"
 * @identifier _SafeStr_2650 = "_-Es"
 * @identifier _SafeStr_2652 = "_-jJ"
 */
