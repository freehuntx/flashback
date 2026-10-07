package Box2D.Common.Math
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2 = new b2Vec2(0,0);
      
      public static const b2Mat22_identity:b2Mat22 = b2Mat22._SafeStr_1307(new b2Vec2(1,0),new b2Vec2(0,1));
      
      public static const b2Transform_identity:b2Transform = new b2Transform(b2Vec2_zero,b2Mat22_identity);
      
      public function b2Math()
      {
         super();
      }
      
      public static function _SafeStr_1519(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function _SafeCls_184(param1:b2Vec2, param2:b2Vec2) : Number
      {
         return param1.x * param2.x + param1.y * param2.y;
      }
      
      public static function _SafeStr_1001(param1:b2Vec2, param2:b2Vec2) : Number
      {
         return param1.x * param2.y - param1.y * param2.x;
      }
      
      public static function _SafeStr_2600(param1:b2Vec2, param2:Number) : b2Vec2
      {
         return new b2Vec2(param2 * param1.y,-param2 * param1.x);
      }
      
      public static function _SafeStr_429(param1:Number, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(-param1 * param2.y,param1 * param2.x);
      }
      
      public static function _SafeStr_734(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.col1.x * param2.x + param1.col2.x * param2.y,param1.col1.y * param2.x + param1.col2.y * param2.y);
      }
      
      public static function _SafeStr_1496(param1:b2Mat22, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(_SafeCls_184(param2,param1.col1),_SafeCls_184(param2,param1.col2));
      }
      
      public static function _SafeStr_457(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         _loc3_ = _SafeStr_734(param1._SafeStr_945,param2);
         _loc3_.x += param1.position.x;
         _loc3_.y += param1.position.y;
         return _loc3_;
      }
      
      public static function _SafeStr_2122(param1:b2Transform, param2:b2Vec2) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         var _loc4_:Number = NaN;
         _loc3_ = _SafeStr_2442(param2,param1.position);
         _loc4_ = _loc3_.x * param1._SafeStr_945.col1.x + _loc3_.y * param1._SafeStr_945.col1.y;
         _loc3_.y = _loc3_.x * param1._SafeStr_945.col2.x + _loc3_.y * param1._SafeStr_945.col2.y;
         _loc3_.x = _loc4_;
         return _loc3_;
      }
      
      public static function _SafeStr_1063(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.x + param2.x,param1.y + param2.y);
      }
      
      public static function _SafeStr_2442(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1.x - param2.x,param1.y - param2.y);
      }
      
      public static function Distance(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function _SafeStr_630(param1:b2Vec2, param2:b2Vec2) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return _loc3_ * _loc3_ + _loc4_ * _loc4_;
      }
      
      public static function _SafeStr_357(param1:Number, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(param1 * param2.x,param1 * param2.y);
      }
      
      public static function _SafeStr_693(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22._SafeStr_1307(_SafeStr_1063(param1.col1,param2.col1),_SafeStr_1063(param1.col2,param2.col2));
      }
      
      public static function _SafeStr_2602(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         return b2Mat22._SafeStr_1307(_SafeStr_734(param1,param2.col1),_SafeStr_734(param1,param2.col2));
      }
      
      public static function _SafeStr_1899(param1:b2Mat22, param2:b2Mat22) : b2Mat22
      {
         var _loc3_:b2Vec2 = new b2Vec2(_SafeCls_184(param1.col1,param2.col1),_SafeCls_184(param1.col2,param2.col1));
         var _loc4_:b2Vec2 = new b2Vec2(_SafeCls_184(param1.col1,param2.col2),_SafeCls_184(param1.col2,param2.col2));
         return b2Mat22._SafeStr_1307(_loc3_,_loc4_);
      }
      
      public static function _SafeStr_283(param1:Number) : Number
      {
         return param1 > 0 ? param1 : -param1;
      }
      
      public static function _SafeStr_326(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(_SafeStr_283(param1.x),_SafeStr_283(param1.y));
      }
      
      public static function _SafeStr_1973(param1:b2Mat22) : b2Mat22
      {
         return b2Mat22._SafeStr_1307(_SafeStr_326(param1.col1),_SafeStr_326(param1.col2));
      }
      
      public static function _SafeStr_1704(param1:Number, param2:Number) : Number
      {
         return param1 < param2 ? param1 : param2;
      }
      
      public static function _SafeStr_1278(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(_SafeStr_1704(param1.x,param2.x),_SafeStr_1704(param1.y,param2.y));
      }
      
      public static function _SafeStr_2143(param1:Number, param2:Number) : Number
      {
         return param1 > param2 ? param1 : param2;
      }
      
      public static function _SafeStr_588(param1:b2Vec2, param2:b2Vec2) : b2Vec2
      {
         return new b2Vec2(_SafeStr_2143(param1.x,param2.x),_SafeStr_2143(param1.y,param2.y));
      }
      
      public static function _SafeStr_392(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 < param2 ? param2 : (param1 > param3 ? param3 : param1);
      }
      
      public static function _SafeStr_2593(param1:b2Vec2, param2:b2Vec2, param3:b2Vec2) : b2Vec2
      {
         return _SafeStr_588(param2,_SafeStr_1278(param1,param3));
      }
      
      public static function _SafeStr_1513(param1:Array, param2:Array) : void
      {
         var _loc3_:* = param1[0];
         param1[0] = param2[0];
         param2[0] = _loc3_;
      }
      
      public static function _SafeStr_1379() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      public static function _SafeStr_2211(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = Number(Math.random());
         return (param2 - param1) * _loc3_ + param1;
      }
      
      public static function _SafeStr_1258(param1:uint) : uint
      {
         param1 |= param1 >> 1 & 0x7FFFFFFF;
         param1 |= param1 >> 2 & 0x3FFFFFFF;
         param1 |= param1 >> 4 & 0x0FFFFFFF;
         param1 |= param1 >> 8 & 0xFFFFFF;
         param1 |= param1 >> 16 & 0xFFFF;
         return param1 + 1;
      }
      
      public static function _SafeStr_2303(param1:uint) : Boolean
      {
         return param1 > 0 && (param1 & param1 - 1) == 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_326 = "_-Lg"
 * @identifier _SafeStr_357 = "_-WV"
 * @identifier _SafeStr_392 = "_-Zl"
 * @identifier _SafeStr_429 = "_-X4"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_588 = "_-Wb"
 * @identifier _SafeStr_630 = "_-Mg"
 * @identifier _SafeStr_693 = "_-Rq"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_1001 = "_-HQ"
 * @identifier _SafeStr_1063 = "_-EI"
 * @identifier _SafeStr_1258 = "_-Di"
 * @identifier _SafeStr_1278 = "_-hN"
 * @identifier _SafeStr_1307 = "_-iy"
 * @identifier _SafeStr_1379 = "_-gb"
 * @identifier _SafeStr_1496 = "_-1o"
 * @identifier _SafeStr_1513 = "_-8B"
 * @identifier _SafeStr_1519 = "_-Sk"
 * @identifier _SafeStr_1704 = "_-RD"
 * @identifier _SafeStr_1899 = "_-6N"
 * @identifier _SafeStr_1973 = "_-D2"
 * @identifier _SafeStr_2122 = "_-6E"
 * @identifier _SafeStr_2143 = "_-bx"
 * @identifier _SafeStr_2211 = "_-6H"
 * @identifier _SafeStr_2303 = "_-8d"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2593 = "_-Xt"
 * @identifier _SafeStr_2600 = "_-XM"
 * @identifier _SafeStr_2602 = "_-Ks"
 */
