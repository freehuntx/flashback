package _SafePkg_120
{
   import _SafePkg_131._SafeCls_130;
   import _SafePkg_30._SafeCls_29;
   import _SafePkg_89._SafeCls_91;
   
   public class _SafeCls_181 extends _SafeCls_142
   {
      
      protected var _SafeStr_1262:Boolean;
      
      protected var _SafeStr_1958:Array;
      
      protected var _SafeStr_597:Array;
      
      public function _SafeCls_181(param1:Boolean = false, param2:uint = 0)
      {
         super();
         this._SafeStr_1262 = param1;
         this._SafeStr_597 = new Array();
         if(this._SafeStr_1262)
         {
            this._SafeStr_1095();
            if(param2)
            {
               this._SafeStr_1773(param2);
            }
         }
      }
      
      public function _SafeStr_1095() : void
      {
         this._SafeStr_1958 = new Array();
      }
      
      override public function _SafeStr_684(param1:_SafeCls_130) : void
      {
         this._SafeStr_597.push(param1);
         if(this._SafeStr_1262)
         {
            param1.addEventListener(_SafeCls_91._SafeStr_2060,this.particleDying,false,-1000,true);
         }
      }
      
      private function particleDying(param1:_SafeCls_91) : void
      {
         if(param1.particle._SafeStr_1747 && Boolean(param1.particle._SafeStr_751[this]))
         {
            this._SafeStr_1958.push(param1.particle._SafeStr_2185);
            delete param1.particle._SafeStr_751[this];
         }
      }
      
      override public function _SafeStr_1687(param1:_SafeCls_130) : void
      {
         param1.removeEventListener(_SafeCls_91._SafeStr_2060,this.particleDying);
         var _loc2_:int = int(this._SafeStr_597.indexOf(param1));
         if(_loc2_ != -1)
         {
            this._SafeStr_597.splice(_loc2_,1);
         }
      }
      
      public function _SafeStr_1773(param1:uint) : void
      {
         if(!this._SafeStr_1262)
         {
            return;
         }
         if(this._SafeStr_1958.length > 0)
         {
            this._SafeStr_1958 = new Array(param1);
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            this._SafeStr_1958[_loc2_] = this.createImage();
            _loc2_++;
         }
      }
      
      public function get _SafeStr_2601() : Boolean
      {
         return this._SafeStr_1262;
      }
      
      public function set _SafeStr_2601(param1:Boolean) : void
      {
         var _loc2_:_SafeCls_130 = null;
         if(this._SafeStr_1262 != param1)
         {
            this._SafeStr_1262 = param1;
            if(this._SafeStr_1262)
            {
               for each(_loc2_ in this._SafeStr_597)
               {
                  _loc2_.addEventListener(_SafeCls_91._SafeStr_2060,this.particleDying,false,-1000,true);
               }
            }
            else
            {
               for each(_loc2_ in this._SafeStr_597)
               {
                  _loc2_.removeEventListener(_SafeCls_91._SafeStr_2060,this.particleDying);
               }
            }
         }
      }
      
      public function createImage() : Object
      {
         throw new Error("Image initializer must override the createImage method.");
      }
      
      override public function initialize(param1:_SafeCls_130, param2:_SafeCls_29) : void
      {
         if(this._SafeStr_1262)
         {
            if(this._SafeStr_1958.length > 0)
            {
               param2._SafeStr_2185 = this._SafeStr_1958.shift();
            }
            else
            {
               param2._SafeStr_2185 = this.createImage();
            }
            param2._SafeStr_751[this] = true;
         }
         else
         {
            param2._SafeStr_2185 = this.createImage();
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_91 = "_-V1"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafeCls_142 = "_-L4"
 * @identifier _SafeCls_181 = "_-AS"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_89 = "_-jw"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_597 = "_-Aq"
 * @identifier _SafeStr_684 = "_-MT"
 * @identifier _SafeStr_751 = "_-MF"
 * @identifier _SafeStr_1095 = "_-M2"
 * @identifier _SafeStr_1262 = "_-iX"
 * @identifier _SafeStr_1687 = "_-WT"
 * @identifier _SafeStr_1747 = "_-No"
 * @identifier _SafeStr_1773 = "_-ZV"
 * @identifier _SafeStr_1958 = "_-5f"
 * @identifier _SafeStr_2060 = "_-d4"
 * @identifier _SafeStr_2185 = "_-eb"
 * @identifier _SafeStr_2601 = "_-Bh"
 */
