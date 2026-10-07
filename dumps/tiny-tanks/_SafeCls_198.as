package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _SafeCls_198 extends MovieClip
   {
      
      public var _SafeStr_603:TextField;
      
      public var standardmaps:MovieClip;
      
      public var _SafeStr_413:TextField;
      
      public var _SafeStr_808:MovieClip;
      
      public var _SafeStr_854:TextField;
      
      public var _SafeStr_2294:MovieClip;
      
      public var _SafeStr_501:TextField;
      
      public var standardmapsmask:MovieClip;
      
      public var _SafeStr_1516:TextField;
      
      public function _SafeCls_198(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Array, param8:String, param9:String, param10:String)
      {
         super();
         this.standardmaps.mask = this.standardmapsmask;
         this._SafeStr_603.text = param1;
         this._SafeStr_1516.text = param2 + " Players \nMode: " + param3 + "\nPass: " + param4;
         this._SafeStr_854.text = "Aim: " + param5 + "\nDistance: " + param6;
         this._SafeStr_413.text = "";
         this._SafeStr_501.text = "";
         var _loc11_:* = 0;
         while(_loc11_ < param7.length)
         {
            if(_loc11_ % 2 == 0)
            {
               this._SafeStr_413.text += param7[_loc11_] + "\n";
            }
            else
            {
               this._SafeStr_501.text += param7[_loc11_] + "\n";
            }
            _loc11_++;
         }
         this._SafeStr_1499(param8,param9,param10);
      }
      
      public function _SafeStr_1499(param1:String, param2:String, param3:String) : *
      {
         var _loc7_:String = null;
         var _loc15_:Array = null;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:* = undefined;
         var _loc19_:* = undefined;
         var _loc20_:* = undefined;
         var _loc21_:Shape = null;
         if(param3 == "0")
         {
            this._SafeStr_2294.visible = true;
            this.standardmaps.visible = false;
            return;
         }
         if(Number(param3) <= 20)
         {
            this._SafeStr_2294.visible = false;
            this.standardmaps.visible = true;
            this.standardmaps.gotoAndStop(Number(param3));
            return;
         }
         this._SafeStr_2294.visible = false;
         this.standardmaps.visible = false;
         var _loc4_:Array = param1.split("#");
         _loc4_[0] = _loc4_[0].split("@");
         _loc4_[1] = _loc4_[1].split("@");
         if(_loc4_[2])
         {
            _loc15_ = _loc4_[2].split("@");
            _loc4_[2] = [[_loc15_[0],_loc15_[1]],[_loc15_[2],_loc15_[3]]];
         }
         else
         {
            _loc4_[2] = [[-100,-100],[-100,-100]];
         }
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_[0].length)
         {
            _loc4_[0][_loc5_] = _loc4_[0][_loc5_].split(",");
            _loc16_ = 0;
            while(_loc16_ < _loc4_[0][_loc5_].length)
            {
               _loc4_[0][_loc5_][_loc16_] = Number(_loc4_[0][_loc5_][_loc16_]);
               _loc16_++;
            }
            _loc5_++;
         }
         var _loc6_:* = 0;
         while(_loc6_ < _loc4_[1].length)
         {
            _loc4_[1][_loc6_] = _loc4_[1][_loc6_].split(",");
            _loc17_ = 0;
            while(_loc17_ < _loc4_[1][_loc6_].length)
            {
               _loc4_[1][_loc6_][_loc17_] = Number(_loc4_[1][_loc6_][_loc17_]);
               _loc17_++;
            }
            _loc6_++;
         }
         if(param2 == "0")
         {
            _loc7_ = "Small";
         }
         else if(param2 == "1")
         {
            _loc7_ = "Large";
         }
         else
         {
            _loc7_ = "Giant";
         }
         var _loc8_:Array = _loc4_[0];
         var _loc9_:Array = _loc4_[1];
         var _loc10_:Array = _loc4_[2];
         var _loc11_:Array = [undefined,undefined,_loc7_,_loc8_,undefined,_loc9_,undefined,_loc10_];
         var _loc12_:* = new editorbackgroundmc();
         var _loc13_:* = 4;
         while(_loc13_ < _loc11_[3].length)
         {
            _loc18_ = _loc12_.addChild(this._SafeStr_1326(_loc11_[3][_loc13_][0]));
            _loc18_.x = _loc11_[3][_loc13_][1];
            _loc18_.y = _loc11_[3][_loc13_][2];
            _loc18_.rotation = _loc11_[3][_loc13_][5];
            _loc18_.button.mouseEnabled = false;
            _loc13_++;
         }
         var _loc14_:* = 0;
         while(_loc14_ < _loc11_[5].length)
         {
            _loc19_ = _loc12_.addChild(new _SafeCls_220());
            _loc19_.x = _loc11_[5][_loc14_][0];
            _loc19_.y = _loc11_[5][_loc14_][1];
            _loc19_.rotation = _loc11_[5][_loc14_][2];
            _loc19_.spinnybit.colour.gotoAndStop(_loc14_ % 4 + 1);
            _loc19_.barrel.colour.colour.gotoAndStop(_loc14_ % 4 + 1);
            _loc19_.tankmain.colour.gotoAndStop(_loc14_ % 4 + 1);
            _loc19_.skin.visible = false;
            _loc14_++;
         }
         if(_loc11_[7])
         {
            if(!(_loc11_[7][0][0] == -100 && _loc11_[7][0][1] == -100 && _loc11_[7][1][0] == -100 && _loc11_[7][1][1] == -100))
            {
               _loc20_ = _loc12_.addChild(new newflagmc());
               _loc20_.x = _loc11_[7][0][0];
               _loc20_.y = _loc11_[7][0][1];
               _loc20_ = _loc12_.addChild(new newflagmc());
               _loc20_.x = _loc11_[7][1][0];
               _loc20_.y = _loc11_[7][1][1];
            }
         }
         if(_loc11_[2] == "Large")
         {
            _loc12_.gotoAndStop(1);
            _loc12_.scaleX = 0.1667;
            _loc12_.scaleY = 0.1667;
            _loc12_.rotation = 2;
            _loc12_.scrollRect = new Rectangle(20,20,860,860);
         }
         else if(_loc11_[2] == "Small")
         {
            _loc12_.gotoAndStop(2);
            _loc12_.scaleX = 0.2031;
            _loc12_.scaleY = 0.2031;
            _loc12_.rotation = 2;
            _loc12_.scrollRect = new Rectangle(26,32,704,704);
         }
         else
         {
            _loc12_.gotoAndStop(3);
            _loc12_.scaleX = 0.121;
            _loc12_.scaleY = 0.121;
            _loc12_.rotation = 2;
            _loc12_.scrollRect = new Rectangle(-35,40,1180,1180);
            _loc21_ = new Shape();
            _loc21_.graphics.beginFill(14998541);
            _loc21_.graphics.drawRect(-100,0,100,1300);
            _loc21_.graphics.drawRect(1100,0,100,1300);
            _loc21_.graphics.endFill();
            _loc12_.addChild(_loc21_);
         }
         _loc12_.scaleX *= 0.58;
         _loc12_.scaleY *= 0.58;
         _loc12_.cacheAsBitmap = true;
         _loc12_.smoothing = true;
         addChild(_loc12_);
         _loc12_.x = 74;
         _loc12_.y = -153;
         setChildIndex(this._SafeStr_808,this.numChildren - 1);
      }
      
      public function destroy() : *
      {
      }
      
      public function _SafeStr_1326(param1:int) : DisplayObject
      {
         switch(param1)
         {
            case 5:
               return new editoryellowpencilstubmc();
            case 6:
               return new editorredpencilstubmc();
            case 7:
               return new editorblackbiromc();
            case 8:
               return new editorbluebiromc();
            case 9:
               return new editorredbiromc();
            case 10:
               return new editoryellowpencilmc();
            case 11:
               return new editorpostitmc();
            case 12:
               return new editor1pmc();
            case 13:
               return new editorsharpenergreenmc();
            case 14:
               return new editorsharpenerbluemc();
            case 15:
               return new editorbluepaperclipmc();
            case 16:
               return new editorredpaperclipmc();
            case 17:
               return new editorrubberonsidemc();
            case 18:
               return new editortapemc();
            default:
               return new editorerrormc();
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_198 = "_-iG"
 * @identifier _SafeCls_220 = "_-Hy"
 * @identifier _SafeStr_413 = "_-ZZ"
 * @identifier _SafeStr_501 = "_-FW"
 * @identifier _SafeStr_603 = "_-ct"
 * @identifier _SafeStr_808 = "_-fS"
 * @identifier _SafeStr_854 = "_-Yw"
 * @identifier _SafeStr_1326 = "_-LI"
 * @identifier _SafeStr_1499 = "_-aZ"
 * @identifier _SafeStr_1516 = "_-Su"
 * @identifier _SafeStr_2294 = "_-4K"
 */
