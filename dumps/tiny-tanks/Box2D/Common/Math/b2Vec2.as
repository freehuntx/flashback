package Box2D.Common.Math
{
   public class b2Vec2
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public function b2Vec2(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public static function _SafeStr_1859(param1:Number, param2:Number) : b2Vec2
      {
         return new b2Vec2(param1,param2);
      }
      
      public function _SafeStr_1807() : void
      {
         this.x = 0;
         this.y = 0;
      }
      
      public function Set(param1:Number = 0, param2:Number = 0) : void
      {
         this.x = param1;
         this.y = param2;
      }
      
      public function _SafeStr_1679(param1:b2Vec2) : void
      {
         this.x = param1.x;
         this.y = param1.y;
      }
      
      public function _SafeStr_714() : b2Vec2
      {
         return new b2Vec2(-this.x,-this.y);
      }
      
      public function _SafeStr_762() : void
      {
         this.x = -this.x;
         this.y = -this.y;
      }
      
      public function _SafeStr_2396() : b2Vec2
      {
         return new b2Vec2(this.x,this.y);
      }
      
      public function Add(param1:b2Vec2) : void
      {
         this.x += param1.x;
         this.y += param1.y;
      }
      
      public function _SafeStr_2354(param1:b2Vec2) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
      }
      
      public function Multiply(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
      }
      
      public function _SafeStr_1942(param1:b2Mat22) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1.col1.x * _loc2_ + param1.col2.x * this.y;
         this.y = param1.col1.y * _loc2_ + param1.col2.y * this.y;
      }
      
      public function _SafeStr_2389(param1:b2Mat22) : void
      {
         var _loc2_:Number = b2Math._SafeCls_184(this,param1.col1);
         this.y = b2Math._SafeCls_184(this,param1.col2);
         this.x = _loc2_;
      }
      
      public function _SafeStr_2600(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = param1 * this.y;
         this.y = -param1 * _loc2_;
      }
      
      public function _SafeStr_429(param1:Number) : void
      {
         var _loc2_:Number = this.x;
         this.x = -param1 * this.y;
         this.y = param1 * _loc2_;
      }
      
      public function _SafeStr_1278(param1:b2Vec2) : void
      {
         this.x = this.x < param1.x ? this.x : param1.x;
         this.y = this.y < param1.y ? this.y : param1.y;
      }
      
      public function _SafeStr_588(param1:b2Vec2) : void
      {
         this.x = this.x > param1.x ? this.x : param1.x;
         this.y = this.y > param1.y ? this.y : param1.y;
      }
      
      public function _SafeStr_283() : void
      {
         if(this.x < 0)
         {
            this.x = -this.x;
         }
         if(this.y < 0)
         {
            this.y = -this.y;
         }
      }
      
      public function Length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function _SafeStr_731() : Number
      {
         return this.x * this.x + this.y * this.y;
      }
      
      public function Normalize() : Number
      {
         var _loc1_:Number = Number(Math.sqrt(this.x * this.x + this.y * this.y));
         if(_loc1_ < Number.MIN_VALUE)
         {
            return 0;
         }
         var _loc2_:Number = 1 / _loc1_;
         this.x *= _loc2_;
         this.y *= _loc2_;
         return _loc1_;
      }
      
      public function _SafeStr_1519() : Boolean
      {
         return b2Math._SafeStr_1519(this.x) && b2Math._SafeStr_1519(this.y);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_429 = "_-X4"
 * @identifier _SafeStr_588 = "_-Wb"
 * @identifier _SafeStr_714 = "_-dS"
 * @identifier _SafeStr_731 = "_-Fl"
 * @identifier _SafeStr_762 = "_-br"
 * @identifier _SafeStr_1278 = "_-hN"
 * @identifier _SafeStr_1519 = "_-Sk"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1859 = "_-7g"
 * @identifier _SafeStr_1942 = "_-Iw"
 * @identifier _SafeStr_2354 = "_-i6"
 * @identifier _SafeStr_2389 = "_-6t"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2600 = "_-XM"
 */
