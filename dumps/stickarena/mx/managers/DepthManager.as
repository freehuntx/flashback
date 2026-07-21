class mx.managers.DepthManager
{
   var _childCounter;
   var _parent;
   var _topmost;
   var createClassObject;
   var createObject;
   var getDepth;
   var swapDepths;
   static var reservedDepth = 1048575;
   static var highestDepth = 1048574;
   static var lowestDepth = -16383;
   static var numberOfAuthortimeLayers = 383;
   static var kCursor = 101;
   static var kTooltip = 102;
   static var kTop = 201;
   static var kBottom = 202;
   static var kTopmost = 203;
   static var kNotopmost = 204;
   static var holder = _root.createEmptyMovieClip("reserved",mx.managers.DepthManager.reservedDepth);
   static var __depthManager = new mx.managers.DepthManager();
   function DepthManager()
   {
      MovieClip.prototype.createClassChildAtDepth = this.createClassChildAtDepth;
      MovieClip.prototype.createChildAtDepth = this.createChildAtDepth;
      MovieClip.prototype.setDepthTo = this.setDepthTo;
      MovieClip.prototype.setDepthAbove = this.setDepthAbove;
      MovieClip.prototype.setDepthBelow = this.setDepthBelow;
      MovieClip.prototype.findNextAvailableDepth = this.findNextAvailableDepth;
      MovieClip.prototype.shuffleDepths = this.shuffleDepths;
      MovieClip.prototype.getDepthByFlag = this.getDepthByFlag;
      MovieClip.prototype.buildDepthTable = this.buildDepthTable;
      _global.ASSetPropFlags(MovieClip.prototype,"createClassChildAtDepth",1);
      _global.ASSetPropFlags(MovieClip.prototype,"createChildAtDepth",1);
      _global.ASSetPropFlags(MovieClip.prototype,"setDepthTo",1);
      _global.ASSetPropFlags(MovieClip.prototype,"setDepthAbove",1);
      _global.ASSetPropFlags(MovieClip.prototype,"setDepthBelow",1);
      _global.ASSetPropFlags(MovieClip.prototype,"findNextAvailableDepth",1);
      _global.ASSetPropFlags(MovieClip.prototype,"shuffleDepths",1);
      _global.ASSetPropFlags(MovieClip.prototype,"getDepthByFlag",1);
      _global.ASSetPropFlags(MovieClip.prototype,"buildDepthTable",1);
   }
   static function sortFunction(_loc2_, _loc1_)
   {
      if(_loc2_.getDepth() > _loc1_.getDepth())
      {
         return 1;
      }
      return -1;
   }
   static function test(_loc1_)
   {
      if(_loc1_ == mx.managers.DepthManager.reservedDepth)
      {
         return false;
      }
      return true;
   }
   static function createClassObjectAtDepth(_loc3_, _loc4_, _loc2_)
   {
      var _loc1_;
      switch(_loc4_)
      {
         case mx.managers.DepthManager.kCursor:
            _loc1_ = mx.managers.DepthManager.holder.createClassChildAtDepth(_loc3_,mx.managers.DepthManager.kTopmost,_loc2_);
            break;
         case mx.managers.DepthManager.kTooltip:
            _loc1_ = mx.managers.DepthManager.holder.createClassChildAtDepth(_loc3_,mx.managers.DepthManager.kTop,_loc2_);
      }
      return _loc1_;
   }
   static function createObjectAtDepth(_loc3_, _loc4_, _loc2_)
   {
      var _loc1_;
      switch(_loc4_)
      {
         case mx.managers.DepthManager.kCursor:
            _loc1_ = mx.managers.DepthManager.holder.createChildAtDepth(_loc3_,mx.managers.DepthManager.kTopmost,_loc2_);
            break;
         case mx.managers.DepthManager.kTooltip:
            _loc1_ = mx.managers.DepthManager.holder.createChildAtDepth(_loc3_,mx.managers.DepthManager.kTop,_loc2_);
      }
      return _loc1_;
   }
   function createClassChildAtDepth(_loc9_, _loc7_, _loc8_)
   {
      if(this._childCounter == undefined)
      {
         this._childCounter = 0;
      }
      var _loc3_ = this.buildDepthTable();
      var _loc2_ = this.getDepthByFlag(_loc7_,_loc3_);
      var _loc5_ = "down";
      if(_loc7_ == mx.managers.DepthManager.kBottom)
      {
         _loc5_ = "up";
      }
      var _loc6_;
      if(_loc3_[_loc2_] != undefined)
      {
         _loc6_ = _loc2_;
         _loc2_ = this.findNextAvailableDepth(_loc2_,_loc3_,_loc5_);
      }
      var _loc4_ = this.createClassObject(_loc9_,"depthChild" + this._childCounter++,_loc2_,_loc8_);
      if(_loc6_ != undefined)
      {
         _loc3_[_loc2_] = _loc4_;
         this.shuffleDepths(_loc4_,_loc6_,_loc3_,_loc5_);
      }
      if(_loc7_ == mx.managers.DepthManager.kTopmost)
      {
         _loc4_._topmost = true;
      }
      return _loc4_;
   }
   function createChildAtDepth(_loc9_, _loc7_, _loc8_)
   {
      if(this._childCounter == undefined)
      {
         this._childCounter = 0;
      }
      var _loc3_ = this.buildDepthTable();
      var _loc2_ = this.getDepthByFlag(_loc7_,_loc3_);
      var _loc5_ = "down";
      if(_loc7_ == mx.managers.DepthManager.kBottom)
      {
         _loc5_ = "up";
      }
      var _loc6_;
      if(_loc3_[_loc2_] != undefined)
      {
         _loc6_ = _loc2_;
         _loc2_ = this.findNextAvailableDepth(_loc2_,_loc3_,_loc5_);
      }
      var _loc4_ = this.createObject(_loc9_,"depthChild" + this._childCounter++,_loc2_,_loc8_);
      if(_loc6_ != undefined)
      {
         _loc3_[_loc2_] = _loc4_;
         this.shuffleDepths(_loc4_,_loc6_,_loc3_,_loc5_);
      }
      if(_loc7_ == mx.managers.DepthManager.kTopmost)
      {
         _loc4_._topmost = true;
      }
      return _loc4_;
   }
   function setDepthTo(_loc4_)
   {
      var _loc2_ = this._parent.buildDepthTable();
      var _loc3_ = this._parent.getDepthByFlag(_loc4_,_loc2_);
      if(_loc2_[_loc3_] != undefined)
      {
         this.shuffleDepths(MovieClip(this),_loc3_,_loc2_,undefined);
      }
      else
      {
         this.swapDepths(_loc3_);
      }
      if(_loc4_ == mx.managers.DepthManager.kTopmost)
      {
         this._topmost = true;
      }
      else
      {
         delete this._topmost;
      }
   }
   function setDepthAbove(_loc4_)
   {
      if(_loc4_._parent != this._parent)
      {
         return undefined;
      }
      var _loc2_ = _loc4_.getDepth() + 1;
      var _loc3_ = this._parent.buildDepthTable();
      if(_loc3_[_loc2_] != undefined && this.getDepth() < _loc2_)
      {
         _loc2_ -= 1;
      }
      if(_loc2_ > mx.managers.DepthManager.highestDepth)
      {
         _loc2_ = mx.managers.DepthManager.highestDepth;
      }
      if(_loc2_ == mx.managers.DepthManager.highestDepth)
      {
         this._parent.shuffleDepths(this,_loc2_,_loc3_,"down");
      }
      else if(_loc3_[_loc2_] != undefined)
      {
         this._parent.shuffleDepths(this,_loc2_,_loc3_,undefined);
      }
      else
      {
         this.swapDepths(_loc2_);
      }
   }
   function setDepthBelow(_loc7_)
   {
      if(_loc7_._parent != this._parent)
      {
         return undefined;
      }
      var _loc6_ = _loc7_.getDepth() - 1;
      var _loc3_ = this._parent.buildDepthTable();
      if(_loc3_[_loc6_] != undefined && this.getDepth() > _loc6_)
      {
         _loc6_ += 1;
      }
      var _loc4_ = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
      var _loc5_;
      var _loc2_;
      for(_loc5_ in _loc3_)
      {
         _loc2_ = _loc3_[_loc5_];
         if(_loc2_._parent != undefined)
         {
            _loc4_ = Math.min(_loc4_,_loc2_.getDepth());
         }
      }
      if(_loc6_ < _loc4_)
      {
         _loc6_ = _loc4_;
      }
      if(_loc6_ == _loc4_)
      {
         this._parent.shuffleDepths(this,_loc6_,_loc3_,"up");
      }
      else if(_loc3_[_loc6_] != undefined)
      {
         this._parent.shuffleDepths(this,_loc6_,_loc3_,undefined);
      }
      else
      {
         this.swapDepths(_loc6_);
      }
   }
   function findNextAvailableDepth(_loc4_, _loc3_, _loc6_)
   {
      var _loc5_ = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
      if(_loc4_ < _loc5_)
      {
         _loc4_ = _loc5_;
      }
      if(_loc3_[_loc4_] == undefined)
      {
         return _loc4_;
      }
      var _loc1_ = _loc4_;
      var _loc2_ = _loc4_;
      if(_loc6_ == "down")
      {
         while(_loc3_[_loc2_] != undefined)
         {
            _loc2_ = _loc2_ - 1;
         }
         return _loc2_;
      }
      while(_loc3_[_loc1_] != undefined)
      {
         _loc1_ = _loc1_ + 1;
      }
      return _loc1_;
   }
   function shuffleDepths(_loc2_, _loc10_, _loc6_, _loc12_)
   {
      var _loc9_ = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
      var _loc8_ = _loc9_;
      var _loc5_;
      var _loc7_;
      for(_loc5_ in _loc6_)
      {
         _loc7_ = _loc6_[_loc5_];
         if(_loc7_._parent != undefined)
         {
            _loc9_ = Math.min(_loc9_,_loc7_.getDepth());
         }
      }
      if(_loc12_ == undefined)
      {
         if(_loc2_.getDepth() > _loc10_)
         {
            _loc12_ = "up";
         }
         else
         {
            _loc12_ = "down";
         }
      }
      var _loc1_ = new Array();
      for(_loc5_ in _loc6_)
      {
         _loc7_ = _loc6_[_loc5_];
         if(_loc7_._parent != undefined)
         {
            _loc1_.push(_loc7_);
         }
      }
      _loc1_.sort(mx.managers.DepthManager.sortFunction);
      var _loc3_;
      var _loc11_;
      var _loc4_;
      if(_loc12_ == "up")
      {
         while(_loc1_.length > 0)
         {
            _loc3_ = _loc1_.pop();
            if(_loc3_ == _loc2_)
            {
               break;
            }
         }
         while(_loc1_.length > 0)
         {
            _loc11_ = _loc2_.getDepth();
            _loc3_ = _loc1_.pop();
            _loc4_ = _loc3_.getDepth();
            if(_loc11_ > _loc4_ + 1)
            {
               if(_loc4_ >= 0)
               {
                  _loc2_.swapDepths(_loc4_ + 1);
               }
               else if(_loc11_ > _loc8_ && _loc4_ < _loc8_)
               {
                  _loc2_.swapDepths(_loc8_);
               }
            }
            _loc2_.swapDepths(_loc3_);
            if(_loc4_ == _loc10_)
            {
               break;
            }
         }
      }
      else if(_loc12_ == "down")
      {
         _loc3_;
         while(_loc1_.length > 0)
         {
            _loc3_ = _loc1_.shift();
            if(_loc3_ == _loc2_)
            {
               break;
            }
         }
         while(_loc1_.length > 0)
         {
            _loc11_ = _loc3_.getDepth();
            _loc3_ = _loc1_.shift();
            _loc4_ = _loc3_.getDepth();
            if(_loc11_ < _loc4_ - 1 && _loc4_ > 0)
            {
               _loc2_.swapDepths(_loc4_ - 1);
            }
            _loc2_.swapDepths(_loc3_);
            if(_loc4_ == _loc10_)
            {
               break;
            }
         }
      }
   }
   function getDepthByFlag(_loc10_, _loc1_)
   {
      var _loc2_ = 0;
      var _loc5_;
      var _loc7_;
      var _loc8_;
      var _loc9_;
      var _loc3_;
      if(_loc10_ == mx.managers.DepthManager.kTop || _loc10_ == mx.managers.DepthManager.kNotopmost)
      {
         _loc5_ = 0;
         _loc7_ = false;
         for(_loc8_ in _loc1_)
         {
            _loc9_ = _loc1_[_loc8_];
            _loc3_ = typeof _loc9_;
            if(_loc3_ == "movieclip" || _loc3_ == "object" && _loc9_.__getTextFormat != undefined)
            {
               if(_loc9_.getDepth() <= mx.managers.DepthManager.highestDepth)
               {
                  if(!_loc9_._topmost)
                  {
                     _loc2_ = Math.max(_loc2_,_loc9_.getDepth());
                  }
                  else if(!_loc7_)
                  {
                     _loc5_ = _loc9_.getDepth();
                     _loc7_ = true;
                  }
                  else
                  {
                     _loc5_ = Math.min(_loc5_,_loc9_.getDepth());
                  }
               }
            }
         }
         _loc2_ += 20;
         if(_loc7_)
         {
            if(_loc2_ >= _loc5_)
            {
               _loc2_ = _loc5_ - 1;
            }
         }
      }
      else if(_loc10_ == mx.managers.DepthManager.kBottom)
      {
         for(_loc8_ in _loc1_)
         {
            _loc9_ = _loc1_[_loc8_];
            _loc3_ = typeof _loc9_;
            if(_loc3_ == "movieclip" || _loc3_ == "object" && _loc9_.__getTextFormat != undefined)
            {
               if(_loc9_.getDepth() <= mx.managers.DepthManager.highestDepth)
               {
                  _loc2_ = Math.min(_loc2_,_loc9_.getDepth());
               }
            }
         }
         _loc2_ -= 20;
      }
      else if(_loc10_ == mx.managers.DepthManager.kTopmost)
      {
         for(_loc8_ in _loc1_)
         {
            _loc9_ = _loc1_[_loc8_];
            _loc3_ = typeof _loc9_;
            if(_loc3_ == "movieclip" || _loc3_ == "object" && _loc9_.__getTextFormat != undefined)
            {
               if(_loc9_.getDepth() <= mx.managers.DepthManager.highestDepth)
               {
                  _loc2_ = Math.max(_loc2_,_loc9_.getDepth());
               }
            }
         }
         _loc2_ += 100;
      }
      if(_loc2_ >= mx.managers.DepthManager.highestDepth)
      {
         _loc2_ = mx.managers.DepthManager.highestDepth;
      }
      var _loc6_ = mx.managers.DepthManager.lowestDepth + mx.managers.DepthManager.numberOfAuthortimeLayers;
      var _loc4_;
      for(_loc9_ in _loc1_)
      {
         _loc4_ = _loc1_[_loc9_];
         if(_loc4_._parent != undefined)
         {
            _loc6_ = Math.min(_loc6_,_loc4_.getDepth());
         }
      }
      if(_loc2_ <= _loc6_)
      {
         _loc2_ = _loc6_;
      }
      return _loc2_;
   }
   function buildDepthTable(Void)
   {
      var _loc5_ = new Array();
      var _loc4_;
      var _loc2_;
      var _loc3_;
      for(_loc4_ in this)
      {
         _loc2_ = this[_loc4_];
         _loc3_ = typeof _loc2_;
         if(_loc3_ == "movieclip" || _loc3_ == "object" && _loc2_.__getTextFormat != undefined)
         {
            if(_loc2_._parent == this)
            {
               _loc5_[_loc2_.getDepth()] = _loc2_;
            }
         }
      }
      return _loc5_;
   }
}
