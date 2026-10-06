package murray
{
   public class _SafeCls_28
   {
      
      private const _SafeStr_881:int = 256;
      
      public var x:int;
      
      public var y:int;
      
      public var _SafeStr_417:int;
      
      public var _SafeStr_428:int;
      
      public var r:Number;
      
      public var _SafeStr_590:Number;
      
      public var _SafeStr_198:_SafeCls_17;
      
      public var _SafeStr_201:int;
      
      public var _SafeStr_709:int = 0;
      
      public var _SafeStr_210:int = 0;
      
      public var deploy_delay:int = 0;
      
      public var _SafeStr_788:int = 1;
      
      public var p:_SafeCls_32;
      
      public function _SafeCls_28()
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
      
      public function _SafeStr_888(param1:Array) : int
      {
         var _loc5_:_SafeCls_55 = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc2_:int = this.x / 100;
         var _loc3_:int = this.y / 100;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = (_loc5_.x - _loc2_) * (_loc5_.x - _loc2_) + (_loc5_.y - _loc3_) * (_loc5_.y - _loc3_);
            if(this._SafeStr_881 * this._SafeStr_881 > _loc6_)
            {
               _loc7_ = 0;
               while(_loc7_ < _loc5_._SafeStr_134.length)
               {
                  _loc8_ = _loc5_._SafeStr_134[_loc7_];
                  _loc6_ = _SafeCls_10._SafeStr_955(_loc2_,_loc3_,_loc8_[0],_loc8_[1],_loc8_[2],_loc8_[3]);
                  if(_loc6_ < this.p.radius * this.p.radius)
                  {
                     return _loc6_;
                  }
                  _loc7_++;
               }
            }
            _loc4_++;
         }
         return -1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_28 = "9%"
 * @identifier _SafeCls_32 = "6-"
 * @identifier _SafeCls_55 = "!B"
 * @identifier _SafeStr_111 = "=T"
 * @identifier _SafeStr_112 = "22"
 * @identifier _SafeStr_134 = "]&"
 * @identifier _SafeStr_198 = "<5"
 * @identifier _SafeStr_201 = "20"
 * @identifier _SafeStr_210 = "-5"
 * @identifier _SafeStr_417 = "^A"
 * @identifier _SafeStr_428 = "%F"
 * @identifier _SafeStr_590 = "6S"
 * @identifier _SafeStr_709 = "\">"
 * @identifier _SafeStr_788 = "^1"
 * @identifier _SafeStr_881 = "\""
 * @identifier _SafeStr_888 = ",@"
 * @identifier _SafeStr_955 = " for"
 */
