package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_8.*;
   
   use namespace b2internal;
   
   public class b2DistanceProxy
   {
      
      public var _SafeStr_447:Vector.<b2Vec2>;
      
      public var _SafeStr_2284:int;
      
      public var _SafeStr_874:Number;
      
      public function b2DistanceProxy()
      {
         super();
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1._SafeStr_978())
         {
            case b2Shape._SafeStr_695:
               _loc2_ = param1 as b2CircleShape;
               this._SafeStr_447 = new Vector.<b2Vec2>(1,true);
               this._SafeStr_447[0] = _loc2_._SafeStr_2560;
               this._SafeStr_2284 = 1;
               this._SafeStr_874 = _loc2_._SafeStr_874;
               break;
            case b2Shape._SafeStr_1854:
               _loc3_ = param1 as b2PolygonShape;
               this._SafeStr_447 = _loc3_._SafeStr_447;
               this._SafeStr_2284 = _loc3_._SafeStr_1784;
               this._SafeStr_874 = _loc3_._SafeStr_874;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function _SafeStr_1486(param1:b2Vec2) : Number
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this._SafeStr_447[0].x * param1.x + this._SafeStr_447[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this._SafeStr_2284)
         {
            _loc5_ = this._SafeStr_447[_loc4_].x * param1.x + this._SafeStr_447[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function _SafeStr_1113(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this._SafeStr_447[0].x * param1.x + this._SafeStr_447[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this._SafeStr_2284)
         {
            _loc5_ = this._SafeStr_447[_loc4_].x * param1.x + this._SafeStr_447[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this._SafeStr_447[_loc2_];
      }
      
      public function _SafeStr_1485() : int
      {
         return this._SafeStr_2284;
      }
      
      public function _SafeStr_1254(param1:int) : b2Vec2
      {
         b2Settings.b2Assert(0 <= param1 && param1 < this._SafeStr_2284);
         return this._SafeStr_447[param1];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_447 = "_-5b"
 * @identifier _SafeStr_695 = "_-Dy"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1113 = "_-g9"
 * @identifier _SafeStr_1254 = "_-Cr"
 * @identifier _SafeStr_1485 = "_-S9"
 * @identifier _SafeStr_1486 = "_-g4"
 * @identifier _SafeStr_1784 = "_-MB"
 * @identifier _SafeStr_1854 = "_-4p"
 * @identifier _SafeStr_2284 = "_-VU"
 * @identifier _SafeStr_2560 = "_-7x"
 */
