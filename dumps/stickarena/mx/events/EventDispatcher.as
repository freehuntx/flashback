class mx.events.EventDispatcher
{
   static var _fEventDispatcher = undefined;
   static var exceptions = {move:1,draw:1,load:1};
   function EventDispatcher()
   {
   }
   static function _removeEventListener(_loc3_, event, _loc5_)
   {
      var _loc4_;
      var _loc1_;
      var _loc2_;
      if(_loc3_ != undefined)
      {
         _loc4_ = _loc3_.length;
         _loc1_ = 0;
         while(_loc1_ < _loc4_)
         {
            _loc2_ = _loc3_[_loc1_];
            if(_loc2_ == _loc5_)
            {
               _loc3_.splice(_loc1_,1);
               return undefined;
            }
            _loc1_ = _loc1_ + 1;
         }
      }
   }
   static function initialize(_loc1_)
   {
      if(mx.events.EventDispatcher._fEventDispatcher == undefined)
      {
         mx.events.EventDispatcher._fEventDispatcher = new mx.events.EventDispatcher();
      }
      _loc1_.addEventListener = mx.events.EventDispatcher._fEventDispatcher.addEventListener;
      _loc1_.removeEventListener = mx.events.EventDispatcher._fEventDispatcher.removeEventListener;
      _loc1_.dispatchEvent = mx.events.EventDispatcher._fEventDispatcher.dispatchEvent;
      _loc1_.dispatchQueue = mx.events.EventDispatcher._fEventDispatcher.dispatchQueue;
   }
   function dispatchQueue(_loc6_, _loc2_)
   {
      var _loc7_ = "__q_" + _loc2_.type;
      var _loc4_ = _loc6_[_loc7_];
      var _loc5_;
      var _loc1_;
      var _loc3_;
      if(_loc4_ != undefined)
      {
         for(_loc5_ in _loc4_)
         {
            _loc1_ = _loc4_[_loc5_];
            _loc3_ = typeof _loc1_;
            if(_loc3_ == "object" || _loc3_ == "movieclip")
            {
               if(_loc1_.handleEvent != undefined)
               {
                  _loc1_.handleEvent(_loc2_);
               }
               if(_loc1_[_loc2_.type] != undefined)
               {
                  if(mx.events.EventDispatcher.exceptions[_loc2_.type] == undefined)
                  {
                     _loc1_[_loc2_.type](_loc2_);
                  }
               }
            }
            else
            {
               _loc1_.apply(_loc6_,[_loc2_]);
            }
         }
      }
   }
   function dispatchEvent(_loc2_)
   {
      if(_loc2_.target == undefined)
      {
         _loc2_.target = this;
      }
      this[_loc2_.type + "Handler"](_loc2_);
      this.dispatchQueue(this,_loc2_);
   }
   function addEventListener(_loc4_, _loc5_)
   {
      var _loc3_ = "__q_" + _loc4_;
      if(this[_loc3_] == undefined)
      {
         this[_loc3_] = new Array();
      }
      _global.ASSetPropFlags(this,_loc3_,1);
      mx.events.EventDispatcher._removeEventListener(this[_loc3_],_loc4_,_loc5_);
      this[_loc3_].push(_loc5_);
   }
   function removeEventListener(_loc3_, _loc4_)
   {
      var _loc2_ = "__q_" + _loc3_;
      mx.events.EventDispatcher._removeEventListener(this[_loc2_],_loc3_,_loc4_);
   }
}
