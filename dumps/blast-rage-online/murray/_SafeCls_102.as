package murray
{
   import _SafePkg_41._SafeCls_40;
   import _SafePkg_98.Stats;
   import _SafePkg_8._SafeCls_71;
   import _SafePkg_8._SafeCls_67;
   import _SafePkg_1._SafeCls_0;
   import _SafePkg_20.*;
   import _SafePkg_70._SafeCls_69;
   import _SafePkg_70._SafeCls_77;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class _SafeCls_102 extends MovieClip
   {
      
      private const _SafeStr_1309:int = 1247;
      
      private var _SafeStr_444:int = 300;
      
      private var _SafeStr_818:int = 240;
      
      private var _SafeStr_1029:* = 30;
      
      private const _SafeStr_1154:int = 3;
      
      private const _SafeStr_1322:int = 6;
      
      private const _SafeStr_593:int = 90;
      
      private var _SafeStr_646:int = 3;
      
      private var _SafeStr_932:Number = 0;
      
      public var mmocha:_SafeCls_71;
      
      public var _SafeStr_1312:MovieClip;
      
      private var _SafeStr_498:_SafeCls_0;
      
      private var _SafeStr_425:_SafeCls_77;
      
      private var _SafeStr_114:_SafeCls_97;
      
      public var ed:_SafeCls_72;
      
      private var players:Array = new Array();
      
      private var player:_SafeCls_17;
      
      private var _SafeStr_118:int = 0;
      
      private var _SafeStr_530:Point = new Point(0,0);
      
      private var _SafeStr_386:int = 1;
      
      private var projectiles:Array = new Array();
      
      private var _SafeStr_534:_SafeCls_95 = new _SafeCls_95();
      
      private var _SafeStr_772:Stats = new Stats();
      
      private var _SafeStr_1319:Boolean = false;
      
      private var _SafeStr_104:_SafeCls_78;
      
      private var _SafeStr_411:Boolean = true;
      
      private var sm:_SafeCls_6;
      
      private var _SafeStr_163:Array = [0,0];
      
      private var _SafeStr_379:Array = [0,0];
      
      private var _SafeStr_193:Array = [0,0];
      
      private var _SafeStr_392:MovieClip;
      
      private var _SafeStr_578:int = 0;
      
      private var _SafeStr_295:int = 0;
      
      private var _SafeStr_817:String;
      
      private var _SafeStr_551:Boolean = false;
      
      private var _SafeStr_109:_SafeCls_4;
      
      private var _SafeStr_208:int = 0;
      
      private var user_info:_SafeCls_3;
      
      private var _SafeStr_706:Boolean = false;
      
      private var _SafeStr_848:Boolean = false;
      
      public function _SafeCls_102(param1:_SafeCls_72, param2:_SafeCls_71 = null, param3:_SafeCls_0 = null, param4:String = "", param5:Boolean = false, param6:int = 0)
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this._SafeStr_897);
         this.sm = _SafeCls_6._SafeStr_121();
         this._SafeStr_817 = param4;
         this.ed = param1;
         this.mmocha = param2;
         this._SafeStr_498 = param3;
         this._SafeStr_848 = param5;
      }
      
      public function _SafeStr_897(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this._SafeStr_897);
         this._SafeStr_109 = _SafeCls_4._SafeStr_121();
         this._SafeStr_444 = this._SafeStr_109.respawn_wave_time;
         this._SafeStr_1088();
      }
      
      public function _SafeStr_1088(param1:_SafeCls_67 = null) : void
      {
         this._SafeStr_114 = new _SafeCls_97(800,560,this.ed);
         this._SafeStr_425 = new _SafeCls_77(33);
         this._SafeStr_425.addEventListener(_SafeCls_69._SafeStr_685,this._SafeStr_826);
         this._SafeStr_1164();
         if(!this._SafeStr_848)
         {
            trace("Attemption to join: " + this._SafeStr_817);
            this.mmocha._SafeStr_790(this._SafeStr_817);
         }
      }
      
      public function _SafeStr_1233(param1:_SafeCls_66) : void
      {
         if(this._SafeStr_104._SafeStr_251 == "/fps")
         {
            addChild(this._SafeStr_772);
         }
         else
         {
            _SafeCls_10._SafeStr_740(this._SafeStr_104._SafeStr_251,this._SafeStr_104._SafeStr_158,this.mmocha);
         }
      }
      
      public function _SafeStr_1197(param1:_SafeCls_66) : void
      {
         this.mmocha._SafeStr_154(_SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_304,1));
      }
      
      public function _SafeStr_895(param1:_SafeCls_67 = null) : void
      {
         var _loc6_:int = 0;
         this._SafeStr_706 = true;
         var _loc2_:int = int(int(Math.random() * this._SafeStr_109.tracks.length));
         this.sm._SafeStr_692(this._SafeStr_109.tracks[_loc2_],this._SafeStr_109._SafeStr_458[_loc2_][1]);
         this.user_info = _SafeCls_3._SafeStr_157();
         if(this.user_info._SafeStr_127 == null)
         {
            this.user_info._SafeStr_127 = this.ed._SafeStr_327;
            this.user_info.loadout = new Array();
            _loc6_ = 0;
            while(_loc6_ < this.user_info._SafeStr_127.length)
            {
               this.user_info.loadout.push(this.user_info._SafeStr_127[_loc6_].id);
               _loc6_++;
            }
         }
         this.player = new _SafeCls_17();
         this.player.name = this.user_info.username;
         this._SafeStr_104 = new _SafeCls_78(this.ed._SafeStr_614,stage,this.ed);
         this._SafeStr_104._SafeStr_1231(parseInt(param1.message.substr(0,1)));
         if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            this._SafeStr_411 = true;
         }
         else
         {
            this._SafeStr_411 = false;
         }
         this._SafeStr_104.addEventListener(_SafeCls_66._SafeStr_588,this._SafeStr_1018);
         this._SafeStr_104.addEventListener(_SafeCls_66._SafeStr_648,this._SafeStr_1233);
         this._SafeStr_104.addEventListener(_SafeCls_66._SafeStr_218,this._SafeStr_308);
         this._SafeStr_104.addEventListener(_SafeCls_66._SafeStr_304,this._SafeStr_1197);
         var _loc3_:_SafeCls_5 = this.user_info._SafeStr_284(this.user_info.loadout[0]);
         this._SafeStr_767(this.player,_loc3_.ship,_loc3_.color1,_loc3_.color2,_loc3_.weapons,_loc3_.equipment,true);
         addChild(this._SafeStr_114);
         addChild(this.ed._SafeStr_614);
         addChild(this._SafeStr_534);
         this._SafeStr_534.visible = false;
         this._SafeStr_114._SafeStr_176 = 800;
         this._SafeStr_114._SafeStr_178 = 560;
         addEventListener(Event.ENTER_FRAME,this._SafeStr_754);
         this._SafeStr_425.start();
         this._SafeStr_392 = new this.ed.arrowMCClass();
         this._SafeStr_392.gotoAndStop("yellow_arrow");
         addChild(this._SafeStr_392);
         var _loc4_:_SafeCls_17 = new _SafeCls_17();
         _loc4_.id = this.mmocha._SafeStr_145;
         _loc4_.name = this.user_info.username;
         _loc4_.side = this.player.side;
         _loc4_.ship = this.player.ship;
         _loc4_.weapons[0].weapon = this.ed._SafeStr_175(1);
         _loc4_.weapons[1].weapon = this.ed._SafeStr_175(1);
         _loc4_._SafeStr_556(this.ed,this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144);
         this.players.push(_loc4_);
         _loc3_.ship = this.player.ship;
         _loc3_.color1 = this.player.color1;
         _loc3_.color2 = this.player.color2;
         var _loc5_:Array = new Array();
         _loc6_ = 0;
         while(_loc6_ < this.player.weapons.length)
         {
            _loc5_.push(this.player.weapons[_loc6_].weapon);
            _loc6_++;
         }
         _loc3_.weapons = _loc5_;
         this._SafeStr_104._SafeStr_1215(this.user_info);
         this._SafeStr_772.x = 730;
         if(this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_164)
         {
            this._SafeStr_392.visible = false;
         }
         this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
         this._SafeStr_104._SafeStr_975();
      }
      
      public function _SafeStr_308(param1:_SafeCls_66 = null) : void
      {
         if(this._SafeStr_706)
         {
            this._SafeStr_104._SafeStr_1191();
         }
         this._SafeStr_425.stop();
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_218));
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_754);
         this._SafeStr_949();
      }
      
      public function _SafeStr_1310() : void
      {
         this._SafeStr_425.stop();
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_337));
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_754);
         this._SafeStr_949();
      }
      
      public function _SafeStr_1018(param1:_SafeCls_66) : void
      {
         if(this.player.alive)
         {
            if(this._SafeStr_578 != this._SafeStr_104._SafeStr_578)
            {
               this.player.alive = false;
               this.player._SafeStr_188 = this._SafeStr_118;
               trace("Death Event A");
               if(this.player.health != this.player._SafeStr_318)
               {
                  this.mmocha._SafeStr_154(new _SafeCls_30(this.player._SafeStr_506).toString());
               }
               else
               {
                  this.mmocha._SafeStr_154(new _SafeCls_30("").toString());
               }
            }
            this._SafeStr_104.mc.change_ship.visible = false;
            this._SafeStr_104.mc.change_ship.cancel.visible = false;
            this._SafeStr_104._SafeStr_216 = true;
            this._SafeStr_386 = 1;
         }
      }
      
      public function _SafeStr_827() : void
      {
         var _loc1_:_SafeCls_26 = _SafeCls_26._SafeStr_1204(this.player);
         this.mmocha._SafeStr_154(_loc1_.toString());
      }
      
      public function _SafeStr_822() : void
      {
         var _loc1_:_SafeCls_19 = _SafeCls_19._SafeStr_357(this.player,this._SafeStr_118);
         this.mmocha._SafeStr_154(_loc1_.toString());
      }
      
      public function _SafeStr_1057(param1:_SafeCls_19, param2:_SafeCls_17) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2._SafeStr_133 = param1._SafeStr_248;
         param2._SafeStr_132 = param1._SafeStr_247;
         param2.rotation = param1.r;
         param2._SafeStr_140 = _SafeCls_19._SafeStr_1102(param1._SafeStr_645);
         if(this._SafeStr_118 - param1.t < 100)
         {
            while(param1.t < this._SafeStr_118)
            {
               param2._SafeStr_725(this.player,this.ed.maps[this._SafeStr_208],param1.t,this._SafeStr_104._SafeStr_122);
               ++param1.t;
            }
         }
      }
      
      public function _SafeStr_1053(param1:_SafeCls_21) : void
      {
         if(param1._SafeStr_203.id == this.mmocha._SafeStr_145)
         {
            return;
         }
         var _loc2_:int = int(this.projectiles.length);
         this._SafeStr_936(this.ed._SafeStr_175(param1.weapon),param1.x,param1.y,param1._SafeStr_248,param1._SafeStr_247,param1.r * Math.PI / 180,param1._SafeStr_203);
         while(param1._SafeStr_171 < this._SafeStr_118)
         {
            this._SafeStr_930(_loc2_);
            ++param1._SafeStr_171;
         }
      }
      
      public function _SafeStr_930(param1:int) : void
      {
         var _loc8_:_SafeCls_28 = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:_SafeCls_17 = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:Number = NaN;
         var _loc21_:_SafeCls_24 = null;
         var _loc22_:int = 0;
         var _loc23_:_SafeCls_22 = null;
         var _loc24_:int = 0;
         var _loc25_:_SafeCls_33 = null;
         var _loc26_:_SafeCls_29 = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = [0,0];
         var _loc6_:Boolean = false;
         var _loc7_:* = param1;
         while(_loc7_ < this.projectiles.length)
         {
            _loc8_ = this.projectiles[_loc7_];
            --_loc8_._SafeStr_201;
            if(_loc8_._SafeStr_201 <= 0)
            {
               this.projectiles.splice(_loc7_,1);
               if(!_loc8_.p._SafeStr_946)
               {
                  _loc12_ = _loc8_._SafeStr_417 / 100;
                  _loc13_ = _loc8_._SafeStr_428 / 100;
               }
               else
               {
                  _loc12_ = 0;
                  _loc13_ = 0;
               }
               this._SafeStr_114._SafeStr_253(_loc8_.p.fizzle,_loc8_.x / 100,_loc8_.y / 100,_loc12_,_loc13_,_loc8_.r);
               if(_loc8_.p.fizzle_sounds)
               {
                  _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc8_._SafeStr_111,_loc8_._SafeStr_112,_loc8_.p.fizzle_sounds[int(_loc8_.p.fizzle_sounds.length * Math.random())]);
               }
               _loc7_--;
            }
            else
            {
               _loc8_.r += _loc8_.p.spin;
               _loc9_ = _loc8_._SafeStr_417;
               _loc10_ = _loc8_._SafeStr_428;
               _loc11_ = false;
               while(_loc9_ != 0 || _loc10_ != 0 || _loc8_._SafeStr_417 == 0 && _loc8_._SafeStr_428 == 0)
               {
                  if(_loc9_ > _loc8_.p._SafeStr_237)
                  {
                     _loc8_.x += _loc8_.p._SafeStr_237;
                     _loc9_ -= _loc8_.p._SafeStr_237;
                  }
                  else if(_loc9_ < -_loc8_.p._SafeStr_237)
                  {
                     _loc8_.x -= _loc8_.p._SafeStr_237;
                     _loc9_ += _loc8_.p._SafeStr_237;
                  }
                  else
                  {
                     _loc8_.x += _loc9_;
                     _loc9_ = 0;
                  }
                  if(_loc10_ > _loc8_.p._SafeStr_237)
                  {
                     _loc8_.y += _loc8_.p._SafeStr_237;
                     _loc10_ -= _loc8_.p._SafeStr_237;
                  }
                  else if(_loc10_ < -_loc8_.p._SafeStr_237)
                  {
                     _loc8_.y -= _loc8_.p._SafeStr_237;
                     _loc10_ += _loc8_.p._SafeStr_237;
                  }
                  else
                  {
                     _loc8_.y += _loc10_;
                     _loc10_ = 0;
                  }
                  if(_loc8_._SafeStr_709 % _loc8_.p.trail_frequency == 0)
                  {
                     this._SafeStr_114._SafeStr_253(_loc8_.p.trail,_loc8_.x / 100,_loc8_.y / 100,0,0,0,Math.random() * 3);
                  }
                  ++_loc8_._SafeStr_709;
                  if(_loc8_.deploy_delay > 0)
                  {
                     --_loc8_.deploy_delay;
                     if(_loc8_._SafeStr_888(this.ed.maps[this._SafeStr_208].fabs) != -1)
                     {
                        _loc11_ = true;
                        break;
                     }
                     if(_loc8_._SafeStr_417 == 0 && _loc8_._SafeStr_428 == 0)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc14_ = 0;
                     while(_loc14_ < this.players.length)
                     {
                        _loc15_ = this.players[_loc14_];
                        if(_loc15_.alive)
                        {
                           if(_loc15_.id == this.mmocha._SafeStr_145)
                           {
                              if((Boolean(_loc8_._SafeStr_198.id && this._SafeStr_411) || Boolean(_loc8_._SafeStr_198.side != _loc15_.side && !this._SafeStr_411)) && _loc15_._SafeStr_188 + this._SafeStr_593 < this._SafeStr_118)
                              {
                                 if(_SafeCls_10._SafeStr_867(_loc15_._SafeStr_110._SafeStr_111,_loc15_._SafeStr_110._SafeStr_112,_loc8_._SafeStr_111,_loc8_._SafeStr_112,_loc8_.p.radius + _loc15_.ship.radius))
                                 {
                                    this.player._SafeStr_506 = _loc15_._SafeStr_506 = _loc8_._SafeStr_198.id;
                                    _loc11_ = true;
                                    _loc16_ = _loc8_.p.instant_damage + _loc8_._SafeStr_198.type_damages[_loc8_.p.type] * _loc8_.p.mod_boosters - _loc15_.type_defences[_loc8_.p.type] * _loc8_.p.mod_resist - Math.max(_loc15_.ship.armor - _loc8_.p.ap,0);
                                    if(_loc16_ < 0)
                                    {
                                       _loc16_ = 0;
                                    }
                                    _loc17_ = int(Math.min(_loc16_,this.player.shields));
                                    _loc17_ = int(Math.min(_loc17_,this.player.ship.shield_tolerance));
                                    _loc16_ -= _loc17_;
                                    _loc17_ = int(Math.min(_loc17_ + _loc8_.p.shield_damage,this.player.shields));
                                    this.player.shields -= _loc17_;
                                    _loc3_ += _loc17_;
                                    this.player.health -= _loc16_;
                                    _loc2_ += _loc16_;
                                    _loc4_ += Math.min(_loc8_.p.energy_damage,this.player.energy);
                                    this.player.energy -= _loc8_.p.energy_damage;
                                    if(this.player.energy < 0)
                                    {
                                       this.player.energy = 0;
                                    }
                                    if(this.player.health <= 0)
                                    {
                                       this.player.alive = false;
                                       _loc15_.alive = false;
                                    }
                                    if(_loc8_.p.mod_momentum != 1)
                                    {
                                       this.player._SafeStr_133 *= _loc8_.p.mod_momentum;
                                       this.player._SafeStr_132 *= _loc8_.p.mod_momentum;
                                       _loc6_ = true;
                                    }
                                    if(_loc8_.p.force != 0)
                                    {
                                       _loc18_ = _SafeCls_10._SafeStr_233(0,_loc8_.p.force,_loc8_._SafeStr_590 + _loc8_.p.force_angle + Math.PI);
                                       _loc19_ = _SafeCls_10._SafeStr_227(0,_loc8_.p.force,_loc8_._SafeStr_590 + _loc8_.p.force_angle + Math.PI);
                                       this.player._SafeStr_133 += _loc18_;
                                       this.player._SafeStr_132 += _loc19_;
                                       _loc6_ = true;
                                    }
                                    if(_loc8_.p.dot_time != 0)
                                    {
                                       _loc20_ = 1 / (_loc8_.p.dot_time / _loc8_.p.dot_rate);
                                       _loc21_ = new _SafeCls_24();
                                       _loc22_ = (_loc8_._SafeStr_198.type_damages[_loc8_.p.type] * _loc8_.p.mod_boosters - _loc15_.type_defences[_loc8_.p.type] * _loc8_.p.mod_resist) * _loc20_;
                                       _loc21_._SafeStr_201 = _loc8_.p.dot_time;
                                       _loc21_._SafeStr_243 = Math.max(_loc8_.p.dot_damage + _loc22_,0);
                                       _loc21_._SafeStr_185 = _loc8_.p.dot_mod_accel;
                                       _loc21_._SafeStr_183 = _loc8_.p.dot_mod_velocity;
                                       _loc21_._SafeStr_294 = _loc8_.p.dot_rate;
                                       _loc21_._SafeStr_220 = _loc8_.p.dot_delay;
                                       _loc21_._SafeStr_261 = _loc8_.p.dot_effect;
                                       this.player._SafeStr_265.push(_loc21_);
                                       _loc23_ = _SafeCls_22._SafeStr_1051(_loc21_,this._SafeStr_118);
                                       this.mmocha._SafeStr_154(_loc23_.toString());
                                    }
                                    break;
                                 }
                              }
                           }
                           else if((_loc8_._SafeStr_198 != _loc15_ && this._SafeStr_411 || _loc8_._SafeStr_198.side != _loc15_.side && !this._SafeStr_411) && _loc15_._SafeStr_188 + this._SafeStr_593 < this._SafeStr_118)
                           {
                              if(_SafeCls_10._SafeStr_867(_loc15_._SafeStr_110._SafeStr_111,_loc15_._SafeStr_110._SafeStr_112,_loc8_._SafeStr_111,_loc8_._SafeStr_112,_loc8_.p.radius + _loc15_.ship.radius))
                              {
                                 _loc11_ = true;
                                 break;
                              }
                           }
                        }
                        _loc14_++;
                     }
                     if(_loc11_)
                     {
                        break;
                     }
                     if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
                     {
                        if(_SafeCls_10._SafeStr_548(_loc8_._SafeStr_111,_loc8_._SafeStr_112,this.ed.maps[this._SafeStr_208].point[0],this.ed.maps[this._SafeStr_208].point[1]) <= (_SafeCls_97._SafeStr_268 + _loc8_.p.radius) * (_SafeCls_97._SafeStr_268 + _loc8_.p.radius))
                        {
                           _loc11_ = true;
                           this._SafeStr_163[_loc8_._SafeStr_198.side] += _loc8_.p.instant_damage;
                           _loc5_[_loc8_._SafeStr_198.side] += _loc8_.p.instant_damage;
                           _loc8_._SafeStr_198.score += _loc8_.p.instant_damage;
                           if(_loc8_._SafeStr_198 == this.player)
                           {
                              this._SafeStr_200(this.mmocha._SafeStr_145).score = this._SafeStr_200(this.mmocha._SafeStr_145).score + _loc8_.p.instant_damage;
                           }
                           if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
                           {
                              this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
                           }
                           this._SafeStr_104._SafeStr_381(this._SafeStr_163[_loc8_._SafeStr_198.side],_loc8_._SafeStr_198.side);
                           break;
                        }
                     }
                     if(_loc8_._SafeStr_888(this.ed.maps[this._SafeStr_208].fabs) != -1)
                     {
                        _loc11_ = true;
                        break;
                     }
                     if(_loc8_._SafeStr_417 == 0 && _loc8_._SafeStr_428 == 0)
                     {
                        break;
                     }
                  }
               }
               if(_loc11_)
               {
                  this.projectiles.splice(_loc7_,1);
                  this._SafeStr_114._SafeStr_253(_loc8_.p.react,_loc8_.x / 100,_loc8_.y / 100,0,0,_loc8_._SafeStr_590);
                  if(_loc8_.p.react_sounds)
                  {
                     _loc24_ = int(int(_loc8_.p.react_sounds.length * Math.random()));
                     _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc8_._SafeStr_111,_loc8_._SafeStr_112,_loc8_.p.react_sounds[_loc24_]);
                  }
                  _loc7_--;
               }
               else
               {
                  ++_loc8_._SafeStr_210;
                  if(_loc8_._SafeStr_210 >= _loc8_.p._SafeStr_293.length)
                  {
                     if(_loc8_.p._SafeStr_774)
                     {
                        _loc8_._SafeStr_210 = _loc8_.p._SafeStr_774 - 1;
                     }
                     else
                     {
                        --_loc8_._SafeStr_210;
                     }
                  }
               }
            }
            _loc7_++;
         }
         if(_loc2_ > 0 || _loc3_ > 0 || _loc4_ > 0)
         {
            if(_loc3_ > _loc2_)
            {
               this.sm._SafeStr_126(_loc15_.ship.shield_damage_sound);
            }
            else
            {
               this.sm._SafeStr_126(_loc15_.ship.health_damage_sound);
            }
            this.player._SafeStr_264 = this._SafeStr_118;
            _loc25_ = new _SafeCls_33();
            _loc25_.shield_damage = _loc3_;
            _loc25_._SafeStr_555 = _loc2_;
            _loc25_.energy_damage = _loc4_;
            _loc25_._SafeStr_171 = this._SafeStr_118;
            this.mmocha._SafeStr_154(_loc25_.toString());
            if(this.player.alive == false)
            {
               this.player._SafeStr_265 = new Array();
               this.player._SafeStr_188 = this._SafeStr_118;
               trace("Death Event B");
               this.mmocha._SafeStr_154(new _SafeCls_30(this.player._SafeStr_506).toString());
            }
         }
         if((_loc5_[0] != 0 || _loc5_[1] != 0) && !this._SafeStr_551)
         {
            if(_loc5_[0] != 0)
            {
               _loc26_ = new _SafeCls_29(_loc5_[0],this._SafeStr_118,0);
               this.mmocha._SafeStr_154(_loc26_.toString());
            }
            else if(_loc5_[1] != 0)
            {
               _loc26_ = new _SafeCls_29(_loc5_[1],this._SafeStr_118,1);
               this.mmocha._SafeStr_154(_loc26_.toString());
            }
            if(this._SafeStr_163[0] >= _SafeCls_78._SafeStr_344 && this._SafeStr_163[1] >= _SafeCls_78._SafeStr_344)
            {
               this.mmocha._SafeStr_154(new _SafeCls_31(2).toString());
               this._SafeStr_551 = true;
            }
            else if(this._SafeStr_163[0] >= _SafeCls_78._SafeStr_344)
            {
               this.mmocha._SafeStr_154(new _SafeCls_31(0).toString());
               this._SafeStr_551 = true;
            }
            else if(this._SafeStr_163[1] >= _SafeCls_78._SafeStr_344)
            {
               this.mmocha._SafeStr_154(new _SafeCls_31(1).toString());
               this._SafeStr_551 = true;
            }
         }
         if(_loc6_)
         {
            this._SafeStr_822();
         }
      }
      
      public function _SafeStr_767(param1:_SafeCls_17, param2:_SafeCls_13, param3:int, param4:int, param5:Array, param6:Array, param7:Boolean) : void
      {
         var _loc9_:_SafeCls_16 = null;
         var _loc10_:int = 0;
         var _loc11_:_SafeCls_23 = null;
         param1.ship = param2;
         param1._SafeStr_292 = param1.ship.shields;
         param1._SafeStr_318 = param1.ship.health;
         param1._SafeStr_278 = param1.ship.energy;
         param1.acceleration = param1.ship.acceleration;
         param1.max_velocity = param1.ship.max_velocity;
         param1.type_damages = [0,0,0,0,0,0,0,0,0,0,0,0,0];
         param1.type_defences = [0,0,0,0,0,0,0,0,0,0,0,0,0];
         var _loc8_:int = 0;
         while(_loc8_ < Math.min(param6.length,param1.ship.equipment_slots))
         {
            _loc9_ = param6[_loc8_];
            if(_loc9_ != null)
            {
               if(_loc9_.id != 0)
               {
                  param1._SafeStr_292 += _loc9_.shields;
                  param1._SafeStr_278 += _loc9_.energy;
                  param1._SafeStr_318 += _loc9_.health;
                  param1.acceleration += _loc9_.acceleration;
                  param1.max_velocity += _loc9_.max_velocity;
                  _loc10_ = 0;
                  while(_loc10_ < _loc9_.type_damages.length)
                  {
                     param1.type_damages[_loc9_.type_damages[_loc10_][0]] += _loc9_.type_damages[_loc10_][1];
                     _loc10_++;
                  }
                  _loc10_ = 0;
                  while(_loc10_ < _loc9_.type_defences.length)
                  {
                     param1.type_defences[_loc9_.type_defences[_loc10_][0]] += _loc9_.type_defences[_loc10_][1];
                     _loc10_++;
                  }
               }
            }
            else
            {
               param6[_loc8_] = this.ed._SafeStr_341(0);
            }
            _loc8_++;
         }
         param1.color1 = param3;
         param1.color2 = param4;
         _loc8_ = 0;
         while(_loc8_ < param5.length)
         {
            if(_loc8_ < param1.weapons.length)
            {
               param1.weapons[_loc8_].weapon = param5[_loc8_];
            }
            else
            {
               _loc11_ = new _SafeCls_23();
               _loc11_.weapon = param5[_loc8_];
               param1.weapons.push(_loc11_);
            }
            _loc8_++;
         }
         param1.equipment = param6;
         if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            if(param1.id != this.mmocha._SafeStr_145)
            {
               param1.side = 1;
            }
            else
            {
               param1.side = 0;
            }
         }
         param1._SafeStr_556(this.ed,this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144);
         if(param7)
         {
            this._SafeStr_104._SafeStr_1033(param1.ship.secondary_weapons);
            _loc8_ = 0;
            while(_loc8_ < param1.ship.secondary_weapons + 1)
            {
               this._SafeStr_104._SafeStr_1090(_loc8_,param1.weapons[_loc8_].weapon.card);
               _loc8_++;
            }
            this._SafeStr_827();
         }
      }
      
      public function _SafeStr_745(param1:_SafeCls_17) : void
      {
         var _loc6_:_SafeCls_5 = null;
         if(this._SafeStr_578 != this._SafeStr_104._SafeStr_578)
         {
            this._SafeStr_578 = this._SafeStr_104._SafeStr_578;
            _loc6_ = this.user_info._SafeStr_284(this.user_info.loadout[this._SafeStr_578]);
            this._SafeStr_767(param1,_loc6_.ship,_loc6_.color1,_loc6_.color2,_loc6_.weapons,_loc6_.equipment,true);
         }
         param1.alive = true;
         param1.health = param1._SafeStr_318;
         param1.shields = param1._SafeStr_292;
         param1.energy = param1._SafeStr_278;
         var _loc2_:int = param1.side;
         if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            _loc2_ = Math.random() * 2;
         }
         var _loc3_:int = Math.random() * this.ed.maps[this._SafeStr_208].spawns[_loc2_].length;
         param1.x = this.ed.maps[this._SafeStr_208].spawns[_loc2_][_loc3_][0] * 100;
         param1.y = this.ed.maps[this._SafeStr_208].spawns[_loc2_][_loc3_][1] * 100;
         param1._SafeStr_133 = 0;
         param1._SafeStr_132 = 0;
         param1.rotation = 0;
         param1._SafeStr_265 = [];
         param1._SafeStr_188 = this._SafeStr_118;
         if(param1.id == null)
         {
            this._SafeStr_200(this.mmocha._SafeStr_145)._SafeStr_188 = this._SafeStr_118;
         }
         this._SafeStr_114._SafeStr_103.x = param1._SafeStr_111 - this._SafeStr_114._SafeStr_176 / 2;
         this._SafeStr_114._SafeStr_103.y = param1._SafeStr_112 - this._SafeStr_114._SafeStr_178 / 2;
         this._SafeStr_114._SafeStr_103._SafeStr_476 = this._SafeStr_114._SafeStr_103.x;
         this._SafeStr_114._SafeStr_103._SafeStr_409 = this._SafeStr_114._SafeStr_103.y;
         var _loc4_:int = 1;
         while(_loc4_ < param1.ship.secondary_weapons + 1)
         {
            param1.weapons[_loc4_].next_fire = 0;
            _loc4_++;
         }
         var _loc5_:_SafeCls_25 = new _SafeCls_25(param1._SafeStr_111,param1._SafeStr_112);
         this.mmocha._SafeStr_154(_loc5_.toString());
      }
      
      public function _SafeStr_1063(param1:_SafeCls_17, param2:int, param3:int) : void
      {
         param1.alive = true;
         param1.x = param2 * 100;
         param1.y = param3 * 100;
         param1._SafeStr_133 = 0;
         param1._SafeStr_132 = 0;
         param1.rotation = 0;
         param1._SafeStr_265 = [];
         param1.shields = param1._SafeStr_292;
         param1.health = param1._SafeStr_318;
         param1.energy = param1._SafeStr_278;
         param1._SafeStr_110 = new _SafeCls_47();
         param1._SafeStr_110._SafeStr_357(param1);
         param1._SafeStr_188 = this._SafeStr_118;
         if(param1.arrow)
         {
            if(param1.side == 0 && this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144)
            {
               param1.arrow.gotoAndStop("green_arrow");
            }
            else
            {
               param1.arrow.gotoAndStop("red_arrow");
            }
         }
      }
      
      public function _SafeStr_1164() : void
      {
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_359,this._SafeStr_492,false,0,true);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_367,this._SafeStr_547,false,0,true);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_355,this._SafeStr_525,false,0,true);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_361,this._SafeStr_499,false,0,true);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_389,this._SafeStr_895);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_331,this._SafeStr_769,false,0,true);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_819,false,0,true);
         this.mmocha.addEventListener(_SafeCls_67._SafeStr_377,this._SafeStr_532);
      }
      
      public function _SafeStr_949() : void
      {
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_359,this._SafeStr_492);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_367,this._SafeStr_547);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_355,this._SafeStr_525);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_361,this._SafeStr_499);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_389,this._SafeStr_895);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_331,this._SafeStr_769);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_217,this._SafeStr_819);
         this.mmocha.removeEventListener(_SafeCls_67._SafeStr_377,this._SafeStr_532);
      }
      
      public function _SafeStr_532(param1:_SafeCls_67) : void
      {
         this._SafeStr_104._SafeStr_158("<font color=\'#4a47ad\'>" + param1.message.substr(2) + "</font>");
      }
      
      public function _SafeStr_819(param1:_SafeCls_67) : void
      {
         trace("ERROR: " + param1.message);
         if(this._SafeStr_706)
         {
            this._SafeStr_104._SafeStr_1166();
            if(param1.message == "0940")
            {
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[0],this._SafeStr_308);
            }
            else if(param1.message == "0941")
            {
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[1],this._SafeStr_308);
            }
            else if(param1.message == "0944")
            {
               trace("High rank boot");
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[4],this._SafeStr_308);
            }
            else if(param1.message == "0945")
            {
               trace("Low rank boot");
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[4],this._SafeStr_308);
            }
            else
            {
               this.ed.notification_box._SafeStr_141(param1.message);
            }
         }
         else if(!this._SafeStr_109.create)
         {
            if(param1.message == "0944")
            {
               trace("High rank boot");
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[5],this._SafeStr_308);
            }
            else if(param1.message == "0945")
            {
               trace("Low rank boot");
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[6],this._SafeStr_308);
            }
            else
            {
               this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[2],this._SafeStr_308);
            }
         }
         else
         {
            this.ed.notification_box._SafeStr_108(this._SafeStr_109.error_messages[3],this._SafeStr_308);
         }
      }
      
      public function _SafeStr_1306(param1:_SafeCls_17, param2:Array) : void
      {
         var _loc4_:_SafeCls_23 = null;
         param1.weapons = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            _loc4_ = new _SafeCls_23();
            _loc4_.weapon = this.ed._SafeStr_175(param2[_loc3_]);
            param1.weapons.push(_loc4_);
            _loc3_++;
         }
      }
      
      public function _SafeStr_608() : void
      {
         var _loc2_:_SafeCls_17 = null;
         var _loc3_:int = 0;
         this.player.alive = false;
         var _loc1_:int = 0;
         while(_loc1_ < this.players.length)
         {
            _loc2_ = this.players[_loc1_];
            _loc2_.alive = false;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.weapons.length)
            {
               _loc2_.weapons[_loc3_].next_fire = 0;
               _loc3_++;
            }
            _loc2_._SafeStr_264 = 0;
            _loc2_.next_fire = 0;
            _loc1_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.player.weapons.length)
         {
            this.player.weapons[_loc3_].next_fire = 0;
            _loc3_++;
         }
         this.player.next_fire = 0;
         this.projectiles = [];
         this._SafeStr_114._SafeStr_1176();
         this._SafeStr_551 = false;
      }
      
      public function _SafeStr_951() : void
      {
         var _loc2_:_SafeCls_17 = null;
         if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
         {
            this._SafeStr_163 = [0,0];
            this._SafeStr_379 = [0,0];
            this._SafeStr_104._SafeStr_381(0,0);
            this._SafeStr_104._SafeStr_381(0,1);
            this._SafeStr_104._SafeStr_596(0,0);
            this._SafeStr_104._SafeStr_596(0,1);
         }
         else if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_213)
         {
            this._SafeStr_193 = [0,0];
            this._SafeStr_104._SafeStr_669(this._SafeStr_193);
         }
         else if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            this._SafeStr_104._SafeStr_962(this.player);
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.players.length)
         {
            _loc2_ = this.players[_loc1_];
            _loc2_.kills = 0;
            _loc2_._SafeStr_161 = 0;
            _loc2_.score = 0;
            _loc1_++;
         }
         this.player.kills = 0;
         this.player._SafeStr_161 = 0;
         this.player.score = 0;
      }
      
      public function _SafeStr_492(param1:_SafeCls_67) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:_SafeCls_3 = null;
         trace("HS: " + param1.message + " " + param1.message.substr(param1.message.lastIndexOf("#") + 1));
         var _loc2_:_SafeCls_17 = this._SafeStr_200(param1._SafeStr_203);
         _loc2_.name = _SafeCls_10._SafeStr_305(param1.message.substr(param1.message.lastIndexOf("#") + 1));
         if(_loc2_.name.charAt(0) == "!")
         {
            _loc3_ = int(parseInt(_loc2_.name.substring(1)));
            _loc4_ = this._SafeStr_109.qs_prefixes.length * this._SafeStr_850(_loc3_);
            _loc5_ = this._SafeStr_109.qs_suffixes.length * this._SafeStr_850(_loc3_ * 9301 + 49297);
            _loc2_.name = this._SafeStr_109.qs_prefixes[_loc4_] + " " + this._SafeStr_109.qs_suffixes[_loc5_];
         }
         if(param1._SafeStr_203 == this.mmocha._SafeStr_145)
         {
            _loc6_ = _SafeCls_3._SafeStr_157();
            this.player.name = _loc2_.name;
            _loc6_.username = this.player.name;
            this.player._SafeStr_556(this.ed,this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144);
         }
         this._SafeStr_104._SafeStr_158(_loc2_.name + " joined the game");
         this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
      }
      
      public function _SafeStr_547(param1:_SafeCls_67) : void
      {
         var _loc5_:_SafeCls_26 = null;
         var _loc6_:_SafeCls_25 = null;
         var _loc7_:_SafeCls_35 = null;
         var _loc8_:_SafeCls_19 = null;
         var _loc9_:_SafeCls_21 = null;
         var _loc10_:int = 0;
         var _loc11_:_SafeCls_33 = null;
         var _loc12_:_SafeCls_30 = null;
         var _loc13_:_SafeCls_22 = null;
         var _loc14_:int = 0;
         var _loc15_:_SafeCls_31 = null;
         var _loc16_:String = null;
         var _loc17_:Boolean = false;
         var _loc18_:String = null;
         var _loc19_:_SafeCls_37 = null;
         var _loc20_:int = 0;
         var _loc21_:_SafeCls_38 = null;
         var _loc22_:_SafeCls_27 = null;
         var _loc23_:int = 0;
         var _loc24_:_SafeCls_2 = null;
         var _loc25_:int = 0;
         var _loc26_:_SafeCls_17 = null;
         var _loc27_:String = null;
         var _loc28_:String = null;
         var _loc29_:_SafeCls_36 = null;
         var _loc30_:int = 0;
         var _loc31_:int = 0;
         var _loc32_:int = 0;
         var _loc2_:String = "#FFFFFF";
         var _loc3_:_SafeCls_17 = this._SafeStr_200(param1._SafeStr_203);
         var _loc4_:int = _SafeCls_40._SafeStr_115(param1.message.charAt(0));
         switch(_loc4_)
         {
            case _SafeCls_39._SafeStr_629:
               _loc5_ = _SafeCls_26._SafeStr_152(param1.message,this.ed);
               this._SafeStr_767(_loc3_,this.ed._SafeStr_598(_loc5_.ship),_loc5_.color1,_loc5_.color2,_loc5_.weapons,_loc5_.equipment,false);
               break;
            case _SafeCls_39._SafeStr_783:
               if(this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144)
               {
                  trace("Set Side: " + _loc3_.id + " " + this.mmocha._SafeStr_145);
                  _loc23_ = _SafeCls_40._SafeStr_115(param1.message.substr(1,1));
                  _loc3_.side = _loc23_;
                  _loc3_._SafeStr_556(this.ed,this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144);
                  if(_loc3_.arrow)
                  {
                     if(_loc3_.side == 0)
                     {
                        _loc3_.arrow.gotoAndStop("green_arrow");
                     }
                     else
                     {
                        _loc3_.arrow.gotoAndStop("red_arrow");
                     }
                  }
                  if(_loc3_.id == this.mmocha._SafeStr_145)
                  {
                     this.player.side = _loc23_;
                     this.player._SafeStr_556(this.ed,this._SafeStr_104._SafeStr_122 != _SafeCls_4._SafeStr_144);
                  }
                  this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
               }
               break;
            case _SafeCls_39._SafeStr_627:
               _loc6_ = _SafeCls_25._SafeStr_152(param1.message);
               this._SafeStr_1063(_loc3_,_loc6_.x,_loc6_.y);
               break;
            case _SafeCls_39._SafeStr_611:
               _loc7_ = _SafeCls_35._SafeStr_152(param1.message);
               if(_loc3_._SafeStr_503 == false)
               {
                  _loc3_._SafeStr_503 = true;
                  _loc3_.alive = _loc7_.alive;
                  _loc3_.energy = _loc7_.energy;
                  _loc3_.health = _loc7_.health;
                  _loc3_.shields = _loc7_.shields;
                  _loc3_.x = _loc7_.x * 100;
                  _loc3_.y = _loc7_.y * 100;
                  _loc3_._SafeStr_264 = _loc7_._SafeStr_264;
                  _loc3_._SafeStr_110 = new _SafeCls_47();
                  _loc3_._SafeStr_110._SafeStr_357(this.player);
               }
               break;
            case _SafeCls_39._SafeStr_634:
               _loc8_ = _SafeCls_19._SafeStr_152(param1.message);
               if(_loc3_.x != 0)
               {
                  this._SafeStr_1057(_loc8_,_loc3_);
               }
               break;
            case _SafeCls_39._SafeStr_586:
               _loc9_ = _SafeCls_21._SafeStr_152(param1.message);
               _loc9_._SafeStr_203 = this._SafeStr_200(param1._SafeStr_203);
               this._SafeStr_1053(_loc9_);
               if(_loc3_.arrow)
               {
                  _loc24_ = this.ed._SafeStr_175(_loc9_.weapon);
                  _loc25_ = Math.random() * _loc24_.firing_sounds.length;
                  _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc3_._SafeStr_111,_loc3_._SafeStr_112,_loc24_.firing_sounds[_loc25_]);
               }
               break;
            case _SafeCls_39._SafeStr_701:
               this._SafeStr_118 = _SafeCls_40._SafeStr_115(param1.message.substr(1,4));
               this._SafeStr_104._SafeStr_576 = getTimer() - this._SafeStr_118;
               _loc10_ = this._SafeStr_118 / 1000;
               if(_loc10_ >= _SafeCls_78._SafeStr_262 + _SafeCls_78._SafeStr_398)
               {
                  this._SafeStr_295 = 2;
                  this.sm._SafeStr_887();
               }
               else if(_loc10_ > _SafeCls_78._SafeStr_262)
               {
                  this._SafeStr_295 = 1;
                  if(this._SafeStr_109.show_tutorial && _SafeCls_78._SafeStr_262 + _SafeCls_78._SafeStr_398 - _loc10_ > 5)
                  {
                     this._SafeStr_104._SafeStr_909();
                  }
               }
               this._SafeStr_118 /= 33;
               if(!this.player._SafeStr_503)
               {
                  this.player._SafeStr_503 = true;
                  this.player._SafeStr_188 = this._SafeStr_118;
                  this._SafeStr_104._SafeStr_975();
               }
               break;
            case _SafeCls_39._SafeStr_670:
               _loc11_ = _SafeCls_33._SafeStr_152(param1.message);
               _loc3_.health -= _loc11_._SafeStr_555;
               _loc3_.shields -= _loc11_.shield_damage;
               _loc3_.energy -= _loc11_.energy_damage;
               if(_loc3_.energy < 0)
               {
                  _loc3_.energy = 0;
               }
               _loc3_._SafeStr_264 = _loc11_._SafeStr_171;
               if(_loc3_.arrow)
               {
                  if(_loc11_.shield_damage > _loc11_._SafeStr_555)
                  {
                     _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc3_._SafeStr_111,_loc3_._SafeStr_112,_loc3_.ship.shield_damage_sound);
                     break;
                  }
                  _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc3_._SafeStr_111,_loc3_._SafeStr_112,_loc3_.ship.health_damage_sound);
               }
               break;
            case _SafeCls_39._SafeStr_641:
               trace("DIE: " + _loc3_.id + " " + this.mmocha._SafeStr_145);
               _loc12_ = _SafeCls_30._SafeStr_152(param1.message);
               if(_loc3_.alive || _loc3_.id == this.mmocha._SafeStr_145)
               {
                  _loc3_._SafeStr_265 = new Array();
                  _loc3_.alive = false;
                  if(_loc12_._SafeStr_582.length >= 3)
                  {
                     ++_loc3_._SafeStr_161;
                     _loc26_ = this._SafeStr_200(_loc12_._SafeStr_582);
                     if(_loc26_ != null)
                     {
                        ++_loc26_.kills;
                        if(_loc26_.id == this.mmocha._SafeStr_145 && this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_144)
                        {
                           this._SafeStr_104._SafeStr_962(_loc26_);
                        }
                        if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_213)
                        {
                           ++this._SafeStr_193[_loc26_.side];
                           this._SafeStr_104._SafeStr_669(this._SafeStr_193);
                        }
                        _loc27_ = _loc3_.name;
                        _loc28_ = _loc26_.name;
                        if(_loc3_.side == 1)
                        {
                           _loc27_ = "<font color=\'#d21b30\'>" + _loc27_ + "</font>";
                        }
                        else
                        {
                           _loc27_ = "<font color=\'#41b9c4\'>" + _loc27_ + "</font>";
                        }
                        if(_loc26_.side == 1)
                        {
                           _loc28_ = "<font color=\'#d21b30\'>" + _loc28_ + "</font>";
                        }
                        else
                        {
                           _loc28_ = "<font color=\'#41b9c4\'>" + _loc28_ + "</font>";
                        }
                        this._SafeStr_104._SafeStr_158(_loc27_ + " was killed by " + _loc28_);
                     }
                     else
                     {
                        if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_213)
                        {
                           ++this._SafeStr_193[1 - this.player.side];
                           this._SafeStr_104._SafeStr_669(this._SafeStr_193);
                        }
                        trace("Killer not found :/");
                     }
                  }
                  else
                  {
                     this._SafeStr_104._SafeStr_158(_loc3_.name + " suicided");
                  }
                  this._SafeStr_114._SafeStr_253(this.ed._SafeStr_446[_loc3_.ship.wreck - 1],_loc3_._SafeStr_111,_loc3_._SafeStr_112,0,0,_loc3_._SafeStr_135,0,0);
                  this._SafeStr_114._SafeStr_253(this.ed._SafeStr_436[_loc3_.ship.explosion - 1],_loc3_._SafeStr_111,_loc3_._SafeStr_112,0,0,0);
                  _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc3_._SafeStr_111,_loc3_._SafeStr_112,_loc3_.ship.death_sound);
                  if(_loc3_.id == this.mmocha._SafeStr_145)
                  {
                     this.player.alive = false;
                     this.player._SafeStr_188 = this._SafeStr_118;
                  }
                  this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
                  break;
               }
               trace("Dead person trying to die");
               break;
            case _SafeCls_39._SafeStr_304:
               this._SafeStr_104._SafeStr_158(_loc3_.name + " has requested a team change");
               break;
            case _SafeCls_39._SafeStr_606:
               if(this._SafeStr_163[0] == 0 && this._SafeStr_163[1] == 0 && this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
               {
                  _loc29_ = _SafeCls_36._SafeStr_152(param1.message);
                  this._SafeStr_163[0] = _loc29_._SafeStr_723;
                  this._SafeStr_163[1] = _loc29_._SafeStr_778;
                  this._SafeStr_104._SafeStr_381(this._SafeStr_163[0],0);
                  this._SafeStr_104._SafeStr_381(this._SafeStr_163[1],1);
               }
               break;
            case _SafeCls_39._SafeStr_623:
               _loc13_ = _SafeCls_22._SafeStr_152(param1.message);
               this._SafeStr_1127(_loc3_,_loc13_);
               break;
            case _SafeCls_39._SafeStr_762:
               this._SafeStr_104._SafeStr_981();
               this._SafeStr_295 = 1;
               this._SafeStr_608();
               this._SafeStr_951();
               this._SafeStr_745(this.player);
               if(this._SafeStr_109.show_tutorial)
               {
                  this._SafeStr_104._SafeStr_909();
               }
               break;
            case _SafeCls_39._SafeStr_809:
               this._SafeStr_295 = 2;
               this.sm._SafeStr_887();
               this.sm._SafeStr_126(this.ed._SafeStr_119("SummarySound"),this.sm._SafeStr_380);
               this._SafeStr_300();
               this._SafeStr_608();
               break;
            case _SafeCls_39._SafeStr_777:
               try
               {
                  ExternalInterface.call("HideAd");
               }
               catch(e:Error)
               {
               }
               _loc14_ = int(int(Math.random() * this._SafeStr_109.tracks.length));
               this.sm._SafeStr_692(this._SafeStr_109.tracks[_loc14_],this._SafeStr_109._SafeStr_458[_loc14_][1]);
               this._SafeStr_295 = 0;
               this.player._SafeStr_188 = 0;
               this._SafeStr_608();
               this._SafeStr_951();
               this._SafeStr_104._SafeStr_576 = getTimer();
               this._SafeStr_104._SafeStr_981();
               this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
               break;
            case _SafeCls_39._SafeStr_659:
               _loc15_ = _SafeCls_31._SafeStr_152(param1.message);
               if(_loc15_._SafeStr_375 > 2)
               {
                  trace("WTF Wrong point code");
               }
               else if(_loc15_._SafeStr_375 == 2)
               {
                  ++this._SafeStr_379[0];
                  ++this._SafeStr_379[1];
               }
               else
               {
                  ++this._SafeStr_379[_loc15_._SafeStr_375];
               }
               if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
               {
                  this._SafeStr_104._SafeStr_872(_loc15_._SafeStr_375,this._SafeStr_444 - this._SafeStr_118 % this._SafeStr_444);
               }
               else
               {
                  this._SafeStr_104._SafeStr_872(_loc15_._SafeStr_375,this.player._SafeStr_188 + this._SafeStr_818 - this._SafeStr_118);
               }
               this._SafeStr_104._SafeStr_596(this._SafeStr_379[0],0);
               this._SafeStr_104._SafeStr_596(this._SafeStr_379[1],1);
               this._SafeStr_163[0] = 0;
               this._SafeStr_163[1] = 0;
               this._SafeStr_104._SafeStr_381(0,0);
               this._SafeStr_104._SafeStr_381(0,1);
               this._SafeStr_608();
               break;
            case _SafeCls_39._SafeStr_540:
               trace("Chat Event: " + param1.message);
               _loc16_ = param1.message.substr(1,param1.message.length - 1);
               _loc17_ = false;
               _loc30_ = 0;
               while(_loc30_ < this._SafeStr_109._SafeStr_194.length)
               {
                  if(_SafeCls_10._SafeStr_413(this._SafeStr_109._SafeStr_194[_loc30_],_loc3_.name))
                  {
                     _loc17_ = true;
                     break;
                  }
                  _loc30_++;
               }
               if(!_loc17_)
               {
                  _loc16_ = _loc16_.replace(/&/g,"&amp;");
                  _loc16_ = _loc16_.replace(/</g,"&lt;");
                  _loc16_ = _loc16_.replace(/>/g,"&gt;");
                  _loc30_ = 0;
                  while(_loc30_ < this._SafeStr_109.language_filter.length)
                  {
                     _loc31_ = int(_loc16_.toLowerCase().indexOf(this._SafeStr_109.language_filter[_loc30_]));
                     if(_loc31_ != -1)
                     {
                        _loc32_ = int(this._SafeStr_109.language_filter[_loc30_].length);
                        _loc16_ = _loc16_.substr(0,_loc31_) + "*beep*" + _loc16_.substr(_loc31_ + _loc32_);
                     }
                     _loc30_++;
                  }
                  if(_loc3_.side == 0)
                  {
                     _loc2_ = "#41b9c4";
                  }
                  else if(_loc3_.side == 1)
                  {
                     _loc2_ = "#d21b30";
                  }
                  this._SafeStr_104._SafeStr_158("<b><font color=\'" + _loc2_ + "\'>&lt;" + _loc3_.name + "&gt;</font></b> " + _loc16_);
               }
               break;
            case _SafeCls_39._SafeStr_438:
               _loc16_ = param1.message.substr(1,param1.message.length - 1);
               _loc18_ = _loc16_.substr(0,_loc16_.indexOf(" "));
               _loc17_ = false;
               if(_loc16_.charAt(0) != "*")
               {
                  _loc30_ = 0;
                  while(_loc30_ < this._SafeStr_109._SafeStr_194.length)
                  {
                     if(_SafeCls_10._SafeStr_413(this._SafeStr_109._SafeStr_194[_loc30_],_loc18_))
                     {
                        _loc17_ = true;
                        break;
                     }
                     _loc30_++;
                  }
               }
               if(!_loc17_)
               {
                  _loc16_ = _loc16_.replace(/&/g,"&amp;");
                  _loc16_ = _loc16_.replace(/</g,"&lt;");
                  _loc16_ = _loc16_.replace(/>/g,"&gt;");
                  if(_loc16_.charAt(0) == "*")
                  {
                     this._SafeStr_104._SafeStr_158("<b><font color=\'#FF0000\'>" + _loc16_.substr(1) + "</font></b> " + _loc16_);
                     break;
                  }
                  if(_loc16_.charAt(0) == "+")
                  {
                     _loc18_ = _loc16_.substr(1,_loc16_.indexOf(" ") - 1);
                     _loc16_ = _loc16_.substr(_loc18_.length + 1);
                     _loc30_ = 0;
                     while(_loc30_ < this._SafeStr_109.language_filter.length)
                     {
                        _loc16_ = _loc16_.replace(this._SafeStr_109.language_filter[_loc30_],"******");
                        _loc30_++;
                     }
                     this._SafeStr_104._SafeStr_158("{to " + _loc18_ + "} " + _loc16_);
                     break;
                  }
                  _loc16_ = _loc16_.substr(_loc18_.length + 1);
                  _loc30_ = 0;
                  while(_loc30_ < this._SafeStr_109.language_filter.length)
                  {
                     _loc16_ = _loc16_.replace(this._SafeStr_109.language_filter[_loc30_],"******");
                     _loc30_++;
                  }
                  this._SafeStr_104._SafeStr_158("{" + _loc18_ + "} " + _loc16_);
                  _SafeCls_10._SafeStr_469 = _loc18_;
               }
               break;
            case _SafeCls_39._SafeStr_479:
               _loc16_ = param1.message.substr(1,param1.message.length - 1);
               this.ed.notification_box._SafeStr_108("You have been issued a warning: \"" + _loc16_ + "\"");
               break;
            case _SafeCls_39._SafeStr_678:
               _loc19_ = _SafeCls_37._SafeStr_152(param1.message);
               _loc3_.kills = _loc19_.kills;
               _loc3_._SafeStr_161 = _loc19_._SafeStr_161;
               _loc3_.score = _loc19_.score;
               this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
               break;
            case _SafeCls_39._SafeStr_695:
               _loc20_ = _SafeCls_40._SafeStr_115(param1.message.substr(1,4));
               this.user_info._SafeStr_230 += _loc20_;
               this.user_info._SafeStr_330 += _loc20_;
               this._SafeStr_104._SafeStr_1097(_loc20_,this.user_info);
               break;
            case _SafeCls_39._SafeStr_728:
               _loc21_ = _SafeCls_38._SafeStr_152(param1.message);
               this._SafeStr_104._SafeStr_1168(_loc3_,_loc21_.index,_loc21_._SafeStr_944);
               break;
            case _SafeCls_39._SafeStr_775:
               trace("Set map: " + param1.message);
               this._SafeStr_208 = _SafeCls_40._SafeStr_115(param1.message.substr(1,1));
               break;
            case _SafeCls_39._SafeStr_679:
               _loc22_ = _SafeCls_27._SafeStr_152(param1.message);
               this._SafeStr_193[0] = _loc22_._SafeStr_796;
               this._SafeStr_193[1] = _loc22_._SafeStr_716;
               this._SafeStr_104._SafeStr_669(this._SafeStr_193);
         }
      }
      
      public function _SafeStr_1127(param1:_SafeCls_17, param2:_SafeCls_22) : void
      {
         var _loc3_:_SafeCls_24 = new _SafeCls_24();
         _loc3_._SafeStr_243 = param2._SafeStr_243;
         _loc3_._SafeStr_185 = param2._SafeStr_185;
         _loc3_._SafeStr_183 = param2._SafeStr_183;
         _loc3_._SafeStr_201 = param2.duration;
         _loc3_._SafeStr_294 = param2._SafeStr_294;
         _loc3_._SafeStr_220 = param2._SafeStr_220;
         _loc3_._SafeStr_261 = param2._SafeStr_261;
         param1._SafeStr_265.push(_loc3_);
         while(param2._SafeStr_171 < this._SafeStr_118)
         {
            --_loc3_._SafeStr_201;
            if(_loc3_._SafeStr_220 > 0)
            {
               --_loc3_._SafeStr_220;
            }
            else if(_loc3_._SafeStr_201 > 0 && _loc3_._SafeStr_201 % _loc3_._SafeStr_294 == 0)
            {
               this._SafeStr_883(param1,_loc3_._SafeStr_243);
            }
            ++param2._SafeStr_171;
         }
      }
      
      public function _SafeStr_300() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:_SafeCls_17 = null;
         if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
         {
            if(this._SafeStr_163[0] > this._SafeStr_163[1])
            {
               this._SafeStr_104._SafeStr_300(0,this.players);
            }
            else if(this._SafeStr_163[1] > this._SafeStr_163[0])
            {
               this._SafeStr_104._SafeStr_300(1,this.players);
            }
            else
            {
               this._SafeStr_104._SafeStr_300(-1,this.players);
            }
         }
         else if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_144)
         {
            _loc1_ = -1;
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < this.players.length)
            {
               _loc4_ = this.players[_loc3_];
               if(_loc4_.kills > _loc2_)
               {
                  _loc2_ = _loc4_.kills;
                  _loc1_ = _loc3_;
               }
               else if(_loc4_.kills == _loc2_)
               {
                  _loc1_ = -1;
               }
               _loc3_++;
            }
            this._SafeStr_104._SafeStr_300(_loc1_,this.players);
         }
         else if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_213)
         {
            if(this._SafeStr_193[0] > this._SafeStr_193[1])
            {
               this._SafeStr_104._SafeStr_300(0,this.players,this._SafeStr_193);
            }
            else if(this._SafeStr_193[1] > this._SafeStr_193[0])
            {
               this._SafeStr_104._SafeStr_300(1,this.players,this._SafeStr_193);
            }
            else
            {
               this._SafeStr_104._SafeStr_300(-1,this.players,this._SafeStr_193);
            }
         }
      }
      
      public function _SafeStr_525(param1:_SafeCls_67) : void
      {
         var _loc2_:_SafeCls_17 = new _SafeCls_17();
         _loc2_.id = param1._SafeStr_203;
         _loc2_._SafeStr_110 = new _SafeCls_47();
         _loc2_._SafeStr_110._SafeStr_357(_loc2_);
         _loc2_.ship = this.player.ship;
         _loc2_.arrow = new this.ed.arrowMCClass();
         _loc2_.arrow.gotoAndStop("red_arrow");
         addChild(_loc2_.arrow);
         this.players.push(_loc2_);
         this._SafeStr_827();
         var _loc3_:_SafeCls_35 = _SafeCls_35._SafeStr_357(this.player);
         this.mmocha._SafeStr_154(_loc3_.toString());
         this._SafeStr_822();
         this.mmocha._SafeStr_154(new _SafeCls_36(this._SafeStr_163[0],this._SafeStr_163[1],0,0).toString());
         this._SafeStr_104._SafeStr_338(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
      }
      
      public function _SafeStr_499(param1:_SafeCls_67) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.players.length)
         {
            if(this.players[_loc2_].id == param1._SafeStr_203)
            {
               this._SafeStr_104._SafeStr_158(this.players[_loc2_].name + " has left the game");
               removeChild(this.players[_loc2_].arrow);
               this.players.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_769(param1:_SafeCls_67) : void
      {
         this._SafeStr_1122("Disconnected from the server");
      }
      
      public function _SafeStr_1122(param1:String) : void
      {
         removeChild(this._SafeStr_114);
         this._SafeStr_425.stop();
      }
      
      public function _SafeStr_826(param1:_SafeCls_69) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:_SafeCls_23 = null;
         var _loc9_:_SafeCls_34 = null;
         var _loc10_:int = 0;
         var _loc11_:_SafeCls_2 = null;
         var _loc12_:_SafeCls_34 = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc16_:_SafeCls_21 = null;
         var _loc17_:int = 0;
         var _loc18_:_SafeCls_17 = null;
         if(_SafeCls_0._SafeStr_123(Keyboard.TAB))
         {
            stage.focus = null;
         }
         var _loc2_:Boolean = false;
         this.player._SafeStr_140.x = 0;
         this.player._SafeStr_140.y = 0;
         if(_SafeCls_0._SafeStr_123(Keyboard.ESCAPE) && this._SafeStr_295 != 2)
         {
            this._SafeStr_104._SafeStr_353();
         }
         if(this._SafeStr_104._SafeStr_216)
         {
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.UP) || _SafeCls_0._SafeStr_123(Keyboard.W)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[0]))
            {
               --this.player._SafeStr_140.y;
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.DOWN) || _SafeCls_0._SafeStr_123(Keyboard.S)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[1]))
            {
               ++this.player._SafeStr_140.y;
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.LEFT) || _SafeCls_0._SafeStr_123(Keyboard.A)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[2]))
            {
               --this.player._SafeStr_140.x;
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.RIGHT) || _SafeCls_0._SafeStr_123(Keyboard.D)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[3]))
            {
               ++this.player._SafeStr_140.x;
            }
            _loc5_ = false;
            _loc6_ = false;
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.BACKQUOTE) || _SafeCls_0._SafeStr_123(Keyboard.SPACE) || _SafeCls_0._SafeStr_123(Keyboard.H) || _SafeCls_0._SafeStr_123(Keyboard.NUMPAD_0) || _SafeCls_0._SafeStr_123(Keyboard.Z)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[6]))
            {
               _loc5_ = true;
               this._SafeStr_386 = 0;
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.NUMBER_1) || _SafeCls_0._SafeStr_123(Keyboard.NUMPAD_1) || _SafeCls_0._SafeStr_123(Keyboard.J) || _SafeCls_0._SafeStr_123(Keyboard.X)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[7]))
            {
               this._SafeStr_386 = 1;
               _loc6_ = true;
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.NUMBER_2) || _SafeCls_0._SafeStr_123(Keyboard.NUMPAD_2) || _SafeCls_0._SafeStr_123(Keyboard.K) || _SafeCls_0._SafeStr_123(Keyboard.C)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[8]))
            {
               if(this.player.ship.secondary_weapons >= 2)
               {
                  this._SafeStr_386 = 2;
                  _loc6_ = true;
               }
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.NUMBER_3) || _SafeCls_0._SafeStr_123(Keyboard.NUMPAD_3) || _SafeCls_0._SafeStr_123(Keyboard.L) || _SafeCls_0._SafeStr_123(Keyboard.V)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[9]))
            {
               if(this.player.ship.secondary_weapons >= 3)
               {
                  this._SafeStr_386 = 3;
                  _loc6_ = true;
               }
            }
            if(!this._SafeStr_109.custom_controls && (_SafeCls_0._SafeStr_123(Keyboard.NUMBER_4) || _SafeCls_0._SafeStr_123(Keyboard.NUMPAD_4) || _SafeCls_0._SafeStr_123(Keyboard.SEMICOLON) || _SafeCls_0._SafeStr_123(Keyboard.B)) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[10]))
            {
               if(this.player.ship.secondary_weapons >= 4)
               {
                  this._SafeStr_386 = 4;
                  _loc6_ = true;
               }
            }
            if(_SafeCls_0._SafeStr_123(Keyboard.BACKSLASH) && _SafeCls_0._SafeStr_123(Keyboard.CONTROL))
            {
               trace("---");
               _loc7_ = 0;
               while(_loc7_ < this.players.length)
               {
                  trace("Alive: " + this.players[_loc7_].alive);
                  trace("Distance " + _SafeCls_10._SafeStr_548(this.players[_loc7_].x / 100,this.players[_loc7_].y / 100,this.player.x / 100,this.player.y / 100) + " " + this._SafeStr_114._SafeStr_621);
                  _loc7_++;
               }
               this._SafeStr_114._SafeStr_274 = true;
               this._SafeStr_534.visible = true;
               this._SafeStr_114._SafeStr_838();
            }
            if(!this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(Keyboard.SHIFT) || this._SafeStr_109.custom_controls && _SafeCls_0._SafeStr_123(this._SafeStr_109.controls[5]))
            {
               this._SafeStr_104._SafeStr_938(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
            }
            else if(this._SafeStr_295 != 2)
            {
               this._SafeStr_104._SafeStr_1117();
            }
         }
         this._SafeStr_114._SafeStr_1225();
         if(this.player._SafeStr_140.x != this._SafeStr_530.x || this.player._SafeStr_140.y != this._SafeStr_530.y)
         {
            _loc2_ = true;
            this._SafeStr_530.x = this.player._SafeStr_140.x;
            this._SafeStr_530.y = this.player._SafeStr_140.y;
         }
         if(this.player.alive)
         {
            this._SafeStr_1014(this.player);
            if(this.player.alive)
            {
               this.player._SafeStr_725(this.player,this.ed.maps[this._SafeStr_208],this._SafeStr_118,this._SafeStr_104._SafeStr_122,this._SafeStr_114,this.ed);
            }
            else
            {
               this._SafeStr_114._SafeStr_253(this.ed._SafeStr_446[this.player.ship.wreck - 1],this.player._SafeStr_111,this.player._SafeStr_112,0,0,this.player._SafeStr_135,0,0);
               this._SafeStr_114._SafeStr_253(this.ed._SafeStr_436[this.player.ship.explosion - 1],this.player._SafeStr_111,this.player._SafeStr_112,0,0,0);
               this.sm._SafeStr_126(this.player.ship.death_sound);
               this.player._SafeStr_188 = this._SafeStr_118;
               trace("Death Event C");
               this.mmocha._SafeStr_154(new _SafeCls_30(this.player._SafeStr_506).toString());
            }
         }
         this._SafeStr_930(0);
         this._SafeStr_114._SafeStr_103._SafeStr_476 = this.player._SafeStr_111 - this._SafeStr_114._SafeStr_176 / 2;
         this._SafeStr_114._SafeStr_103._SafeStr_409 = this.player._SafeStr_112 - this._SafeStr_114._SafeStr_178 / 2;
         var _loc3_:Number = this.player._SafeStr_133 * 1 / this.player.max_velocity;
         this._SafeStr_114._SafeStr_103._SafeStr_476 += _loc3_ * this._SafeStr_114._SafeStr_176 * 0.4;
         _loc3_ = this.player._SafeStr_132 * 1 / this.player.max_velocity;
         this._SafeStr_114._SafeStr_103._SafeStr_409 += _loc3_ * this._SafeStr_114._SafeStr_178 * 0.35;
         this._SafeStr_114._SafeStr_103.x += (this._SafeStr_114._SafeStr_103._SafeStr_476 - this._SafeStr_114._SafeStr_103.x) * 0.08;
         this._SafeStr_114._SafeStr_103.y += (this._SafeStr_114._SafeStr_103._SafeStr_409 - this._SafeStr_114._SafeStr_103.y) * 0.08;
         var _loc4_:* = int(this.player.weapons.length - 1);
         while(_loc4_ >= 0)
         {
            _loc8_ = this.player.weapons[_loc4_];
            _loc9_ = this.player._SafeStr_189[_loc8_.turret_index];
            _loc9_._SafeStr_487 = _SafeCls_10._SafeStr_233(_loc9_.x_offset,_loc9_.y_offset,this.player._SafeStr_135);
            _loc9_._SafeStr_516 = _SafeCls_10._SafeStr_227(_loc9_.x_offset,_loc9_.y_offset,this.player._SafeStr_135);
            _loc9_.rad = this.player._SafeStr_135;
            _loc4_--;
         }
         if((_loc5_ || _loc6_) && this.player.alive && this._SafeStr_104._SafeStr_216)
         {
            _loc10_ = this._SafeStr_386;
            if(_loc5_ && (this.player.next_fire > this._SafeStr_118 || this.player.energy < this.player.weapons[_loc10_].weapon.energy_cost || this.player.weapons[_loc10_].next_fire > this._SafeStr_118))
            {
               _loc10_ = 0;
            }
            _loc8_ = this.player.weapons[_loc10_];
            _loc11_ = _loc8_.weapon;
            if(this.player.next_fire <= this._SafeStr_118 && this.player.energy >= _loc11_.energy_cost && _loc8_.next_fire <= this._SafeStr_118)
            {
               if(_SafeCls_0._SafeStr_123(Keyboard.F) && this._SafeStr_114._SafeStr_274)
               {
                  _loc11_ = this.ed.weapons[int(Math.random() * this.ed.weapons.length)];
               }
               this.player.energy -= _loc11_.energy_cost;
               _loc12_ = this.player._SafeStr_189[0];
               _loc13_ = _SafeCls_10._SafeStr_233(this.player._SafeStr_803,this.player._SafeStr_713,_loc12_.rad);
               _loc14_ = _SafeCls_10._SafeStr_227(this.player._SafeStr_803,this.player._SafeStr_713,_loc12_.rad);
               _loc15_ = this.player._SafeStr_135;
               this._SafeStr_936(_loc11_,this.player._SafeStr_111 + _loc13_,this.player._SafeStr_112 + _loc14_,this.player._SafeStr_133,this.player._SafeStr_132,_loc15_,this.player);
               this.player.next_fire = this._SafeStr_118 + _loc11_.cooldown;
               _loc8_.next_fire = this._SafeStr_118 + _loc11_.self_cooldown;
               _loc16_ = new _SafeCls_21();
               _loc16_.x = this.player._SafeStr_111 + _loc13_;
               _loc16_.y = this.player._SafeStr_112 + _loc14_;
               _loc16_._SafeStr_248 = this.player._SafeStr_133;
               _loc16_._SafeStr_247 = this.player._SafeStr_132;
               _loc16_.weapon = _loc11_.id;
               _loc16_.r = _loc12_.rad * 180 / Math.PI;
               if(_loc16_.r < 0)
               {
                  _loc16_.r += 360;
               }
               _loc16_._SafeStr_171 = this._SafeStr_118;
               this.mmocha._SafeStr_154(_loc16_.toString());
               _loc17_ = Math.random() * _loc11_.firing_sounds.length;
               this.sm._SafeStr_126(_loc11_.firing_sounds[_loc17_]);
               if(_SafeCls_0._SafeStr_123(Keyboard.F) && this._SafeStr_114._SafeStr_274)
               {
                  this.player.next_fire = this._SafeStr_118 + _loc11_.cooldown;
                  _loc8_.next_fire = 0;
                  this.player.energy = this.player._SafeStr_278;
               }
            }
         }
         _loc4_ = 0;
         while(_loc4_ < this.players.length)
         {
            _loc18_ = this.players[_loc4_];
            if(_loc18_.alive)
            {
               this._SafeStr_1014(_loc18_);
               if(_loc18_.alive)
               {
                  _loc18_._SafeStr_725(this.player,this.ed.maps[this._SafeStr_208],this._SafeStr_118,this._SafeStr_104._SafeStr_122);
                  if(_loc18_.id != this.mmocha._SafeStr_145)
                  {
                     _loc18_._SafeStr_879(this._SafeStr_114,this.ed);
                  }
                  else
                  {
                     _loc18_._SafeStr_879();
                  }
               }
               else
               {
                  this._SafeStr_114._SafeStr_253(this.ed._SafeStr_446[_loc18_.ship.wreck - 1],_loc18_._SafeStr_111,_loc18_._SafeStr_112,0,0,_loc18_._SafeStr_135,0,0);
                  this._SafeStr_114._SafeStr_253(this.ed._SafeStr_436[_loc18_.ship.explosion - 1],_loc18_._SafeStr_111,_loc18_._SafeStr_112,0,0,0);
                  _SafeCls_10._SafeStr_299(this.player._SafeStr_111,this.player._SafeStr_112,_loc18_._SafeStr_111,_loc18_._SafeStr_112,_loc18_.ship.death_sound);
               }
            }
            _loc4_++;
         }
         if(_loc2_)
         {
            this._SafeStr_822();
         }
         if(!this.player.alive && this._SafeStr_295 == 1)
         {
            if(this.player._SafeStr_503)
            {
               if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
               {
                  if(this._SafeStr_118 % this._SafeStr_444 == 0)
                  {
                     if(this._SafeStr_118 > this.player._SafeStr_188 + this._SafeStr_1029)
                     {
                        this._SafeStr_745(this.player);
                        _SafeCls_0._SafeStr_1015();
                     }
                  }
               }
               else if(this.player._SafeStr_188 + this._SafeStr_818 < this._SafeStr_118)
               {
                  this._SafeStr_745(this.player);
                  _SafeCls_0._SafeStr_1015();
               }
            }
         }
         this._SafeStr_534.text = String(this._SafeStr_118);
         ++this._SafeStr_118;
      }
      
      public function _SafeStr_1014(param1:_SafeCls_17) : void
      {
         var _loc4_:_SafeCls_24 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         param1._SafeStr_185 = 0;
         param1._SafeStr_183 = 0;
         if(param1._SafeStr_265.length == 0)
         {
            return;
         }
         var _loc2_:Array = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < param1._SafeStr_265.length)
         {
            _loc4_ = param1._SafeStr_265[_loc3_];
            --_loc4_._SafeStr_201;
            if(_loc4_._SafeStr_201 <= 0)
            {
               param1._SafeStr_265.splice(_loc3_,1);
               _loc3_--;
            }
            else if(_loc4_._SafeStr_220 > 0)
            {
               --_loc4_._SafeStr_220;
            }
            else
            {
               if(_loc4_._SafeStr_261 > 0)
               {
                  if(_loc2_.indexOf(_loc4_._SafeStr_261) == -1)
                  {
                     if(_loc4_._SafeStr_201 % 2 == 0)
                     {
                        _loc5_ = Math.random() * param1.ship.radius;
                        _loc6_ = Math.random() * Math.PI * 2;
                        _loc7_ = param1._SafeStr_111 + _loc5_ * Math.cos(_loc6_);
                        _loc8_ = param1._SafeStr_112 + _loc5_ * Math.sin(_loc6_);
                        this._SafeStr_114._SafeStr_253(this.ed._SafeStr_748[_loc4_._SafeStr_261 - 1],_loc7_,_loc8_,0,0,_loc6_,0);
                        _loc2_.push(_loc4_._SafeStr_261);
                     }
                  }
               }
               if(_loc4_._SafeStr_201 % _loc4_._SafeStr_294 == 0)
               {
                  this._SafeStr_883(param1,_loc4_._SafeStr_243);
               }
               param1._SafeStr_185 += _loc4_._SafeStr_185;
               param1._SafeStr_183 += _loc4_._SafeStr_183;
            }
            _loc3_++;
         }
         if(param1._SafeStr_185 > 1 * param1.ship.acceleration / 3)
         {
            param1._SafeStr_185 = 1 * param1.ship.acceleration / 3;
         }
         else if(param1._SafeStr_185 < -1 * param1.ship.acceleration / 3)
         {
            param1._SafeStr_185 = -3 * param1.ship.acceleration / 3;
         }
         if(param1._SafeStr_183 > 1 * param1.max_velocity / 3)
         {
            param1._SafeStr_183 = 1 * param1.max_velocity / 3;
         }
         else if(param1._SafeStr_183 < -1 * param1.max_velocity / 3)
         {
            param1._SafeStr_183 = -1 * param1.max_velocity / 3;
         }
         if(param1.health <= 0 && param1.id == null)
         {
            param1.health = 0;
            param1.alive = false;
         }
      }
      
      public function _SafeStr_936(param1:_SafeCls_2, param2:int, param3:int, param4:int, param5:int, param6:Number, param7:_SafeCls_17) : void
      {
         var _loc9_:_SafeCls_32 = null;
         var _loc10_:_SafeCls_28 = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc8_:int = 0;
         while(_loc8_ < param1.projectiles.length)
         {
            _loc9_ = param1.projectiles[_loc8_];
            _loc10_ = new _SafeCls_28();
            _loc11_ = _SafeCls_10._SafeStr_233(_loc9_.x_offset * 100,_loc9_.y_offset * 100,param6);
            _loc12_ = _SafeCls_10._SafeStr_227(_loc9_.x_offset * 100,_loc9_.y_offset * 100,param6);
            _loc10_._SafeStr_198 = param7;
            _loc10_.x = param2 * 100 + _loc11_;
            _loc10_.y = param3 * 100 + _loc12_;
            _loc10_.r = param6 + _loc9_._SafeStr_870;
            _loc10_._SafeStr_590 = _loc10_.r;
            _loc10_.deploy_delay = _loc9_.deploy_delay;
            _loc10_._SafeStr_788 = _loc9_.draw_layer;
            _loc13_ = param4 * _loc9_.inherit_momentum;
            _loc14_ = param5 * _loc9_.inherit_momentum;
            _loc10_._SafeStr_417 = _loc9_.speed * Math.sin(_loc10_.r) + _loc13_;
            _loc10_._SafeStr_428 = -_loc9_.speed * Math.cos(_loc10_.r) + _loc14_;
            _loc10_.p = _loc9_;
            _loc10_._SafeStr_201 = _loc9_.lifetime;
            this.projectiles.push(_loc10_);
            _loc8_++;
         }
      }
      
      public function _SafeStr_754(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:_SafeCls_28 = null;
         var _loc5_:_SafeCls_17 = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Number = Number(getTimer());
         if(this._SafeStr_646 >= this._SafeStr_1154 || _loc2_ - this._SafeStr_932 < 40)
         {
            this._SafeStr_114._SafeStr_1142();
            this._SafeStr_114._SafeStr_1043(this.ed.maps[this._SafeStr_208]);
            this._SafeStr_114._SafeStr_1037(this.ed.maps[this._SafeStr_208].fabs,!this._SafeStr_109.low_quality);
            this._SafeStr_114._SafeStr_1084();
            _loc3_ = 0;
            while(_loc3_ < this.projectiles.length)
            {
               _loc4_ = this.projectiles[_loc3_];
               if(_loc4_._SafeStr_788 == 0)
               {
                  this._SafeStr_114._SafeStr_916(_loc4_);
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.players.length)
            {
               _loc5_ = this.players[_loc3_];
               if(!(_loc5_.id == this.mmocha._SafeStr_145 && !this._SafeStr_114._SafeStr_274))
               {
                  this._SafeStr_114._SafeStr_1131(_loc5_,this.player,_loc5_._SafeStr_188 + this._SafeStr_593 > this._SafeStr_118);
               }
               _loc3_++;
            }
            this._SafeStr_114._SafeStr_1130(this.player,this.player._SafeStr_188 + this._SafeStr_593 > this._SafeStr_118);
            if(!this._SafeStr_109.low_quality)
            {
               this._SafeStr_114._SafeStr_1188();
            }
            _loc3_ = 0;
            while(_loc3_ < this.projectiles.length)
            {
               _loc4_ = this.projectiles[_loc3_];
               if(_loc4_._SafeStr_788 != 0)
               {
                  this._SafeStr_114._SafeStr_916(_loc4_);
               }
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.players.length)
            {
               _loc5_ = this.players[_loc3_];
               if(!(_loc5_.id == this.mmocha._SafeStr_145 && !this._SafeStr_114._SafeStr_274))
               {
                  this._SafeStr_114._SafeStr_1170(_loc5_,this._SafeStr_109.show_names);
               }
               _loc3_++;
            }
            this._SafeStr_114._SafeStr_1031(this.player,this._SafeStr_109.show_names);
            this._SafeStr_114._SafeStr_1220();
            this._SafeStr_646 = 0;
            this._SafeStr_932 = _loc2_;
         }
         else
         {
            ++this._SafeStr_646;
         }
         if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
         {
            if(this._SafeStr_114._SafeStr_1165(this.ed.maps[this._SafeStr_208].point))
            {
               this._SafeStr_392.visible = false;
            }
            else
            {
               this._SafeStr_392.visible = true;
               this._SafeStr_114._SafeStr_988(this.player.x,this.player.y,this.ed.maps[this._SafeStr_208].point[0] * 100,this.ed.maps[this._SafeStr_208].point[1] * 100,this._SafeStr_392);
            }
         }
         _loc3_ = 1;
         while(_loc3_ < this.player.ship.secondary_weapons + 1)
         {
            if(this.player.weapons[_loc3_].next_fire > this._SafeStr_118)
            {
               _loc7_ = this.player.weapons[_loc3_].next_fire - this.player.weapons[_loc3_].weapon.self_cooldown;
               _loc8_ = this._SafeStr_118 - _loc7_;
               this._SafeStr_104._SafeStr_1132(_loc3_,100 * _loc8_ / this.player.weapons[_loc3_].weapon.self_cooldown);
            }
            _loc3_++;
         }
         this._SafeStr_104._SafeStr_1171(this.ed);
         if(this._SafeStr_295 == 2)
         {
            this._SafeStr_104._SafeStr_1046(this._SafeStr_118);
            this._SafeStr_104._SafeStr_938(this.players,this._SafeStr_200(this.mmocha._SafeStr_145));
         }
         else if(!this.player.alive)
         {
            if(!this._SafeStr_104.mc.change_ship.cancel.visible || !this._SafeStr_104.mc.change_ship.visible)
            {
               if(this._SafeStr_118 < _SafeCls_78._SafeStr_262 * 30)
               {
                  this._SafeStr_104._SafeStr_755(_SafeCls_78._SafeStr_262 * 30 - this._SafeStr_118);
               }
               else if(this._SafeStr_118 - this.player._SafeStr_188 > 60)
               {
                  if(this._SafeStr_104._SafeStr_122 == _SafeCls_4._SafeStr_164)
                  {
                     this._SafeStr_104._SafeStr_755(this._SafeStr_444 - this._SafeStr_118 % this._SafeStr_444);
                  }
                  else
                  {
                     this._SafeStr_104._SafeStr_755(this.player._SafeStr_188 + this._SafeStr_818 - this._SafeStr_118);
                  }
               }
            }
         }
         else
         {
            this._SafeStr_104._SafeStr_1058();
         }
      }
      
      public function _SafeStr_200(param1:String) : _SafeCls_17
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.players.length)
         {
            if(this.players[_loc2_].id == param1)
            {
               return this.players[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function _SafeStr_883(param1:_SafeCls_17, param2:int) : void
      {
         if(param2 < 0)
         {
            param2 = 0;
         }
         var _loc3_:int = int(Math.min(param2,param1.shields));
         _loc3_ = int(Math.min(_loc3_,param1.ship.shield_tolerance));
         param2 -= _loc3_;
         _loc3_ = int(Math.min(_loc3_,param1.shields));
         param1.shields -= _loc3_;
         param1.health -= param2;
         param1._SafeStr_264 = this._SafeStr_118;
      }
      
      public function _SafeStr_850(param1:Number) : Number
      {
         param1 = (param1 * 1140671485 + 12820163) % 233280;
         return param1 / 233280;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "2H"
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_13 = "-E"
 * @identifier _SafeCls_16 = "true"
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_19 = "+@"
 * @identifier _SafeCls_21 = ",="
 * @identifier _SafeCls_22 = " 2"
 * @identifier _SafeCls_23 = "1J"
 * @identifier _SafeCls_24 = "^Q"
 * @identifier _SafeCls_25 = "0L"
 * @identifier _SafeCls_26 = "9$"
 * @identifier _SafeCls_27 = ";T"
 * @identifier _SafeCls_28 = "9%"
 * @identifier _SafeCls_29 = "0B"
 * @identifier _SafeCls_30 = "1<"
 * @identifier _SafeCls_31 = "6J"
 * @identifier _SafeCls_32 = "6-"
 * @identifier _SafeCls_33 = "1C"
 * @identifier _SafeCls_34 = "null "
 * @identifier _SafeCls_35 = "!Q"
 * @identifier _SafeCls_36 = " 3"
 * @identifier _SafeCls_37 = "9E"
 * @identifier _SafeCls_38 = "72"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafeCls_47 = "9N"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_67 = "]$"
 * @identifier _SafeCls_69 = "\'I"
 * @identifier _SafeCls_71 = ",L"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeCls_77 = "^$"
 * @identifier _SafeCls_78 = "%0"
 * @identifier _SafeCls_95 = "class"
 * @identifier _SafeCls_97 = ";1"
 * @identifier _SafeCls_102 = "-T"
 * @identifier _SafeCls_0 = "<L"
 * @identifier _SafePkg_1 = ">"
 * @identifier _SafePkg_8 = "-A"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafePkg_70 = "case"
 * @identifier _SafePkg_98 = "&6"
 * @identifier _SafeStr_103 = "+$"
 * @identifier _SafeStr_104 = "4#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_108 = "#L"
 * @identifier _SafeStr_109 = "5\""
 * @identifier _SafeStr_110 = "&A"
 * @identifier _SafeStr_111 = "=T"
 * @identifier _SafeStr_112 = "22"
 * @identifier _SafeStr_114 = "+="
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_118 = ";L"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_122 = "5#"
 * @identifier _SafeStr_123 = "&G"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_127 = "-!"
 * @identifier _SafeStr_132 = "!0"
 * @identifier _SafeStr_133 = "6\""
 * @identifier _SafeStr_135 = "^%"
 * @identifier _SafeStr_140 = "super"
 * @identifier _SafeStr_141 = "#"
 * @identifier _SafeStr_144 = "set "
 * @identifier _SafeStr_145 = "78"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_154 = "61"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_158 = "\'&"
 * @identifier _SafeStr_161 = ">J"
 * @identifier _SafeStr_163 = "?F"
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_171 = "true "
 * @identifier _SafeStr_175 = "97"
 * @identifier _SafeStr_176 = ">2"
 * @identifier _SafeStr_178 = "\"D"
 * @identifier _SafeStr_183 = "@$"
 * @identifier _SafeStr_185 = "]\""
 * @identifier _SafeStr_188 = "-C"
 * @identifier _SafeStr_189 = "#T"
 * @identifier _SafeStr_193 = "#7"
 * @identifier _SafeStr_194 = "&U"
 * @identifier _SafeStr_198 = "<5"
 * @identifier _SafeStr_200 = "1D"
 * @identifier _SafeStr_201 = "20"
 * @identifier _SafeStr_203 = "]5"
 * @identifier _SafeStr_208 = "\"O"
 * @identifier _SafeStr_210 = "-5"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_216 = "9&"
 * @identifier _SafeStr_217 = "<,"
 * @identifier _SafeStr_218 = "]M"
 * @identifier _SafeStr_220 = ">7"
 * @identifier _SafeStr_227 = ";G"
 * @identifier _SafeStr_230 = "-#"
 * @identifier _SafeStr_233 = "3I"
 * @identifier _SafeStr_237 = "+Q"
 * @identifier _SafeStr_243 = ",>"
 * @identifier _SafeStr_247 = ";4"
 * @identifier _SafeStr_248 = "0H"
 * @identifier _SafeStr_251 = "7Q"
 * @identifier _SafeStr_253 = "\'D"
 * @identifier _SafeStr_261 = "%"
 * @identifier _SafeStr_262 = "?T"
 * @identifier _SafeStr_264 = "!3"
 * @identifier _SafeStr_265 = "?2"
 * @identifier _SafeStr_268 = ">D"
 * @identifier _SafeStr_274 = "\"G"
 * @identifier _SafeStr_278 = "for"
 * @identifier _SafeStr_284 = "7"
 * @identifier _SafeStr_292 = "?L"
 * @identifier _SafeStr_293 = "3M"
 * @identifier _SafeStr_294 = "#C"
 * @identifier _SafeStr_295 = ">B"
 * @identifier _SafeStr_299 = "#J"
 * @identifier _SafeStr_300 = "#+"
 * @identifier _SafeStr_304 = "5<"
 * @identifier _SafeStr_305 = "07"
 * @identifier _SafeStr_308 = "?J"
 * @identifier _SafeStr_318 = "^B"
 * @identifier _SafeStr_327 = "1+"
 * @identifier _SafeStr_330 = "4?"
 * @identifier _SafeStr_331 = "5L"
 * @identifier _SafeStr_337 = "#S"
 * @identifier _SafeStr_338 = "%,"
 * @identifier _SafeStr_341 = "6;"
 * @identifier _SafeStr_344 = "82"
 * @identifier _SafeStr_353 = "#5"
 * @identifier _SafeStr_355 = "@B"
 * @identifier _SafeStr_357 = "<#"
 * @identifier _SafeStr_359 = "2F"
 * @identifier _SafeStr_361 = "09"
 * @identifier _SafeStr_367 = "do "
 * @identifier _SafeStr_375 = ",6"
 * @identifier _SafeStr_377 = "!2"
 * @identifier _SafeStr_379 = "=S"
 * @identifier _SafeStr_380 = "`\""
 * @identifier _SafeStr_381 = "?>"
 * @identifier _SafeStr_386 = "0F"
 * @identifier _SafeStr_389 = "@S"
 * @identifier _SafeStr_392 = "@F"
 * @identifier _SafeStr_398 = "@?"
 * @identifier _SafeStr_409 = "9G"
 * @identifier _SafeStr_411 = "3G"
 * @identifier _SafeStr_413 = "extends"
 * @identifier _SafeStr_417 = "^A"
 * @identifier _SafeStr_425 = "1?"
 * @identifier _SafeStr_428 = "%F"
 * @identifier _SafeStr_436 = "!8"
 * @identifier _SafeStr_438 = "]S"
 * @identifier _SafeStr_444 = "]D"
 * @identifier _SafeStr_446 = "1F"
 * @identifier _SafeStr_458 = "2M"
 * @identifier _SafeStr_469 = " !"
 * @identifier _SafeStr_476 = "=&"
 * @identifier _SafeStr_479 = "2U"
 * @identifier _SafeStr_487 = "`E"
 * @identifier _SafeStr_492 = "^K"
 * @identifier _SafeStr_498 = "0$"
 * @identifier _SafeStr_499 = "4S"
 * @identifier _SafeStr_503 = "]2"
 * @identifier _SafeStr_506 = "7#"
 * @identifier _SafeStr_516 = "?&"
 * @identifier _SafeStr_525 = "<$"
 * @identifier _SafeStr_530 = "0S"
 * @identifier _SafeStr_532 = "+D"
 * @identifier _SafeStr_534 = ">E"
 * @identifier _SafeStr_540 = ">9"
 * @identifier _SafeStr_547 = "&K"
 * @identifier _SafeStr_548 = "`Q"
 * @identifier _SafeStr_551 = "3U"
 * @identifier _SafeStr_555 = "%&"
 * @identifier _SafeStr_556 = "1#"
 * @identifier _SafeStr_576 = "=1"
 * @identifier _SafeStr_578 = "]A"
 * @identifier _SafeStr_582 = "\'B"
 * @identifier _SafeStr_586 = "3<"
 * @identifier _SafeStr_588 = "]J"
 * @identifier _SafeStr_590 = "6S"
 * @identifier _SafeStr_593 = "58"
 * @identifier _SafeStr_596 = "9!"
 * @identifier _SafeStr_598 = ">K"
 * @identifier _SafeStr_606 = "\"4"
 * @identifier _SafeStr_608 = "false"
 * @identifier _SafeStr_611 = " 4"
 * @identifier _SafeStr_614 = "2P"
 * @identifier _SafeStr_621 = "get "
 * @identifier _SafeStr_623 = "`A"
 * @identifier _SafeStr_627 = "<="
 * @identifier _SafeStr_629 = "=P"
 * @identifier _SafeStr_634 = "\'N"
 * @identifier _SafeStr_641 = "\"0"
 * @identifier _SafeStr_645 = ">%"
 * @identifier _SafeStr_646 = "1\""
 * @identifier _SafeStr_648 = ",;"
 * @identifier _SafeStr_659 = ">I"
 * @identifier _SafeStr_669 = "[@"
 * @identifier _SafeStr_670 = " -"
 * @identifier _SafeStr_678 = ">3"
 * @identifier _SafeStr_679 = "=%"
 * @identifier _SafeStr_685 = ",C"
 * @identifier _SafeStr_692 = "%P"
 * @identifier _SafeStr_695 = "2>"
 * @identifier _SafeStr_701 = "@6"
 * @identifier _SafeStr_706 = "9Q"
 * @identifier _SafeStr_709 = "\">"
 * @identifier _SafeStr_713 = "14"
 * @identifier _SafeStr_716 = "0J"
 * @identifier _SafeStr_723 = "[U"
 * @identifier _SafeStr_725 = "#8"
 * @identifier _SafeStr_728 = "41"
 * @identifier _SafeStr_740 = " null"
 * @identifier _SafeStr_745 = "+&"
 * @identifier _SafeStr_748 = "[;"
 * @identifier _SafeStr_754 = "!M"
 * @identifier _SafeStr_755 = "--"
 * @identifier _SafeStr_762 = "=8"
 * @identifier _SafeStr_767 = "\'\""
 * @identifier _SafeStr_769 = "\"@"
 * @identifier _SafeStr_772 = " D"
 * @identifier _SafeStr_774 = "dynamic"
 * @identifier _SafeStr_775 = "6$"
 * @identifier _SafeStr_777 = "9C"
 * @identifier _SafeStr_778 = "#?"
 * @identifier _SafeStr_783 = "%L"
 * @identifier _SafeStr_788 = "^1"
 * @identifier _SafeStr_790 = "9?"
 * @identifier _SafeStr_796 = "]L"
 * @identifier _SafeStr_803 = "@I"
 * @identifier _SafeStr_809 = "?<"
 * @identifier _SafeStr_817 = "=2"
 * @identifier _SafeStr_818 = "\'8"
 * @identifier _SafeStr_819 = "9M"
 * @identifier _SafeStr_822 = "5B"
 * @identifier _SafeStr_826 = "&%"
 * @identifier _SafeStr_827 = "#G"
 * @identifier _SafeStr_838 = "9F"
 * @identifier _SafeStr_848 = ",&"
 * @identifier _SafeStr_850 = "05"
 * @identifier _SafeStr_867 = "7%"
 * @identifier _SafeStr_870 = "]="
 * @identifier _SafeStr_872 = "2O"
 * @identifier _SafeStr_879 = " I"
 * @identifier _SafeStr_883 = "-,"
 * @identifier _SafeStr_887 = "=U"
 * @identifier _SafeStr_888 = ",@"
 * @identifier _SafeStr_895 = ">;"
 * @identifier _SafeStr_897 = "2E"
 * @identifier _SafeStr_909 = ";A"
 * @identifier _SafeStr_916 = "2J"
 * @identifier _SafeStr_930 = "<O"
 * @identifier _SafeStr_932 = ">N"
 * @identifier _SafeStr_936 = "\"1"
 * @identifier _SafeStr_938 = "=K"
 * @identifier _SafeStr_944 = "const"
 * @identifier _SafeStr_946 = "?#"
 * @identifier _SafeStr_949 = "-4"
 * @identifier _SafeStr_951 = " in"
 * @identifier _SafeStr_962 = "4$"
 * @identifier _SafeStr_975 = "?H"
 * @identifier _SafeStr_981 = "4P"
 * @identifier _SafeStr_988 = "?$"
 * @identifier _SafeStr_1014 = "\"2"
 * @identifier _SafeStr_1015 = "3?"
 * @identifier _SafeStr_1018 = "6%"
 * @identifier _SafeStr_1029 = "1&"
 * @identifier _SafeStr_1031 = "%K"
 * @identifier _SafeStr_1033 = "4N"
 * @identifier _SafeStr_1037 = "&M"
 * @identifier _SafeStr_1043 = "?@"
 * @identifier _SafeStr_1046 = "4B"
 * @identifier _SafeStr_1051 = "^N"
 * @identifier _SafeStr_1053 = "%6"
 * @identifier _SafeStr_1057 = ">\'"
 * @identifier _SafeStr_1058 = "use"
 * @identifier _SafeStr_1063 = "%G"
 * @identifier _SafeStr_1084 = "\"P"
 * @identifier _SafeStr_1088 = "?7"
 * @identifier _SafeStr_1090 = " V"
 * @identifier _SafeStr_1097 = "4Q"
 * @identifier _SafeStr_1102 = ">O"
 * @identifier _SafeStr_1117 = "+J"
 * @identifier _SafeStr_1122 = "2"
 * @identifier _SafeStr_1127 = "=B"
 * @identifier _SafeStr_1130 = ";@"
 * @identifier _SafeStr_1131 = "1L"
 * @identifier _SafeStr_1132 = "2S"
 * @identifier _SafeStr_1142 = "2-"
 * @identifier _SafeStr_1154 = ">1"
 * @identifier _SafeStr_1164 = ";H"
 * @identifier _SafeStr_1165 = "0P"
 * @identifier _SafeStr_1166 = "16"
 * @identifier _SafeStr_1168 = "^7"
 * @identifier _SafeStr_1170 = "@E"
 * @identifier _SafeStr_1171 = "1H"
 * @identifier _SafeStr_1176 = "\"B"
 * @identifier _SafeStr_1188 = ";$"
 * @identifier _SafeStr_1191 = "&3"
 * @identifier _SafeStr_1197 = "6U"
 * @identifier _SafeStr_1204 = "3\""
 * @identifier _SafeStr_1215 = " >"
 * @identifier _SafeStr_1220 = "+?"
 * @identifier _SafeStr_1225 = "[\'"
 * @identifier _SafeStr_1231 = "[J"
 * @identifier _SafeStr_1233 = "<I"
 * @identifier _SafeStr_1306 = "&V"
 * @identifier _SafeStr_1309 = "\"S"
 * @identifier _SafeStr_1310 = "<+"
 * @identifier _SafeStr_1312 = "6#"
 * @identifier _SafeStr_1319 = "53"
 * @identifier _SafeStr_1322 = "#1"
 */
