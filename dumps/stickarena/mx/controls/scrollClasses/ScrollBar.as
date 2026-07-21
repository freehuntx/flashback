class mx.controls.scrollClasses.ScrollBar extends mx.core.UIComponent
{
   var __height;
   var _height;
   var _minHeight;
   var _minWidth;
   var _parent;
   var _ymouse;
   var boundingBox_mc;
   var createClassObject;
   var createObject;
   var dispatchEvent;
   var downArrow_mc;
   var enabled;
   var focusEnabled;
   var getStyle;
   var isScrolling;
   var maxMode;
   var minMode;
   var minusMode;
   var plusMode;
   var scrollThumb_mc;
   var scrollTrack_mc;
   var scrolling;
   var setSkin;
   var tabEnabled;
   var upArrow_mc;
   static var symbolOwner = mx.core.UIComponent;
   var className = "ScrollBar";
   var minPos = 0;
   var maxPos = 0;
   var pageSize = 0;
   var largeScroll = 0;
   var smallScroll = 1;
   var _scrollPosition = 0;
   var scrollTrackName = "ScrollTrack";
   var scrollTrackOverName = "";
   var scrollTrackDownName = "";
   var upArrowName = "BtnUpArrow";
   var upArrowUpName = "ScrollUpArrowUp";
   var upArrowOverName = "ScrollUpArrowOver";
   var upArrowDownName = "ScrollUpArrowDown";
   var downArrowName = "BtnDownArrow";
   var downArrowUpName = "ScrollDownArrowUp";
   var downArrowOverName = "ScrollDownArrowOver";
   var downArrowDownName = "ScrollDownArrowDown";
   var thumbTopName = "ScrollThumbTopUp";
   var thumbMiddleName = "ScrollThumbMiddleUp";
   var thumbBottomName = "ScrollThumbBottomUp";
   var thumbGripName = "ScrollThumbGripUp";
   static var skinIDTrack = 0;
   static var skinIDTrackOver = 1;
   static var skinIDTrackDown = 2;
   static var skinIDUpArrow = 3;
   static var skinIDDownArrow = 4;
   static var skinIDThumb = 5;
   var idNames = new Array("scrollTrack_mc","scrollTrackOver_mc","scrollTrackDown_mc","upArrow_mc","downArrow_mc");
   var clipParameters = {minPos:1,maxPos:1,pageSize:1,scrollPosition:1,lineScrollSize:1,pageScrollSize:1,visible:1,enabled:1};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.scrollClasses.ScrollBar.prototype.clipParameters,mx.core.UIComponent.prototype.clipParameters);
   var initializing = true;
   function ScrollBar()
   {
      super();
   }
   function get scrollPosition()
   {
      return this._scrollPosition;
   }
   function set scrollPosition(_loc2_)
   {
      this._scrollPosition = _loc2_;
      var _loc3_;
      if(this.isScrolling != true)
      {
         _loc2_ = Math.min(_loc2_,this.maxPos);
         _loc2_ = Math.max(_loc2_,this.minPos);
         _loc3_ = (_loc2_ - this.minPos) * (this.scrollTrack_mc.height - this.scrollThumb_mc._height) / (this.maxPos - this.minPos) + this.scrollTrack_mc.top;
         this.scrollThumb_mc.move(0,_loc3_);
      }
   }
   function get pageScrollSize()
   {
      return this.largeScroll;
   }
   function set pageScrollSize(_loc2_)
   {
      this.largeScroll = _loc2_;
   }
   function set lineScrollSize(_loc2_)
   {
      this.smallScroll = _loc2_;
   }
   function get lineScrollSize()
   {
      return this.smallScroll;
   }
   function get virtualHeight()
   {
      return this.__height;
   }
   function init(Void)
   {
      super.init();
      this._scrollPosition = 0;
      this.tabEnabled = false;
      this.focusEnabled = false;
      this.boundingBox_mc._visible = false;
      this.boundingBox_mc._width = this.boundingBox_mc._height = 0;
   }
   function createChildren(Void)
   {
      if(this.scrollTrack_mc == undefined)
      {
         this.setSkin(mx.controls.scrollClasses.ScrollBar.skinIDTrack,this.scrollTrackName);
      }
      this.scrollTrack_mc.visible = false;
      var _loc3_ = new Object();
      _loc3_.enabled = false;
      _loc3_.preset = mx.controls.SimpleButton.falseDisabled;
      _loc3_.initProperties = 0;
      _loc3_.autoRepeat = true;
      _loc3_.tabEnabled = false;
      var _loc2_;
      if(this.upArrow_mc == undefined)
      {
         _loc2_ = this.createButton(this.upArrowName,"upArrow_mc",mx.controls.scrollClasses.ScrollBar.skinIDUpArrow,_loc3_);
      }
      _loc2_.buttonDownHandler = this.onUpArrow;
      _loc2_.clickHandler = this.onScrollChanged;
      this._minHeight = _loc2_.height;
      this._minWidth = _loc2_.width;
      if(this.downArrow_mc == undefined)
      {
         _loc2_ = this.createButton(this.downArrowName,"downArrow_mc",mx.controls.scrollClasses.ScrollBar.skinIDDownArrow,_loc3_);
      }
      _loc2_.buttonDownHandler = this.onDownArrow;
      _loc2_.clickHandler = this.onScrollChanged;
      this._minHeight += _loc2_.height;
   }
   function createButton(_loc6_, _loc4_, _loc5_, _loc2_)
   {
      if(_loc5_ == mx.controls.scrollClasses.ScrollBar.skinIDUpArrow)
      {
         _loc2_.falseUpSkin = this.upArrowUpName;
         _loc2_.falseDownSkin = this.upArrowDownName;
         _loc2_.falseOverSkin = this.upArrowOverName;
      }
      else
      {
         _loc2_.falseUpSkin = this.downArrowUpName;
         _loc2_.falseDownSkin = this.downArrowDownName;
         _loc2_.falseOverSkin = this.downArrowOverName;
      }
      var _loc3_ = this.createObject(_loc6_,_loc4_,_loc5_,_loc2_);
      this[_loc4_].visible = false;
      this[_loc4_].useHandCursor = false;
      return _loc3_;
   }
   function createThumb(Void)
   {
      var _loc2_ = new Object();
      _loc2_.validateNow = true;
      _loc2_.tabEnabled = false;
      _loc2_.leftSkin = this.thumbTopName;
      _loc2_.middleSkin = this.thumbMiddleName;
      _loc2_.rightSkin = this.thumbBottomName;
      _loc2_.gripSkin = this.thumbGripName;
      this.createClassObject(mx.controls.scrollClasses.ScrollThumb,"scrollThumb_mc",mx.controls.scrollClasses.ScrollBar.skinIDThumb,_loc2_);
   }
   function setScrollProperties(_loc7_, _loc8_, _loc9_, _loc6_)
   {
      var _loc4_;
      var _loc2_ = this.scrollTrack_mc;
      this.pageSize = _loc7_;
      this.largeScroll = !(_loc6_ != undefined && _loc6_ > 0) ? _loc7_ : _loc6_;
      this.minPos = Math.max(_loc8_,0);
      this.maxPos = Math.max(_loc9_,0);
      this._scrollPosition = Math.max(this.minPos,this._scrollPosition);
      this._scrollPosition = Math.min(this.maxPos,this._scrollPosition);
      var _loc5_;
      var _loc3_;
      if(this.maxPos - this.minPos > 0 && this.enabled)
      {
         _loc5_ = this._scrollPosition;
         if(!this.initializing)
         {
            this.upArrow_mc.enabled = true;
            this.downArrow_mc.enabled = true;
         }
         _loc2_.onPress = _loc2_.onDragOver = this.startTrackScroller;
         _loc2_.onRelease = this.releaseScrolling;
         _loc2_.onDragOut = _loc2_.stopScrolling = this.stopScrolling;
         _loc2_.onReleaseOutside = this.releaseScrolling;
         _loc2_.useHandCursor = false;
         if(this.scrollThumb_mc == undefined)
         {
            this.createThumb();
         }
         _loc3_ = this.scrollThumb_mc;
         if(this.scrollTrackOverName.length > 0)
         {
            _loc2_.onRollOver = this.trackOver;
            _loc2_.onRollOut = this.trackOut;
         }
         _loc4_ = this.pageSize / (this.maxPos - this.minPos + this.pageSize) * _loc2_.height;
         if(_loc4_ < _loc3_.minHeight)
         {
            if(_loc2_.height < _loc3_.minHeight)
            {
               _loc3_.visible = false;
            }
            else
            {
               _loc4_ = _loc3_.minHeight;
               _loc3_.visible = true;
               _loc3_.setSize(this._minWidth,_loc3_.minHeight + 0);
            }
         }
         else
         {
            _loc3_.visible = true;
            _loc3_.setSize(this._minWidth,_loc4_);
         }
         _loc3_.setRange(this.upArrow_mc.height + 0,this.virtualHeight - this.downArrow_mc.height - _loc3_.height,this.minPos,this.maxPos);
         _loc5_ = Math.min(_loc5_,this.maxPos);
         this.scrollPosition = Math.max(_loc5_,this.minPos);
      }
      else
      {
         this.scrollThumb_mc.visible = false;
         if(!this.initializing)
         {
            this.upArrow_mc.enabled = false;
            this.downArrow_mc.enabled = false;
         }
         delete _loc2_.onPress;
         delete _loc2_.onDragOver;
         delete _loc2_.onRelease;
         delete _loc2_.onDragOut;
         delete _loc2_.onRollOver;
         delete _loc2_.onRollOut;
         delete _loc2_.onReleaseOutside;
      }
      if(this.initializing)
      {
         this.scrollThumb_mc.visible = false;
      }
   }
   function setEnabled(_loc3_)
   {
      super.setEnabled(_loc3_);
      this.setScrollProperties(this.pageSize,this.minPos,this.maxPos,this.largeScroll);
   }
   function draw(Void)
   {
      if(this.initializing)
      {
         this.initializing = false;
         this.scrollTrack_mc.visible = true;
         this.upArrow_mc.visible = true;
         this.downArrow_mc.visible = true;
      }
      this.size();
   }
   function size(Void)
   {
      if(this._height == 1)
      {
         return undefined;
      }
      if(this.upArrow_mc == undefined)
      {
         return undefined;
      }
      var _loc3_ = this.upArrow_mc.height;
      var _loc2_ = this.downArrow_mc.height;
      this.upArrow_mc.move(0,0);
      var _loc4_ = this.scrollTrack_mc;
      _loc4_._y = _loc3_;
      _loc4_._height = this.virtualHeight - _loc3_ - _loc2_;
      this.downArrow_mc.move(0,this.virtualHeight - _loc2_);
      this.setScrollProperties(this.pageSize,this.minPos,this.maxPos,this.largeScroll);
   }
   function dispatchScrollEvent(_loc2_)
   {
      this.dispatchEvent({type:"scroll",detail:_loc2_});
   }
   function isScrollBarKey(_loc2_)
   {
      if(_loc2_ == 36)
      {
         if(this.scrollPosition != 0)
         {
            this.scrollPosition = 0;
            this.dispatchScrollEvent(this.minMode);
         }
         return true;
      }
      if(_loc2_ == 35)
      {
         if(this.scrollPosition < this.maxPos)
         {
            this.scrollPosition = this.maxPos;
            this.dispatchScrollEvent(this.maxMode);
         }
         return true;
      }
      return false;
   }
   function scrollIt(_loc6_, _loc5_)
   {
      var _loc3_ = this.smallScroll;
      if(_loc6_ != "Line")
      {
         _loc3_ = this.largeScroll != 0 ? this.largeScroll : this.pageSize;
      }
      var _loc2_ = this._scrollPosition + _loc5_ * _loc3_;
      if(_loc2_ > this.maxPos)
      {
         _loc2_ = this.maxPos;
      }
      else if(_loc2_ < this.minPos)
      {
         _loc2_ = this.minPos;
      }
      var _loc4_;
      if(this.scrollPosition != _loc2_)
      {
         this.scrollPosition = _loc2_;
         _loc4_ = _loc5_ >= 0 ? this.plusMode : this.minusMode;
         this.dispatchScrollEvent(_loc6_ + _loc4_);
      }
   }
   function startTrackScroller(Void)
   {
      this._parent.pressFocus();
      if(this._parent.scrollTrackDownName.length > 0)
      {
         if(this._parent.scrollTrackDown_mc == undefined)
         {
            this._parent.setSkin(mx.controls.scrollClasses.ScrollBar.skinIDTrackDown,this.scrollTrackDownName);
         }
         else
         {
            this._parent.scrollTrackDown_mc.visible = true;
         }
      }
      this._parent.trackScroller();
      this._parent.scrolling = setInterval(this._parent,"scrollInterval",this.getStyle("repeatDelay"),"Page",-1);
   }
   function scrollInterval(_loc2_, _loc3_)
   {
      clearInterval(this.scrolling);
      if(_loc2_ == "Page")
      {
         this.trackScroller();
      }
      else
      {
         this.scrollIt(_loc2_,_loc3_);
      }
      this.scrolling = setInterval(this,"scrollInterval",this.getStyle("repeatInterval"),_loc2_,_loc3_);
   }
   function trackScroller(Void)
   {
      if(this.scrollThumb_mc._y + this.scrollThumb_mc.height < this._ymouse)
      {
         this.scrollIt("Page",1);
      }
      else if(this.scrollThumb_mc._y > this._ymouse)
      {
         this.scrollIt("Page",-1);
      }
   }
   function dispatchScrollChangedEvent(Void)
   {
      this.dispatchEvent({type:"scrollChanged"});
   }
   function stopScrolling(Void)
   {
      clearInterval(this._parent.scrolling);
      this._parent.scrollTrackDown_mc.visible = false;
   }
   function releaseScrolling(Void)
   {
      this._parent.releaseFocus();
      this.stopScrolling();
      this._parent.dispatchScrollChangedEvent();
   }
   function trackOver(Void)
   {
      if(this._parent.scrollTrackOverName.length > 0)
      {
         if(this._parent.scrollTrackOver_mc == undefined)
         {
            this._parent.setSkin(mx.controls.scrollClasses.ScrollBar.skinIDTrackOver,this.scrollTrackOverName);
         }
         else
         {
            this._parent.scrollTrackOver_mc.visible = true;
         }
      }
   }
   function trackOut(Void)
   {
      this._parent.scrollTrackOver_mc.visible = false;
   }
   function onUpArrow(Void)
   {
      this._parent.scrollIt("Line",-1);
   }
   function onDownArrow(Void)
   {
      this._parent.scrollIt("Line",1);
   }
   function onScrollChanged(Void)
   {
      this._parent.dispatchScrollChangedEvent();
   }
}
