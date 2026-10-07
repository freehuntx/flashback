package Box2D.Common.Math
{
   public class b2Sweep
   {
      
      public var _SafeStr_1721:b2Vec2 = new b2Vec2();
      
      public var c0:b2Vec2 = new b2Vec2();
      
      public var c:b2Vec2 = new b2Vec2();
      
      public var a0:Number;
      
      public var a:Number;
      
      public var t0:Number;
      
      public function b2Sweep()
      {
         super();
      }
      
      public function Set(param1:b2Sweep) : void
      {
         this._SafeStr_1721._SafeStr_1679(param1._SafeStr_1721);
         this.c0._SafeStr_1679(param1.c0);
         this.c._SafeStr_1679(param1.c);
         this.a0 = param1.a0;
         this.a = param1.a;
         this.t0 = param1.t0;
      }
      
      public function _SafeStr_2396() : b2Sweep
      {
         var _loc1_:b2Sweep = new b2Sweep();
         _loc1_._SafeStr_1721._SafeStr_1679(this._SafeStr_1721);
         _loc1_.c0._SafeStr_1679(this.c0);
         _loc1_.c._SafeStr_1679(this.c);
         _loc1_.a0 = this.a0;
         _loc1_.a = this.a;
         _loc1_.t0 = this.t0;
         return _loc1_;
      }
      
      public function GetTransform(param1:b2Transform, param2:Number) : void
      {
         param1.position.x = (1 - param2) * this.c0.x + param2 * this.c.x;
         param1.position.y = (1 - param2) * this.c0.y + param2 * this.c.y;
         var _loc3_:Number = (1 - param2) * this.a0 + param2 * this.a;
         param1._SafeStr_945.Set(_loc3_);
         var _loc4_:b2Mat22 = param1._SafeStr_945;
         param1.position.x -= _loc4_.col1.x * this._SafeStr_1721.x + _loc4_.col2.x * this._SafeStr_1721.y;
         param1.position.y -= _loc4_.col1.y * this._SafeStr_1721.x + _loc4_.col2.y * this._SafeStr_1721.y;
      }
      
      public function _SafeStr_1022(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this.t0 < param1 && 1 - this.t0 > Number.MIN_VALUE)
         {
            _loc2_ = (param1 - this.t0) / (1 - this.t0);
            this.c0.x = (1 - _loc2_) * this.c0.x + _loc2_ * this.c.x;
            this.c0.y = (1 - _loc2_) * this.c0.y + _loc2_ * this.c.y;
            this.a0 = (1 - _loc2_) * this.a0 + _loc2_ * this.a;
            this.t0 = param1;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1022 = "_-V6"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1721 = "_-2Q"
 * @identifier _SafeStr_2396 = "_-2N"
 */
