class mx.core.ScrollView extends mx.core.View
{
   var __get__height;
   var __get__width;
   var __height;
   var __maxHPosition;
   var __viewMetrics;
   var __width;
   var _parent;
   var border_mc;
   var createObject;
   var dispatchEvent;
   var enabled;
   var hScroller;
   var invLayout;
   var mask_mc;
   var oldRndUp;
   var owner;
   var propsInited;
   var scrollAreaChanged;
   var specialHScrollCase;
   var vScroller;
   var viewableColumns;
   var viewableRows;
   static var symbolName = "ScrollView";
   static var symbolOwner = mx.core.ScrollView;
   static var version = "2.0.2.127";
   var className = "ScrollView";
   var __vScrollPolicy = "auto";
   var __hScrollPolicy = "off";
   var __vPosition = 0;
   var __hPosition = 0;
   var numberOfCols = 0;
   var rowC = 0;
   var columnWidth = 1;
   var rowH = 0;
   var heightPadding = 0;
   var widthPadding = 0;
   var MASK_DEPTH = 10000;
   function ScrollView()
   {
      super();
   }
   function getHScrollPolicy(Void)
   {
      return this.__hScrollPolicy;
   }
   function setHScrollPolicy(_loc2_)
   {
      this.__hScrollPolicy = _loc2_.toLowerCase();
      if(this.__width == undefined)
      {
         return undefined;
      }
      this.setScrollProperties(this.numberOfCols,this.columnWidth,this.rowC,this.rowH,this.heightPadding,this.widthPadding);
   }
   function get hScrollPolicy()
   {
      return this.getHScrollPolicy();
   }
   function set hScrollPolicy(_loc2_)
   {
      this.setHScrollPolicy(_loc2_);
   }
   function getVScrollPolicy(Void)
   {
      return this.__vScrollPolicy;
   }
   function setVScrollPolicy(_loc2_)
   {
      this.__vScrollPolicy = _loc2_.toLowerCase();
      if(this.__width == undefined)
      {
         return undefined;
      }
      this.setScrollProperties(this.numberOfCols,this.columnWidth,this.rowC,this.rowH,this.heightPadding,this.widthPadding);
   }
   function get vScrollPolicy()
   {
      return this.getVScrollPolicy();
   }
   function set vScrollPolicy(_loc2_)
   {
      this.setVScrollPolicy(_loc2_);
   }
   function get hPosition()
   {
      return this.getHPosition();
   }
   function set hPosition(_loc2_)
   {
      this.setHPosition(_loc2_);
   }
   function getHPosition(Void)
   {
      return this.__hPosition;
   }
   function setHPosition(_loc2_)
   {
      this.hScroller.scrollPosition = _loc2_;
      this.__hPosition = _loc2_;
   }
   function get vPosition()
   {
      return this.getVPosition();
   }
   function set vPosition(_loc2_)
   {
      this.setVPosition(_loc2_);
   }
   function getVPosition(Void)
   {
      return this.__vPosition;
   }
   function setVPosition(_loc2_)
   {
      this.vScroller.scrollPosition = _loc2_;
      this.__vPosition = _loc2_;
   }
   function get maxVPosition()
   {
      var _loc2_ = this.vScroller.maxPos;
      return _loc2_ != undefined ? _loc2_ : 0;
   }
   function get maxHPosition()
   {
      return this.getMaxHPosition();
   }
   function set maxHPosition(_loc2_)
   {
      this.setMaxHPosition(_loc2_);
   }
   function getMaxHPosition(Void)
   {
      if(this.__maxHPosition != undefined)
      {
         return this.__maxHPosition;
      }
      var _loc2_ = this.hScroller.maxPos;
      return _loc2_ != undefined ? _loc2_ : 0;
   }
   function setMaxHPosition(_loc2_)
   {
      this.__maxHPosition = _loc2_;
   }
   function setScrollProperties(_loc9_, _loc6_, _loc10_, _loc7_, _loc11_, _loc13_)
   {
      var _loc3_ = this.getViewMetrics();
      if(_loc11_ == undefined)
      {
         _loc11_ = 0;
      }
      if(_loc13_ == undefined)
      {
         _loc13_ = 0;
      }
      this.propsInited = true;
      delete this.scrollAreaChanged;
      this.heightPadding = _loc11_;
      this.widthPadding = _loc13_;
      if(_loc6_ == 0)
      {
         _loc6_ = 1;
      }
      if(_loc7_ == 0)
      {
         _loc7_ = 1;
      }
      var _loc4_ = Math.ceil((this.__width - _loc3_.left - _loc3_.right - this.widthPadding) / _loc6_);
      if(this.__hScrollPolicy == "on" || _loc4_ < _loc9_ && this.__hScrollPolicy == "auto")
      {
         if(this.hScroller == undefined || this.specialHScrollCase)
         {
            delete this.specialHScrollCase;
            this.hScroller = mx.controls.scrollClasses.ScrollBar(this.createObject("HScrollBar","hSB",1001));
            this.hScroller.lineScrollSize = 20;
            this.hScroller.scrollHandler = this.scrollProxy;
            this.hScroller.scrollPosition = this.__hPosition;
            this.scrollAreaChanged = true;
         }
         if(this.numberOfCols != _loc9_ || this.columnWidth != _loc6_ || this.viewableColumns != _loc4_ || this.scrollAreaChanged)
         {
            this.hScroller.setScrollProperties(_loc4_,0,_loc9_ - _loc4_);
            this.viewableColumns = _loc4_;
            this.numberOfCols = _loc9_;
            this.columnWidth = _loc6_;
         }
      }
      else if((this.__hScrollPolicy == "auto" || this.__hScrollPolicy == "off") && this.hScroller != undefined)
      {
         this.hScroller.removeMovieClip();
         delete this.hScroller;
         this.scrollAreaChanged = true;
      }
      if(this.heightPadding == undefined)
      {
         this.heightPadding = 0;
      }
      var _loc5_ = Math.ceil((this.__height - _loc3_.top - _loc3_.bottom - this.heightPadding) / _loc7_);
      var _loc8_ = (this.__height - _loc3_.top - _loc3_.bottom) % _loc7_ != 0;
      if(this.__vScrollPolicy == "on" || _loc5_ < _loc10_ + _loc8_ && this.__vScrollPolicy == "auto")
      {
         if(this.vScroller == undefined)
         {
            this.vScroller = mx.controls.scrollClasses.ScrollBar(this.createObject("VScrollBar","vSB",1002));
            this.vScroller.scrollHandler = this.scrollProxy;
            this.vScroller.scrollPosition = this.__vPosition;
            this.scrollAreaChanged = true;
            this.rowH = 0;
         }
         if(this.rowC != _loc10_ || this.rowH != _loc7_ || this.viewableRows + _loc8_ != _loc5_ + this.oldRndUp || this.scrollAreaChanged)
         {
            this.vScroller.setScrollProperties(_loc5_,0,_loc10_ - _loc5_ + _loc8_);
            this.viewableRows = _loc5_;
            this.rowC = _loc10_;
            this.rowH = _loc7_;
            this.oldRndUp = _loc8_;
         }
      }
      else if((this.__vScrollPolicy == "auto" || this.__vScrollPolicy == "off") && this.vScroller != undefined)
      {
         this.vScroller.removeMovieClip();
         delete this.vScroller;
         this.scrollAreaChanged = true;
      }
      this.numberOfCols = _loc9_;
      this.columnWidth = _loc6_;
      var _loc2_;
      var _loc12_;
      if(this.scrollAreaChanged)
      {
         this.doLayout();
         _loc2_ = this.__viewMetrics;
         _loc12_ = this.owner == undefined ? this : this.owner;
         _loc12_.layoutContent(_loc2_.left,_loc2_.top,this.columnWidth * this.numberOfCols - _loc2_.left - _loc2_.right,this.rowC * this.rowH,this.__width - _loc2_.left - _loc2_.right,this.__height - _loc2_.top - _loc2_.bottom);
      }
      if(!this.enabled)
      {
         this.setEnabled(false);
      }
   }
   function getViewMetrics(Void)
   {
      var _loc2_ = this.__viewMetrics;
      var _loc3_ = this.border_mc.borderMetrics;
      _loc2_.left = _loc3_.left;
      _loc2_.right = _loc3_.right;
      if(this.vScroller != undefined)
      {
         _loc2_.right += this.vScroller.minWidth;
      }
      _loc2_.top = _loc3_.top;
      if(this.hScroller == undefined && (this.__hScrollPolicy == "on" || this.__hScrollPolicy == true))
      {
         this.hScroller = mx.controls.scrollClasses.ScrollBar(this.createObject("FHScrollBar","hSB",1001));
         this.specialHScrollCase = true;
      }
      _loc2_.bottom = _loc3_.bottom;
      if(this.hScroller != undefined)
      {
         _loc2_.bottom += this.hScroller.minHeight;
      }
      return _loc2_;
   }
   function doLayout(Void)
   {
      var _loc10_ = this.width;
      var _loc8_ = this.height;
      delete this.invLayout;
      var _loc0_;
      var _loc3_ = this.__viewMetrics = this.getViewMetrics();
      var _loc2_ = _loc3_.left;
      var _loc9_ = _loc3_.right;
      var _loc5_ = _loc3_.top;
      var _loc11_ = _loc3_.bottom;
      var _loc7_ = this.hScroller;
      var _loc6_ = this.vScroller;
      _loc7_.setSize(_loc10_ - _loc2_ - _loc9_,_loc7_.minHeight + 0);
      _loc7_.move(_loc2_,_loc8_ - _loc11_);
      _loc6_.setSize(_loc6_.minWidth + 0,_loc8_ - _loc5_ - _loc11_);
      _loc6_.move(_loc10_ - _loc9_,_loc5_);
      var _loc4_ = this.mask_mc;
      _loc4_._width = _loc10_ - _loc2_ - _loc9_;
      _loc4_._height = _loc8_ - _loc5_ - _loc11_;
      _loc4_._x = _loc2_;
      _loc4_._y = _loc5_;
   }
   function createChild(_loc4_, _loc3_, _loc5_)
   {
      var _loc2_ = super.createChild(_loc4_,_loc3_,_loc5_);
      return _loc2_;
   }
   function init(Void)
   {
      super.init();
      this.__viewMetrics = new Object();
      var _loc0_;
      var _loc4_;
      if(_global.__SVMouseWheelManager == undefined)
      {
         _loc4_ = _global.__SVMouseWheelManager = new Object();
         _loc4_.onMouseWheel = this.__onMouseWheel;
         Mouse.addListener(_loc4_);
      }
   }
   function __onMouseWheel(_loc6_, _loc9_)
   {
      var _loc4_ = _loc9_;
      var _loc1_;
      while(_loc4_ != undefined)
      {
         if(_loc4_ instanceof mx.core.ScrollView)
         {
            _loc1_ = _loc4_;
            false;
         }
         _loc4_ = _loc4_._parent;
      }
      var _loc2_;
      var _loc3_;
      if(_loc1_ != undefined)
      {
         _loc4_ = _loc6_ > 0 ? -1 : 1;
         _loc2_ = _loc1_.vScroller.lineScrollSize;
         if(_loc2_ == undefined)
         {
            _loc2_ = 0;
         }
         _loc2_ = Math.max(Math.abs(_loc6_),_loc2_);
         _loc3_ = _loc1_.vPosition + _loc2_ * _loc4_;
         _loc1_.vPosition = Math.max(0,Math.min(_loc3_,_loc1_.maxVPosition));
         _loc1_.dispatchEvent({type:"scroll",direction:"vertical",position:_loc1_.vPosition});
      }
   }
   function createChildren(Void)
   {
      super.createChildren();
      if(this.mask_mc == undefined)
      {
         this.mask_mc = this.createObject("BoundingBox","mask_mc",this.MASK_DEPTH);
      }
      this.mask_mc._visible = false;
   }
   function invalidate(Void)
   {
      super.invalidate();
   }
   function draw(Void)
   {
      this.size();
   }
   function size(Void)
   {
      super.size();
   }
   function scrollProxy(_loc2_)
   {
      this._parent.onScroll(_loc2_);
   }
   function onScroll(_loc9_)
   {
      var _loc3_ = _loc9_.target;
      var _loc2_ = _loc3_.scrollPosition;
      var _loc4_;
      var _loc5_;
      if(_loc3_ == this.vScroller)
      {
         _loc4_ = "vertical";
         _loc5_ = "__vPosition";
      }
      else
      {
         _loc4_ = "horizontal";
         _loc5_ = "__hPosition";
      }
      this[_loc5_] = _loc2_;
      this.dispatchEvent({type:"scroll",direction:_loc4_,position:_loc2_});
   }
   function setEnabled(_loc2_)
   {
      this.vScroller.enabled = this.hScroller.enabled = _loc2_;
   }
   function childLoaded(_loc3_)
   {
      super.childLoaded(_loc3_);
      _loc3_.setMask(this.mask_mc);
   }
}
