class mx.controls.TextInput extends mx.core.UIComponent
{
   var __get__height;
   var __get__width;
   var _color;
   var _getTextFormat;
   var _parent;
   var bind;
   var border_mc;
   var createClassObject;
   var dispatchValueChangedEvent;
   var enabled;
   var enterListener;
   var focusTextField;
   var getStyle;
   var label;
   var owner;
   var tabChildren;
   var tabEnabled;
   var tfh;
   var tfw;
   var tfx;
   var tfy;
   var updateModel;
   static var symbolName = "TextInput";
   static var symbolOwner = mx.controls.TextInput;
   static var version = "2.0.2.127";
   var className = "TextInput";
   var initializing = true;
   var clipParameters = {text:1,editable:1,password:1,maxChars:1,restrict:1};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.TextInput.prototype.clipParameters,mx.core.UIComponent.prototype.clipParameters);
   var _maxWidth = mx.core.UIComponent.kStretch;
   var __editable = true;
   var initText = "";
   function TextInput()
   {
      super();
   }
   function addEventListener(_loc3_, _loc4_)
   {
      if(_loc3_ == "enter")
      {
         this.addEnterEvents();
      }
      super.addEventListener(_loc3_,_loc4_);
   }
   function enterOnKeyDown()
   {
      if(Key.getAscii() == 13)
      {
         this.owner.dispatchEvent({type:"enter"});
      }
   }
   function addEnterEvents()
   {
      if(this.enterListener == undefined)
      {
         this.enterListener = new Object();
         this.enterListener.owner = this;
         this.enterListener.onKeyDown = this.enterOnKeyDown;
      }
   }
   function init(Void)
   {
      super.init();
      this.label.styleName = this;
      this.tabChildren = true;
      this.tabEnabled = false;
      this.focusTextField = this.label;
      this._color = mx.core.UIObject.textColorList;
      this.label.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this.label.onKillFocus = function(_loc2_)
      {
         this._parent.onKillFocus(_loc2_);
      };
      this.label.drawFocus = function(_loc2_)
      {
         this._parent.drawFocus(_loc2_);
      };
      this.label.onChanged = this.onLabelChanged;
   }
   function setFocus()
   {
      Selection.setFocus(this.label);
   }
   function onLabelChanged(Void)
   {
      this._parent.dispatchEvent({type:"change"});
      this._parent.dispatchValueChangedEvent(this.text);
   }
   function createChildren(Void)
   {
      super.createChildren();
      if(this.border_mc == undefined)
      {
         this.createClassObject(_global.styles.rectBorderClass,"border_mc",0,{styleName:this});
      }
      this.border_mc.swapDepths(this.label);
      this.label.autoSize = "none";
   }
   function get html()
   {
      return this.getHtml();
   }
   function set html(_loc2_)
   {
      this.setHtml(_loc2_);
   }
   function getHtml()
   {
      return this.label.html;
   }
   function setHtml(_loc2_)
   {
      if(_loc2_ != this.label.html)
      {
         this.label.html = _loc2_;
      }
   }
   function get text()
   {
      return this.getText();
   }
   function set text(_loc2_)
   {
      this.setText(_loc2_);
   }
   function getText()
   {
      if(this.initializing)
      {
         return this.initText;
      }
      if(this.label.html == true)
      {
         return this.label.htmlText;
      }
      return this.label.text;
   }
   function setText(_loc3_)
   {
      var _loc2_;
      if(this.initializing)
      {
         this.initText = _loc3_;
      }
      else
      {
         _loc2_ = this.label;
         if(_loc2_.html == true)
         {
            _loc2_.htmlText = _loc3_;
         }
         else
         {
            _loc2_.text = _loc3_;
         }
      }
      this.dispatchValueChangedEvent(_loc3_);
   }
   function size(Void)
   {
      this.border_mc.setSize(this.width,this.height);
      var _loc2_ = this.border_mc.borderMetrics;
      var _loc6_ = _loc2_.left + _loc2_.right;
      var _loc3_ = _loc2_.top + _loc2_.bottom;
      var _loc5_ = _loc2_.left;
      var _loc4_ = _loc2_.top;
      this.tfx = _loc5_;
      this.tfy = _loc4_;
      this.tfw = this.width - _loc6_;
      this.tfh = this.height - _loc3_;
      this.label.move(this.tfx,this.tfy);
      this.label.setSize(this.tfw,this.tfh + 1);
   }
   function setEnabled(_loc3_)
   {
      this.label.type = !(this.__editable == true || _loc3_ == false) ? "dynamic" : "input";
      this.label.selectable = _loc3_;
      var _loc2_ = this.getStyle(!_loc3_ ? "disabledColor" : "color");
      if(_loc2_ == undefined)
      {
         _loc2_ = !_loc3_ ? 8947848 : 0;
      }
      this.setColor(_loc2_);
   }
   function setColor(_loc2_)
   {
      this.label.textColor = _loc2_;
   }
   function onKillFocus(_loc3_)
   {
      if(this.enterListener != undefined)
      {
         Key.removeListener(this.enterListener);
      }
      if(this.bind != undefined)
      {
         this.updateModel(this.text);
      }
      super.onKillFocus(_loc3_);
   }
   function onSetFocus(oldFocus)
   {
      var f = Selection.getFocus();
      var o = eval(f);
      if(o != this.label)
      {
         Selection.setFocus(this.label);
         return undefined;
      }
      if(this.enterListener != undefined)
      {
         Key.addListener(this.enterListener);
      }
      super.onSetFocus(oldFocus);
   }
   function draw(Void)
   {
      var _loc2_ = this.label;
      var _loc4_ = this.getText();
      if(this.initializing)
      {
         this.initializing = false;
         delete this.initText;
      }
      var _loc3_ = this._getTextFormat();
      _loc2_.embedFonts = _loc3_.embedFonts == true;
      if(_loc3_ != undefined)
      {
         _loc2_.setTextFormat(_loc3_);
         _loc2_.setNewTextFormat(_loc3_);
      }
      _loc2_.multiline = false;
      _loc2_.wordWrap = false;
      if(_loc2_.html == true)
      {
         _loc2_.setTextFormat(_loc3_);
         _loc2_.htmlText = _loc4_;
      }
      else
      {
         _loc2_.text = _loc4_;
      }
      _loc2_.type = !(this.__editable == true || this.enabled == false) ? "dynamic" : "input";
      this.size();
   }
   function setEditable(_loc2_)
   {
      this.__editable = _loc2_;
      this.label.type = !_loc2_ ? "dynamic" : "input";
   }
   function get maxChars()
   {
      return this.label.maxChars;
   }
   function set maxChars(_loc2_)
   {
      this.label.maxChars = _loc2_;
   }
   function get length()
   {
      return this.label.length;
   }
   function get restrict()
   {
      return this.label.restrict;
   }
   function set restrict(_loc2_)
   {
      this.label.restrict = _loc2_ != "" ? _loc2_ : null;
   }
   function get hPosition()
   {
      return this.label.hscroll;
   }
   function set hPosition(_loc2_)
   {
      this.label.hscroll = _loc2_;
   }
   function get maxHPosition()
   {
      return this.label.maxhscroll;
   }
   function get editable()
   {
      return this.__editable;
   }
   function set editable(_loc2_)
   {
      this.setEditable(_loc2_);
   }
   function get password()
   {
      return this.label.password;
   }
   function set password(_loc2_)
   {
      this.label.password = _loc2_;
   }
   function get tabIndex()
   {
      return this.label.tabIndex;
   }
   function set tabIndex(_loc2_)
   {
      this.label.tabIndex = _loc2_;
   }
   function set _accProps(_loc2_)
   {
      this.label._accProps = _loc2_;
   }
   function get _accProps()
   {
      return this.label._accProps;
   }
}
