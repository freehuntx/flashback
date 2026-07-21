class mx.effects.Tween extends Object
{
   var ID;
   var arrayMode;
   var endFunc;
   var endVal;
   var initVal;
   var listener;
   var startTime;
   var updateFunc;
   static var IntervalToken;
   static var ActiveTweens = new Array();
   static var Interval = 10;
   static var Dispatcher = new Object();
   var duration = 3000;
   function Tween(_loc3_, _loc5_, _loc6_, _loc4_)
   {
      super();
      if(_loc3_ == undefined)
      {
         return;
      }
      if(typeof _loc5_ != "number")
      {
         this.arrayMode = true;
      }
      this.listener = _loc3_;
      this.initVal = _loc5_;
      this.endVal = _loc6_;
      if(_loc4_ != undefined)
      {
         this.duration = _loc4_;
      }
      this.startTime = getTimer();
      if(this.duration == 0)
      {
         this.endTween();
      }
      else
      {
         mx.effects.Tween.AddTween(this);
      }
   }
   static function AddTween(_loc1_)
   {
      _loc1_.ID = mx.effects.Tween.ActiveTweens.length;
      mx.effects.Tween.ActiveTweens.push(_loc1_);
      if(mx.effects.Tween.IntervalToken == undefined)
      {
         mx.effects.Tween.Dispatcher.DispatchTweens = mx.effects.Tween.DispatchTweens;
         mx.effects.Tween.IntervalToken = setInterval(mx.effects.Tween.Dispatcher,"DispatchTweens",mx.effects.Tween.Interval);
      }
   }
   static function RemoveTweenAt(_loc3_)
   {
      var _loc2_ = mx.effects.Tween.ActiveTweens;
      if(_loc3_ >= _loc2_.length || _loc3_ < 0 || _loc3_ == undefined)
      {
         return undefined;
      }
      _loc2_.splice(_loc3_,1);
      var _loc4_ = _loc2_.length;
      var _loc1_ = _loc3_;
      while(_loc1_ < _loc4_)
      {
         _loc2_[_loc1_].ID--;
         _loc1_ = _loc1_ + 1;
      }
      if(_loc4_ == 0)
      {
         clearInterval(mx.effects.Tween.IntervalToken);
         delete mx.effects.Tween.IntervalToken;
      }
   }
   static function DispatchTweens(Void)
   {
      var _loc2_ = mx.effects.Tween.ActiveTweens;
      var _loc3_ = _loc2_.length;
      var _loc1_ = 0;
      while(_loc1_ < _loc3_)
      {
         _loc2_[_loc1_].doInterval();
         _loc1_ = _loc1_ + 1;
      }
      updateAfterEvent();
   }
   function doInterval()
   {
      var _loc2_ = getTimer() - this.startTime;
      var _loc3_ = this.getCurVal(_loc2_);
      if(_loc2_ >= this.duration)
      {
         this.endTween();
      }
      else if(this.updateFunc != undefined)
      {
         this.listener[this.updateFunc](_loc3_);
      }
      else
      {
         this.listener.onTweenUpdate(_loc3_);
      }
   }
   function getCurVal(_loc4_)
   {
      var _loc3_;
      var _loc2_;
      if(this.arrayMode)
      {
         _loc3_ = new Array();
         _loc2_ = 0;
         while(_loc2_ < this.initVal.length)
         {
            _loc3_[_loc2_] = this.easingEquation(_loc4_,this.initVal[_loc2_],this.endVal[_loc2_] - this.initVal[_loc2_],this.duration);
            _loc2_ = _loc2_ + 1;
         }
         return _loc3_;
      }
      return this.easingEquation(_loc4_,this.initVal,this.endVal - this.initVal,this.duration);
   }
   function endTween()
   {
      if(this.endFunc != undefined)
      {
         this.listener[this.endFunc](this.endVal);
      }
      else
      {
         this.listener.onTweenEnd(this.endVal);
      }
      mx.effects.Tween.RemoveTweenAt(this.ID);
   }
   function setTweenHandlers(_loc3_, _loc2_)
   {
      this.updateFunc = _loc3_;
      this.endFunc = _loc2_;
   }
   function easingEquation(_loc2_, _loc4_, _loc3_, _loc1_)
   {
      return _loc3_ / 2 * (Math.sin(3.141592653589793 * (_loc2_ / _loc1_ - 0.5)) + 1) + _loc4_;
   }
}
