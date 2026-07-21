class mx.events.UIEventDispatcher extends mx.events.EventDispatcher
{
   var __origAddEventListener;
   var __sentLoadEvent;
   var owner;
   static var keyEvents = {keyDown:1,keyUp:1};
   static var loadEvents = {load:1,unload:1};
   static var lowLevelEvents = {keyEvents:["addKeyEvents","removeKeyEvents"],loadEvents:["addLoadEvents","removeLoadEvents"]};
   static var _fEventDispatcher = undefined;
   function UIEventDispatcher()
   {
      super();
   }
   static function addKeyEvents(_loc2_)
   {
      var _loc0_;
      var _loc1_;
      if(_loc2_.keyHandler == undefined)
      {
         _loc1_ = _loc2_.keyHandler = new Object();
         _loc1_.owner = _loc2_;
         _loc1_.onKeyDown = mx.events.UIEventDispatcher._fEventDispatcher.onKeyDown;
         _loc1_.onKeyUp = mx.events.UIEventDispatcher._fEventDispatcher.onKeyUp;
      }
      Key.addListener(_loc2_.keyHandler);
   }
   static function removeKeyEvents(_loc1_)
   {
      Key.removeListener(_loc1_.keyHandler);
   }
   static function addLoadEvents(_loc1_)
   {
      if(_loc1_.onLoad == undefined)
      {
         _loc1_.onLoad = mx.events.UIEventDispatcher._fEventDispatcher.onLoad;
         _loc1_.onUnload = mx.events.UIEventDispatcher._fEventDispatcher.onUnload;
         if(_loc1_.getBytesTotal() == _loc1_.getBytesLoaded())
         {
            _loc1_.doLater(_loc1_,"onLoad");
         }
      }
   }
   static function removeLoadEvents(_loc1_)
   {
      delete _loc1_.onLoad;
      delete _loc1_.onUnload;
   }
   static function initialize(_loc1_)
   {
      if(mx.events.UIEventDispatcher._fEventDispatcher == undefined)
      {
         mx.events.UIEventDispatcher._fEventDispatcher = new mx.events.UIEventDispatcher();
      }
      _loc1_.addEventListener = mx.events.UIEventDispatcher._fEventDispatcher.__addEventListener;
      _loc1_.__origAddEventListener = mx.events.UIEventDispatcher._fEventDispatcher.addEventListener;
      _loc1_.removeEventListener = mx.events.UIEventDispatcher._fEventDispatcher.removeEventListener;
      _loc1_.dispatchEvent = mx.events.UIEventDispatcher._fEventDispatcher.dispatchEvent;
      _loc1_.dispatchQueue = mx.events.UIEventDispatcher._fEventDispatcher.dispatchQueue;
   }
   function dispatchEvent(_loc2_)
   {
      if(_loc2_.target == undefined)
      {
         _loc2_.target = this;
      }
      this[_loc2_.type + "Handler"](_loc2_);
      this.dispatchQueue(mx.events.EventDispatcher,_loc2_);
      this.dispatchQueue(this,_loc2_);
   }
   function onKeyDown(Void)
   {
      this.owner.dispatchEvent({type:"keyDown",code:Key.getCode(),ascii:Key.getAscii(),shiftKey:Key.isDown(16),ctrlKey:Key.isDown(17)});
   }
   function onKeyUp(Void)
   {
      this.owner.dispatchEvent({type:"keyUp",code:Key.getCode(),ascii:Key.getAscii(),shiftKey:Key.isDown(16),ctrlKey:Key.isDown(17)});
   }
   function onLoad(Void)
   {
      if(this.__sentLoadEvent != true)
      {
         this.dispatchEvent({type:"load"});
      }
      this.__sentLoadEvent = true;
   }
   function onUnload(Void)
   {
      this.dispatchEvent({type:"unload"});
   }
   function __addEventListener(_loc4_, _loc6_)
   {
      this.__origAddEventListener(_loc4_,_loc6_);
      var _loc3_ = mx.events.UIEventDispatcher.lowLevelEvents;
      var _loc2_;
      for(var _loc5_ in _loc3_)
      {
         if(mx.events.UIEventDispatcher[_loc5_][_loc4_] != undefined)
         {
            _loc2_ = _loc3_[_loc5_][0];
            mx.events.UIEventDispatcher[_loc2_](this);
         }
      }
   }
   function removeEventListener(_loc4_, _loc7_)
   {
      var _loc6_ = "__q_" + _loc4_;
      mx.events.EventDispatcher._removeEventListener(this[_loc6_],_loc4_,_loc7_);
      var _loc2_;
      var _loc3_;
      if(this[_loc6_].length == 0)
      {
         _loc2_ = mx.events.UIEventDispatcher.lowLevelEvents;
         for(var _loc5_ in _loc2_)
         {
            if(mx.events.UIEventDispatcher[_loc5_][_loc4_] != undefined)
            {
               _loc3_ = _loc2_[_loc5_][1];
               mx.events.UIEventDispatcher[_loc2_[_loc5_][1]](this);
            }
         }
      }
   }
}
