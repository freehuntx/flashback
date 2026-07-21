class mx.controls.UIScrollBar extends mx.controls.scrollClasses.ScrollBar
{
   var __height;
   var __width;
   var _parent;
   var _rotation;
   var _xscale;
   var dispatchEvent;
   var hPosition;
   var hScroller;
   var hscroll;
   var isScrolling;
   var onChanged;
   var onScroller;
   var scroll;
   var synchScroll;
   var textField;
   var vPosition;
   var vScroller;
   var wasHorizontal;
   static var symbolName = "UIScrollBar";
   static var symbolOwner = mx.controls.UIScrollBar;
   var className = "UIScrollBar";
   var clipParameters = {_targetInstanceName:1,horizontal:1};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.UIScrollBar.prototype.clipParameters);
   static var version = "2.0.2.127";
   function UIScrollBar()
   {
      super();
   }
   function init(Void)
   {
      super.init();
      this.textField.owner = this;
      this.horizontal = this.wasHorizontal;
      if(this.horizontal)
      {
         this.textField == undefined ? super.setSize(this.__width,this.__height) : super.setSize(this.textField._width,16);
      }
      else
      {
         this.textField == undefined ? super.setSize(this.__width,this.__height) : super.setSize(16,this.textField._height);
      }
      var _loc3_;
      if(this.horizontal)
      {
         _loc3_ = this.__width;
         this.__height = this.__width;
         this.width = _loc3_;
         this.__width = 16;
      }
      this.textField.onScroller = function()
      {
         this.hPosition = this.hscroll;
         this.vPosition = this.scroll - 1;
      };
      if(this._targetInstanceName != undefined)
      {
         this.setScrollTarget(this._targetInstanceName);
         this._targetInstanceName.addListener(this);
      }
   }
   function get _targetInstanceName()
   {
      return this.textField;
   }
   function get height()
   {
      if(this.wasHorizontal)
      {
         return this.__width;
      }
      return this.__height;
   }
   function get width()
   {
      if(this.wasHorizontal)
      {
         return this.__height;
      }
      return this.__width;
   }
   function size(Void)
   {
      super.size();
      this.onTextChanged();
   }
   function draw()
   {
      super.draw();
   }
   function set _targetInstanceName(_loc2_)
   {
      if(_loc2_ == undefined)
      {
         this.textField.removeListener(this);
         delete this.textField[!this.horizontal ? "vScroller" : "hScroller"];
         if(this.textField.hScroller != undefined && this.textField.vScroller != undefined)
         {
            this.textField.unwatch("text");
            this.textField.unwatch("htmltext");
         }
      }
      var _loc3_ = this._parent[_loc2_];
      this.textField = this._parent[_loc2_];
      this.onTextChanged();
   }
   function setSize(_loc4_, _loc3_)
   {
      if(this.horizontal)
      {
         super.setSize(_loc3_,_loc4_);
      }
      else
      {
         super.setSize(_loc4_,_loc3_);
      }
   }
   function onTextChanged(Void)
   {
      if(this.textField == undefined)
      {
         return undefined;
      }
      clearInterval(this.synchScroll);
      var _loc2_;
      var _loc3_;
      if(this.horizontal)
      {
         _loc2_ = this.textField.hscroll;
         this.setScrollProperties(this.textField._width,0,this.textField.maxhscroll);
         this.scrollPosition = Math.min(_loc2_,this.textField.maxhscroll);
      }
      else
      {
         _loc2_ = this.textField.scroll;
         _loc3_ = this.textField.bottomScroll - this.textField.scroll;
         this.setScrollProperties(_loc3_,1,this.textField.maxscroll);
         this.scrollPosition = Math.min(_loc2_,this.textField.maxscroll);
      }
   }
   function get horizontal()
   {
      return this.wasHorizontal;
   }
   function set horizontal(_loc2_)
   {
      this.wasHorizontal = _loc2_;
      if(_loc2_ and this.initializing)
      {
         if(this._rotation == 90)
         {
            return;
         }
         this._xscale = -100;
         this._rotation = -90;
      }
      if(!this.initializing)
      {
         if(_loc2_)
         {
            if(this._rotation == 0)
            {
               this._rotation = -90;
               this._xscale = -100;
            }
         }
         else if(this._rotation == -90)
         {
            this._rotation = 0;
            this._xscale = 100;
         }
      }
   }
   function callback(prop, oldval, _loc2_)
   {
      clearInterval(this.hScroller.synchScroll);
      clearInterval(this.vScroller.synchScroll);
      this.hScroller.synchScroll = setInterval(this.hScroller,"onTextChanged",50);
      this.vScroller.synchScroll = setInterval(this.vScroller,"onTextChanged",50);
      return _loc2_;
   }
   function setScrollTarget(_loc2_)
   {
      if(_loc2_ == undefined)
      {
         this.textField.removeListener(this);
         delete this.textField[!this.horizontal ? "vScroller" : "hScroller"];
         if(this.textField.hScroller != undefined && this.textField.vScroller != undefined)
         {
            this.textField.unwatch("text");
            this.textField.unwatch("htmltext");
         }
      }
      this.textField = undefined;
      if(!(_loc2_ instanceof TextField))
      {
         return undefined;
      }
      this.textField = _loc2_;
      if(this.horizontal)
      {
         this.textField.hScroller = this;
         this.textField.hScroller.lineScrollSize = 5;
      }
      else
      {
         this.textField.vScroller = this;
         this.textField.vScroller.lineScrollSize = 1;
      }
      this.onTextChanged();
      this.onChanged = function(Void)
      {
         this.onTextChanged();
      };
      this.onScroller = function(Void)
      {
         if(!this.isScrolling)
         {
            if(!this.horizontal)
            {
               this.scrollPosition = this.textField.scroll;
            }
            else
            {
               this.scrollPosition = this.textField.hscroll;
            }
         }
      };
      this.textField.addListener(this);
      this.textField.watch("text",this.callback);
      this.textField.watch("htmlText",this.callback);
   }
   function scrollHandler(Void)
   {
      var _loc2_;
      if(this.horizontal)
      {
         _loc2_ = this.textField.background;
         this.textField.hscroll = this.scrollPosition;
         this.textField.background = _loc2_;
      }
      else
      {
         this.textField.scroll = this.scrollPosition;
      }
   }
   function setEnabled(_loc3_)
   {
      super.setEnabled(_loc3_);
      if(_loc3_)
      {
         this.textField.addListener(this);
      }
      else
      {
         this.textField.removeListener();
      }
   }
   function dispatchScrollEvent(detail)
   {
      this.dispatchEvent({type:"scroll"});
   }
}
