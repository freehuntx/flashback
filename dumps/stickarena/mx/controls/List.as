class mx.controls.List extends mx.controls.listclasses.ScrollSelectList
{
   var __dataProvider;
   var __hScrollPolicy;
   var __height;
   var __labels;
   var __maxHPosition;
   var __vPosition;
   var __width;
   var border_mc;
   var data;
   var displayWidth;
   var getViewMetrics;
   var invLayoutContent;
   var invRowHeight;
   var invScrollProps;
   var invalidate;
   var listContent;
   var mask_mc;
   var oldVWidth;
   var setDataProvider;
   var setScrollProperties;
   var setSize;
   var totalHeight;
   var totalWidth;
   var vScroller;
   static var symbolOwner = mx.controls.List;
   static var symbolName = "List";
   var className = "List";
   static var version = "2.0.2.127";
   var clipParameters = {rowHeight:1,enabled:1,visible:1,labels:1};
   var scrollDepth = 1;
   var __vScrollPolicy = "on";
   var autoHScrollAble = false;
   function List()
   {
      super();
   }
   function setEnabled(_loc3_)
   {
      super.setEnabled(_loc3_);
      this.border_mc.backgroundColorName = !_loc3_ ? "backgroundDisabledColor" : "backgroundColor";
      this.border_mc.invalidate();
   }
   function get labels()
   {
      return this.__labels;
   }
   function set labels(_loc2_)
   {
      this.__labels = _loc2_;
      this.setDataProvider(_loc2_);
   }
   function setVPosition(_loc3_)
   {
      _loc3_ = Math.min(this.__dataProvider.length - this.rowCount + this.roundUp,_loc3_);
      _loc3_ = Math.max(0,_loc3_);
      super.setVPosition(_loc3_);
   }
   function setHPosition(_loc3_)
   {
      _loc3_ = Math.max(Math.min(this.__maxHPosition,_loc3_),0);
      super.setHPosition(_loc3_);
      this.hScroll(_loc3_);
   }
   function setMaxHPosition(_loc2_)
   {
      this.__maxHPosition = _loc2_;
      this.invScrollProps = true;
      this.invalidate();
   }
   function setHScrollPolicy(_loc3_)
   {
      if(_loc3_.toLowerCase() == "auto" && !this.autoHScrollAble)
      {
         return undefined;
      }
      super.setHScrollPolicy(_loc3_);
      if(_loc3_ == "off")
      {
         this.setHPosition(0);
         this.setVPosition(Math.min(this.__dataProvider.length - this.rowCount + this.roundUp,this.__vPosition));
      }
   }
   function setRowCount(_loc3_)
   {
      if(isNaN(_loc3_))
      {
         return undefined;
      }
      var _loc2_ = this.getViewMetrics();
      this.setSize(this.__width,this.__rowHeight * _loc3_ + _loc2_.top + _loc2_.bottom);
   }
   function layoutContent(_loc9_, _loc8_, _loc5_, _loc6_, _loc3_, _loc7_)
   {
      this.totalWidth = _loc5_;
      this.totalHeight = _loc6_;
      this.displayWidth = _loc3_;
      var _loc4_ = !(this.__hScrollPolicy == "on" || this.__hScrollPolicy == "auto") ? _loc3_ : Math.max(_loc5_,_loc3_);
      super.layoutContent(_loc9_,_loc8_,_loc4_,_loc7_);
   }
   function modelChanged(_loc4_)
   {
      super.modelChanged(_loc4_);
      var _loc3_ = _loc4_.eventName;
      if(_loc3_ == "addItems" || _loc3_ == "removeItems" || _loc3_ == "updateAll" || _loc3_ == "filterModel")
      {
         this.invScrollProps = true;
         this.invalidate("invScrollProps");
      }
   }
   function onScroll(_loc4_)
   {
      var _loc3_ = _loc4_.target;
      if(_loc3_ == this.vScroller)
      {
         this.setVPosition(_loc3_.scrollPosition);
      }
      else
      {
         this.hScroll(_loc3_.scrollPosition);
      }
      super.onScroll(_loc4_);
   }
   function hScroll(_loc2_)
   {
      this.__hPosition = _loc2_;
      this.listContent._x = - _loc2_;
   }
   function init(Void)
   {
      super.init();
      var _loc6_;
      var _loc3_;
      if(this.labels.length > 0)
      {
         _loc6_ = new Array();
         _loc3_ = 0;
         while(_loc3_ < this.labels.length)
         {
            _loc6_.addItem({label:this.labels[_loc3_],data:this.data[_loc3_]});
            _loc3_ = _loc3_ + 1;
         }
         this.setDataProvider(_loc6_);
      }
      this.__maxHPosition = 0;
   }
   function createChildren(Void)
   {
      super.createChildren();
      this.listContent.setMask(MovieClip(this.mask_mc));
      this.border_mc.move(0,0);
      this.border_mc.setSize(this.__width,this.__height);
   }
   function getRowCount(Void)
   {
      var _loc2_ = this.getViewMetrics();
      return this.__rowCount != 0 ? this.__rowCount : Math.ceil((this.__height - _loc2_.top - _loc2_.bottom) / this.__rowHeight);
   }
   function size(Void)
   {
      super.size();
      this.configureScrolling();
      var _loc3_ = this.getViewMetrics();
      this.layoutContent(_loc3_.left,_loc3_.top,this.__width + this.__maxHPosition,this.totalHeight,this.__width - _loc3_.left - _loc3_.right,this.__height - _loc3_.top - _loc3_.bottom);
   }
   function draw(Void)
   {
      if(this.invRowHeight)
      {
         this.invScrollProps = true;
         super.draw();
         this.listContent.setMask(MovieClip(this.mask_mc));
         this.invLayoutContent = true;
      }
      if(this.invScrollProps)
      {
         this.configureScrolling();
         delete this.invScrollProps;
      }
      var _loc3_;
      if(this.invLayoutContent)
      {
         _loc3_ = this.getViewMetrics();
         this.layoutContent(_loc3_.left,_loc3_.top,this.__width + this.__maxHPosition,this.totalHeight,this.__width - _loc3_.left - _loc3_.right,this.__height - _loc3_.top - _loc3_.bottom);
      }
      super.draw();
   }
   function configureScrolling(Void)
   {
      var _loc2_ = this.__dataProvider.length;
      if(this.__vPosition > Math.max(0,_loc2_ - this.getRowCount() + this.roundUp))
      {
         this.setVPosition(Math.max(0,Math.min(_loc2_ - this.getRowCount() + this.roundUp,this.__vPosition)));
      }
      var _loc3_ = this.getViewMetrics();
      var _loc4_ = this.__hScrollPolicy == "off" ? this.__width - _loc3_.left - _loc3_.right : this.__maxHPosition + this.__width - _loc3_.left - _loc3_.right;
      if(_loc2_ == undefined)
      {
         _loc2_ = 0;
      }
      this.setScrollProperties(_loc4_,1,_loc2_,this.__rowHeight);
      if(this.oldVWidth != _loc4_)
      {
         this.invLayoutContent = true;
      }
      this.oldVWidth = _loc4_;
   }
}
