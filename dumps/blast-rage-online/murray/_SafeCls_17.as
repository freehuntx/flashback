package murray
{
   import _SafePkg_41._SafeCls_48;
   import _SafePkg_41._SafeCls_96;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _SafeCls_17
   {
      
      private const _SafeStr_616:int = 256;
      
      public var id:String;
      
      public var name:String = "";
      
      public var alive:Boolean;
      
      public var x:int;
      
      public var y:int;
      
      public var _SafeStr_133:int;
      
      public var _SafeStr_132:int;
      
      public var _SafeStr_731:int;
      
      public var _SafeStr_135:Number;
      
      public var _SafeStr_189:Array = new Array();
      
      public var ship:_SafeCls_13;
      
      public var color1:int = 16711680;
      
      public var color2:int = 65280;
      
      public var equipment:Array;
      
      public var weapons:Array = [new _SafeCls_23(),new _SafeCls_23(),new _SafeCls_23(),new _SafeCls_23(),new _SafeCls_23()];
      
      public var _SafeStr_285:Array;
      
      public var _SafeStr_351:Array;
      
      public var _SafeStr_577:_SafeCls_96;
      
      public var _SafeStr_177:BitmapData;
      
      public var side:int = 0;
      
      public var _SafeStr_110:_SafeCls_47;
      
      public var next_fire:int = 0;
      
      public var _SafeStr_264:int = 0;
      
      public var _SafeStr_506:String = "";
      
      public var _SafeStr_503:Boolean = false;
      
      public var shields:int;
      
      public var health:int;
      
      public var energy:int;
      
      public var type_damages:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0];
      
      public var type_defences:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0];
      
      public var _SafeStr_185:int = 0;
      
      public var _SafeStr_183:int = 0;
      
      public var _SafeStr_292:int = 0;
      
      public var _SafeStr_318:int = 0;
      
      public var _SafeStr_278:int = 0;
      
      public var acceleration:int = 0;
      
      public var max_velocity:int = 0;
      
      public var _SafeStr_265:Array = new Array();
      
      public var _SafeStr_140:Point = new Point();
      
      public var arrow:MovieClip;
      
      public var sm:_SafeCls_6;
      
      public var kills:int = 0;
      
      public var _SafeStr_161:int = 0;
      
      public var score:int = 0;
      
      public var _SafeStr_188:int = 0;
      
      public var _SafeStr_803:int;
      
      public var _SafeStr_713:int;
      
      public var _SafeStr_746:Boolean = false;
      
      public function _SafeCls_17()
      {
         super();
         this.x = 0;
         this.y = 0;
         this._SafeStr_133 = 0;
         this._SafeStr_132 = 0;
         this._SafeStr_731 = 0;
         this._SafeStr_135 = 0;
         this.alive = false;
         this.sm = _SafeCls_6._SafeStr_121();
      }
      
      public function get rotation() : int
      {
         return this._SafeStr_731;
      }
      
      public function set rotation(param1:int) : void
      {
         this._SafeStr_731 = param1;
         this._SafeStr_135 = param1 * Math.PI / 180;
      }
      
      public function get _SafeStr_111() : int
      {
         return this.x / 100;
      }
      
      public function get _SafeStr_112() : int
      {
         return this.y / 100;
      }
      
      public function _SafeStr_725(param1:_SafeCls_17, param2:_SafeCls_46, param3:int, param4:int, param5:_SafeCls_97 = null, param6:_SafeCls_72 = null, param7:_SafeCls_48 = null) : void
      {
         var _loc10_:Array = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:Number = NaN;
         var _loc22_:_SafeCls_55 = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:Array = null;
         var _loc26_:Object = null;
         this.energy += this.ship.energy_recharge_rate;
         if(this.energy > this._SafeStr_278)
         {
            this.energy = this._SafeStr_278;
         }
         if(this._SafeStr_264 + this.ship.shield_down_time < param3)
         {
            this.shields += this.ship.shield_recharge_rate;
            if(this.shields > this._SafeStr_292)
            {
               this.shields = this._SafeStr_292;
            }
         }
         if(!this._SafeStr_746)
         {
            if(this.ship.movement_style == 0)
            {
               this._SafeStr_140.normalize(1);
               this._SafeStr_133 += this._SafeStr_140.x * (this.acceleration + this._SafeStr_185);
               this._SafeStr_132 += this._SafeStr_140.y * (this.acceleration + this._SafeStr_185);
            }
            else if(this.ship.movement_style == 1)
            {
               if(this._SafeStr_140.y > 0.4)
               {
                  this._SafeStr_140.y = 0.4;
               }
               this.rotation += this.ship.rotation * this._SafeStr_140.x;
               if(this.rotation > 360)
               {
                  this.rotation -= 360;
               }
               else if(this.rotation < 0)
               {
                  this.rotation += 360;
               }
               if(this._SafeStr_140.y != 0)
               {
                  this._SafeStr_133 += Math.sin(this._SafeStr_135) * -this.acceleration * this._SafeStr_140.y;
                  this._SafeStr_132 -= Math.cos(this._SafeStr_135) * -this.acceleration * this._SafeStr_140.y;
               }
            }
            this._SafeStr_133 = _SafeCls_10._SafeStr_842(this._SafeStr_133,this.max_velocity + this._SafeStr_183);
            this._SafeStr_132 = _SafeCls_10._SafeStr_842(this._SafeStr_132,this.max_velocity + this._SafeStr_183);
            _loc17_ = Number(Math.atan2(this._SafeStr_132,this._SafeStr_133));
            this._SafeStr_133 = this._SafeStr_1000(this._SafeStr_133,this.ship.friction * Math.abs(Math.cos(_loc17_)));
            this._SafeStr_132 = this._SafeStr_1000(this._SafeStr_132,this.ship.friction * Math.abs(Math.sin(_loc17_)));
         }
         else
         {
            if(this.ship.movement_style == 1)
            {
               this.rotation += this.ship.rotation * this._SafeStr_140.x;
               if(this.rotation > 360)
               {
                  this.rotation -= 360;
               }
               else if(this.rotation < 0)
               {
                  this.rotation += 360;
               }
            }
            this._SafeStr_746 = false;
         }
         if(param5)
         {
            if(this.ship.movement_style == 0 && (this._SafeStr_140.x != 0 || this._SafeStr_140.y != 0) || this.ship.movement_style == 1 && this._SafeStr_140.y != 0)
            {
               _loc12_ = 0;
               while(_loc12_ < this._SafeStr_285.length)
               {
                  _loc18_ = _SafeCls_10._SafeStr_233(0,4,this._SafeStr_135);
                  _loc19_ = _SafeCls_10._SafeStr_227(0,4,this._SafeStr_135);
                  _loc20_ = Math.random() * 3 - 1;
                  if(this._SafeStr_140.y > 0)
                  {
                     _loc20_ += 5;
                  }
                  param5._SafeStr_253(param6._SafeStr_488[this.ship.thruster - 1],this._SafeStr_111 + _SafeCls_10._SafeStr_233(this._SafeStr_285[_loc12_],this._SafeStr_351[_loc12_],this._SafeStr_135),this._SafeStr_112 + _SafeCls_10._SafeStr_227(this._SafeStr_285[_loc12_],this._SafeStr_351[_loc12_],this._SafeStr_135),this._SafeStr_133 / 200 + _loc18_,this._SafeStr_132 / 200 + _loc19_,Math.random() * Math.PI,_loc20_);
                  _loc12_++;
               }
            }
         }
         var _loc8_:int = this.x;
         var _loc9_:int = this.y;
         this.x += this._SafeStr_133;
         this.y += this._SafeStr_132;
         if(this.x < 0)
         {
            this.x = 0;
         }
         else if(this.x > 100000000)
         {
            this.x = 100000000;
         }
         if(this.y < 0)
         {
            this.y = 0;
         }
         else if(this.y > 100000000)
         {
            this.y = 100000000;
         }
         if(param4 == _SafeCls_4._SafeStr_164)
         {
            if(_SafeCls_10._SafeStr_548(this._SafeStr_111,this._SafeStr_112,param2.point[0],param2.point[1]) <= (_SafeCls_97._SafeStr_268 + this.ship.radius) * (_SafeCls_97._SafeStr_268 + this.ship.radius))
            {
               _loc21_ = Math.atan2(param2.point[1] - this._SafeStr_112,param2.point[0] - this._SafeStr_111) + Math.PI;
               this._SafeStr_1173(param1,_loc21_,_loc8_,_loc9_,param2);
               return;
            }
         }
         var _loc11_:Object = new Object();
         _loc11_.d = int.MAX_VALUE;
         _loc12_ = 0;
         while(_loc12_ < param2.fabs.length)
         {
            _loc22_ = param2.fabs[_loc12_];
            _loc23_ = (_loc22_.x - this._SafeStr_111) * (_loc22_.x - this._SafeStr_111) + (_loc22_.y - this._SafeStr_112) * (_loc22_.y - this._SafeStr_112);
            if(this._SafeStr_616 * this._SafeStr_616 > _loc23_)
            {
               _loc24_ = 0;
               while(_loc24_ < _loc22_._SafeStr_134.length)
               {
                  _loc25_ = _loc22_._SafeStr_134[_loc24_];
                  _loc26_ = _SafeCls_10._SafeStr_1137(this._SafeStr_111,this._SafeStr_112,_loc25_[0],_loc25_[1],_loc25_[2],_loc25_[3]);
                  if(_loc26_.d < this.ship.radius * this.ship.radius)
                  {
                     if((_loc26_.x - this._SafeStr_111) * this._SafeStr_133 + (_loc26_.y - this._SafeStr_112) * this._SafeStr_132 > 0)
                     {
                        if(_loc26_.d < _loc11_.d)
                        {
                           _loc10_ = _loc25_;
                           _loc11_ = _loc26_;
                        }
                     }
                  }
                  _loc24_++;
               }
            }
            _loc12_++;
         }
         if(!_loc10_)
         {
            return;
         }
         if(!_loc11_.ep)
         {
            _loc15_ = _loc10_[2] - _loc10_[0];
            _loc16_ = _loc10_[3] - _loc10_[1];
            _loc13_ = _SafeCls_10._SafeStr_233(_loc15_,_loc16_,Math.PI / 2);
            _loc14_ = _SafeCls_10._SafeStr_227(_loc15_,_loc16_,Math.PI / 2);
         }
         else
         {
            _loc13_ = _loc11_.x - this._SafeStr_111;
            _loc14_ = _loc11_.y - this._SafeStr_112;
            _loc15_ = _SafeCls_10._SafeStr_233(_loc13_,_loc14_,Math.PI / 2);
            _loc16_ = _SafeCls_10._SafeStr_227(_loc13_,_loc14_,Math.PI / 2);
         }
         this._SafeStr_1096(param1,_loc15_,_loc16_,_loc13_,_loc14_,_loc8_,_loc9_,param2);
         this._SafeStr_746 = true;
      }
      
      public function _SafeStr_1096(param1:_SafeCls_17, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:_SafeCls_46) : void
      {
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc9_:int = this._SafeStr_133 * param2 + this._SafeStr_132 * param3;
         var _loc10_:int = param2 * param2 + param3 * param3;
         var _loc11_:int = (param2 * _loc9_ * 10000 + (param2 >= 0 ? 9999 : -9999)) / _loc10_ / 10000;
         var _loc12_:int = (param3 * _loc9_ * 10000 + (param3 >= 0 ? 9999 : -9999)) / _loc10_ / 10000;
         _loc9_ = this._SafeStr_133 * param4 + this._SafeStr_132 * param5;
         _loc10_ = param4 * param4 + param5 * param5;
         _loc13_ = (param4 * _loc9_ * 10000 + (param4 >= 0 ? 9999 : -9999)) / _loc10_ / 10000;
         _loc14_ = (param5 * _loc9_ * 10000 + (param5 >= 0 ? 9999 : -9999)) / _loc10_ / 10000;
         _loc11_ += -_loc13_ * this.ship.bounce / 100;
         _loc12_ += -_loc14_ * this.ship.bounce / 100;
         this._SafeStr_133 = _loc11_;
         this._SafeStr_132 = _loc12_;
         this.x = param6;
         this.y = param7;
         if(Math.abs(this._SafeStr_133) > this.acceleration * 6 || Math.abs(this._SafeStr_132) > this.acceleration * 6)
         {
            if(this == param1)
            {
               this.sm._SafeStr_126(this.ship.bounce_sound);
            }
            else if(this.arrow)
            {
               _SafeCls_10._SafeStr_299(param1._SafeStr_111,param1._SafeStr_112,this._SafeStr_111,this._SafeStr_112,this.ship.bounce_sound);
            }
         }
      }
      
      public function _SafeStr_1173(param1:_SafeCls_17, param2:Number, param3:int, param4:int, param5:_SafeCls_46) : void
      {
         var _loc6_:Number = Number(Math.atan2(this._SafeStr_132,this._SafeStr_133));
         param2 = _loc6_ - param2;
         param2 *= -2;
         var _loc7_:int = _SafeCls_10._SafeStr_233(this._SafeStr_133,this._SafeStr_132,param2) * 100 / 100;
         var _loc8_:int = _SafeCls_10._SafeStr_227(this._SafeStr_133,this._SafeStr_132,param2) * 100 / 100;
         this._SafeStr_133 = _loc7_;
         this._SafeStr_132 = _loc8_;
         this.x = param3;
         this.y = param4;
         if(Math.abs(this._SafeStr_133) > this.acceleration * 6 || Math.abs(this._SafeStr_132) > this.acceleration * 6)
         {
            if(this == param1)
            {
               this.sm._SafeStr_126(this.ship.bounce_sound);
            }
            else if(this.arrow)
            {
               _SafeCls_10._SafeStr_299(param1._SafeStr_111,param1._SafeStr_112,this._SafeStr_111,this._SafeStr_112,this.ship.bounce_sound);
            }
         }
      }
      
      public function _SafeStr_1250(param1:_SafeCls_46, param2:int, param3:int) : Boolean
      {
         var _loc5_:_SafeCls_55 = null;
         var _loc6_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Array = null;
         var _loc11_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < param1.fabs.length)
         {
            _loc5_ = param1.fabs[_loc4_];
            _loc6_ = (_loc5_.x - param2) * (_loc5_.x - param2) + (_loc5_.y - param3) * (_loc5_.y - param3);
            if(this._SafeStr_616 * this._SafeStr_616 > _loc6_)
            {
               _loc8_ = 1;
               _loc9_ = 0;
               while(_loc9_ < _loc5_._SafeStr_134.length)
               {
                  _loc10_ = _loc5_._SafeStr_134[_loc9_];
                  _loc11_ = _SafeCls_10._SafeStr_955(param2,param3,_loc10_[0],_loc10_[1],_loc10_[2],_loc10_[3]);
                  if(_loc11_ < this.ship.radius * this.ship.radius)
                  {
                     return true;
                  }
                  _loc9_++;
               }
            }
            _loc4_++;
         }
         return false;
      }
      
      public function _SafeStr_879(param1:_SafeCls_97 = null, param2:_SafeCls_72 = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this._SafeStr_110)
         {
            _loc3_ = this.x - this._SafeStr_110.x;
            if(Math.abs(_loc3_) < this._SafeStr_110._SafeStr_956)
            {
               this._SafeStr_110.x = this.x;
            }
            else
            {
               this._SafeStr_110.x += _loc3_ * 0.2;
            }
            _loc3_ = this.y - this._SafeStr_110.y;
            if(Math.abs(_loc3_) < this._SafeStr_110._SafeStr_956)
            {
               this._SafeStr_110.y = this.y;
            }
            else
            {
               this._SafeStr_110.y += _loc3_ * 0.2;
            }
            _loc4_ = this._SafeStr_135 - this._SafeStr_110._SafeStr_135;
            if(Math.abs(_loc4_) > Math.PI)
            {
               if(_loc4_ < 0)
               {
                  _loc4_ += 2 * Math.PI;
               }
               else
               {
                  _loc4_ -= 2 * Math.PI;
               }
            }
            if(Math.abs(_loc4_) < this._SafeStr_110._SafeStr_1054)
            {
               this._SafeStr_110._SafeStr_135 = this._SafeStr_135;
            }
            else
            {
               this._SafeStr_110._SafeStr_135 += _loc4_ * 0.1;
            }
            if(param1)
            {
               if(this.ship.movement_style == 0 && (this._SafeStr_140.x != 0 || this._SafeStr_140.y != 0) || this.ship.movement_style == 1 && this._SafeStr_140.y < 0)
               {
                  _loc5_ = 0;
                  while(_loc5_ < this._SafeStr_285.length)
                  {
                     _loc6_ = _SafeCls_10._SafeStr_233(0,4,this._SafeStr_110._SafeStr_135);
                     _loc7_ = _SafeCls_10._SafeStr_227(0,4,this._SafeStr_110._SafeStr_135);
                     param1._SafeStr_253(param2._SafeStr_488[this.ship.thruster - 1],this._SafeStr_110.x / 100 + _SafeCls_10._SafeStr_233(this._SafeStr_285[_loc5_],this._SafeStr_351[_loc5_],this._SafeStr_110._SafeStr_135),this._SafeStr_110.y / 100 + _SafeCls_10._SafeStr_227(this._SafeStr_285[_loc5_],this._SafeStr_351[_loc5_],this._SafeStr_110._SafeStr_135),this._SafeStr_133 / 200 + _loc6_,this._SafeStr_132 / 200 + _loc7_,Math.random() * Math.PI,Math.random() * 3);
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      public function _SafeStr_1000(param1:int, param2:int) : int
      {
         if(param1 < 0)
         {
            param1 += param2;
            if(param1 > 0)
            {
               param1 = 0;
            }
         }
         else if(param1 > 0)
         {
            param1 -= param2;
            if(param1 < 0)
            {
               param1 = 0;
            }
         }
         return param1;
      }
      
      public function _SafeStr_556(param1:_SafeCls_72, param2:Boolean = true) : void
      {
         var _loc3_:MovieClip = param1._SafeStr_885;
         _loc3_.gotoAndStop(this.ship.graphic);
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,0);
         this._SafeStr_803 = _loc3_.projectile_origin.x;
         this._SafeStr_713 = _loc3_.projectile_origin.y;
         if(param2)
         {
            _loc3_.base.shadow.visible = true;
            if(this.side == 0)
            {
               _loc3_.base.shadow.transform.colorTransform = _SafeCls_10._SafeStr_231(6215905);
            }
            else
            {
               _loc3_.base.shadow.transform.colorTransform = _SafeCls_10._SafeStr_231(16135502);
            }
         }
         else
         {
            _loc3_.base.shadow.visible = false;
         }
         _loc3_.base.color1.transform.colorTransform = _SafeCls_10._SafeStr_231(this.color1);
         _loc3_.base.color2.transform.colorTransform = _SafeCls_10._SafeStr_231(this.color2);
         _loc4_.draw(_loc3_.base,null);
         var _loc6_:Bitmap = new Bitmap(_loc4_);
         this._SafeStr_577 = new _SafeCls_96(_loc6_,-_loc3_.base.x,-_loc3_.base.y);
         trace("Bake turret?: " + this.ship.display_turret);
         this._SafeStr_1070(_loc3_,this.ship.display_turret != 0);
         this._SafeStr_285 = new Array();
         this._SafeStr_351 = new Array();
         if(_loc3_.thruster1)
         {
            this._SafeStr_285.push(_loc3_.thruster1.x);
            this._SafeStr_351.push(_loc3_.thruster1.y);
         }
         if(_loc3_.thruster2)
         {
            this._SafeStr_285.push(_loc3_.thruster2.x);
            this._SafeStr_351.push(_loc3_.thruster2.y);
         }
         if(_loc3_.thruster3)
         {
            this._SafeStr_285.push(_loc3_.thruster3.x);
            this._SafeStr_351.push(_loc3_.thruster3.y);
         }
         if(param2)
         {
            if(this.side == 0)
            {
               param1._SafeStr_177.in_game_name.textColor = 6215905;
            }
            else
            {
               param1._SafeStr_177.in_game_name.textColor = 16135502;
            }
         }
         else
         {
            param1._SafeStr_177.in_game_name.textColor = 10066329;
         }
         param1._SafeStr_177.in_game_name.text = this.name;
         this._SafeStr_177 = new BitmapData(param1._SafeStr_177.in_game_name.width,param1._SafeStr_177.height,true,0);
         this._SafeStr_177.draw(param1._SafeStr_177);
      }
      
      public function _SafeStr_1070(param1:MovieClip, param2:Boolean) : void
      {
         var _loc6_:_SafeCls_34 = null;
         var _loc7_:MovieClip = null;
         var _loc8_:MovieClip = null;
         var _loc9_:_SafeCls_23 = null;
         var _loc10_:Rectangle = null;
         var _loc11_:BitmapData = null;
         var _loc12_:Matrix = null;
         var _loc13_:Bitmap = null;
         this._SafeStr_189 = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < this.weapons.length)
         {
            if(this.weapons[_loc3_].weapon is _SafeCls_2)
            {
               this.weapons[_loc3_].turret_index = 0;
            }
            else
            {
               this.weapons.splice(_loc3_,1);
               _loc3_--;
            }
            _loc3_++;
         }
         var _loc4_:Array = new Array();
         var _loc5_:Array = new Array();
         _loc4_.push(param1.turret);
         _loc5_.push(param1.turret_rotation_point);
         if(param1.turret1 != null)
         {
            _loc4_.push(param1.turret1);
            _loc5_.push(param1.turret_rotation_point1);
         }
         if(param1.turret2 != null)
         {
            _loc4_.push(param1.turret2);
            _loc5_.push(param1.turret_rotation_point2);
         }
         if(param1.turret3 != null)
         {
            _loc4_.push(param1.turret3);
            _loc5_.push(param1.turret_rotation_point3);
         }
         if(param1.turret4 != null)
         {
            _loc4_.push(param1.turret4);
            _loc5_.push(param1.turret_rotation_point4);
         }
         if(param1.turret5 != null)
         {
            _loc4_.push(param1.turret5);
            _loc5_.push(param1.turret_rotation_point5);
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            _loc6_ = new _SafeCls_34();
            _loc7_ = _loc4_[_loc3_];
            _loc8_ = _loc5_[_loc3_];
            _loc6_.rad = 0;
            _loc6_.x_offset = 100;
            _loc6_.y_offset = 0;
            _loc6_._SafeStr_487 = 0;
            _loc6_._SafeStr_516 = 0;
            if(_loc7_.color1)
            {
               _loc7_.color1.transform.colorTransform = _SafeCls_10._SafeStr_231(this.color1);
            }
            if(_loc7_.color2)
            {
               _loc7_.color2.transform.colorTransform = _SafeCls_10._SafeStr_231(this.color2);
            }
            if(Boolean(_loc7_.weapon1) && this.weapons.length > 0)
            {
               _loc9_ = this.weapons[0];
               _loc9_.turret_index = _loc3_;
               _loc7_.weapon1.gotoAndStop(_loc9_.weapon.graphic);
               _loc9_.x_offset = _loc7_.weapon1.projectile_point.x + _loc7_.weapon1.x + _loc7_.x;
               _loc9_.y_offset = _loc7_.weapon1.projectile_point.y + _loc7_.weapon1.y + _loc7_.y;
            }
            if(Boolean(_loc7_.weapon2) && this.weapons.length > 1)
            {
               _loc9_ = this.weapons[1];
               _loc9_.turret_index = _loc3_;
               _loc7_.weapon2.gotoAndStop(_loc9_.weapon.graphic);
               _loc9_.x_offset = _loc7_.weapon2.projectile_point.x + _loc7_.weapon2.x + _loc7_.x;
               _loc9_.y_offset = _loc7_.weapon2.projectile_point.y + _loc7_.weapon2.y + _loc7_.y;
            }
            if(Boolean(_loc7_.weapon3) && this.weapons.length > 2)
            {
               _loc9_ = this.weapons[2];
               _loc9_.turret_index = _loc3_;
               _loc7_.weapon3.gotoAndStop(_loc9_.weapon.graphic);
               _loc9_.x_offset = _loc7_.weapon3.projectile_point.x + _loc7_.weapon3.x + _loc7_.x;
               _loc9_.y_offset = _loc7_.weapon3.projectile_point.y + _loc7_.weapon3.y + _loc7_.y;
            }
            if(Boolean(_loc7_.weapon4) && this.weapons.length > 3)
            {
               _loc9_ = this.weapons[3];
               _loc9_.turret_index = _loc3_;
               _loc7_.weapon4.gotoAndStop(_loc9_.weapon.graphic);
               _loc9_.x_offset = _loc7_.weapon4.projectile_point.x + _loc7_.weapon4.x + _loc7_.x;
               _loc9_.y_offset = _loc7_.weapon4.projectile_point.y + _loc7_.weapon4.y + _loc7_.y;
            }
            if(Boolean(_loc7_.weapon5) && this.weapons.length > 4)
            {
               _loc9_ = this.weapons[4];
               _loc9_.turret_index = _loc3_;
               _loc7_.weapon5.gotoAndStop(_loc9_.weapon.graphic);
               _loc9_.x_offset = _loc7_.weapon5.projectile_point.x + _loc7_.weapon5.x + _loc7_.x;
               _loc9_.y_offset = _loc7_.weapon5.projectile_point.y + _loc7_.weapon5.y + _loc7_.y;
            }
            _loc6_.x_offset = _loc8_.x;
            _loc6_.y_offset = _loc8_.y;
            _loc10_ = _loc7_.getBounds(_loc7_);
            if(param2)
            {
               _loc11_ = new BitmapData(Math.ceil(_loc10_.width),Math.ceil(_loc10_.height),true,0);
               _loc12_ = new Matrix();
               _loc12_.translate(-_loc10_.left,-_loc10_.top);
               _loc11_.draw(_loc7_,_loc12_);
               _loc13_ = new Bitmap(_loc11_);
               _loc6_.graphic = new _SafeCls_96(_loc13_,_loc8_.x - _loc7_.x - _loc10_.left,_loc8_.y - _loc7_.y - _loc10_.top);
               this._SafeStr_189.push(_loc6_);
            }
            else
            {
               _loc6_.graphic = new _SafeCls_96(new Bitmap());
               this._SafeStr_189.push(_loc6_);
            }
            _loc3_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "2H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_13 = "-E"
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_23 = "1J"
 * @identifier _SafeCls_34 = "null "
 * @identifier _SafeCls_46 = "=F"
 * @identifier _SafeCls_47 = "9N"
 * @identifier _SafeCls_48 = "@C"
 * @identifier _SafeCls_55 = "!B"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_96 = "^S"
 * @identifier _SafeCls_97 = ";1"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_110 = "&A"
 * @identifier _SafeStr_111 = "=T"
 * @identifier _SafeStr_112 = "22"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_132 = "!0"
 * @identifier _SafeStr_133 = "6\""
 * @identifier _SafeStr_134 = "]&"
 * @identifier _SafeStr_135 = "^%"
 * @identifier _SafeStr_140 = "super"
 * @identifier _SafeStr_161 = ">J"
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_177 = "-="
 * @identifier _SafeStr_183 = "@$"
 * @identifier _SafeStr_185 = "]\""
 * @identifier _SafeStr_188 = "-C"
 * @identifier _SafeStr_189 = "#T"
 * @identifier _SafeStr_227 = ";G"
 * @identifier _SafeStr_231 = "+N"
 * @identifier _SafeStr_233 = "3I"
 * @identifier _SafeStr_253 = "\'D"
 * @identifier _SafeStr_264 = "!3"
 * @identifier _SafeStr_265 = "?2"
 * @identifier _SafeStr_268 = ">D"
 * @identifier _SafeStr_278 = "for"
 * @identifier _SafeStr_285 = "6?"
 * @identifier _SafeStr_292 = "?L"
 * @identifier _SafeStr_299 = "#J"
 * @identifier _SafeStr_318 = "^B"
 * @identifier _SafeStr_351 = "@!"
 * @identifier _SafeStr_487 = "`E"
 * @identifier _SafeStr_488 = "]U"
 * @identifier _SafeStr_503 = "]2"
 * @identifier _SafeStr_506 = "7#"
 * @identifier _SafeStr_516 = "?&"
 * @identifier _SafeStr_548 = "`Q"
 * @identifier _SafeStr_556 = "1#"
 * @identifier _SafeStr_577 = "%3"
 * @identifier _SafeStr_616 = "?3"
 * @identifier _SafeStr_713 = "14"
 * @identifier _SafeStr_725 = "#8"
 * @identifier _SafeStr_731 = "=N"
 * @identifier _SafeStr_746 = ";"
 * @identifier _SafeStr_803 = "@I"
 * @identifier _SafeStr_842 = "!+"
 * @identifier _SafeStr_879 = " I"
 * @identifier _SafeStr_885 = "4!"
 * @identifier _SafeStr_955 = " for"
 * @identifier _SafeStr_956 = "4\'"
 * @identifier _SafeStr_1000 = "92"
 * @identifier _SafeStr_1054 = "@A"
 * @identifier _SafeStr_1070 = ">&"
 * @identifier _SafeStr_1096 = "60"
 * @identifier _SafeStr_1137 = "=@"
 * @identifier _SafeStr_1173 = "@P"
 * @identifier _SafeStr_1250 = "[>"
 */
