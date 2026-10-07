package _SafePkg_131
{
   import _SafePkg_13._SafeCls_12;
   import _SafePkg_13._SafeCls_113;
   import _SafePkg_120._SafeCls_119;
   import _SafePkg_122._SafeCls_121;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_30._SafeCls_33;
   import _SafePkg_18._SafeCls_17;
   import _SafePkg_118._SafeCls_117;
   import _SafePkg_89._SafeCls_91;
   import _SafePkg_89._SafeCls_88;
   import _SafePkg_89._SafeCls_90;
   import flash.events.EventDispatcher;
   import org.flintparticles.common.utils._SafeCls_133;
   
   public class _SafeCls_130 extends EventDispatcher
   {
      
      protected var _SafeStr_311:_SafeCls_33;
      
      protected var _SafeStr_2530:Vector.<_SafeCls_119>;
      
      protected var _actions:Vector.<_SafeCls_117>;
      
      protected var _SafeStr_856:Vector.<_SafeCls_121>;
      
      protected var _SafeStr_1124:Array;
      
      protected var _SafeStr_1795:_SafeCls_12;
      
      protected var _SafeStr_648:Boolean = true;
      
      protected var _SafeStr_2016:Number = 0;
      
      protected var _running:Boolean = false;
      
      protected var _started:Boolean = false;
      
      protected var _updating:Boolean = false;
      
      protected var _SafeStr_2161:Number = 0.1;
      
      protected var _SafeStr_2055:Boolean = false;
      
      protected var _processLastFirst:Boolean = false;
      
      public function _SafeCls_130()
      {
         super();
         this._SafeStr_1124 = [];
         this._actions = new Vector.<_SafeCls_117>();
         this._SafeStr_2530 = new Vector.<_SafeCls_119>();
         this._SafeStr_856 = new Vector.<_SafeCls_121>();
         this._SafeStr_1795 = new _SafeCls_113();
      }
      
      public function get _SafeStr_2628() : Number
      {
         return this._SafeStr_2161;
      }
      
      public function set _SafeStr_2628(param1:Number) : void
      {
         this._SafeStr_2161 = param1;
      }
      
      public function get _SafeStr_1319() : Vector.<_SafeCls_119>
      {
         return this._SafeStr_2530;
      }
      
      public function set _SafeStr_1319(param1:Vector.<_SafeCls_119>) : void
      {
         var _loc2_:_SafeCls_119 = null;
         for each(_loc2_ in this._SafeStr_2530)
         {
            _loc2_._SafeStr_1687(this);
         }
         this._SafeStr_2530 = param1.slice();
         this._SafeStr_2530.sort(this._SafeStr_2413);
         for each(_loc2_ in param1)
         {
            _loc2_._SafeStr_684(this);
         }
      }
      
      public function _SafeStr_959(param1:_SafeCls_119) : void
      {
         var _loc2_:uint = uint(this._SafeStr_2530.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._SafeStr_2530[_loc3_]._SafeStr_1667 < param1._SafeStr_1667)
            {
               break;
            }
            _loc3_++;
         }
         this._SafeStr_2530.splice(_loc3_,0,param1);
         param1._SafeStr_684(this);
      }
      
      public function _SafeStr_1574(param1:_SafeCls_119) : void
      {
         var _loc2_:int = int(this._SafeStr_2530.indexOf(param1));
         if(_loc2_ != -1)
         {
            this._SafeStr_2530.splice(_loc2_,1);
            param1._SafeStr_1687(this);
         }
      }
      
      public function _SafeStr_1575(param1:_SafeCls_119) : Boolean
      {
         return this._SafeStr_2530.indexOf(param1) != -1;
      }
      
      public function _SafeStr_1543(param1:Class) : Boolean
      {
         var _loc2_:uint = uint(this._SafeStr_2530.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._SafeStr_2530[_loc3_] is param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get _SafeStr_1879() : Vector.<_SafeCls_117>
      {
         return this._actions;
      }
      
      public function set _SafeStr_1879(param1:Vector.<_SafeCls_117>) : void
      {
         var _loc2_:_SafeCls_117 = null;
         for each(_loc2_ in this._actions)
         {
            _loc2_._SafeStr_1687(this);
         }
         this._actions = param1.slice();
         this._actions.sort(this._SafeStr_2413);
         for each(_loc2_ in param1)
         {
            _loc2_._SafeStr_684(this);
         }
      }
      
      public function _SafeStr_786(param1:_SafeCls_117) : void
      {
         var _loc2_:uint = uint(this._actions.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._actions[_loc3_]._SafeStr_1667 < param1._SafeStr_1667)
            {
               break;
            }
            _loc3_++;
         }
         this._actions.splice(_loc3_,0,param1);
         param1._SafeStr_684(this);
      }
      
      public function _SafeStr_653(param1:_SafeCls_117) : void
      {
         var _loc2_:int = int(this._actions.indexOf(param1));
         if(_loc2_ != -1)
         {
            this._actions.splice(_loc2_,1);
            param1._SafeStr_1687(this);
         }
      }
      
      public function _SafeStr_1731(param1:_SafeCls_117) : Boolean
      {
         return this._actions.indexOf(param1) != -1;
      }
      
      public function _SafeStr_484(param1:Class) : Boolean
      {
         var _loc2_:uint = uint(this._actions.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._actions[_loc3_] is param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get _SafeStr_2097() : Vector.<_SafeCls_121>
      {
         return this._SafeStr_856;
      }
      
      public function set _SafeStr_2097(param1:Vector.<_SafeCls_121>) : void
      {
         var _loc2_:_SafeCls_121 = null;
         for each(_loc2_ in this._SafeStr_856)
         {
            _loc2_._SafeStr_1687(this);
         }
         this._SafeStr_856 = param1.slice();
         this._SafeStr_856.sort(this._SafeStr_2413);
         for each(_loc2_ in this._SafeStr_856)
         {
            _loc2_._SafeStr_684(this);
         }
      }
      
      public function _SafeStr_1852(param1:_SafeCls_121) : void
      {
         var _loc2_:uint = uint(this._SafeStr_856.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._SafeStr_856[_loc3_]._SafeStr_1667 < param1._SafeStr_1667)
            {
               break;
            }
            _loc3_++;
         }
         this._SafeStr_856.splice(_loc3_,0,param1);
         param1._SafeStr_684(this);
      }
      
      public function _SafeStr_390(param1:_SafeCls_121) : void
      {
         var _loc2_:int = int(this._SafeStr_856.indexOf(param1));
         if(_loc2_ != -1)
         {
            this._SafeStr_856.splice(_loc2_,1);
            param1._SafeStr_1687(this);
         }
      }
      
      public function _SafeStr_1198(param1:_SafeCls_121) : Boolean
      {
         return this._SafeStr_856.indexOf(param1) != -1;
      }
      
      public function _SafeStr_391(param1:Class) : Boolean
      {
         var _loc2_:uint = uint(this._SafeStr_856.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(this._SafeStr_856[_loc3_] is param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function get counter() : _SafeCls_12
      {
         return this._SafeStr_1795;
      }
      
      public function set counter(param1:_SafeCls_12) : void
      {
         this._SafeStr_1795 = param1;
         if(this.running)
         {
            this._SafeStr_1795.startEmitter(this);
         }
      }
      
      public function _SafeStr_1961() : void
      {
         this._SafeStr_2055 = true;
      }
      
      public function get _SafeStr_2291() : Boolean
      {
         return this._SafeStr_648;
      }
      
      public function set _SafeStr_2291(param1:Boolean) : void
      {
         if(this._SafeStr_648 != param1)
         {
            this._SafeStr_648 = param1;
            if(this._started)
            {
               if(this._SafeStr_648)
               {
                  _SafeCls_133.instance.addEventListener(_SafeCls_90._SafeStr_436,this._SafeStr_1986,false,0,true);
               }
               else
               {
                  _SafeCls_133.instance.removeEventListener(_SafeCls_90._SafeStr_436,this._SafeStr_1986);
               }
            }
         }
      }
      
      public function get _SafeStr_1586() : Number
      {
         return this._SafeStr_2016;
      }
      
      public function set _SafeStr_1586(param1:Number) : void
      {
         this._SafeStr_2016 = param1;
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get _SafeStr_1590() : _SafeCls_33
      {
         return this._SafeStr_311;
      }
      
      public function set _SafeStr_1590(param1:_SafeCls_33) : void
      {
         this._SafeStr_311 = param1;
      }
      
      public function get particles() : Vector.<_SafeCls_29>
      {
         return Vector.<_SafeCls_29>(this._SafeStr_1124);
      }
      
      public function set particles(param1:Vector.<_SafeCls_29>) : void
      {
         this._SafeStr_699();
         this._SafeStr_1427(param1,false);
      }
      
      public function get _SafeStr_468() : Array
      {
         return this._SafeStr_1124;
      }
      
      protected function _SafeStr_405() : _SafeCls_29
      {
         var _loc1_:_SafeCls_29 = this._SafeStr_311._SafeStr_405();
         var _loc2_:int = int(this._SafeStr_2530.length);
         this._SafeStr_1744(_loc1_);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _SafeCls_119(this._SafeStr_2530[_loc3_]).initialize(this,_loc1_);
            _loc3_++;
         }
         this._SafeStr_1124.push(_loc1_);
         if(hasEventListener(_SafeCls_91._SafeStr_2013))
         {
            dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_2013,_loc1_));
         }
         return _loc1_;
      }
      
      protected function _SafeStr_1744(param1:_SafeCls_29) : void
      {
      }
      
      public function _SafeStr_366(param1:_SafeCls_29, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param2)
         {
            _loc3_ = int(this._SafeStr_2530.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this._SafeStr_2530[_loc4_].initialize(this,param1);
               _loc4_++;
            }
         }
         this._SafeStr_1124.push(param1);
         if(hasEventListener(_SafeCls_91._SafeStr_1990))
         {
            dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_1990,param1));
         }
      }
      
      public function _SafeStr_1427(param1:Vector.<_SafeCls_29>, param2:Boolean = false) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = int(param1.length);
         if(param2)
         {
            _loc5_ = int(this._SafeStr_2530.length);
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  this._SafeStr_2530[_loc6_].initialize(this,param1[_loc4_]);
                  _loc4_++;
               }
               _loc6_++;
            }
         }
         if(hasEventListener(_SafeCls_91._SafeStr_1990))
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this._SafeStr_1124.push(param1[_loc4_]);
               dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_1990,param1[_loc4_]));
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this._SafeStr_1124.push(param1[_loc4_]);
               _loc4_++;
            }
         }
      }
      
      public function removeParticle(param1:_SafeCls_29) : Boolean
      {
         var particle:_SafeCls_29 = param1;
         var index:int = int(this._SafeStr_1124.indexOf(particle));
         if(index != -1)
         {
            if(this._updating)
            {
               addEventListener(_SafeCls_88._SafeStr_994,function(param1:_SafeCls_88):void
               {
                  removeEventListener(_SafeCls_88._SafeStr_994,arguments.callee);
                  removeParticle(particle);
               });
            }
            else
            {
               this._SafeStr_1124.splice(index,1);
               dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_2418,particle));
            }
            return true;
         }
         return false;
      }
      
      public function removeParticles(param1:Vector.<_SafeCls_29>) : void
      {
         var i:int = 0;
         var len:int = 0;
         var index:int = 0;
         var particles:Vector.<_SafeCls_29> = param1;
         if(this._updating)
         {
            addEventListener(_SafeCls_88._SafeStr_994,function(param1:_SafeCls_88):void
            {
               removeEventListener(_SafeCls_88._SafeStr_994,arguments.callee);
               removeParticles(particles);
            });
         }
         else
         {
            i = 0;
            len = int(particles.length);
            while(i < len)
            {
               index = int(this._SafeStr_1124.indexOf(particles[i]));
               if(index != -1)
               {
                  this._SafeStr_1124.splice(index,1);
                  dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_2418,particles[i]));
               }
               i++;
            }
         }
      }
      
      public function _SafeStr_699() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = int(this._SafeStr_1124.length);
         if(hasEventListener(_SafeCls_91._SafeStr_2060))
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_2060,this._SafeStr_1124[_loc2_]));
               this._SafeStr_311._SafeStr_1072(this._SafeStr_1124[_loc2_]);
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               this._SafeStr_311._SafeStr_1072(this._SafeStr_1124[_loc2_]);
               _loc2_++;
            }
         }
         this._SafeStr_1124.length = 0;
      }
      
      public function start() : void
      {
         if(this._SafeStr_648)
         {
            _SafeCls_133.instance.addEventListener(_SafeCls_90._SafeStr_436,this._SafeStr_1986,false,0,true);
         }
         this._started = true;
         this._running = true;
         var _loc1_:int = int(this._SafeStr_856.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _SafeCls_121(this._SafeStr_856[_loc2_]).initialize(this);
            _loc2_++;
         }
         _loc1_ = int(this._SafeStr_1795.startEmitter(this));
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            this._SafeStr_405();
            _loc2_++;
         }
      }
      
      private function _SafeStr_1986(param1:_SafeCls_90) : void
      {
         if(this._SafeStr_2016)
         {
            this.update(this._SafeStr_2016);
         }
         else
         {
            this.update(param1.time);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:* = 0;
         var _loc3_:_SafeCls_29 = null;
         var _loc5_:_SafeCls_117 = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!this._running)
         {
            return;
         }
         if(param1 > this._SafeStr_2161)
         {
            param1 = this._SafeStr_2161;
         }
         this._updating = true;
         var _loc4_:int = int(this._SafeStr_1795._SafeStr_551(this,param1));
         _loc2_ = 0;
         while(_loc2_ < _loc4_)
         {
            this._SafeStr_405();
            _loc2_++;
         }
         this._SafeStr_1081();
         _loc4_ = int(this._SafeStr_856.length);
         _loc2_ = 0;
         while(_loc2_ < _loc4_)
         {
            _SafeCls_121(this._SafeStr_856[_loc2_]).update(this,param1);
            _loc2_++;
         }
         if(this._SafeStr_1124.length > 0)
         {
            _loc4_ = int(this._actions.length);
            _loc6_ = int(this._SafeStr_1124.length);
            if(this._processLastFirst)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc4_)
               {
                  _loc5_ = this._actions[_loc7_];
                  _loc2_ = int(_loc6_ - 1);
                  while(_loc2_ >= 0)
                  {
                     _loc3_ = this._SafeStr_1124[_loc2_];
                     _loc5_.update(this,_loc3_,param1);
                     _loc2_--;
                  }
                  _loc7_++;
               }
            }
            else
            {
               _loc7_ = 0;
               while(_loc7_ < _loc4_)
               {
                  _loc5_ = this._actions[_loc7_];
                  _loc2_ = 0;
                  while(_loc2_ < _loc6_)
                  {
                     _loc3_ = this._SafeStr_1124[_loc2_];
                     _loc5_.update(this,_loc3_,param1);
                     _loc2_++;
                  }
                  _loc7_++;
               }
            }
            this._processLastFirst = !this._processLastFirst;
            if(hasEventListener(_SafeCls_91._SafeStr_2060))
            {
               _loc2_ = _loc6_;
               while(_loc2_--)
               {
                  _loc3_ = this._SafeStr_1124[_loc2_];
                  if(_loc3_._SafeStr_1747)
                  {
                     this._SafeStr_1124.splice(_loc2_,1);
                     dispatchEvent(new _SafeCls_91(_SafeCls_91._SafeStr_2060,_loc3_));
                     if(_loc3_._SafeStr_1747)
                     {
                        this._SafeStr_311._SafeStr_1072(_loc3_);
                     }
                  }
               }
            }
            else
            {
               _loc2_ = _loc6_;
               while(_loc2_--)
               {
                  _loc3_ = this._SafeStr_1124[_loc2_];
                  if(_loc3_._SafeStr_1747)
                  {
                     this._SafeStr_1124.splice(_loc2_,1);
                     this._SafeStr_311._SafeStr_1072(_loc3_);
                  }
               }
            }
         }
         else if(hasEventListener(_SafeCls_88._SafeStr_2071))
         {
            dispatchEvent(new _SafeCls_88(_SafeCls_88._SafeStr_2071));
         }
         this._updating = false;
         if(hasEventListener(_SafeCls_88._SafeStr_994))
         {
            dispatchEvent(new _SafeCls_88(_SafeCls_88._SafeStr_994));
         }
         if(this._SafeStr_2055)
         {
            this._SafeStr_2055 = false;
            if(hasEventListener(_SafeCls_88._SafeStr_1500))
            {
               dispatchEvent(new _SafeCls_88(_SafeCls_88._SafeStr_1500));
            }
         }
      }
      
      protected function _SafeStr_1081() : void
      {
      }
      
      public function _SafeStr_2009() : void
      {
         this._running = false;
      }
      
      public function _SafeStr_868() : void
      {
         this._running = true;
      }
      
      public function stop() : void
      {
         if(this._SafeStr_648)
         {
            _SafeCls_133.instance.removeEventListener(_SafeCls_90._SafeStr_436,this._SafeStr_1986);
         }
         this._started = false;
         this._running = false;
         this._SafeStr_699();
      }
      
      public function _SafeStr_549(param1:Number, param2:Number = 10) : void
      {
         var _loc3_:Number = this._SafeStr_2161;
         var _loc4_:Number = 1 / param2;
         this._SafeStr_2161 = _loc4_;
         while(param1 > 0)
         {
            param1 -= _loc4_;
            this.update(_loc4_);
         }
         this._SafeStr_2161 = _loc3_;
      }
      
      private function _SafeStr_2413(param1:_SafeCls_17, param2:_SafeCls_17) : Number
      {
         return param1._SafeStr_1667 - param2._SafeStr_1667;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-5H"
 * @identifier _SafeCls_17 = "_-Yo"
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_33 = "_-Y5"
 * @identifier _SafeCls_88 = "_-Ze"
 * @identifier _SafeCls_90 = "_-hU"
 * @identifier _SafeCls_91 = "_-V1"
 * @identifier _SafeCls_113 = "_-IC"
 * @identifier _SafeCls_117 = "_-3I"
 * @identifier _SafeCls_119 = "_-gN"
 * @identifier _SafeCls_121 = "_-OE"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_133 = "_-iq"
 * @identifier _SafePkg_13 = "_-DG"
 * @identifier _SafePkg_18 = "_-NC"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_89 = "_-jw"
 * @identifier _SafePkg_118 = "_-S1"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafePkg_122 = "_-Ft"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_311 = "_-Yk"
 * @identifier _SafeStr_366 = "_-25"
 * @identifier _SafeStr_390 = "_-Sl"
 * @identifier _SafeStr_391 = "_-ZX"
 * @identifier _SafeStr_405 = "_-56"
 * @identifier _SafeStr_436 = "_-BT"
 * @identifier _SafeStr_468 = "_-ec"
 * @identifier _SafeStr_484 = "_-6w"
 * @identifier _SafeStr_549 = "_-hD"
 * @identifier _SafeStr_551 = "_-bk"
 * @identifier _SafeStr_648 = "_-8X"
 * @identifier _SafeStr_653 = "_-ZB"
 * @identifier _SafeStr_684 = "_-MT"
 * @identifier _SafeStr_699 = "_-BP"
 * @identifier _SafeStr_786 = "_-NS"
 * @identifier _SafeStr_856 = "_-1d"
 * @identifier _SafeStr_868 = "_-gc"
 * @identifier _SafeStr_959 = "_-5l"
 * @identifier _SafeStr_994 = "_-IH"
 * @identifier _SafeStr_1072 = "_-LB"
 * @identifier _SafeStr_1081 = "_-1E"
 * @identifier _SafeStr_1124 = "_-e1"
 * @identifier _SafeStr_1198 = "_-LC"
 * @identifier _SafeStr_1319 = "_-1m"
 * @identifier _SafeStr_1427 = "_-X"
 * @identifier _SafeStr_1500 = "_-ij"
 * @identifier _SafeStr_1543 = "_-Hd"
 * @identifier _SafeStr_1574 = "_-8p"
 * @identifier _SafeStr_1575 = "_-eg"
 * @identifier _SafeStr_1586 = "_-jA"
 * @identifier _SafeStr_1590 = "_-Q1"
 * @identifier _SafeStr_1667 = "_-He"
 * @identifier _SafeStr_1687 = "_-WT"
 * @identifier _SafeStr_1731 = "_-iA"
 * @identifier _SafeStr_1744 = "_-ht"
 * @identifier _SafeStr_1747 = "_-No"
 * @identifier _SafeStr_1795 = "_-8j"
 * @identifier _SafeStr_1852 = "_-6T"
 * @identifier _SafeStr_1879 = "_-1R"
 * @identifier _SafeStr_1961 = "_-Ie"
 * @identifier _SafeStr_1986 = "_-1r"
 * @identifier _SafeStr_1990 = "_-H7"
 * @identifier _SafeStr_2009 = "_-ic"
 * @identifier _SafeStr_2013 = "_-N6"
 * @identifier _SafeStr_2016 = "_-90"
 * @identifier _SafeStr_2055 = "_-GT"
 * @identifier _SafeStr_2060 = "_-d4"
 * @identifier _SafeStr_2071 = "_-2s"
 * @identifier _SafeStr_2097 = "_-bb"
 * @identifier _SafeStr_2161 = "_-ET"
 * @identifier _SafeStr_2291 = "_-Sg"
 * @identifier _SafeStr_2413 = "_-Tr"
 * @identifier _SafeStr_2418 = "_-Vt"
 * @identifier _SafeStr_2530 = "_-ZY"
 * @identifier _SafeStr_2628 = "_-Az"
 */
