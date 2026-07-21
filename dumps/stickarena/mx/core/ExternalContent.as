class mx.core.ExternalContent
{
   var childLoaded;
   var createObject;
   var dispatchEvent;
   var doLater;
   var loadList;
   var loadedList;
   var numChildren;
   var prepList;
   static var classConstructed = mx.core.ExternalContent.classConstruct();
   static var ViewDependency = mx.core.View;
   function ExternalContent()
   {
   }
   function loadExternal(_loc7_, _loc8_, _loc3_, _loc9_, _loc4_)
   {
      var _loc2_;
      _loc2_ = this.createObject(_loc8_,_loc3_,_loc9_,_loc4_);
      this[mx.core.View.childNameBase + this.numChildren] = _loc2_;
      if(this.prepList == undefined)
      {
         this.prepList = new Object();
      }
      this.prepList[_loc3_] = {obj:_loc2_,url:_loc7_,complete:false,initProps:_loc4_};
      this.prepareToLoadMovie(_loc2_);
      return _loc2_;
   }
   function prepareToLoadMovie(_loc2_)
   {
      _loc2_.unloadMovie();
      this.doLater(this,"waitForUnload");
   }
   function waitForUnload()
   {
      var _loc3_;
      var _loc2_;
      for(_loc3_ in this.prepList)
      {
         _loc2_ = this.prepList[_loc3_];
         if(_loc2_.obj.getBytesTotal() == 0)
         {
            if(this.loadList == undefined)
            {
               this.loadList = new Object();
            }
            this.loadList[_loc3_] = _loc2_;
            _loc2_.obj.loadMovie(_loc2_.url);
            delete this.prepList[_loc3_];
            this.doLater(this,"checkLoadProgress");
         }
         else
         {
            this.doLater(this,"waitForUnload");
         }
      }
   }
   function checkLoadProgress()
   {
      var _loc8_ = false;
      var _loc3_;
      var _loc2_;
      for(_loc3_ in this.loadList)
      {
         _loc2_ = this.loadList[_loc3_];
         _loc2_.loaded = _loc2_.obj.getBytesLoaded();
         _loc2_.total = _loc2_.obj.getBytesTotal();
         if(_loc2_.total > 0)
         {
            _loc2_.obj._visible = false;
            this.dispatchEvent({type:"progress",target:_loc2_.obj,current:_loc2_.loaded,total:_loc2_.total});
            if(_loc2_.loaded == _loc2_.total)
            {
               if(this.loadedList == undefined)
               {
                  this.loadedList = new Object();
               }
               this.loadedList[_loc3_] = _loc2_;
               delete this.loadList[_loc3_];
               this.doLater(this,"contentLoaded");
            }
         }
         else if(_loc2_.total == -1)
         {
            if(_loc2_.failedOnce != undefined)
            {
               _loc2_.failedOnce++;
               if(_loc2_.failedOnce > 3)
               {
                  this.dispatchEvent({type:"complete",target:_loc2_.obj,current:_loc2_.loaded,total:_loc2_.total});
                  delete this.loadList[_loc3_];
                  false;
               }
            }
            else
            {
               _loc2_.failedOnce = 0;
            }
         }
         _loc8_ = true;
      }
      if(_loc8_)
      {
         this.doLater(this,"checkLoadProgress");
      }
   }
   function contentLoaded()
   {
      var _loc4_;
      var _loc2_;
      var _loc3_;
      for(_loc4_ in this.loadedList)
      {
         _loc2_ = this.loadedList[_loc4_];
         _loc2_.obj._visible = true;
         _loc2_.obj._complete = true;
         for(_loc3_ in _loc2_.initProps)
         {
            _loc2_.obj[_loc3_] = _loc2_.initProps[_loc3_];
         }
         this.childLoaded(_loc2_.obj);
         this.dispatchEvent({type:"complete",target:_loc2_.obj,current:_loc2_.loaded,total:_loc2_.total});
         delete this.loadedList[_loc4_];
         false;
      }
   }
   function convertToUIObject(_loc1_)
   {
      var _loc2_;
      if(_loc1_.setSize == undefined)
      {
         _loc2_ = mx.core.UIObject.prototype;
         _loc1_.addProperty("width",_loc2_.__get__width,null);
         _loc1_.addProperty("height",_loc2_.__get__height,null);
         _loc1_.addProperty("left",_loc2_.__get__left,null);
         _loc1_.addProperty("x",_loc2_.__get__x,null);
         _loc1_.addProperty("top",_loc2_.__get__top,null);
         _loc1_.addProperty("y",_loc2_.__get__y,null);
         _loc1_.addProperty("right",_loc2_.__get__right,null);
         _loc1_.addProperty("bottom",_loc2_.__get__bottom,null);
         _loc1_.addProperty("visible",_loc2_.__get__visible,_loc2_.__set__visible);
         _loc1_.move = mx.core.UIObject.prototype.move;
         _loc1_.setSize = mx.core.UIObject.prototype.setSize;
         _loc1_.size = mx.core.UIObject.prototype.size;
         mx.events.UIEventDispatcher.initialize(_loc1_);
      }
   }
   static function enableExternalContent()
   {
   }
   static function classConstruct()
   {
      var _loc1_ = mx.core.View.prototype;
      var _loc2_ = mx.core.ExternalContent.prototype;
      _loc1_.loadExternal = _loc2_.loadExternal;
      _loc1_.prepareToLoadMovie = _loc2_.prepareToLoadMovie;
      _loc1_.waitForUnload = _loc2_.waitForUnload;
      _loc1_.checkLoadProgress = _loc2_.checkLoadProgress;
      _loc1_.contentLoaded = _loc2_.contentLoaded;
      _loc1_.convertToUIObject = _loc2_.convertToUIObject;
      return true;
   }
}
