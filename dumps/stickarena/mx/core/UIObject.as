class mx.core.UIObject extends MovieClip
{
   var __height;
   var __width;
   var _endInit;
   var _minHeight;
   var _minWidth;
   var _tf;
   var buildDepthTable;
   var childrenCreated;
   var className;
   var color;
   var createAccessibilityImplementation;
   var dispatchEvent;
   var embedFonts;
   var findNextAvailableDepth;
   var fontFamily;
   var fontSize;
   var fontStyle;
   var fontWeight;
   var hasOwnProperty;
   var idNames;
   var ignoreClassStyleDeclaration;
   var initProperties;
   var marginLeft;
   var marginRight;
   var methodTable;
   var onEnterFrame;
   var styleName;
   var stylecache;
   var textAlign;
   var textDecoration;
   var textIndent;
   var tfList;
   var validateNow;
   static var symbolName = "UIObject";
   static var symbolOwner = mx.core.UIObject;
   static var version = "2.0.2.127";
   static var textColorList = {color:1,disabledColor:1};
   var invalidateFlag = false;
   var lineWidth = 1;
   var lineColor = 0;
   var tabEnabled = false;
   var clipParameters = {visible:1,minHeight:1,minWidth:1,maxHeight:1,maxWidth:1,preferredHeight:1,preferredWidth:1};
   function UIObject()
   {
      super();
      this.constructObject();
   }
   function get width()
   {
      return this._width;
   }
   function get height()
   {
      return this._height;
   }
   function get left()
   {
      return this._x;
   }
   function get x()
   {
      return this._x;
   }
   function get top()
   {
      return this._y;
   }
   function get y()
   {
      return this._y;
   }
   function get right()
   {
      return this._parent.width - (this._x + this.width);
   }
   function get bottom()
   {
      return this._parent.height - (this._y + this.height);
   }
   function getMinHeight(Void)
   {
      return this._minHeight;
   }
   function setMinHeight(_loc2_)
   {
      this._minHeight = _loc2_;
   }
   function get minHeight()
   {
      return this.getMinHeight();
   }
   function set minHeight(_loc2_)
   {
      this.setMinHeight(_loc2_);
   }
   function getMinWidth(Void)
   {
      return this._minWidth;
   }
   function setMinWidth(_loc2_)
   {
      this._minWidth = _loc2_;
   }
   function get minWidth()
   {
      return this.getMinWidth();
   }
   function set minWidth(_loc2_)
   {
      this.setMinWidth(_loc2_);
   }
   function setVisible(_loc2_, _loc4_)
   {
      if(_loc2_ != this._visible)
      {
         this._visible = _loc2_;
         if(_loc4_ != true)
         {
            this.dispatchEvent({type:(!_loc2_ ? "hide" : "reveal")});
         }
      }
   }
   function get visible()
   {
      return this._visible;
   }
   function set visible(_loc2_)
   {
      this.setVisible(_loc2_,false);
   }
   function get scaleX()
   {
      return this._xscale;
   }
   function set scaleX(_loc2_)
   {
      this._xscale = _loc2_;
   }
   function get scaleY()
   {
      return this._yscale;
   }
   function set scaleY(_loc2_)
   {
      this._yscale = _loc2_;
   }
   function doLater(_loc2_, _loc3_)
   {
      if(this.methodTable == undefined)
      {
         this.methodTable = new Array();
      }
      this.methodTable.push({obj:_loc2_,fn:_loc3_});
      this.onEnterFrame = this.doLaterDispatcher;
   }
   function doLaterDispatcher(Void)
   {
      delete this.onEnterFrame;
      if(this.invalidateFlag)
      {
         this.redraw();
      }
      var _loc3_ = this.methodTable;
      this.methodTable = new Array();
      var _loc2_;
      if(_loc3_.length > 0)
      {
         while((_loc2_ = _loc3_.shift()) != undefined)
         {
            _loc2_.obj[_loc2_.fn]();
         }
      }
   }
   function cancelAllDoLaters(Void)
   {
      delete this.onEnterFrame;
      this.methodTable = new Array();
   }
   function invalidate(Void)
   {
      this.invalidateFlag = true;
      this.onEnterFrame = this.doLaterDispatcher;
   }
   function invalidateStyle(Void)
   {
      this.invalidate();
   }
   function redraw(_loc4_)
   {
      var _loc2_;
      if(this.invalidateFlag || _loc4_)
      {
         this.invalidateFlag = false;
         for(_loc2_ in this.tfList)
         {
            this.tfList[_loc2_].draw();
         }
         this.draw();
         this.dispatchEvent({type:"draw"});
      }
   }
   function draw(Void)
   {
   }
   function move(_loc7_, _loc6_, _loc5_)
   {
      var _loc3_ = this._x;
      var _loc2_ = this._y;
      this._x = _loc7_;
      this._y = _loc6_;
      if(_loc5_ != true)
      {
         this.dispatchEvent({type:"move",oldX:_loc3_,oldY:_loc2_});
      }
   }
   function setSize(_loc7_, _loc6_, _loc5_)
   {
      var _loc3_ = this.__width;
      var _loc2_ = this.__height;
      this.__width = _loc7_;
      this.__height = _loc6_;
      this.size();
      if(_loc5_ != true)
      {
         this.dispatchEvent({type:"resize",oldWidth:_loc3_,oldHeight:_loc2_});
      }
   }
   function size(Void)
   {
      this._width = this.__width;
      this._height = this.__height;
   }
   function drawRect(_loc3_, _loc2_, _loc5_, _loc4_)
   {
      this.moveTo(_loc3_,_loc2_);
      this.lineTo(_loc5_,_loc2_);
      this.lineTo(_loc5_,_loc4_);
      this.lineTo(_loc3_,_loc4_);
      this.lineTo(_loc3_,_loc2_);
   }
   function createLabel(_loc3_, _loc5_, _loc4_)
   {
      this.createTextField(_loc3_,_loc5_,0,0,0,0);
      var _loc2_ = this[_loc3_];
      _loc2_._color = mx.core.UIObject.textColorList;
      _loc2_._visible = false;
      _loc2_.__text = _loc4_;
      if(this.tfList == undefined)
      {
         this.tfList = new Object();
      }
      this.tfList[_loc3_] = _loc2_;
      _loc2_.invalidateStyle();
      this.invalidate();
      _loc2_.styleName = this;
      return _loc2_;
   }
   function createObject(_loc4_, _loc2_, _loc5_, _loc3_)
   {
      return this.attachMovie(_loc4_,_loc2_,_loc5_,_loc3_);
   }
   function createClassObject(_loc2_, _loc5_, _loc7_, _loc6_)
   {
      var _loc3_ = _loc2_.symbolName == undefined;
      if(_loc3_)
      {
         Object.registerClass(_loc2_.symbolOwner.symbolName,_loc2_);
      }
      var _loc4_ = mx.core.UIObject(this.createObject(_loc2_.symbolOwner.symbolName,_loc5_,_loc7_,_loc6_));
      if(_loc3_)
      {
         Object.registerClass(_loc2_.symbolOwner.symbolName,_loc2_.symbolOwner);
      }
      return _loc4_;
   }
   function createEmptyObject(_loc2_, _loc3_)
   {
      return this.createClassObject(mx.core.UIObject,_loc2_,_loc3_);
   }
   function destroyObject(_loc6_)
   {
      var _loc2_ = this[_loc6_];
      var _loc4_;
      var _loc5_;
      var _loc3_;
      if(_loc2_.getDepth() < 0)
      {
         _loc4_ = this.buildDepthTable();
         _loc5_ = this.findNextAvailableDepth(0,_loc4_,"up");
         _loc3_ = _loc5_;
         _loc2_.swapDepths(_loc3_);
      }
      _loc2_.removeMovieClip();
      delete this[_loc6_];
   }
   function getSkinIDName(_loc2_)
   {
      return this.idNames[_loc2_];
   }
   function setSkin(_loc4_, _loc3_, _loc5_)
   {
      if(_global.skinRegistry[_loc3_] == undefined)
      {
         mx.skins.SkinElement.registerElement(_loc3_,mx.skins.SkinElement);
      }
      return this.createObject(_loc3_,this.getSkinIDName(_loc4_),_loc4_,_loc5_);
   }
   function createSkin(_loc3_)
   {
      var _loc2_ = this.getSkinIDName(_loc3_);
      this.createEmptyObject(_loc2_,_loc3_);
      return this[_loc2_];
   }
   function createChildren(Void)
   {
   }
   function _createChildren(Void)
   {
      this.createChildren();
      this.childrenCreated = true;
   }
   function constructObject(Void)
   {
      if(this._name == undefined)
      {
         return undefined;
      }
      this.init();
      this._createChildren();
      this.createAccessibilityImplementation();
      this._endInit();
      if(this.validateNow)
      {
         this.redraw(true);
      }
      else
      {
         this.invalidate();
      }
   }
   function initFromClipParameters(Void)
   {
      var _loc4_ = false;
      var _loc2_;
      for(_loc2_ in this.clipParameters)
      {
         if(this.hasOwnProperty(_loc2_))
         {
            _loc4_ = true;
            this["def_" + _loc2_] = this[_loc2_];
            delete this[_loc2_];
         }
      }
      var _loc3_;
      if(_loc4_)
      {
         for(_loc2_ in this.clipParameters)
         {
            _loc3_ = this["def_" + _loc2_];
            if(_loc3_ != undefined)
            {
               this[_loc2_] = _loc3_;
            }
         }
      }
   }
   function init(Void)
   {
      this.__width = this._width;
      this.__height = this._height;
      if(this.initProperties == undefined)
      {
         this.initFromClipParameters();
      }
      else
      {
         this.initProperties();
      }
      if(_global.cascadingStyles == true)
      {
         this.stylecache = new Object();
      }
   }
   function getClassStyleDeclaration(Void)
   {
      var _loc4_ = this;
      var _loc3_ = this.className;
      while(_loc3_ != undefined)
      {
         if(this.ignoreClassStyleDeclaration[_loc3_] == undefined)
         {
            if(_global.styles[_loc3_] != undefined)
            {
               return _global.styles[_loc3_];
            }
         }
         _loc4_ = _loc4_.__proto__;
         _loc3_ = _loc4_.className;
      }
   }
   function setColor(color)
   {
   }
   function __getTextFormat(_loc4_, _loc7_)
   {
      var _loc8_ = this.stylecache.tf;
      var _loc3_;
      if(_loc8_ != undefined)
      {
         for(_loc3_ in mx.styles.StyleManager.TextFormatStyleProps)
         {
            if(_loc7_ || mx.styles.StyleManager.TextFormatStyleProps[_loc3_])
            {
               if(_loc4_[_loc3_] == undefined)
               {
                  _loc4_[_loc3_] = _loc8_[_loc3_];
               }
            }
         }
         return false;
      }
      var _loc6_ = false;
      var _loc5_;
      for(_loc3_ in mx.styles.StyleManager.TextFormatStyleProps)
      {
         if(_loc7_ || mx.styles.StyleManager.TextFormatStyleProps[_loc3_])
         {
            if(_loc4_[_loc3_] == undefined)
            {
               _loc5_ = this._tf[_loc3_];
               if(_loc5_ != undefined)
               {
                  _loc4_[_loc3_] = _loc5_;
               }
               else if(_loc3_ == "font" && this.fontFamily != undefined)
               {
                  _loc4_[_loc3_] = this.fontFamily;
               }
               else if(_loc3_ == "size" && this.fontSize != undefined)
               {
                  _loc4_[_loc3_] = this.fontSize;
               }
               else if(_loc3_ == "color" && this.color != undefined)
               {
                  _loc4_[_loc3_] = this.color;
               }
               else if(_loc3_ == "leftMargin" && this.marginLeft != undefined)
               {
                  _loc4_[_loc3_] = this.marginLeft;
               }
               else if(_loc3_ == "rightMargin" && this.marginRight != undefined)
               {
                  _loc4_[_loc3_] = this.marginRight;
               }
               else if(_loc3_ == "italic" && this.fontStyle != undefined)
               {
                  _loc4_[_loc3_] = this.fontStyle == _loc3_;
               }
               else if(_loc3_ == "bold" && this.fontWeight != undefined)
               {
                  _loc4_[_loc3_] = this.fontWeight == _loc3_;
               }
               else if(_loc3_ == "align" && this.textAlign != undefined)
               {
                  _loc4_[_loc3_] = this.textAlign;
               }
               else if(_loc3_ == "indent" && this.textIndent != undefined)
               {
                  _loc4_[_loc3_] = this.textIndent;
               }
               else if(_loc3_ == "underline" && this.textDecoration != undefined)
               {
                  _loc4_[_loc3_] = this.textDecoration == _loc3_;
               }
               else if(_loc3_ == "embedFonts" && this.embedFonts != undefined)
               {
                  _loc4_[_loc3_] = this.embedFonts;
               }
               else
               {
                  _loc6_ = true;
               }
            }
         }
      }
      var _loc9_;
      if(_loc6_)
      {
         _loc9_ = this.styleName;
         if(_loc9_ != undefined)
         {
            if(typeof _loc9_ != "string")
            {
               _loc6_ = _loc9_.__getTextFormat(_loc4_,true,this);
            }
            else if(_global.styles[_loc9_] != undefined)
            {
               _loc6_ = _global.styles[_loc9_].__getTextFormat(_loc4_,true,this);
            }
         }
      }
      var _loc10_;
      if(_loc6_)
      {
         _loc10_ = this.getClassStyleDeclaration();
         if(_loc10_ != undefined)
         {
            _loc6_ = _loc10_.__getTextFormat(_loc4_,true,this);
         }
      }
      if(_loc6_)
      {
         if(_global.cascadingStyles)
         {
            if(this._parent != undefined)
            {
               _loc6_ = this._parent.__getTextFormat(_loc4_,false);
            }
         }
      }
      if(_loc6_)
      {
         _loc6_ = _global.style.__getTextFormat(_loc4_,true,this);
      }
      return _loc6_;
   }
   function _getTextFormat(Void)
   {
      var _loc2_ = this.stylecache.tf;
      if(_loc2_ != undefined)
      {
         return _loc2_;
      }
      _loc2_ = new TextFormat();
      this.__getTextFormat(_loc2_,true);
      this.stylecache.tf = _loc2_;
      var _loc3_;
      if(this.enabled == false)
      {
         _loc3_ = this.getStyle("disabledColor");
         _loc2_.color = _loc3_;
      }
      return _loc2_;
   }
   function getStyleName(Void)
   {
      var _loc2_ = this.styleName;
      if(_loc2_ != undefined)
      {
         if(typeof _loc2_ != "string")
         {
            return _loc2_.getStyleName();
         }
         return _loc2_;
      }
      if(this._parent != undefined)
      {
         return this._parent.getStyleName();
      }
      return undefined;
   }
   function getStyle(_loc4_)
   {
      var _loc3_;
      _global.getStyleCounter++;
      if(this[_loc4_] != undefined)
      {
         return this[_loc4_];
      }
      var _loc6_ = this.styleName;
      var _loc7_;
      if(_loc6_ != undefined)
      {
         if(typeof _loc6_ != "string")
         {
            _loc3_ = _loc6_.getStyle(_loc4_);
         }
         else
         {
            _loc7_ = _global.styles[_loc6_];
            _loc3_ = _loc7_.getStyle(_loc4_);
         }
      }
      if(_loc3_ != undefined)
      {
         return _loc3_;
      }
      _loc7_ = this.getClassStyleDeclaration();
      if(_loc7_ != undefined)
      {
         _loc3_ = _loc7_[_loc4_];
      }
      if(_loc3_ != undefined)
      {
         return _loc3_;
      }
      var _loc5_;
      if(_global.cascadingStyles)
      {
         if(mx.styles.StyleManager.isInheritingStyle(_loc4_) || mx.styles.StyleManager.isColorStyle(_loc4_))
         {
            _loc5_ = this.stylecache;
            if(_loc5_ != undefined)
            {
               if(_loc5_[_loc4_] != undefined)
               {
                  return _loc5_[_loc4_];
               }
            }
            if(this._parent != undefined)
            {
               _loc3_ = this._parent.getStyle(_loc4_);
            }
            else
            {
               _loc3_ = _global.style[_loc4_];
            }
            if(_loc5_ != undefined)
            {
               _loc5_[_loc4_] = _loc3_;
            }
            return _loc3_;
         }
      }
      if(_loc3_ == undefined)
      {
         _loc3_ = _global.style[_loc4_];
      }
      return _loc3_;
   }
   static function mergeClipParameters(_loc2_, _loc1_)
   {
      for(var _loc3_ in _loc1_)
      {
         _loc2_[_loc3_] = _loc1_[_loc3_];
      }
      return true;
   }
}
