package _SafePkg_16
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_89._SafeCls_91;
   import _SafePkg_89._SafeCls_88;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class _SafeCls_191 extends Sprite implements _SafeCls_15
   {
      
      protected var _SafeStr_597:Vector.<_SafeCls_130>;
      
      protected var _SafeStr_1124:Array;
      
      public function _SafeCls_191()
      {
         super();
         this._SafeStr_597 = new Vector.<_SafeCls_130>();
         this._SafeStr_1124 = [];
         mouseEnabled = false;
         mouseChildren = false;
         addEventListener(Event.ADDED_TO_STAGE,this._SafeStr_1069,false,0,true);
      }
      
      public function addEmitter(param1:_SafeCls_130) : void
      {
         var _loc2_:_SafeCls_29 = null;
         this._SafeStr_597.push(param1);
         if(stage)
         {
            stage.invalidate();
         }
         param1.addEventListener(_SafeCls_88._SafeStr_994,this.emitterUpdated,false,0,true);
         param1.addEventListener(_SafeCls_91._SafeStr_2013,this.particleAdded,false,0,true);
         param1.addEventListener(_SafeCls_91._SafeStr_1990,this.particleAdded,false,0,true);
         param1.addEventListener(_SafeCls_91._SafeStr_2060,this.particleRemoved,false,0,true);
         param1.addEventListener(_SafeCls_91._SafeStr_2418,this.particleRemoved,false,0,true);
         for each(_loc2_ in param1._SafeStr_468)
         {
            this._SafeStr_366(_loc2_);
         }
         if(this._SafeStr_597.length == 1)
         {
            addEventListener(Event.RENDER,this._SafeStr_2557,false,0,true);
         }
      }
      
      public function removeEmitter(param1:_SafeCls_130) : void
      {
         var _loc3_:_SafeCls_29 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._SafeStr_597.length)
         {
            if(this._SafeStr_597[_loc2_] == param1)
            {
               this._SafeStr_597.splice(_loc2_,1);
               param1.removeEventListener(_SafeCls_88._SafeStr_994,this.emitterUpdated);
               param1.removeEventListener(_SafeCls_91._SafeStr_2013,this.particleAdded);
               param1.removeEventListener(_SafeCls_91._SafeStr_1990,this.particleAdded);
               param1.removeEventListener(_SafeCls_91._SafeStr_2060,this.particleRemoved);
               param1.removeEventListener(_SafeCls_91._SafeStr_2418,this.particleRemoved);
               for each(_loc3_ in param1._SafeStr_468)
               {
                  this.removeParticle(_loc3_);
               }
               if(this._SafeStr_597.length == 0)
               {
                  removeEventListener(Event.RENDER,this._SafeStr_2557);
                  this._SafeStr_403([]);
               }
               else if(stage)
               {
                  stage.invalidate();
               }
               return;
            }
            _loc2_++;
         }
      }
      
      private function _SafeStr_1069(param1:Event) : void
      {
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      private function particleAdded(param1:_SafeCls_91) : void
      {
         this._SafeStr_366(param1.particle);
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      private function particleRemoved(param1:_SafeCls_91) : void
      {
         this.removeParticle(param1.particle);
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      protected function emitterUpdated(param1:_SafeCls_88) : void
      {
         if(stage)
         {
            stage.invalidate();
         }
      }
      
      protected function _SafeStr_2557(param1:Event) : void
      {
         this._SafeStr_403(this._SafeStr_1124);
      }
      
      protected function _SafeStr_366(param1:_SafeCls_29) : void
      {
         this._SafeStr_1124.push(param1);
      }
      
      protected function removeParticle(param1:_SafeCls_29) : void
      {
         var _loc2_:int = int(this._SafeStr_1124.indexOf(param1));
         if(_loc2_ != -1)
         {
            this._SafeStr_1124.splice(_loc2_,1);
         }
      }
      
      protected function _SafeStr_403(param1:Array) : void
      {
      }
      
      public function get _SafeStr_861() : Vector.<_SafeCls_130>
      {
         return this._SafeStr_597;
      }
      
      public function set _SafeStr_861(param1:Vector.<_SafeCls_130>) : void
      {
         var _loc2_:_SafeCls_130 = null;
         for each(_loc2_ in this._SafeStr_597)
         {
            this.removeEmitter(_loc2_);
         }
         for each(_loc2_ in param1)
         {
            this.addEmitter(_loc2_);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_15 = "_-kC"
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_88 = "_-Ze"
 * @identifier _SafeCls_91 = "_-V1"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_191 = "_-2c"
 * @identifier _SafePkg_16 = "_-Am"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_89 = "_-jw"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_366 = "_-25"
 * @identifier _SafeStr_403 = "_-Uf"
 * @identifier _SafeStr_468 = "_-ec"
 * @identifier _SafeStr_597 = "_-Aq"
 * @identifier _SafeStr_861 = "_-M3"
 * @identifier _SafeStr_994 = "_-IH"
 * @identifier _SafeStr_1069 = "_-7z"
 * @identifier _SafeStr_1124 = "_-e1"
 * @identifier _SafeStr_1990 = "_-H7"
 * @identifier _SafeStr_2013 = "_-N6"
 * @identifier _SafeStr_2060 = "_-d4"
 * @identifier _SafeStr_2418 = "_-Vt"
 * @identifier _SafeStr_2557 = "_-G7"
 */
