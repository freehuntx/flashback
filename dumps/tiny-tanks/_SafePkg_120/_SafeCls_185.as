package _SafePkg_120
{
   import org.flintparticles.common.utils.construct;
   
   public class _SafeCls_185 extends _SafeCls_181
   {
      
      private var _SafeStr_1837:Class;
      
      private var _SafeStr_2443:Array;
      
      public function _SafeCls_185(param1:Class = null, param2:Array = null, param3:Boolean = false, param4:uint = 0)
      {
         super(param3);
         this._SafeStr_1837 = param1;
         this._SafeStr_2443 = param2 ? param2 : [];
         if(param4 > 0)
         {
            this._SafeStr_1773(param4);
         }
      }
      
      public function get _SafeStr_305() : Class
      {
         return this._SafeStr_1837;
      }
      
      public function set _SafeStr_305(param1:Class) : void
      {
         this._SafeStr_1837 = param1;
         if(_SafeStr_1262)
         {
            _SafeStr_1095();
         }
      }
      
      public function get parameters() : Array
      {
         return this._SafeStr_2443;
      }
      
      public function set parameters(param1:Array) : void
      {
         this._SafeStr_2443 = param1;
         if(_SafeStr_1262)
         {
            _SafeStr_1095();
         }
      }
      
      override public function createImage() : Object
      {
         return construct(this._SafeStr_1837,this._SafeStr_2443);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_181 = "_-AS"
 * @identifier _SafeCls_185 = "_-Pp"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafeStr_305 = "_-WZ"
 * @identifier _SafeStr_1095 = "_-M2"
 * @identifier _SafeStr_1262 = "_-iX"
 * @identifier _SafeStr_1773 = "_-ZV"
 * @identifier _SafeStr_1837 = "_-Xb"
 * @identifier _SafeStr_2443 = "_-cQ"
 */
