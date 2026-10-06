package murray
{
   import _SafePkg_41._SafeCls_48;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _SafeCls_97 extends Sprite
   {
      
      public static const _SafeStr_268:int = 100;
      
      public const _SafeStr_603:int = 32;
      
      public const _SafeStr_868:int = 358;
      
      public const _SafeStr_630:int = 56;
      
      public var _SafeStr_103:_SafeCls_48;
      
      public var _SafeStr_274:Boolean = false;
      
      public var ed:_SafeCls_72;
      
      private var _SafeStr_151:BitmapData;
      
      public var _SafeStr_258:Sprite = new Sprite();
      
      private var _SafeStr_475:Rectangle;
      
      private var point:Point;
      
      public var _SafeStr_176:int;
      
      public var _SafeStr_178:int;
      
      public var _SafeStr_621:int;
      
      public var _SafeStr_589:int;
      
      public var _SafeStr_317:Array = new Array();
      
      public var _SafeStr_313:Array = new Array();
      
      public var _SafeStr_401:Array = new Array();
      
      public var _SafeStr_552:Array = new Array();
      
      public var _SafeStr_610:Array = new Array();
      
      public function _SafeCls_97(param1:int, param2:int, param3:_SafeCls_72)
      {
         super();
         this._SafeStr_176 = param1;
         this._SafeStr_178 = param2;
         this._SafeStr_621 = param1 * 3 * (param1 * 3);
         this._SafeStr_589 = 200000;
         this.ed = param3;
         this._SafeStr_103 = new _SafeCls_48(0,0,0,1000000);
         this._SafeStr_151 = new BitmapData(this._SafeStr_176,this._SafeStr_178,false,0);
         var _loc4_:Bitmap = new Bitmap(this._SafeStr_151);
         addChild(_loc4_);
         this._SafeStr_475 = new Rectangle();
         this.point = new Point();
         addChild(this._SafeStr_258);
      }
      
      public function _SafeStr_253(param1:Array, param2:int, param3:int, param4:int, param5:int, param6:Number, param7:int = 0, param8:int = 1) : void
      {
         var _loc9_:_SafeCls_54 = null;
         if(this._SafeStr_401.length > 0)
         {
            _loc9_ = this._SafeStr_401.pop();
         }
         else
         {
            _loc9_ = new _SafeCls_54();
         }
         _loc9_._SafeStr_668 = param1;
         _loc9_.x = param2;
         _loc9_.y = param3;
         _loc9_._SafeStr_248 = param4;
         _loc9_._SafeStr_247 = param5;
         _loc9_.rotation = param6;
         _loc9_._SafeStr_210 = param7;
         if(param8 == 1)
         {
            this._SafeStr_317.push(_loc9_);
         }
         else
         {
            this._SafeStr_313.push(_loc9_);
         }
      }
      
      public function _SafeStr_1225() : void
      {
         var _loc2_:_SafeCls_54 = null;
         var _loc1_:* = 0;
         while(_loc1_ < this._SafeStr_317.length)
         {
            _loc2_ = this._SafeStr_317[_loc1_];
            ++_loc2_._SafeStr_210;
            _loc2_.x += _loc2_._SafeStr_248;
            _loc2_.y += _loc2_._SafeStr_247;
            if(_loc2_._SafeStr_210 >= _loc2_._SafeStr_668.length)
            {
               this._SafeStr_401.push(this._SafeStr_317.splice(_loc1_,1)[0]);
               _loc1_--;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_313.length)
         {
            _loc2_ = this._SafeStr_313[_loc1_];
            ++_loc2_._SafeStr_210;
            _loc2_.x += _loc2_._SafeStr_248;
            _loc2_.y += _loc2_._SafeStr_247;
            if(_loc2_._SafeStr_210 >= _loc2_._SafeStr_668.length)
            {
               this._SafeStr_401.push(this._SafeStr_313.splice(_loc1_,1)[0]);
               _loc1_--;
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_1176() : void
      {
         while(this._SafeStr_317.length > 0)
         {
            this._SafeStr_401.push(this._SafeStr_317.pop());
         }
         while(this._SafeStr_313.length > 0)
         {
            this._SafeStr_401.push(this._SafeStr_313.pop());
         }
      }
      
      public function _SafeStr_1142() : void
      {
         if(this._SafeStr_274)
         {
            this._SafeStr_838();
         }
         this._SafeStr_151.lock();
      }
      
      public function _SafeStr_838() : void
      {
         this._SafeStr_258.graphics.clear();
         this._SafeStr_258.graphics.lineStyle(1,16776960);
         var _loc1_:* = 0;
         while(_loc1_ < this._SafeStr_552.length)
         {
            this._SafeStr_258.removeChild(this._SafeStr_552[_loc1_]);
            this._SafeStr_610.push(this._SafeStr_552.splice(_loc1_,1)[0]);
            _loc1_--;
            _loc1_++;
         }
      }
      
      public function _SafeStr_1220() : void
      {
         this._SafeStr_151.unlock();
      }
      
      public function _SafeStr_1043(param1:_SafeCls_46) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc2_:BitmapData = this.ed._SafeStr_459[param1.tileset - 1][0];
         var _loc3_:int = this._SafeStr_103.x % _loc2_.width;
         var _loc4_:int = this._SafeStr_103.y % _loc2_.height;
         var _loc5_:int = this._SafeStr_103.x / _loc2_.width;
         var _loc6_:int = this._SafeStr_103.y / _loc2_.height;
         var _loc7_:int = this._SafeStr_176 / _loc2_.width + 1;
         if(_loc3_ != 0)
         {
            _loc7_ += 2;
         }
         var _loc8_:int = this._SafeStr_178 / _loc2_.height + 1;
         if(_loc4_ != 0)
         {
            _loc8_ += 1;
         }
         this._SafeStr_475.x = 0;
         this._SafeStr_475.y = 0;
         this._SafeStr_475.width = _loc2_.width;
         this._SafeStr_475.height = _loc2_.height;
         var _loc9_:int = 0;
         while(_loc9_ < _loc8_)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc7_)
            {
               _loc11_ = Math.abs((_loc5_ + _loc10_) * Math.PI + (_loc6_ + _loc9_) * Math.E) % this.ed._SafeStr_459[param1.tileset - 1].length;
               this.point.x = _loc10_ * _loc2_.width - _loc3_;
               this.point.y = _loc9_ * _loc2_.height - _loc4_;
               this._SafeStr_151.copyPixels(this.ed._SafeStr_459[param1.tileset - 1][_loc11_],this._SafeStr_475,this.point);
               _loc10_++;
            }
            _loc9_++;
         }
      }
      
      public function _SafeStr_1037(param1:Array, param2:Boolean = true) : void
      {
         var _loc5_:_SafeCls_55 = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc3_:_SafeCls_4 = _SafeCls_4._SafeStr_121();
         var _loc4_:int = 0;
         for(; _loc4_ < param1.length; _loc4_++)
         {
            _loc5_ = param1[_loc4_];
            if(!param2)
            {
               if(_loc5_._SafeStr_252.collision.length == 0)
               {
                  continue;
               }
            }
            if(_loc5_.x > this._SafeStr_103.x - _loc5_._SafeStr_252.width && _loc5_.x - _loc5_._SafeStr_252.width < this._SafeStr_103.x + this._SafeStr_176)
            {
               if(_loc5_.y > this._SafeStr_103.y - _loc5_._SafeStr_252.height && _loc5_.y - _loc5_._SafeStr_252.height < this._SafeStr_103.y + this._SafeStr_178)
               {
                  if(_loc3_.low_quality)
                  {
                     _SafeCls_10._SafeStr_221(this._SafeStr_151,_loc5_._SafeStr_252._SafeStr_966,_loc5_.x - this._SafeStr_103.x,_loc5_.y - this._SafeStr_103.y,_loc5_._SafeStr_382);
                  }
                  else
                  {
                     _SafeCls_10._SafeStr_221(this._SafeStr_151,_loc5_._SafeStr_252._SafeStr_293,_loc5_.x - this._SafeStr_103.x,_loc5_.y - this._SafeStr_103.y,_loc5_._SafeStr_382);
                  }
                  if(this._SafeStr_274)
                  {
                     _loc6_ = 0;
                     while(_loc6_ < _loc5_._SafeStr_134.length)
                     {
                        _loc7_ = _loc5_._SafeStr_134[_loc6_];
                        this._SafeStr_258.graphics.moveTo(_loc7_[0] - this._SafeStr_103.x,_loc7_[1] - this._SafeStr_103.y);
                        this._SafeStr_258.graphics.lineTo(_loc7_[2] - this._SafeStr_103.x,_loc7_[3] - this._SafeStr_103.y);
                        _loc6_++;
                     }
                  }
               }
            }
         }
      }
      
      public function _SafeStr_1326(param1:Array) : void
      {
         this.ed._SafeStr_242.gotoAndStop("spawn1");
         var _loc2_:int = 0;
         while(_loc2_ < param1[0].length)
         {
            if(param1[0][_loc2_][0] > this._SafeStr_103.x && param1[0][_loc2_][0] < this._SafeStr_103.x + this._SafeStr_176)
            {
               if(param1[0][_loc2_][1] > this._SafeStr_103.y && param1[0][_loc2_][1] < this._SafeStr_103.y + this._SafeStr_178)
               {
                  _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_242,param1[0][_loc2_][0] - this._SafeStr_103.x,param1[0][_loc2_][1] - this._SafeStr_103.y);
               }
            }
            _loc2_++;
         }
         this.ed._SafeStr_242.gotoAndStop("spawn2");
         _loc2_ = 0;
         while(_loc2_ < param1[1].length)
         {
            if(param1[1][_loc2_][0] > this._SafeStr_103.x && param1[1][_loc2_][0] < this._SafeStr_103.x + this._SafeStr_176)
            {
               if(param1[1][_loc2_][1] > this._SafeStr_103.y && param1[1][_loc2_][1] < this._SafeStr_103.y + this._SafeStr_178)
               {
                  _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_242,param1[1][_loc2_][0] - this._SafeStr_103.x,param1[1][_loc2_][1] - this._SafeStr_103.y);
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1165(param1:Array) : Boolean
      {
         if(param1[0] + _SafeStr_268 > this._SafeStr_103.x && param1[0] - _SafeStr_268 < this._SafeStr_103.x + this._SafeStr_176)
         {
            if(param1[1] + _SafeStr_268 > this._SafeStr_103.y && param1[1] - _SafeStr_268 < this._SafeStr_103.y + this._SafeStr_178)
            {
               _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_914,param1[0] - this._SafeStr_103.x - 100,param1[1] - this._SafeStr_103.y - 100);
               if(this._SafeStr_274)
               {
                  this._SafeStr_258.graphics.drawCircle(param1[0] - this._SafeStr_103.x,param1[1] - this._SafeStr_103.y,_SafeStr_268);
               }
               return true;
            }
         }
         return false;
      }
      
      public function _SafeStr_916(param1:_SafeCls_28) : void
      {
         var _loc2_:int = param1.x / 100;
         var _loc3_:int = param1.y / 100;
         if(_loc2_ > this._SafeStr_103.x - param1.p.radius * 2 && _loc2_ - param1.p.radius * 2 < this._SafeStr_103.x + this._SafeStr_176)
         {
            if(_loc3_ > this._SafeStr_103.y - param1.p.radius * 2 && _loc3_ - param1.p.radius * 2 < this._SafeStr_103.y + this._SafeStr_178)
            {
               _SafeCls_10._SafeStr_221(this._SafeStr_151,param1.p._SafeStr_293[param1._SafeStr_210],param1.x / 100 - this._SafeStr_103.x,param1.y / 100 - this._SafeStr_103.y,param1.r);
               if(this._SafeStr_274)
               {
                  this._SafeStr_258.graphics.drawCircle(param1.x / 100 - this._SafeStr_103.x,param1.y / 100 - this._SafeStr_103.y,param1.p.radius);
               }
            }
         }
      }
      
      public function _SafeStr_1188() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._SafeStr_317.length)
         {
            this._SafeStr_939(this._SafeStr_317[_loc1_]);
            _loc1_++;
         }
      }
      
      public function _SafeStr_1084() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._SafeStr_313.length)
         {
            this._SafeStr_939(this._SafeStr_313[_loc1_]);
            _loc1_++;
         }
      }
      
      public function _SafeStr_939(param1:_SafeCls_54) : void
      {
         if(param1.x > this._SafeStr_103.x - this._SafeStr_603 && param1.x - this._SafeStr_603 < this._SafeStr_103.x + this._SafeStr_176)
         {
            if(param1.y > this._SafeStr_103.y - this._SafeStr_603 && param1.y - this._SafeStr_603 < this._SafeStr_103.y + this._SafeStr_178)
            {
               _SafeCls_10._SafeStr_221(this._SafeStr_151,param1._SafeStr_668[param1._SafeStr_210],param1.x - this._SafeStr_103.x,param1.y - this._SafeStr_103.y,param1.rotation);
            }
         }
      }
      
      public function _SafeStr_1130(param1:_SafeCls_17, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:_SafeCls_34 = null;
         if(param1.alive)
         {
            if(param1._SafeStr_111 > this._SafeStr_103.x - param1.ship.radius * 2 && param1._SafeStr_111 - param1.ship.radius * 2 < this._SafeStr_103.x + this._SafeStr_176)
            {
               if(param1._SafeStr_112 > this._SafeStr_103.y - param1.ship.radius * 2 && param1._SafeStr_112 - param1.ship.radius * 2 < this._SafeStr_103.y + this._SafeStr_178)
               {
                  _SafeCls_10._SafeStr_221(this._SafeStr_151,param1._SafeStr_577,param1._SafeStr_111 - this._SafeStr_103.x,param1._SafeStr_112 - this._SafeStr_103.y,param1._SafeStr_135);
                  _loc3_ = 0;
                  while(_loc3_ < param1._SafeStr_189.length)
                  {
                     _loc4_ = param1._SafeStr_189[_loc3_];
                     _SafeCls_10._SafeStr_221(this._SafeStr_151,_loc4_.graphic,param1._SafeStr_111 - this._SafeStr_103.x + _loc4_._SafeStr_487,param1._SafeStr_112 - this._SafeStr_103.y + _loc4_._SafeStr_516,_loc4_.rad);
                     _loc3_++;
                  }
                  if(param2)
                  {
                     _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_702,param1._SafeStr_111 - this._SafeStr_103.x,param1._SafeStr_112 - this._SafeStr_103.y,0);
                  }
                  if(this._SafeStr_274)
                  {
                     this._SafeStr_258.graphics.drawCircle(param1._SafeStr_111 - this._SafeStr_103.x,param1._SafeStr_112 - this._SafeStr_103.y,param1.ship.radius);
                     this._SafeStr_698(param1.health + "/" + param1._SafeStr_318,16711680,param1._SafeStr_111 - this._SafeStr_103.x - param1.ship.radius,param1._SafeStr_112 - this._SafeStr_103.y - param1.ship.radius);
                     this._SafeStr_698(param1.shields + "/" + param1._SafeStr_292,65535,param1._SafeStr_111 - this._SafeStr_103.x - param1.ship.radius,param1._SafeStr_112 - this._SafeStr_103.y - param1.ship.radius + 20);
                     this._SafeStr_698("" + param1.energy,12326655,param1._SafeStr_111 - this._SafeStr_103.x - param1.ship.radius,param1._SafeStr_112 - this._SafeStr_103.y - param1.ship.radius + 40);
                  }
               }
            }
         }
      }
      
      public function _SafeStr_698(param1:String, param2:uint, param3:int, param4:int) : void
      {
         var _loc5_:TextField = null;
         if(this._SafeStr_610.length > 0)
         {
            _loc5_ = this._SafeStr_610.splice(0,1)[0];
         }
         else
         {
            _loc5_ = new TextField();
         }
         _loc5_.textColor = param2;
         _loc5_.backgroundColor = 0;
         _loc5_.background = true;
         _loc5_.autoSize = TextFieldAutoSize.LEFT;
         _loc5_.text = param1;
         _loc5_.defaultTextFormat.bold = true;
         _loc5_.x = param3;
         _loc5_.y = param4;
         this._SafeStr_258.addChild(_loc5_);
         this._SafeStr_552.push(_loc5_);
      }
      
      public function _SafeStr_1031(param1:_SafeCls_17, param2:Boolean = true) : void
      {
         var _loc3_:Number = NaN;
         if(param1.alive)
         {
            if(param1._SafeStr_111 > this._SafeStr_103.x - param1.ship.radius * 2 && param1._SafeStr_111 - param1.ship.radius * 2 < this._SafeStr_103.x + this._SafeStr_176)
            {
               if(param1._SafeStr_112 > this._SafeStr_103.y - param1.ship.radius * 2 && param1._SafeStr_112 - param1.ship.radius * 2 < this._SafeStr_103.y + this._SafeStr_178)
               {
                  if(param2)
                  {
                     this._SafeStr_290(param1._SafeStr_177,param1._SafeStr_111 - param1._SafeStr_177.width / 2,param1._SafeStr_112 - param1.ship.radius - param1._SafeStr_177.height - 13,param1._SafeStr_177.width);
                  }
                  _loc3_ = param1.shields * 1 / param1._SafeStr_292;
                  this._SafeStr_290(this.ed._SafeStr_508,param1._SafeStr_111 - this.ed.bar_foreground_full.width / 2 + 2,param1._SafeStr_112 + param1.ship.radius + 20,this.ed._SafeStr_508.width * _loc3_);
                  _loc3_ = param1.health * 1 / param1._SafeStr_318;
                  this._SafeStr_290(this.ed._SafeStr_416[0],param1._SafeStr_111 - this.ed.bar_foreground_full.width / 2 + 2,param1._SafeStr_112 + param1.ship.radius + 15,this.ed._SafeStr_416[0].width * _loc3_);
                  _loc3_ = param1.energy * 1 / param1._SafeStr_278;
                  this._SafeStr_290(this.ed._SafeStr_490,param1._SafeStr_111 - this.ed.bar_foreground_full.width / 2 + 8,param1._SafeStr_112 + param1.ship.radius + 25,this.ed._SafeStr_490.width * _loc3_);
                  this._SafeStr_290(this.ed.bar_foreground_full,param1._SafeStr_111 - this.ed.bar_foreground_full.width / 2,param1._SafeStr_112 + param1.ship.radius + 13,this.ed.bar_foreground_full.width);
               }
            }
         }
      }
      
      public function _SafeStr_290(param1:BitmapData, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Rectangle = new Rectangle();
         _loc5_.height = param1.height;
         _loc5_.width = param4;
         var _loc6_:Point = new Point(param2 - this._SafeStr_103.x,param3 - this._SafeStr_103.y);
         this._SafeStr_151.copyPixels(param1,_loc5_,_loc6_);
      }
      
      public function _SafeStr_1131(param1:_SafeCls_17, param2:_SafeCls_17, param3:Boolean = false) : void
      {
         var _loc4_:int = 0;
         var _loc5_:_SafeCls_34 = null;
         var _loc6_:_SafeCls_34 = null;
         if(!param1._SafeStr_577 || param1._SafeStr_110 == null)
         {
            return;
         }
         if(param1.arrow)
         {
            param1.arrow.visible = param1.alive;
         }
         if(param1._SafeStr_110.x / 100 > this._SafeStr_103.x - param1.ship.radius * 2 && param1._SafeStr_110.x / 100 - param1.ship.radius * 2 < this._SafeStr_103.x + this._SafeStr_176)
         {
            if(param1._SafeStr_110.y / 100 > this._SafeStr_103.y - param1.ship.radius * 2 && param1._SafeStr_110.y / 100 - param1.ship.radius * 2 < this._SafeStr_103.y + this._SafeStr_178)
            {
               if(param1.alive)
               {
                  _SafeCls_10._SafeStr_221(this._SafeStr_151,param1._SafeStr_577,param1._SafeStr_110.x / 100 - this._SafeStr_103.x,param1._SafeStr_110.y / 100 - this._SafeStr_103.y,param1._SafeStr_110._SafeStr_135);
                  _loc4_ = 0;
                  while(_loc4_ < Math.min(param1._SafeStr_110._SafeStr_189.length,param1._SafeStr_189.length))
                  {
                     _loc5_ = param1._SafeStr_110._SafeStr_189[_loc4_];
                     _loc6_ = param1._SafeStr_189[_loc4_];
                     _loc5_._SafeStr_487 = _SafeCls_10._SafeStr_233(_loc6_.x_offset,_loc6_.y_offset,param1._SafeStr_110._SafeStr_135);
                     _loc5_._SafeStr_516 = _SafeCls_10._SafeStr_227(_loc6_.x_offset,_loc6_.y_offset,param1._SafeStr_110._SafeStr_135);
                     _SafeCls_10._SafeStr_221(this._SafeStr_151,_loc6_.graphic,param1._SafeStr_110.x / 100 - this._SafeStr_103.x + _loc5_._SafeStr_487,param1._SafeStr_110.y / 100 - this._SafeStr_103.y + _loc5_._SafeStr_516,param1._SafeStr_110._SafeStr_135);
                     _loc4_++;
                  }
                  if(param3)
                  {
                     _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_702,param1._SafeStr_110.x / 100 - this._SafeStr_103.x,param1._SafeStr_110.y / 100 - this._SafeStr_103.y,0);
                  }
                  if(param1.arrow)
                  {
                     param1.arrow.visible = false;
                  }
               }
               if(this._SafeStr_274)
               {
                  this._SafeStr_258.graphics.drawCircle(param1._SafeStr_110.x / 100 - this._SafeStr_103.x,param1._SafeStr_110.y / 100 - this._SafeStr_103.y,param1.ship.radius);
               }
            }
         }
         if(param1.arrow)
         {
            if(param1.arrow.visible)
            {
               this._SafeStr_988(param2.x,param2.y,param1._SafeStr_110.x,param1._SafeStr_110.y,param1.arrow);
            }
         }
      }
      
      public function _SafeStr_1170(param1:_SafeCls_17, param2:Boolean = true) : void
      {
         var _loc3_:Number = NaN;
         if(param1._SafeStr_110 == null)
         {
            return;
         }
         if(param1._SafeStr_110.x / 100 > this._SafeStr_103.x - param1.ship.radius * 2 && param1._SafeStr_110.x / 100 - param1.ship.radius * 2 < this._SafeStr_103.x + this._SafeStr_176)
         {
            if(param1._SafeStr_110.y / 100 > this._SafeStr_103.y - param1.ship.radius * 2 && param1._SafeStr_110.y / 100 - param1.ship.radius * 2 < this._SafeStr_103.y + this._SafeStr_178)
            {
               if(param1.alive)
               {
                  if(param2)
                  {
                     this._SafeStr_290(param1._SafeStr_177,param1._SafeStr_110._SafeStr_111 - param1._SafeStr_177.width / 2,param1._SafeStr_110._SafeStr_112 - param1.ship.radius - param1._SafeStr_177.height - 13,param1._SafeStr_177.width);
                  }
                  _loc3_ = param1.shields * 1 / param1._SafeStr_292;
                  this._SafeStr_290(this.ed._SafeStr_508,param1._SafeStr_110._SafeStr_111 - this.ed.bar_foreground_full.width / 2 + 2,param1._SafeStr_110._SafeStr_112 + param1.ship.radius + 17,this.ed._SafeStr_508.width * _loc3_);
                  _loc3_ = param1.health * 1 / param1._SafeStr_318;
                  this._SafeStr_290(this.ed._SafeStr_416[0],param1._SafeStr_110._SafeStr_111 - this.ed.bar_foreground_full.width / 2 + 2,param1._SafeStr_110._SafeStr_112 + param1.ship.radius + 12,this.ed._SafeStr_416[0].width * _loc3_);
                  _loc3_ = param1.energy * 1 / param1._SafeStr_278;
                  this._SafeStr_290(this.ed._SafeStr_490,param1._SafeStr_110._SafeStr_111 - this.ed.bar_foreground_full.width / 2 + 8,param1._SafeStr_110._SafeStr_112 + param1.ship.radius + 22,this.ed._SafeStr_490.width * _loc3_);
                  this._SafeStr_290(this.ed.bar_foreground_full,param1._SafeStr_110._SafeStr_111 - this.ed.bar_foreground_full.width / 2,param1._SafeStr_110._SafeStr_112 + param1.ship.radius + 10,this.ed.bar_foreground_full.width);
               }
            }
         }
      }
      
      public function _SafeStr_988(param1:int, param2:int, param3:int, param4:int, param5:MovieClip) : void
      {
         var _loc8_:* = undefined;
         var _loc6_:Number = Number(Math.atan2(param4 - param2,param3 - param1));
         param5.rotation = _loc6_ * 180 / Math.PI + 90;
         param5.x = this._SafeStr_176 / 2 + Math.cos(_loc6_) * this._SafeStr_868;
         param5.y = this._SafeStr_178 / 2 + Math.sin(_loc6_) * this._SafeStr_868;
         if(param5.x < 0)
         {
            param5.x = 0;
         }
         else if(param5.x > this._SafeStr_176)
         {
            param5.x = this._SafeStr_176;
         }
         if(param5.y < this._SafeStr_630)
         {
            param5.y = this._SafeStr_630;
         }
         else if(param5.y > this._SafeStr_178 - this._SafeStr_630)
         {
            param5.y = this._SafeStr_178 - this._SafeStr_630;
         }
         var _loc7_:Number = _SafeCls_10._SafeStr_548(param3 / 100,param4 / 100,param1 / 100,param2 / 100);
         if(_loc7_ > this._SafeStr_621)
         {
            param5.scaleX = 0.5;
            param5.scaleY = 0.5;
         }
         else if(_loc7_ <= this._SafeStr_589)
         {
            param5.scaleX = 1;
            param5.scaleY = 1;
         }
         else
         {
            _loc8_ = _loc7_ - this._SafeStr_589;
            param5.scaleX = 1 - _loc8_ * 1 / (this._SafeStr_621 - this._SafeStr_589) / 2;
            param5.scaleY = param5.scaleX;
         }
      }
      
      public function _SafeStr_1317(param1:Array) : void
      {
         var _loc3_:_SafeCls_57 = null;
         var _loc4_:_SafeCls_55 = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            if(param1[_loc2_] is _SafeCls_57)
            {
               _loc3_ = param1[_loc2_];
               this._SafeStr_953(_loc3_.x - 31 - this._SafeStr_103.x,_loc3_.y - 31 - this._SafeStr_103.y,_loc3_.x + 31 - this._SafeStr_103.x,_loc3_.y + 31 - this._SafeStr_103.y);
            }
            else if(param1[_loc2_] is _SafeCls_55)
            {
               _loc4_ = param1[_loc2_];
               this._SafeStr_953(_loc4_._SafeStr_554[0] + (_loc4_.x - this._SafeStr_103.x),_loc4_._SafeStr_554[1] + (_loc4_.y - this._SafeStr_103.y),_loc4_._SafeStr_554[2] + (_loc4_.x - this._SafeStr_103.x),_loc4_._SafeStr_554[3] + (_loc4_.y - this._SafeStr_103.y));
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_953(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.ed._SafeStr_242.gotoAndStop("selection_topleft");
         _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_242,param1,param2);
         _SafeCls_10._SafeStr_876(this._SafeStr_151,this.ed._SafeStr_242,param3,param2,this.ed._SafeStr_242.width);
         this.ed._SafeStr_242.gotoAndStop("selection_bottomleft");
         _SafeCls_10._SafeStr_876(this._SafeStr_151,this.ed._SafeStr_242,param3,param4,this.ed._SafeStr_242.width);
         _SafeCls_10._SafeStr_221(this._SafeStr_151,this.ed._SafeStr_242,param1,param4);
      }
      
      public function drawRect(param1:int, param2:int, param3:int, param4:int, param5:uint) : void
      {
         var _loc6_:int = Math.min(param1,param3) - this._SafeStr_103.x;
         var _loc7_:int = Math.min(param2,param4) - this._SafeStr_103.y;
         var _loc8_:int = Math.max(param1,param3) - this._SafeStr_103.x - _loc6_;
         var _loc9_:int = Math.max(param2,param4) - this._SafeStr_103.y - _loc7_;
         var _loc10_:Rectangle = new Rectangle(_loc6_,_loc7_,_loc8_,1);
         this._SafeStr_151.fillRect(_loc10_,param5);
         _loc10_.width = 1;
         _loc10_.height = _loc9_;
         this._SafeStr_151.fillRect(_loc10_,param5);
         _loc10_.x = _loc6_ + _loc8_;
         this._SafeStr_151.fillRect(_loc10_,param5);
         _loc10_.x = _loc6_;
         _loc10_.y = _loc7_ + _loc9_;
         _loc10_.width = _loc8_;
         _loc10_.height = 1;
         this._SafeStr_151.fillRect(_loc10_,param5);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_28 = "9%"
 * @identifier _SafeCls_34 = "null "
 * @identifier _SafeCls_46 = "=F"
 * @identifier _SafeCls_48 = "@C"
 * @identifier _SafeCls_54 = "="
 * @identifier _SafeCls_55 = "!B"
 * @identifier _SafeCls_57 = "39"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_97 = ";1"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_103 = "+$"
 * @identifier _SafeStr_110 = "&A"
 * @identifier _SafeStr_111 = "=T"
 * @identifier _SafeStr_112 = "22"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_134 = "]&"
 * @identifier _SafeStr_135 = "^%"
 * @identifier _SafeStr_151 = "77"
 * @identifier _SafeStr_176 = ">2"
 * @identifier _SafeStr_177 = "-="
 * @identifier _SafeStr_178 = "\"D"
 * @identifier _SafeStr_189 = "#T"
 * @identifier _SafeStr_210 = "-5"
 * @identifier _SafeStr_221 = "+\""
 * @identifier _SafeStr_227 = ";G"
 * @identifier _SafeStr_233 = "3I"
 * @identifier _SafeStr_242 = "&7"
 * @identifier _SafeStr_247 = ";4"
 * @identifier _SafeStr_248 = "0H"
 * @identifier _SafeStr_252 = "\'Q"
 * @identifier _SafeStr_253 = "\'D"
 * @identifier _SafeStr_258 = "4E"
 * @identifier _SafeStr_268 = ">D"
 * @identifier _SafeStr_274 = "\"G"
 * @identifier _SafeStr_278 = "for"
 * @identifier _SafeStr_290 = "4M"
 * @identifier _SafeStr_292 = "?L"
 * @identifier _SafeStr_293 = "3M"
 * @identifier _SafeStr_313 = "static"
 * @identifier _SafeStr_317 = "<G"
 * @identifier _SafeStr_318 = "^B"
 * @identifier _SafeStr_382 = "\'\'"
 * @identifier _SafeStr_401 = "\'F"
 * @identifier _SafeStr_416 = "9,"
 * @identifier _SafeStr_459 = "!5"
 * @identifier _SafeStr_475 = "!G"
 * @identifier _SafeStr_487 = "`E"
 * @identifier _SafeStr_490 = "40"
 * @identifier _SafeStr_508 = ";&"
 * @identifier _SafeStr_516 = "?&"
 * @identifier _SafeStr_548 = "`Q"
 * @identifier _SafeStr_552 = "+L"
 * @identifier _SafeStr_554 = ",P"
 * @identifier _SafeStr_577 = "%3"
 * @identifier _SafeStr_589 = "8,"
 * @identifier _SafeStr_603 = ">="
 * @identifier _SafeStr_610 = "switch"
 * @identifier _SafeStr_621 = "get "
 * @identifier _SafeStr_630 = "^U"
 * @identifier _SafeStr_668 = "<S"
 * @identifier _SafeStr_698 = "74"
 * @identifier _SafeStr_702 = "^C"
 * @identifier _SafeStr_838 = "9F"
 * @identifier _SafeStr_868 = "37"
 * @identifier _SafeStr_876 = ",K"
 * @identifier _SafeStr_914 = "5E"
 * @identifier _SafeStr_916 = "2J"
 * @identifier _SafeStr_939 = "^E"
 * @identifier _SafeStr_953 = "<\""
 * @identifier _SafeStr_966 = " E"
 * @identifier _SafeStr_988 = "?$"
 * @identifier _SafeStr_1031 = "%K"
 * @identifier _SafeStr_1037 = "&M"
 * @identifier _SafeStr_1043 = "?@"
 * @identifier _SafeStr_1084 = "\"P"
 * @identifier _SafeStr_1130 = ";@"
 * @identifier _SafeStr_1131 = "1L"
 * @identifier _SafeStr_1142 = "2-"
 * @identifier _SafeStr_1165 = "0P"
 * @identifier _SafeStr_1170 = "@E"
 * @identifier _SafeStr_1176 = "\"B"
 * @identifier _SafeStr_1188 = ";$"
 * @identifier _SafeStr_1220 = "+?"
 * @identifier _SafeStr_1225 = "[\'"
 * @identifier _SafeStr_1317 = " 6"
 * @identifier _SafeStr_1326 = "!N"
 */
