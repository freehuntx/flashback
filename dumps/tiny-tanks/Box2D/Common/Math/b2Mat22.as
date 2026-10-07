package Box2D.Common.Math
{
   public class b2Mat22
   {
      
      public var col1:b2Vec2 = new b2Vec2();
      
      public var col2:b2Vec2 = new b2Vec2();
      
      public function b2Mat22()
      {
         super();
         var _temp_1:* = this.col1;
         this.col2.y = 1;
         _temp_1.x = 1;
      }
      
      public static function FromAngle(param1:Number) : b2Mat22
      {
         var _loc2_:b2Mat22 = new b2Mat22();
         _loc2_.Set(param1);
         return _loc2_;
      }
      
      public static function _SafeStr_1307(param1:b2Vec2, param2:b2Vec2) : b2Mat22
      {
         var _loc3_:b2Mat22 = new b2Mat22();
         _loc3_._SafeStr_2520(param1,param2);
         return _loc3_;
      }
      
      public function Set(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         _loc2_ = Number(Math.cos(param1));
         var _loc3_:Number = Number(Math.sin(param1));
         this.col1.x = _loc2_;
         this.col2.x = -_loc3_;
         this.col1.y = _loc3_;
         this.col2.y = _loc2_;
      }
      
      public function _SafeStr_2520(param1:b2Vec2, param2:b2Vec2) : void
      {
         this.col1._SafeStr_1679(param1);
         this.col2._SafeStr_1679(param2);
      }
      
      public function _SafeStr_2396() : b2Mat22
      {
         var _loc1_:b2Mat22 = new b2Mat22();
         _loc1_._SafeStr_2130(this);
         return _loc1_;
      }
      
      public function _SafeStr_2130(param1:b2Mat22) : void
      {
         this.col1._SafeStr_1679(param1.col1);
         this.col2._SafeStr_1679(param1.col2);
      }
      
      public function _SafeStr_2378(param1:b2Mat22) : void
      {
         this.col1.x += param1.col1.x;
         this.col1.y += param1.col1.y;
         this.col2.x += param1.col2.x;
         this.col2.y += param1.col2.y;
      }
      
      public function _SafeStr_988() : void
      {
         this.col1.x = 1;
         this.col2.x = 0;
         this.col1.y = 0;
         this.col2.y = 1;
      }
      
      public function _SafeStr_1807() : void
      {
         this.col1.x = 0;
         this.col2.x = 0;
         this.col1.y = 0;
         this.col2.y = 0;
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function _SafeStr_2352(param1:b2Mat22) : b2Mat22
      {
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:Number = this.col1.x;
         _loc3_ = this.col2.x;
         var _loc4_:Number = this.col1.y;
         var _loc5_:Number = this.col2.y;
         _loc6_ = _loc2_ * _loc5_ - _loc3_ * _loc4_;
         if(_loc6_ != 0)
         {
            _loc6_ = 1 / _loc6_;
         }
         param1.col1.x = _loc6_ * _loc5_;
         param1.col2.x = -_loc6_ * _loc3_;
         param1.col1.y = -_loc6_ * _loc4_;
         param1.col2.y = _loc6_ * _loc2_;
         return param1;
      }
      
      public function _SafeStr_761(param1:b2Vec2, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:Number = this.col1.x;
         var _loc5_:Number = this.col2.x;
         var _loc6_:Number = this.col1.y;
         var _loc7_:Number = this.col2.y;
         var _loc8_:Number = _loc4_ * _loc7_ - _loc5_ * _loc6_;
         if(_loc8_ != 0)
         {
            _loc8_ = 1 / _loc8_;
         }
         param1.x = _loc8_ * (_loc7_ * param2 - _loc5_ * param3);
         param1.y = _loc8_ * (_loc4_ * param3 - _loc6_ * param2);
         return param1;
      }
      
      public function _SafeStr_283() : void
      {
         this.col1._SafeStr_283();
         this.col2._SafeStr_283();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_283 = "_-3P"
 * @identifier _SafeStr_761 = "_-EF"
 * @identifier _SafeStr_988 = "_-3l"
 * @identifier _SafeStr_1307 = "_-iy"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_2130 = "_-gz"
 * @identifier _SafeStr_2352 = "_-aC"
 * @identifier _SafeStr_2378 = "_-2y"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2520 = "_-bl"
 */
