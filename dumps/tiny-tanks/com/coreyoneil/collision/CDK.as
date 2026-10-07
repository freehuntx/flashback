package com.coreyoneil.collision
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.errors.EOFError;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   
   public class CDK
   {
      
      protected var _SafeStr_716:Array;
      
      protected var _SafeStr_2400:Array;
      
      protected var _SafeStr_1582:Array;
      
      private var _SafeStr_1983:Array;
      
      private var bmd1:BitmapData;
      
      private var bmd2:BitmapData;
      
      private var _SafeStr_767:BitmapData;
      
      private var pixels1:ByteArray;
      
      private var pixels2:ByteArray;
      
      private var rect1:Rectangle;
      
      private var rect2:Rectangle;
      
      private var transMatrix1:Matrix;
      
      private var transMatrix2:Matrix;
      
      private var colorTransform1:ColorTransform;
      
      private var colorTransform2:ColorTransform;
      
      private var item1Registration:Point;
      
      private var item2Registration:Point;
      
      private var _SafeStr_375:Number;
      
      private var _returnAngle:Boolean;
      
      private var _SafeStr_650:String;
      
      private var _numChildren:uint;
      
      public function CDK()
      {
         super();
         if(getQualifiedClassName(this) == "com.coreyoneil.collision::CDK")
         {
            throw new Error("CDK is an abstract class and is not meant for instantiation - use CollisionGroup or CollisionList");
         }
         this.init();
      }
      
      private function init() : void
      {
         this._SafeStr_2400 = [];
         this._SafeStr_1582 = [];
         this._SafeStr_716 = [];
         this._SafeStr_1983 = [];
         this._SafeStr_375 = 0;
         this._returnAngle = true;
         this._SafeStr_650 = "RADIANS";
      }
      
      public function addItem(param1:*) : void
      {
         if(param1 is DisplayObject)
         {
            this._SafeStr_716.push(param1);
            return;
         }
         throw new Error("Cannot add item: " + param1 + " - item must be a Display Object.");
      }
      
      public function removeItem(param1:*) : void
      {
         var _loc2_:int = int(this._SafeStr_716.indexOf(param1));
         if(_loc2_ > -1)
         {
            this._SafeStr_716.splice(_loc2_,1);
            return;
         }
         throw new Error(param1 + " could not be removed - object not found in item list.");
      }
      
      public function _SafeStr_1389(param1:uint, param2:uint = 255, param3:uint = 20, param4:uint = 20, param5:uint = 20) : void
      {
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         var _loc6_:int = int(this._SafeStr_1983.length);
         var _loc7_:uint = 0;
         while(_loc7_ < _loc6_)
         {
            if(this._SafeStr_1983[_loc7_].color == param1)
            {
               throw new Error("Color could not be added - color already in the exclusion list [" + param1 + "]");
            }
            _loc7_++;
         }
         _loc8_ = (param1 >> 24 & 0xFF) + param2;
         _loc9_ = _loc8_ - (param2 << 1);
         _loc10_ = (param1 >> 16 & 0xFF) + param3;
         _loc11_ = _loc10_ - (param3 << 1);
         _loc12_ = (param1 >> 8 & 0xFF) + param4;
         _loc13_ = _loc12_ - (param4 << 1);
         _loc14_ = (param1 & 0xFF) + param5;
         _loc15_ = _loc14_ - (param5 << 1);
         var _loc16_:Object = {
            "color":param1,
            "aPlus":_loc8_,
            "aMinus":_loc9_,
            "rPlus":_loc10_,
            "rMinus":_loc11_,
            "gPlus":_loc12_,
            "gMinus":_loc13_,
            "bPlus":_loc14_,
            "bMinus":_loc15_
         };
         this._SafeStr_1983.push(_loc16_);
      }
      
      public function _SafeStr_2411(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = int(this._SafeStr_1983.length);
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            if(this._SafeStr_1983[_loc4_].color == param1)
            {
               this._SafeStr_1983.splice(_loc4_,1);
               _loc2_ = true;
               break;
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            throw new Error("Color could not be removed - color not found in exclusion list [" + param1 + "]");
         }
      }
      
      protected function _SafeStr_550() : void
      {
         this._SafeStr_2400 = [];
         this._SafeStr_1582 = [];
      }
      
      protected function _SafeStr_293(param1:*, param2:*) : void
      {
         var currentObj:*;
         var k:uint;
         var value1:uint;
         var value2:uint;
         var collisionPoint:Number;
         var overlap:Boolean;
         var overlapping:Array;
         var hasColors:int;
         var pixelLength:int;
         var item1xDiff:Number = NaN;
         var item1yDiff:Number = NaN;
         var locY:Number = NaN;
         var locX:Number = NaN;
         var locStage:Point = null;
         var alpha1:uint = 0;
         var alpha2:uint = 0;
         var colorFlag:Boolean = false;
         var red1:uint = 0;
         var red2:uint = 0;
         var green1:uint = 0;
         var green2:uint = 0;
         var blue1:uint = 0;
         var blue2:uint = 0;
         var colorObj:Object = null;
         var aPlus:uint = 0;
         var aMinus:uint = 0;
         var rPlus:uint = 0;
         var rMinus:uint = 0;
         var gPlus:uint = 0;
         var gMinus:uint = 0;
         var bPlus:uint = 0;
         var bMinus:uint = 0;
         var item1Flags:uint = 0;
         var item2Flags:uint = 0;
         var n:uint = 0;
         var angle:Number = NaN;
         var recordedCollision:Object = null;
         var item1:* = param1;
         var item2:* = param2;
         var item1_isText:Boolean = false;
         var item2_isText:Boolean = false;
         if(item1 is TextField)
         {
            item1_isText = item1.antiAliasType == "advanced" ? true : false;
            item1.antiAliasType = item1.antiAliasType == "advanced" ? "normal" : item1.antiAliasType;
         }
         if(item2 is TextField)
         {
            item2_isText = item2.antiAliasType == "advanced" ? true : false;
            item2.antiAliasType = item2.antiAliasType == "advanced" ? "normal" : item2.antiAliasType;
         }
         this.colorTransform1 = item1.transform.colorTransform;
         this.colorTransform2 = item2.transform.colorTransform;
         this.item1Registration = new Point();
         this.item2Registration = new Point();
         this.item1Registration = item1.localToGlobal(this.item1Registration);
         this.item2Registration = item2.localToGlobal(this.item2Registration);
         this.bmd1 = new BitmapData(item1.width,item1.height,true,16777215);
         this.bmd2 = new BitmapData(item1.width,item1.height,true,16777215);
         this.transMatrix1 = item1.transform.matrix;
         currentObj = item1;
         while(currentObj.parent != null)
         {
            this.transMatrix1.concat(currentObj.parent.transform.matrix);
            currentObj = currentObj.parent;
         }
         this.rect1 = item1.getBounds(currentObj);
         if(item1 != currentObj)
         {
            this.rect1.x += currentObj.x;
            this.rect1.y += currentObj.y;
         }
         this.transMatrix1.tx = item1xDiff = this.item1Registration.x - this.rect1.left;
         this.transMatrix1.ty = item1yDiff = this.item1Registration.y - this.rect1.top;
         this.transMatrix2 = item2.transform.matrix;
         currentObj = item2;
         while(currentObj.parent != null)
         {
            this.transMatrix2.concat(currentObj.parent.transform.matrix);
            currentObj = currentObj.parent;
         }
         this.transMatrix2.tx = this.item2Registration.x - this.rect1.left;
         this.transMatrix2.ty = this.item2Registration.y - this.rect1.top;
         this.bmd1.draw(item1,this.transMatrix1,this.colorTransform1,null,null,true);
         this.bmd2.draw(item2,this.transMatrix2,this.colorTransform2,null,null,true);
         this.pixels1 = this.bmd1.getPixels(new Rectangle(0,0,this.bmd1.width,this.bmd1.height));
         this.pixels2 = this.bmd2.getPixels(new Rectangle(0,0,this.bmd1.width,this.bmd1.height));
         k = 0;
         value1 = 0;
         value2 = 0;
         collisionPoint = -1;
         overlap = false;
         overlapping = [];
         hasColors = int(this._SafeStr_1983.length);
         this.pixels1.position = 0;
         this.pixels2.position = 0;
         pixelLength = int(this.pixels1.length);
         while(k < pixelLength)
         {
            k = uint(this.pixels1.position);
            try
            {
               value1 = uint(this.pixels1.readUnsignedInt());
               value2 = uint(this.pixels2.readUnsignedInt());
            }
            catch(e:EOFError)
            {
               break;
            }
            alpha1 = uint(value1 >> 24 & 0xFF);
            alpha2 = uint(value2 >> 24 & 0xFF);
            if(alpha1 > this._SafeStr_375 && alpha2 > this._SafeStr_375)
            {
               colorFlag = false;
               if(hasColors)
               {
                  red1 = uint(value1 >> 16 & 0xFF);
                  red2 = uint(value2 >> 16 & 0xFF);
                  green1 = uint(value1 >> 8 & 0xFF);
                  green2 = uint(value2 >> 8 & 0xFF);
                  blue1 = uint(value1 & 0xFF);
                  blue2 = uint(value2 & 0xFF);
                  n = 0;
                  while(n < hasColors)
                  {
                     colorObj = Object(this._SafeStr_1983[n]);
                     item1Flags = 0;
                     item2Flags = 0;
                     if(blue1 >= colorObj.bMinus && blue1 <= colorObj.bPlus)
                     {
                        item1Flags++;
                     }
                     if(blue2 >= colorObj.bMinus && blue2 <= colorObj.bPlus)
                     {
                        item2Flags++;
                     }
                     if(green1 >= colorObj.gMinus && green1 <= colorObj.gPlus)
                     {
                        item1Flags++;
                     }
                     if(green2 >= colorObj.gMinus && green2 <= colorObj.gPlus)
                     {
                        item2Flags++;
                     }
                     if(red1 >= colorObj.rMinus && red1 <= colorObj.rPlus)
                     {
                        item1Flags++;
                     }
                     if(red2 >= colorObj.rMinus && red2 <= colorObj.rPlus)
                     {
                        item2Flags++;
                     }
                     if(alpha1 >= colorObj.aMinus && alpha1 <= colorObj.aPlus)
                     {
                        item1Flags++;
                     }
                     if(alpha2 >= colorObj.aMinus && alpha2 <= colorObj.aPlus)
                     {
                        item2Flags++;
                     }
                     if(item1Flags == 4 || item2Flags == 4)
                     {
                        colorFlag = true;
                     }
                     n++;
                  }
               }
               if(!colorFlag)
               {
                  overlap = true;
                  collisionPoint = k >> 2;
                  locY = collisionPoint / this.bmd1.width;
                  locX = collisionPoint % this.bmd1.width;
                  locY -= item1yDiff;
                  locX -= item1xDiff;
                  locStage = item1.localToGlobal(new Point(locX,locY));
                  overlapping.push(locStage);
               }
            }
         }
         if(overlap)
         {
            angle = this._returnAngle ? this.findAngle(item1,item2) : 0;
            recordedCollision = {
               "object1":item1,
               "object2":item2,
               "angle":angle,
               "overlapping":overlapping
            };
            this._SafeStr_1582.push(recordedCollision);
         }
         if(item1_isText)
         {
            item1.antiAliasType = "advanced";
         }
         if(item2_isText)
         {
            item2.antiAliasType = "advanced";
         }
         item1_isText = item2_isText = false;
      }
      
      private function findAngle(param1:DisplayObject, param2:DisplayObject) : Number
      {
         var columnHeight:uint;
         var rowWidth:uint;
         var edgeArray:Array;
         var hasColors:int;
         var j:uint;
         var numEdges:int;
         var slopeYAvg:Number;
         var slopeXAvg:Number;
         var average:Number;
         var pixel:uint = 0;
         var thisAlpha:uint = 0;
         var lastAlpha:int = 0;
         var edgePoint:int = 0;
         var k:uint = 0;
         var upperLimit:int = 0;
         var colorFlag:Boolean = false;
         var red1:uint = 0;
         var green1:uint = 0;
         var blue1:uint = 0;
         var colorObj:Object = null;
         var a:uint = 0;
         var r:uint = 0;
         var g:uint = 0;
         var b:uint = 0;
         var item1Flags:uint = 0;
         var n:uint = 0;
         var item1:DisplayObject = param1;
         var item2:DisplayObject = param2;
         var center:Point = new Point(item1.width >> 1,item1.height >> 1);
         var pixels:ByteArray = this.pixels2;
         this.transMatrix2.tx += center.x;
         this.transMatrix2.ty += center.y;
         this._SafeStr_767 = new BitmapData(item1.width << 1,item1.height << 1,true,16777215);
         this._SafeStr_767.draw(item2,this.transMatrix2,this.colorTransform2,null,null,true);
         pixels = this._SafeStr_767.getPixels(new Rectangle(0,0,this._SafeStr_767.width,this._SafeStr_767.height));
         center.x = this._SafeStr_767.width >> 1;
         center.y = this._SafeStr_767.height >> 1;
         columnHeight = uint(Math.round(this._SafeStr_767.height));
         rowWidth = uint(Math.round(this._SafeStr_767.width));
         edgeArray = [];
         hasColors = int(this._SafeStr_1983.length);
         j = 0;
         while(j < columnHeight)
         {
            k = uint(j * rowWidth << 2);
            pixels.position = k;
            lastAlpha = -1;
            upperLimit = (j + 1) * rowWidth << 2;
            while(k < upperLimit)
            {
               k = uint(pixels.position);
               try
               {
                  pixel = uint(pixels.readUnsignedInt());
               }
               catch(e:EOFError)
               {
                  break;
               }
               thisAlpha = uint(pixel >> 24 & 0xFF);
               if(lastAlpha == -1)
               {
                  lastAlpha = int(thisAlpha);
               }
               else if(thisAlpha > this._SafeStr_375)
               {
                  colorFlag = false;
                  if(hasColors)
                  {
                     red1 = uint(pixel >> 16 & 0xFF);
                     green1 = uint(pixel >> 8 & 0xFF);
                     blue1 = uint(pixel & 0xFF);
                     n = 0;
                     while(n < hasColors)
                     {
                        colorObj = Object(this._SafeStr_1983[n]);
                        item1Flags = 0;
                        if(blue1 >= colorObj.bMinus && blue1 <= colorObj.bPlus)
                        {
                           item1Flags++;
                        }
                        if(green1 >= colorObj.gMinus && green1 <= colorObj.gPlus)
                        {
                           item1Flags++;
                        }
                        if(red1 >= colorObj.rMinus && red1 <= colorObj.rPlus)
                        {
                           item1Flags++;
                        }
                        if(thisAlpha >= colorObj.aMinus && thisAlpha <= colorObj.aPlus)
                        {
                           item1Flags++;
                        }
                        if(item1Flags == 4)
                        {
                           colorFlag = true;
                        }
                        n++;
                     }
                  }
                  if(!colorFlag)
                  {
                     edgeArray.push(k >> 2);
                  }
               }
            }
            j++;
         }
         numEdges = int(edgeArray.length);
         slopeYAvg = 0;
         slopeXAvg = 0;
         j = 0;
         while(j < numEdges)
         {
            edgePoint = int(int(edgeArray[j]));
            slopeYAvg += center.y - edgePoint / rowWidth;
            slopeXAvg += edgePoint % rowWidth - center.x;
            j++;
         }
         average = -Math.atan2(slopeYAvg,slopeXAvg);
         average = this._SafeStr_650 == "RADIANS" ? average : average * 57.2957795;
         return average;
      }
      
      public function dispose() : void
      {
         this._SafeStr_716 = [];
      }
      
      public function set _SafeStr_1629(param1:Number) : void
      {
         if(param1 <= 1 && param1 >= 0)
         {
            this._SafeStr_375 = param1 * 255;
            return;
         }
         throw new Error("alphaThreshold expects a value from 0 to 1");
      }
      
      public function get _SafeStr_1629() : Number
      {
         return this._SafeStr_375;
      }
      
      public function get returnAngle() : Boolean
      {
         return this._returnAngle;
      }
      
      public function set returnAngle(param1:Boolean) : void
      {
         this._returnAngle = param1;
      }
      
      public function set _SafeStr_2235(param1:String) : void
      {
         param1 = param1.toUpperCase();
         switch(param1)
         {
            case "DEGREES":
            case "DEGREE":
            case "DEG":
            case "DEGS":
               this._SafeStr_650 = "DEGREES";
               break;
            case "RADIANS":
            case "RADIAN":
            case "RAD":
            case "RADS":
               this._SafeStr_650 = "RADIANS";
               break;
            default:
               throw new Error("returnAngleType expects \'DEGREES\' or \'RADIANS\'");
         }
      }
      
      public function get _SafeStr_2235() : String
      {
         return this._SafeStr_650;
      }
      
      public function get numChildren() : uint
      {
         return this._SafeStr_716.length;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_293 = "_-DE"
 * @identifier _SafeStr_375 = "_-Mn"
 * @identifier _SafeStr_550 = "_-j9"
 * @identifier _SafeStr_650 = "_-3e"
 * @identifier _SafeStr_716 = "_-XA"
 * @identifier _SafeStr_767 = "_-UH"
 * @identifier _SafeStr_1389 = "_-Cd"
 * @identifier _SafeStr_1582 = "_-F1"
 * @identifier _SafeStr_1629 = "_-jl"
 * @identifier _SafeStr_1983 = "_-f3"
 * @identifier _SafeStr_2235 = "_-9i"
 * @identifier _SafeStr_2400 = "_-P1"
 * @identifier _SafeStr_2411 = "_-7B"
 */
