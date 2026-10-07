package _SafePkg_13
{
   import _SafePkg_131._SafeCls_130;
   
   public class _SafeCls_112 implements _SafeCls_12
   {
      
      private var _SafeStr_986:Number;
      
      private var _SafeStr_1964:Number;
      
      private var _SafeStr_1196:Number;
      
      private var _running:Boolean;
      
      public function _SafeCls_112(param1:Number = 0)
      {
         super();
         this._running = false;
         this._SafeStr_297 = param1;
      }
      
      public function stop() : void
      {
         this._running = false;
      }
      
      public function _SafeStr_868() : void
      {
         this._running = true;
      }
      
      public function get _SafeStr_297() : Number
      {
         return this._SafeStr_1964;
      }
      
      public function set _SafeStr_297(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(!param1 || param1 < 0)
         {
            param1 = 0;
         }
         if(this._SafeStr_1964 != param1)
         {
            if(Boolean(this._SafeStr_1964) && Boolean(param1))
            {
               _loc2_ = this._SafeStr_1196 - this._SafeStr_986;
               this._SafeStr_1964 = param1;
               this._SafeStr_1196 = param1 ? 1 / param1 : Number(Number.MAX_VALUE);
               this._SafeStr_986 = Math.max(this._SafeStr_1196 - _loc2_,0);
            }
            else
            {
               this._SafeStr_1964 = param1;
               this._SafeStr_1196 = param1 ? 1 / param1 : Number(Number.MAX_VALUE);
               this._SafeStr_986 = this._SafeStr_1196;
            }
         }
      }
      
      public function startEmitter(param1:_SafeCls_130) : uint
      {
         this._running = true;
         this._SafeStr_986 = this._SafeStr_1196;
         return 0;
      }
      
      public function _SafeStr_551(param1:_SafeCls_130, param2:Number) : uint
      {
         if(!this._running)
         {
            return 0;
         }
         var _loc3_:uint = 0;
         this._SafeStr_986 -= param2;
         while(this._SafeStr_986 <= 0)
         {
            _loc3_++;
            this._SafeStr_986 += this._SafeStr_1196;
         }
         return _loc3_;
      }
      
      public function get complete() : Boolean
      {
         return false;
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_12 = "_-5H"
 * @identifier _SafeCls_112 = "_-8R"
 * @identifier _SafeCls_130 = "_-d1"
 * @identifier _SafePkg_13 = "_-DG"
 * @identifier _SafePkg_131 = "_-7W"
 * @identifier _SafeStr_297 = "_-PN"
 * @identifier _SafeStr_551 = "_-bk"
 * @identifier _SafeStr_868 = "_-gc"
 * @identifier _SafeStr_986 = "_-Ch"
 * @identifier _SafeStr_1196 = "_-TI"
 * @identifier _SafeStr_1964 = "_-Nl"
 */
