package murray
{
   import _SafePkg_41._SafeCls_40;
   import _SafePkg_41._SafeCls_96;
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_20._SafeCls_39;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.IBitmapDrawable;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   
   public class _SafeCls_10
   {
      
      public static var _SafeStr_991:Sound;
      
      public static var _SafeStr_960:Sound;
      
      private static const _SafeStr_635:int = 600000;
      
      public static var _SafeStr_469:String = "";
      
      public function _SafeCls_10()
      {
         super();
      }
      
      public static function _SafeStr_483(param1:DisplayObject) : void
      {
         param1.removeEventListener(MouseEvent.CLICK,_SafeStr_847);
         param1.removeEventListener(MouseEvent.MOUSE_OVER,_SafeStr_605);
      }
      
      public static function _SafeStr_1178(param1:DisplayObject) : void
      {
         param1.removeEventListener(MouseEvent.MOUSE_OVER,_SafeStr_605);
      }
      
      public static function _SafeStr_236(param1:DisplayObject) : void
      {
         param1.addEventListener(MouseEvent.MOUSE_OVER,_SafeStr_605);
      }
      
      public static function _SafeStr_113(param1:DisplayObject) : void
      {
         param1.addEventListener(MouseEvent.CLICK,_SafeStr_847);
         param1.addEventListener(MouseEvent.MOUSE_OVER,_SafeStr_605);
      }
      
      public static function _SafeStr_605(param1:MouseEvent) : void
      {
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         _loc2_._SafeStr_126(_SafeCls_10._SafeStr_991);
      }
      
      public static function _SafeStr_847(param1:MouseEvent) : void
      {
         var _loc2_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         _loc2_._SafeStr_126(_SafeCls_10._SafeStr_960);
      }
      
      public static function _SafeStr_233(param1:int, param2:int, param3:Number) : int
      {
         return param1 * Math.cos(param3) - param2 * Math.sin(param3);
      }
      
      public static function _SafeStr_227(param1:int, param2:int, param3:Number) : int
      {
         return param2 * Math.cos(param3) + param1 * Math.sin(param3);
      }
      
      public static function _SafeStr_548(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return (param3 - param1) * (param3 - param1) + (param4 - param2) * (param4 - param2);
      }
      
      public static function _SafeStr_867(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Boolean
      {
         if((param3 - param1) * (param3 - param1) + (param4 - param2) * (param4 - param2) <= param5 * param5)
         {
            return true;
         }
         return false;
      }
      
      public static function _SafeStr_955(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : int
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc7_:int = param1 - param3;
         var _loc8_:int = param2 - param4;
         var _loc9_:int = param5 - param3;
         var _loc10_:int = param6 - param4;
         var _loc11_:Number = _loc7_ * _loc9_ + _loc8_ * _loc10_;
         var _loc12_:Number = _loc9_ * _loc9_ + _loc10_ * _loc10_;
         var _loc13_:Number = _loc11_ / _loc12_;
         if(_loc13_ < 0)
         {
            _loc14_ = param3;
            _loc15_ = param4;
         }
         else if(_loc13_ > 1)
         {
            _loc14_ = param5;
            _loc15_ = param6;
         }
         else
         {
            _loc14_ = param3 + _loc13_ * _loc9_;
            _loc15_ = param4 + _loc13_ * _loc10_;
         }
         return (param1 - _loc14_) * (param1 - _loc14_) + (param2 - _loc15_) * (param2 - _loc15_);
      }
      
      public static function _SafeStr_1137(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Object
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc7_:int = param1 - param3;
         var _loc8_:int = param2 - param4;
         var _loc9_:int = param5 - param3;
         var _loc10_:int = param6 - param4;
         var _loc11_:Number = _loc7_ * _loc9_ + _loc8_ * _loc10_;
         var _loc12_:Number = _loc9_ * _loc9_ + _loc10_ * _loc10_;
         var _loc13_:Number = _loc11_ / _loc12_;
         var _loc16_:Object = new Object();
         if(_loc13_ < 0)
         {
            _loc14_ = param3;
            _loc15_ = param4;
            _loc16_.ep = true;
         }
         else if(_loc13_ > 1)
         {
            _loc14_ = param5;
            _loc15_ = param6;
            _loc16_.ep = true;
         }
         else
         {
            _loc14_ = param3 + _loc13_ * _loc9_;
            _loc15_ = param4 + _loc13_ * _loc10_;
            _loc16_.ep = false;
         }
         _loc16_.x = _loc14_;
         _loc16_.y = _loc15_;
         _loc16_.d = (param1 - _loc14_) * (param1 - _loc14_) + (param2 - _loc15_) * (param2 - _loc15_);
         return _loc16_;
      }
      
      public static function _SafeStr_842(param1:int, param2:int) : int
      {
         if(param1 > param2)
         {
            param1 = param2;
         }
         else if(param1 < -param2)
         {
            param1 = -param2;
         }
         return param1;
      }
      
      public static function _SafeStr_221(param1:BitmapData, param2:IBitmapDrawable, param3:int, param4:int, param5:Number = 0, param6:ColorTransform = null) : void
      {
         var _loc7_:Matrix = null;
         _loc7_ = new Matrix();
         _loc7_.rotate(param5);
         _loc7_.translate(param3,param4);
         param1.draw(param2,_loc7_,param6,null,null,true);
      }
      
      public static function _SafeStr_876(param1:BitmapData, param2:IBitmapDrawable, param3:int, param4:int, param5:int, param6:Number = 0) : void
      {
         var _loc7_:Matrix = null;
         _loc7_ = new Matrix();
         _loc7_.scale(-1,1);
         _loc7_.rotate(param6);
         _loc7_.translate(param3,param4);
         param1.draw(param2,_loc7_);
      }
      
      public static function _SafeStr_406(param1:int) : int
      {
         var _loc2_:Number = (param1 & 0xFF0000) >> 16;
         var _loc3_:Number = (param1 & 0xFF00) >> 8;
         var _loc4_:Number = param1 & 0xFF;
         return _loc2_ + _loc3_ + _loc4_;
      }
      
      public static function _SafeStr_900(param1:int, param2:Number) : int
      {
         var _loc3_:int = ((param1 & 0xFF0000) >> 16) * param2;
         var _loc4_:int = ((param1 & 0xFF00) >> 8) * param2;
         var _loc5_:int = (param1 & 0xFF) * param2;
         return (_loc3_ << 16) + (_loc4_ << 8) + _loc5_;
      }
      
      public static function _SafeStr_231(param1:int) : ColorTransform
      {
         var _loc2_:Number = ((param1 & 0xFF0000) >> 16) * 0.003921;
         var _loc3_:Number = ((param1 & 0xFF00) >> 8) * 0.003921;
         var _loc4_:Number = (param1 & 0xFF) * 0.003921;
         return new ColorTransform(_loc2_,_loc3_,_loc4_);
      }
      
      public static function _SafeStr_107(param1:Object, param2:*, param3:*) : *
      {
         if(param1.hasOwnProperty(param2))
         {
            return param1[param2];
         }
         return param3;
      }
      
      public static function _SafeStr_1259(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:int = 0;
         if(param2 > param3)
         {
            _loc4_ = param3;
            param3 = param2;
            param2 = _loc4_;
         }
         return param1 >= param2 && param1 <= param3;
      }
      
      public static function _SafeStr_1263(param1:int, param2:int, param3:int, param4:int) : Boolean
      {
         var _loc5_:int = 0;
         if(param3 > param4)
         {
            _loc5_ = param4;
            param4 = param3;
            param3 = _loc5_;
         }
         return param1 >= param3 - param2 && param1 <= param4 + param2;
      }
      
      public static function _SafeStr_758(param1:MovieClip, param2:DisplayObject) : _SafeCls_96
      {
         var _loc3_:Rectangle = param1.getBounds(param2);
         var _loc4_:Matrix = new Matrix();
         _loc4_.translate(-_loc3_.left,-_loc3_.top);
         var _loc5_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc5_.draw(param1,_loc4_);
         return new _SafeCls_96(new Bitmap(_loc5_),-_loc3_.left,-_loc3_.top);
      }
      
      public static function _SafeStr_299(param1:int, param2:int, param3:int, param4:int, param5:Sound) : void
      {
         var _loc6_:_SafeCls_6 = _SafeCls_6._SafeStr_121();
         var _loc7_:Number = 0;
         var _loc8_:Number = 1;
         _loc7_ = (param3 - param1) / _SafeStr_635;
         var _loc9_:int = _SafeCls_10._SafeStr_548(param3,param4,param1,param2);
         _loc8_ = Number(Math.min((_SafeStr_635 - _loc9_) * 1 / _loc9_,1));
         if(_loc8_ > 0)
         {
            _loc6_._SafeStr_126(param5,_loc8_,_loc7_);
         }
      }
      
      public static function _SafeStr_328(param1:MovieClip) : void
      {
         param1.gotoAndStop(0);
         var _loc2_:int = 0;
         while(_loc2_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc2_) is MovieClip)
            {
               _SafeStr_328(param1.getChildAt(_loc2_) as MovieClip);
            }
            _loc2_++;
         }
      }
      
      public static function _SafeStr_1294(param1:MovieClip) : void
      {
         param1.gotoAndStop(0);
         param1.turret.weapon1.gotoAndStop(0);
         param1.turret.weapon2.gotoAndStop(0);
         if(param1.thruster1)
         {
            param1.thruster1.gotoAndStop(0);
         }
         param1.thruster2.gotoAndStop(0);
      }
      
      public static function _SafeStr_179(param1:Number) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:String = "";
         while(_loc2_.length > 3)
         {
            _loc4_ = _loc2_.substr(-3);
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc3_ = "," + _loc4_ + _loc3_;
         }
         if(_loc2_.length > 0)
         {
            _loc3_ = _loc2_ + _loc3_;
         }
         return _loc3_;
      }
      
      public static function _SafeStr_1023(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc2_.currentFrame == 2)
         {
            _loc2_.gotoAndStop(3);
         }
      }
      
      public static function _SafeStr_1086(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc2_.currentFrame == 3)
         {
            _loc2_.gotoAndStop(2);
         }
      }
      
      public static function _SafeStr_660(param1:MovieClip, param2:Function) : void
      {
         param1.mouseChildren = false;
         param1.buttonMode = true;
         param1.useHandCursor = true;
         param1.addEventListener(MouseEvent.CLICK,param2);
         param1.addEventListener(MouseEvent.MOUSE_OVER,_SafeCls_10._SafeStr_1023);
         param1.addEventListener(MouseEvent.MOUSE_OUT,_SafeCls_10._SafeStr_1086);
      }
      
      public static function _SafeStr_334(param1:_SafeCls_17) : _SafeCls_5
      {
         var _loc2_:_SafeCls_5 = new _SafeCls_5();
         _loc2_.ship = param1.ship;
         var _loc3_:Array = new Array();
         var _loc4_:int = 0;
         while(_loc4_ < param1.weapons.length)
         {
            _loc3_.push(param1.weapons[_loc4_].weapon);
            _loc4_++;
         }
         _loc2_.weapons = _loc3_;
         _loc2_.equipment = param1.equipment;
         _loc2_.color1 = param1.color1;
         _loc2_.color2 = param1.color2;
         return _loc2_;
      }
      
      public static function _SafeStr_693(param1:MovieClip) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc2_:_SafeCls_3 = _SafeCls_3._SafeStr_157();
         var _loc3_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         param1.player_name.text = _loc2_.username;
         param1.rank.text = "RANK " + (_loc2_.rank + 1);
         if(_loc2_.rank == _loc3_.ranks.length)
         {
            param1.progress_text.text = "MAX RANK(FOR NOW)";
         }
         else
         {
            param1.progress_text.text = "PROGRESS TO RANK " + (_loc2_.rank + 2);
            if(_loc2_.rank > 0)
            {
               _loc5_ = _loc3_.ranks[_loc2_.rank] - _loc3_.ranks[_loc2_.rank - 1];
            }
            else
            {
               _loc5_ = int(_loc3_.ranks[0]);
            }
            _loc4_ = 1 - (_loc3_.ranks[_loc2_.rank] - _loc2_._SafeStr_330) * 1 / _loc5_;
            trace("ratio: " + _loc4_ + " " + _loc2_._SafeStr_330 + "/" + _loc3_.ranks[_loc2_.rank] + " " + _loc5_ + " " + _loc3_.ranks[_loc2_.rank - 1]);
            param1.rank_bar.mask.width = param1.rank_bar.width * _loc4_;
         }
      }
      
      public static function _SafeStr_1140(param1:int) : String
      {
         if(param1 % 10 == 1 && param1 % 100 != 11)
         {
            return param1 + "st";
         }
         if(param1 % 10 == 2 && param1 % 100 != 12)
         {
            return param1 + "nd";
         }
         if(param1 % 10 == 3 && param1 % 100 != 13)
         {
            return param1 + "rd";
         }
         return param1 + "th";
      }
      
      public static function _SafeStr_1346(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = Number(Math.sqrt(param1 * param1 + param2 * param2));
         var _loc6_:Number = Number(Math.sqrt(param3 * param3 + param4 * param4));
         param1 /= _loc5_;
         param2 /= _loc5_;
         param3 /= _loc6_;
         param4 /= _loc6_;
         return param1 * param3 + param2 * param4;
      }
      
      public static function _SafeStr_968(param1:String, param2:MovieClip) : Boolean
      {
         var _loc3_:String = param2.stage.root.loaderInfo.url;
         var _loc4_:int = _loc3_.indexOf("://") + 3;
         var _loc5_:int = int(_loc3_.indexOf("/",_loc4_));
         var _loc6_:String = _loc3_.substring(_loc4_,_loc5_);
         var _loc7_:int = _loc6_.lastIndexOf(".") - 1;
         var _loc8_:int = _loc6_.lastIndexOf(".",_loc7_) + 1;
         _loc6_ = _loc6_.substring(_loc8_,_loc6_.length);
         return _loc6_ == param1;
      }
      
      public static function _SafeStr_557(param1:String) : Boolean
      {
         return !isNaN(Number(param1));
      }
      
      public static function _SafeStr_413(param1:String, param2:String) : Boolean
      {
         return param1.toLowerCase() == param2.toLowerCase();
      }
      
      public static function _SafeStr_305(param1:String) : String
      {
         if(param1 == "eedok")
         {
            return "eedok";
         }
         if(param1.toUpperCase() == "BILLYMAYS")
         {
            return "BILLYMAYS";
         }
         return param1.substr(0,1).toUpperCase() + param1.substr(1).toLowerCase();
      }
      
      public static function _SafeStr_740(param1:String, param2:Function, param3:_SafeCls_71) : void
      {
         var _loc4_:RegExp = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:_SafeCls_4 = null;
         var _loc11_:int = 0;
         if(param1.charAt(0) == "/" || param1.charAt(0) == "\\")
         {
            if(param1.charAt(0) == "\\")
            {
               param1 = "/" + param1.substr(1);
            }
            _loc4_ = /\/ban (\w+) (\d) (.*)/;
            _loc5_ = _loc4_.exec(param1);
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_[1];
               _loc7_ = int(_loc5_[2]);
               switch(_loc7_)
               {
                  case 1:
                     _loc7_ = 5;
                     break;
                  case 2:
                     _loc7_ = 30;
                     break;
                  case 3:
                     _loc7_ = 1440;
                     break;
                  case 4:
                     _loc7_ = 10080;
                     break;
                  case 5:
                     _loc7_ = 2620800;
               }
               _loc8_ = _loc5_[3];
               param3._SafeStr_1217(_loc6_,_loc7_,_loc8_);
               param2("Sent ban for " + _loc6_ + " " + _loc7_ + " minutes for " + _loc8_);
            }
            else if(param1.indexOf("/w ") == 0 || param1.indexOf("/whisper ") == 0)
            {
               _loc9_ = 3;
               if(param1.indexOf("/whisper ") == 0)
               {
                  _loc9_ = 9;
               }
               param3._SafeStr_544(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_438,1) + param1.substr(_loc9_));
            }
            else if(param1.indexOf("/warn ") == 0)
            {
               _loc9_ = 6;
               param3._SafeStr_544(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_479,1) + param1.substr(_loc9_));
            }
            else if(param1.indexOf("/warnall ") == 0)
            {
               _loc9_ = 9;
               param3._SafeStr_544(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_694,1) + param1.substr(_loc9_));
            }
            else if(param1.indexOf("/find ") == 0)
            {
               _loc9_ = 6;
               param3._SafeStr_154("0h" + param1.substr(_loc9_));
            }
            else if(param1.indexOf("/i ") == 0 || param1.indexOf("/ignore ") == 0)
            {
               _loc9_ = 3;
               if(param1.indexOf("/ignore ") == 0)
               {
                  _loc9_ = 8;
               }
               _loc6_ = param1.substr(_loc9_);
               _loc10_ = _SafeCls_4._SafeStr_121();
               _loc11_ = 0;
               while(_loc11_ < _loc10_._SafeStr_194.length)
               {
                  if(_SafeCls_10._SafeStr_413(_loc10_._SafeStr_194[_loc11_],_loc6_))
                  {
                     _loc10_._SafeStr_194.splice(_loc11_,1);
                     param2("<font color=\'#4a47ad\'>Unignored " + _loc6_ + "</font>");
                     return;
                  }
                  _loc11_++;
               }
               _loc10_._SafeStr_194.push(_loc6_);
               param2("<font color=\'#4a47ad\'>Ignored " + _loc6_ + "</font>");
            }
            else if(param1.indexOf("/r ") == 0 || param1.indexOf("/reply ") == 0)
            {
               if(_SafeStr_469 != "")
               {
                  _loc9_ = 3;
                  if(param1.indexOf("/reply ") == 0)
                  {
                     _loc9_ = 7;
                  }
                  param3._SafeStr_544(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_438,1) + _SafeCls_10._SafeStr_469 + " " + param1.substr(_loc9_));
               }
               else
               {
                  param2("<font color=\'#4a47ad\'>No one to reply to</font>");
               }
            }
            else if(param1 == "/reload")
            {
               param3._SafeStr_154("0l");
            }
            else
            {
               param2("<font color=\'#4a47ad\'>Unknown command</font>");
            }
         }
         else if(param1 != "")
         {
            param3._SafeStr_544(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_540,1) + param1);
         }
      }
      
      public static function _SafeStr_989(param1:int) : String
      {
         if(param1 == 1)
         {
            return "<font color=\'#9e643c\'>TIER 1</font>";
         }
         if(param1 == 2)
         {
            return "<font color=\'#a13919\'>TIER 2</font>";
         }
         if(param1 == 3)
         {
            return "<font color=\'#426492\'>TIER 3</font>";
         }
         if(param1 == 4)
         {
            return "<font color=\'#653c4d\'>TIER 4</font>";
         }
         return "<font color=\'#bfb496\'>TIER 5</font>";
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_96 = "^S"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_154 = "61"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_179 = "8G"
 * @identifier _SafeStr_194 = "&U"
 * @identifier _SafeStr_221 = "+\""
 * @identifier _SafeStr_227 = ";G"
 * @identifier _SafeStr_231 = "+N"
 * @identifier _SafeStr_233 = "3I"
 * @identifier _SafeStr_236 = "<H"
 * @identifier _SafeStr_299 = "#J"
 * @identifier _SafeStr_305 = "07"
 * @identifier _SafeStr_328 = "]E"
 * @identifier _SafeStr_330 = "4?"
 * @identifier _SafeStr_334 = "#N"
 * @identifier _SafeStr_406 = "with"
 * @identifier _SafeStr_413 = "extends"
 * @identifier _SafeStr_438 = "]S"
 * @identifier _SafeStr_469 = " !"
 * @identifier _SafeStr_479 = "2U"
 * @identifier _SafeStr_483 = ">F"
 * @identifier _SafeStr_540 = ">9"
 * @identifier _SafeStr_544 = "[!"
 * @identifier _SafeStr_548 = "`Q"
 * @identifier _SafeStr_557 = "9+"
 * @identifier _SafeStr_605 = "7I"
 * @identifier _SafeStr_635 = "&E"
 * @identifier _SafeStr_660 = "1,"
 * @identifier _SafeStr_693 = "+B"
 * @identifier _SafeStr_694 = "6!"
 * @identifier _SafeStr_740 = " null"
 * @identifier _SafeStr_758 = "\"M"
 * @identifier _SafeStr_842 = "!+"
 * @identifier _SafeStr_847 = "\'O"
 * @identifier _SafeStr_867 = "7%"
 * @identifier _SafeStr_876 = ",K"
 * @identifier _SafeStr_900 = "-"
 * @identifier _SafeStr_955 = " for"
 * @identifier _SafeStr_960 = "&5"
 * @identifier _SafeStr_968 = ",7"
 * @identifier _SafeStr_989 = "+A"
 * @identifier _SafeStr_991 = "2K"
 * @identifier _SafeStr_1023 = "7G"
 * @identifier _SafeStr_1086 = "=C"
 * @identifier _SafeStr_1137 = "=@"
 * @identifier _SafeStr_1140 = "@9"
 * @identifier _SafeStr_1178 = ",O"
 * @identifier _SafeStr_1217 = "8S"
 * @identifier _SafeStr_1259 = "^&"
 * @identifier _SafeStr_1263 = "^0"
 * @identifier _SafeStr_1294 = "1"
 * @identifier _SafeStr_1346 = "42"
 */
