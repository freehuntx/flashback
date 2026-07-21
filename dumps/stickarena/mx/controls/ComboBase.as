class mx.controls.ComboBase extends mx.core.UIComponent
{
   var __border;
   var __get__height;
   var __height;
   var __width;
   var _parent;
   var border_mc;
   var boundingBox_mc;
   var createClassObject;
   var downArrow_mc;
   var focusTextField;
   var getFocusManager;
   var getValue;
   var height;
   var oldOnKillFocus;
   var oldOnSetFocus;
   var onDownArrow;
   var onDragOutWas;
   var onDragOverWas;
   var onPressWas;
   var tabChildren;
   var tabEnabled;
   var text_mc;
   var trackAsMenu;
   var trackAsMenuWas;
   static var mixIt1 = mx.controls.listclasses.DataSelector.Initialize(mx.controls.ComboBase);
   static var symbolName = "ComboBase";
   static var symbolOwner = mx.controls.ComboBase;
   static var version = "2.0.2.127";
   var _editable = false;
   var downArrowUpName = "ScrollDownArrowUp";
   var downArrowDownName = "ScrollDownArrowDown";
   var downArrowOverName = "ScrollDownArrowOver";
   var downArrowDisabledName = "ScrollDownArrowDisabled";
   var wrapDownArrowButton = true;
   var DSgetValue = mx.controls.listclasses.DataSelector.prototype.getValue;
   var multipleSelection = false;
   function ComboBase()
   {
      super();
      this.getValue = this._getValue;
   }
   function init()
   {
      super.init();
      this.tabEnabled = !this._editable;
      this.tabChildren = this._editable;
      this.boundingBox_mc._visible = false;
      this.boundingBox_mc._width = this.boundingBox_mc._height = 0;
   }
   function createChildren()
   {
      var _loc3_ = new Object();
      _loc3_.styleName = this;
      if(this.downArrow_mc == undefined)
      {
         _loc3_.falseUpSkin = this.downArrowUpName;
         _loc3_.falseOverSkin = this.downArrowOverName;
         _loc3_.falseDownSkin = this.downArrowDownName;
         _loc3_.falseDisabledSkin = this.downArrowDisabledName;
         _loc3_.validateNow = true;
         _loc3_.tabEnabled = false;
         this.createClassObject(mx.controls.SimpleButton,"downArrow_mc",19,_loc3_);
         this.downArrow_mc.buttonDownHandler = this.onDownArrow;
         this.downArrow_mc.useHandCursor = false;
         this.downArrow_mc.onPressWas = this.downArrow_mc.onPress;
         this.downArrow_mc.onPress = function()
         {
            this.trackAsMenuWas = this.trackAsMenu;
            this.trackAsMenu = true;
            if(!this._editable)
            {
               this._parent.text_mc.trackAsMenu = this.trackAsMenu;
            }
            this.onPressWas();
         };
         this.downArrow_mc.onDragOutWas = this.downArrow_mc.onDragOut;
         this.downArrow_mc.onDragOut = function()
         {
            this.trackAsMenuWas = this.trackAsMenu;
            this.trackAsMenu = false;
            if(!this._editable)
            {
               this._parent.text_mc.trackAsMenu = this.trackAsMenu;
            }
            this.onDragOutWas();
         };
         this.downArrow_mc.onDragOverWas = this.downArrow_mc.onDragOver;
         this.downArrow_mc.onDragOver = function()
         {
            this.trackAsMenu = this.trackAsMenuWas;
            if(!this._editable)
            {
               this._parent.text_mc.trackAsMenu = this.trackAsMenu;
            }
            this.onDragOverWas();
         };
      }
      if(this.border_mc == undefined)
      {
         _loc3_.tabEnabled = false;
         this.createClassObject(_global.styles.rectBorderClass,"border_mc",17,_loc3_);
         this.border_mc.move(0,0);
         this.__border = this.border_mc;
      }
      _loc3_.borderStyle = "none";
      _loc3_.readOnly = !this._editable;
      _loc3_.tabEnabled = this._editable;
      if(this.text_mc == undefined)
      {
         this.createClassObject(mx.controls.TextInput,"text_mc",18,_loc3_);
         this.text_mc.move(0,0);
         this.text_mc.addEnterEvents();
         this.text_mc.enterHandler = this._enterHandler;
         this.text_mc.changeHandler = this._changeHandler;
         this.text_mc.oldOnSetFocus = this.text_mc.onSetFocus;
         this.text_mc.onSetFocus = function()
         {
            this.oldOnSetFocus();
            this._parent.onSetFocus();
         };
         this.text_mc.restrict = "^\x1b";
         this.text_mc.oldOnKillFocus = this.text_mc.onKillFocus;
         this.text_mc.onKillFocus = function(_loc2_)
         {
            this.oldOnKillFocus(_loc2_);
            this._parent.onKillFocus(_loc2_);
         };
         this.text_mc.drawFocus = function(_loc2_)
         {
            this._parent.drawFocus(_loc2_);
         };
         delete this.text_mc.borderStyle;
      }
      this.focusTextField = this.text_mc;
      this.text_mc.owner = this;
      this.layoutChildren(this.__width,this.__height);
   }
   function onKillFocus()
   {
      super.onKillFocus();
      Key.removeListener(this.text_mc);
      this.getFocusManager().defaultPushButtonEnabled = true;
   }
   function onSetFocus()
   {
      super.onSetFocus();
      this.getFocusManager().defaultPushButtonEnabled = false;
      Key.addListener(this.text_mc);
   }
   function setFocus()
   {
      if(this._editable)
      {
         Selection.setFocus(this.text_mc);
      }
      else
      {
         Selection.setFocus(this);
      }
   }
   function setSize(_loc5_, _loc3_, _loc4_)
   {
      super.setSize(_loc5_,_loc3_ != undefined ? _loc3_ : this.height,_loc4_);
   }
   function setEnabled(_loc3_)
   {
      super.setEnabled(_loc3_);
      this.downArrow_mc.enabled = _loc3_;
      this.text_mc.enabled = _loc3_;
   }
   function setEditable(_loc2_)
   {
      this._editable = _loc2_;
      if(this.wrapDownArrowButton == false)
      {
         if(_loc2_)
         {
            this.border_mc.borderStyle = "inset";
            this.text_mc.borderStyle = "inset";
            mx.controls.ComboBase.symbolName = "ComboBox";
            this.invalidateStyle();
         }
         else
         {
            this.border_mc.borderStyle = "comboNonEdit";
            this.text_mc.borderStyle = "dropDown";
            mx.controls.ComboBase.symbolName = "DropDown";
            this.invalidateStyle();
         }
      }
      this.tabEnabled = !_loc2_;
      this.tabChildren = _loc2_;
      this.text_mc.tabEnabled = _loc2_;
      if(_loc2_)
      {
         delete this.text_mc.onPress;
         delete this.text_mc.onRelease;
         delete this.text_mc.onReleaseOutside;
         delete this.text_mc.onDragOut;
         delete this.text_mc.onDragOver;
         delete this.text_mc.onRollOver;
         delete this.text_mc.onRollOut;
      }
      else
      {
         this.text_mc.onPress = function()
         {
            this._parent.downArrow_mc.onPress();
         };
         this.text_mc.onRelease = function()
         {
            this._parent.downArrow_mc.onRelease();
         };
         this.text_mc.onReleaseOutside = function()
         {
            this._parent.downArrow_mc.onReleaseOutside();
         };
         this.text_mc.onDragOut = function()
         {
            this._parent.downArrow_mc.onDragOut();
         };
         this.text_mc.onDragOver = function()
         {
            this._parent.downArrow_mc.onDragOver();
         };
         this.text_mc.onRollOver = function()
         {
            this._parent.downArrow_mc.onRollOver();
         };
         this.text_mc.onRollOut = function()
         {
            this._parent.downArrow_mc.onRollOut();
         };
         this.text_mc.useHandCursor = false;
      }
   }
   function get editable()
   {
      return this._editable;
   }
   function set editable(_loc2_)
   {
      this.setEditable(_loc2_);
   }
   function _getValue()
   {
      return !this._editable ? this.DSgetValue() : this.text_mc.getText();
   }
   function draw()
   {
      this.downArrow_mc.draw();
      this.border_mc.draw();
   }
   function size()
   {
      this.layoutChildren(this.__width,this.__height);
   }
   function setTheme(_loc2_)
   {
      this.downArrowUpName = _loc2_ + "downArrow" + "Up_mc";
      this.downArrowDownName = _loc2_ + "downArrow" + "Down_mc";
      this.downArrowDisabledName = _loc2_ + "downArrow" + "Disabled_mc";
   }
   function get text()
   {
      return this.text_mc.getText();
   }
   function set text(_loc2_)
   {
      this.setText(_loc2_);
   }
   function setText(_loc2_)
   {
      this.text_mc.setText(_loc2_);
   }
   function get textField()
   {
      return this.text_mc;
   }
   function get restrict()
   {
      return this.text_mc.restrict;
   }
   function set restrict(_loc2_)
   {
      this.text_mc.restrict = _loc2_;
   }
   function invalidateStyle()
   {
      this.downArrow_mc.invalidateStyle();
      this.text_mc.invalidateStyle();
      this.border_mc.invalidateStyle();
   }
   function layoutChildren(_loc3_, _loc4_)
   {
      if(this.downArrow_mc == undefined)
      {
         return undefined;
      }
      var _loc2_;
      if(this.wrapDownArrowButton)
      {
         _loc2_ = this.border_mc.borderMetrics;
         this.downArrow_mc._width = this.downArrow_mc._height = _loc4_ - _loc2_.top - _loc2_.bottom;
         this.downArrow_mc.move(_loc3_ - this.downArrow_mc._width - _loc2_.right,_loc2_.top);
         this.border_mc.setSize(_loc3_,_loc4_);
         this.text_mc.setSize(_loc3_ - this.downArrow_mc._width,_loc4_);
      }
      else
      {
         this.downArrow_mc.move(_loc3_ - this.downArrow_mc._width,0);
         this.border_mc.setSize(_loc3_ - this.downArrow_mc.width,_loc4_);
         this.text_mc.setSize(_loc3_ - this.downArrow_mc._width,_loc4_);
         this.downArrow_mc._height = this.height;
      }
   }
   function _changeHandler(obj)
   {
   }
   function _enterHandler(_loc3_)
   {
      var _loc2_ = this._parent;
      _loc3_.target = _loc2_;
      _loc2_.dispatchEvent(_loc3_);
   }
   function get tabIndex()
   {
      return this.text_mc.tabIndex;
   }
   function set tabIndex(_loc2_)
   {
      this.text_mc.tabIndex = _loc2_;
   }
}
