class mx.utils.Delegate extends Object
{
   var func;
   function Delegate(_loc3_)
   {
      super();
      this.func = _loc3_;
   }
   static function create(_loc5_, _loc3_)
   {
      var _loc2_ = function()
      {
         var _loc2_ = arguments.callee.target;
         var _loc3_ = arguments.callee.func;
         return _loc3_.apply(_loc2_,arguments);
      };
      _loc2_.target = _loc5_;
      _loc2_.func = _loc3_;
      return _loc2_;
   }
   function createDelegate(_loc2_)
   {
      return mx.utils.Delegate.create(_loc2_,this.func);
   }
}
