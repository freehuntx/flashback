package murray
{
   public class _SafeCls_47
   {
      
      public const _SafeStr_956:int = 300;
      
      public const _SafeStr_1054:Number = 0.78;
      
      public var x:int;
      
      public var y:int;
      
      public var _SafeStr_135:Number;
      
      public var _SafeStr_189:Array = new Array();
      
      public function _SafeCls_47()
      {
         super();
      }
      
      public function get _SafeStr_111() : int
      {
         return this.x / 100;
      }
      
      public function get _SafeStr_112() : int
      {
         return this.y / 100;
      }
      
      public function _SafeStr_357(param1:_SafeCls_17) : void
      {
         var _loc3_:_SafeCls_34 = null;
         this.x = param1.x;
         this.y = param1.y;
         this._SafeStr_135 = param1._SafeStr_135;
         var _loc2_:int = 0;
         while(_loc2_ < param1._SafeStr_189.length)
         {
            _loc3_ = new _SafeCls_34();
            _loc3_.graphic = param1._SafeStr_189[_loc2_].graphic;
            _loc3_.rad = param1._SafeStr_189[_loc2_].rad;
            this._SafeStr_189.push(_loc3_);
            _loc2_++;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_34 = "null "
 * @identifier _SafeCls_47 = "9N"
 * @identifier _SafeStr_111 = "=T"
 * @identifier _SafeStr_112 = "22"
 * @identifier _SafeStr_135 = "^%"
 * @identifier _SafeStr_189 = "#T"
 * @identifier _SafeStr_357 = "<#"
 * @identifier _SafeStr_956 = "4\'"
 * @identifier _SafeStr_1054 = "@A"
 */
