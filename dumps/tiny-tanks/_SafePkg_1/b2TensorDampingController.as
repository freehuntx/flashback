package _SafePkg_1
{
   import Box2D.Common.Math.b2Mat22;
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Vec2;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2TimeStep;
   
   public class b2TensorDampingController extends b2Controller
   {
      
      public var _SafeStr_1398:b2Mat22 = new b2Mat22();
      
      public var _SafeStr_2302:Number = 0;
      
      public function b2TensorDampingController()
      {
         super();
      }
      
      public function _SafeStr_2660(param1:Number, param2:Number) : void
      {
         this._SafeStr_1398.col1.x = -param1;
         this._SafeStr_1398.col1.y = 0;
         this._SafeStr_1398.col2.x = 0;
         this._SafeStr_1398.col2.y = -param2;
         if(param1 > 0 || param2 > 0)
         {
            this._SafeStr_2302 = 1 / Math.max(param1,param2);
         }
         else
         {
            this._SafeStr_2302 = 0;
         }
      }
      
      override public function _SafeStr_276(param1:b2TimeStep) : void
      {
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         var _loc2_:Number = param1._SafeStr_1607;
         if(_loc2_ <= Number.MIN_VALUE)
         {
            return;
         }
         if(_loc2_ > this._SafeStr_2302 && this._SafeStr_2302 > 0)
         {
            _loc2_ = this._SafeStr_2302;
         }
         var _loc3_:b2ControllerEdge = m_bodyList;
         while(_loc3_)
         {
            _loc4_ = _loc3_.body;
            if(_loc4_._SafeStr_2035())
            {
               _loc5_ = _loc4_._SafeStr_1488(b2Math._SafeStr_734(this._SafeStr_1398,_loc4_._SafeStr_2287(_loc4_.GetLinearVelocity())));
               _loc4_.SetLinearVelocity(new b2Vec2(_loc4_.GetLinearVelocity().x + _loc5_.x * _loc2_,_loc4_.GetLinearVelocity().y + _loc5_.y * _loc2_));
            }
            _loc3_ = _loc3_.nextBody;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_1 = "_-8Z"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_276 = "_-Vq"
 * @identifier _SafeStr_734 = "_-Za"
 * @identifier _SafeStr_1398 = "_-35"
 * @identifier _SafeStr_1488 = "_-2j"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_2035 = "_-ZE"
 * @identifier _SafeStr_2287 = "_-65"
 * @identifier _SafeStr_2302 = "_-FU"
 * @identifier _SafeStr_2660 = "_-4q"
 */
