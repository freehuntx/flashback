class mx.controls.ComboBox extends mx.controls.ComboBase
{
   var __dataProvider;
   var __dropdown;
   var __dropdownWidth;
   var __get__height;
   var __initialSelectedIndexOnDropdown;
   var __labelFunction;
   var __labels;
   var __selectedIndexOnDropdown;
   var __set__visible;
   var __width;
   var _parent;
   var _y;
   var border_mc;
   var createObject;
   var data;
   var dataProvider;
   var dispatchEvent;
   var dispatchValueChangedEvent;
   var getStyle;
   var getValue;
   var height;
   var isPressed;
   var length;
   var localToGlobal;
   var mask;
   var owner;
   var selected;
   var selectedIndex;
   var selectedItem;
   var text_mc;
   var width;
   static var symbolName = "ComboBox";
   static var symbolOwner = mx.controls.ComboBox;
   static var version = "2.0.2.127";
   var clipParameters = {labels:1,data:1,editable:1,rowCount:1,dropdownWidth:1};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.ComboBox.prototype.clipParameters,mx.controls.ComboBase.prototype.clipParameters);
   var className = "ComboBox";
   var _showingDropdown = false;
   var __rowCount = 5;
   var dropdownBorderStyle = undefined;
   var initializing = true;
   var __labelField = "label";
   var bInKeyDown = false;
   function ComboBox()
   {
      super();
   }
   function init()
   {
      super.init();
   }
   function createChildren()
   {
      super.createChildren();
      this.editable = this.editable;
      var _loc6_;
      var _loc3_;
      if(this.__labels.length > 0)
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
      this.dropdownWidth = typeof this.__dropdownWidth != "number" ? this.__width : this.__dropdownWidth;
      if(!this._editable)
      {
         this.selectedIndex = 0;
      }
      this.initializing = false;
   }
   function onKillFocus(_loc3_)
   {
      if(this._showingDropdown && _loc3_ != null)
      {
         this.displayDropdown(false);
      }
      super.onKillFocus();
   }
   function getDropdown()
   {
      if(this.initializing)
      {
         return undefined;
      }
      var _loc3_;
      if(!this.hasDropdown())
      {
         _loc3_ = new Object();
         _loc3_.styleName = this;
         if(this.dropdownBorderStyle != undefined)
         {
            _loc3_.borderStyle = this.dropdownBorderStyle;
         }
         _loc3_._visible = false;
         this.__dropdown = mx.managers.PopUpManager.createPopUp(this,mx.controls.List,false,_loc3_,true);
         this.__dropdown.scroller.mask.removeMovieClip();
         if(this.dataProvider == undefined)
         {
            this.dataProvider = new Array();
         }
         this.__dropdown.setDataProvider(this.dataProvider);
         this.__dropdown.selectMultiple = false;
         this.__dropdown.rowCount = this.__rowCount;
         this.__dropdown.selectedIndex = this.selectedIndex;
         this.__dropdown.vScrollPolicy = "auto";
         this.__dropdown.labelField = this.__labelField;
         this.__dropdown.labelFunction = this.__labelFunction;
         this.__dropdown.owner = this;
         this.__dropdown.changeHandler = this._changeHandler;
         this.__dropdown.scrollHandler = this._scrollHandler;
         this.__dropdown.itemRollOverHandler = this._itemRollOverHandler;
         this.__dropdown.itemRollOutHandler = this._itemRollOutHandler;
         this.__dropdown.resizeHandler = this._resizeHandler;
         this.__dropdown.mouseDownOutsideHandler = function(eventObj)
         {
            var _loc3_ = this.owner;
            var _loc4_ = new Object();
            _loc4_.x = _loc3_._root._xmouse;
            _loc4_.y = _loc3_._root._ymouse;
            _loc3_._root.localToGlobal(_loc4_);
            if(!_loc3_.hitTest(_loc4_.x,_loc4_.y,false))
            {
               if(!(!this.wrapDownArrowButton && this.owner.downArrow_mc.hitTest(_root._xmouse,_root._ymouse,false)))
               {
                  _loc3_.displayDropdown(false);
               }
            }
         };
         this.__dropdown.onTweenUpdate = function(_loc2_)
         {
            this._y = _loc2_;
         };
         this.__dropdown.setSize(this.__dropdownWidth,this.__dropdown.height);
         this.createObject("BoundingBox","mask",20);
         this.mask._y = this.border_mc.height;
         this.mask._width = this.__dropdownWidth;
         this.mask._height = this.__dropdown.height;
         this.mask._visible = false;
         this.__dropdown.setMask(this.mask);
      }
      return this.__dropdown;
   }
   function setSize(_loc4_, _loc3_, _loc5_)
   {
      super.setSize(_loc4_,_loc3_,_loc5_);
      this.__dropdownWidth = _loc4_;
      this.__dropdown.rowHeight = _loc3_;
      this.__dropdown.setSize(this.__dropdownWidth,this.__dropdown.height);
   }
   function setEditable(_loc3_)
   {
      super.setEditable(_loc3_);
      if(_loc3_)
      {
         this.text_mc.setText("");
      }
      else
      {
         this.text_mc.setText(this.selectedLabel);
      }
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
   function getLabelField()
   {
      return this.__labelField;
   }
   function get labelField()
   {
      return this.getLabelField();
   }
   function setLabelField(_loc2_)
   {
      this.__dropdown.labelField = this.__labelField = _loc2_;
      this.text_mc.setText(this.selectedLabel);
   }
   function set labelField(_loc2_)
   {
      this.setLabelField(_loc2_);
   }
   function getLabelFunction()
   {
      return this.__labelFunction;
   }
   function get labelFunction()
   {
      return this.getLabelFunction();
   }
   function set labelFunction(_loc2_)
   {
      this.__dropdown.labelFunction = this.__labelFunction = _loc2_;
      this.text_mc.setText(this.selectedLabel);
   }
   function setSelectedItem(_loc3_)
   {
      super.setSelectedItem(_loc3_);
      this.__dropdown.selectedItem = _loc3_;
      this.text_mc.setText(this.selectedLabel);
   }
   function setSelectedIndex(_loc3_)
   {
      super.setSelectedIndex(_loc3_);
      this.__dropdown.selectedIndex = _loc3_;
      if(_loc3_ != undefined)
      {
         this.text_mc.setText(this.selectedLabel);
      }
      this.dispatchValueChangedEvent(this.getValue());
   }
   function setRowCount(_loc2_)
   {
      if(isNaN(_loc2_))
      {
         return undefined;
      }
      this.__rowCount = _loc2_;
      this.__dropdown.setRowCount(_loc2_);
   }
   function get rowCount()
   {
      return Math.max(1,Math.min(this.length,this.__rowCount));
   }
   function set rowCount(_loc2_)
   {
      this.setRowCount(_loc2_);
   }
   function setDropdownWidth(_loc2_)
   {
      this.__dropdownWidth = _loc2_;
      this.__dropdown.setSize(_loc2_,this.__dropdown.height);
   }
   function get dropdownWidth()
   {
      return this.__dropdownWidth;
   }
   function set dropdownWidth(_loc2_)
   {
      this.setDropdownWidth(_loc2_);
   }
   function get dropdown()
   {
      return this.getDropdown();
   }
   function setDataProvider(_loc3_)
   {
      super.setDataProvider(_loc3_);
      this.__dropdown.setDataProvider(_loc3_);
      if(!this._editable)
      {
         this.selectedIndex = 0;
      }
   }
   function open()
   {
      this.displayDropdown(true);
   }
   function close()
   {
      this.displayDropdown(false);
   }
   function get selectedLabel()
   {
      var _loc2_ = this.selectedItem;
      if(_loc2_ == undefined)
      {
         return "";
      }
      if(this.labelFunction != undefined)
      {
         return this.labelFunction(_loc2_);
      }
      if(typeof _loc2_ != "object")
      {
         return _loc2_;
      }
      if(_loc2_[this.labelField] != undefined)
      {
         return _loc2_[this.labelField];
      }
      if(_loc2_.label != undefined)
      {
         return _loc2_.label;
      }
      var _loc3_ = " ";
      for(var _loc4_ in _loc2_)
      {
         if(_loc4_ != "__ID__")
         {
            _loc3_ = _loc2_[_loc4_] + ", " + _loc3_;
         }
      }
      _loc3_ = _loc3_.substring(0,_loc3_.length - 3);
      return _loc3_;
   }
   function hasDropdown()
   {
      return this.__dropdown != undefined && this.__dropdown.valueOf() != undefined;
   }
   function tweenEndShow(_loc4_)
   {
      this._y = _loc4_;
      this.isPressed = true;
      this.owner.dispatchEvent({type:"open",target:this.owner});
   }
   function tweenEndHide(_loc4_)
   {
      this._y = _loc4_;
      this.visible = false;
      this.owner.dispatchEvent({type:"close",target:this.owner});
   }
   function displayDropdown(_loc7_)
   {
      if(_loc7_ == this._showingDropdown)
      {
         return undefined;
      }
      var _loc3_ = new Object();
      _loc3_.x = 0;
      _loc3_.y = this.height;
      this.localToGlobal(_loc3_);
      var _loc2_;
      var _loc5_;
      var _loc8_;
      var _loc6_;
      var _loc4_;
      if(_loc7_)
      {
         this.__selectedIndexOnDropdown = this.selectedIndex;
         this.__initialSelectedIndexOnDropdown = this.selectedIndex;
         this.getDropdown();
         _loc2_ = this.__dropdown;
         _loc2_.isPressed = true;
         _loc2_.rowCount = this.rowCount;
         _loc2_.visible = _loc7_;
         _loc2_._parent.globalToLocal(_loc3_);
         _loc2_.onTweenEnd = this.tweenEndShow;
         if(_loc3_.y + _loc2_.height > Stage.height)
         {
            _loc5_ = _loc3_.y - this.height;
            _loc8_ = _loc5_ - _loc2_.height;
            this.mask._y = - _loc2_.height;
         }
         else
         {
            _loc5_ = _loc3_.y - _loc2_.height;
            _loc8_ = _loc3_.y;
            this.mask._y = this.border_mc.height;
         }
         _loc6_ = _loc2_.selectedIndex;
         if(_loc6_ == undefined)
         {
            _loc6_ = 0;
         }
         _loc4_ = _loc2_.vPosition;
         _loc4_ = _loc6_ - 1;
         _loc4_ = Math.min(Math.max(_loc4_,0),_loc2_.length - _loc2_.rowCount);
         _loc2_.vPosition = _loc4_;
         _loc2_.move(_loc3_.x,_loc5_);
         _loc2_.tween = new mx.effects.Tween(this.__dropdown,_loc5_,_loc8_,this.getStyle("openDuration"));
      }
      else
      {
         this.__dropdown._parent.globalToLocal(_loc3_);
         delete this.__dropdown.dragScrolling;
         this.__dropdown.onTweenEnd = this.tweenEndHide;
         this.__dropdown.tween = new mx.effects.Tween(this.__dropdown,this.__dropdown._y,_loc3_.y - this.__dropdown.height,this.getStyle("openDuration"));
         if(this.__initialSelectedIndexOnDropdown != this.selectedIndex)
         {
            this.dispatchChangeEvent(undefined,this.__initialSelectedIndexOnDropdown,this.selectedIndex);
         }
      }
      var _loc9_ = this.getStyle("openEasing");
      if(_loc9_ != undefined)
      {
         this.__dropdown.tween.easingEquation = _loc9_;
      }
      this._showingDropdown = _loc7_;
   }
   function onDownArrow()
   {
      this._parent.displayDropdown(!this._parent._showingDropdown);
   }
   function keyDown(_loc2_)
   {
      var _loc3_;
      if(_loc2_.ctrlKey && _loc2_.code == 40)
      {
         this.displayDropdown(true);
      }
      else if(_loc2_.ctrlKey && _loc2_.code == 38)
      {
         this.displayDropdown(false);
         this.dispatchChangeEvent(undefined,this.__selectedIndexOnDropdown,this.selectedIndex);
      }
      else if(_loc2_.code == 27)
      {
         this.displayDropdown(false);
      }
      else if(_loc2_.code == 13)
      {
         if(this._showingDropdown)
         {
            this.selectedIndex = this.__dropdown.selectedIndex;
            this.displayDropdown(false);
         }
      }
      else if(!this._editable || _loc2_.code == 38 || _loc2_.code == 40 || _loc2_.code == 33 || _loc2_.code == 34)
      {
         this.selectedIndex = 0 + this.selectedIndex;
         this.bInKeyDown = true;
         _loc3_ = this.dropdown;
         _loc3_.keyDown(_loc2_);
         this.bInKeyDown = false;
         this.selectedIndex = this.__dropdown.selectedIndex;
      }
   }
   function invalidateStyle(_loc3_)
   {
      this.__dropdown.invalidateStyle(_loc3_);
      super.invalidateStyle(_loc3_);
   }
   function changeTextStyleInChildren(_loc3_)
   {
      if(this.dropdown.stylecache != undefined)
      {
         delete this.dropdown.stylecache[_loc3_];
         delete this.dropdown.stylecache.tf;
      }
      this.__dropdown.changeTextStyleInChildren(_loc3_);
      super.changeTextStyleInChildren(_loc3_);
   }
   function changeColorStyleInChildren(_loc5_, _loc3_, _loc4_)
   {
      if(this.dropdown.stylecache != undefined)
      {
         delete this.dropdown.stylecache[_loc3_];
         delete this.dropdown.stylecache.tf;
      }
      this.__dropdown.changeColorStyleInChildren(_loc5_,_loc3_,_loc4_);
      super.changeColorStyleInChildren(_loc5_,_loc3_,_loc4_);
   }
   function notifyStyleChangeInChildren(_loc5_, _loc3_, _loc4_)
   {
      if(this.dropdown.stylecache != undefined)
      {
         delete this.dropdown.stylecache[_loc3_];
         delete this.dropdown.stylecache.tf;
      }
      this.__dropdown.notifyStyleChangeInChildren(_loc5_,_loc3_,_loc4_);
      super.notifyStyleChangeInChildren(_loc5_,_loc3_,_loc4_);
   }
   function onUnload()
   {
      this.__dropdown.removeMovieClip();
   }
   function _resizeHandler()
   {
      var _loc2_ = this.owner;
      _loc2_.mask._width = this.width;
      _loc2_.mask._height = this.height;
   }
   function _changeHandler(_loc4_)
   {
      var _loc2_ = this.owner;
      var _loc3_ = _loc2_.selectedIndex;
      _loc4_.target = _loc2_;
      if(this == this.owner.text_mc)
      {
         _loc2_.selectedIndex = undefined;
         _loc2_.dispatchChangeEvent(_loc4_,-1,-2);
      }
      else
      {
         _loc2_.selectedIndex = this.selectedIndex;
         if(!_loc2_._showingDropdown)
         {
            _loc2_.dispatchChangeEvent(_loc4_,_loc3_,_loc2_.selectedIndex);
         }
         else if(!_loc2_.bInKeyDown)
         {
            _loc2_.displayDropdown(false);
         }
      }
   }
   function _scrollHandler(_loc3_)
   {
      var _loc2_ = this.owner;
      _loc3_.target = _loc2_;
      _loc2_.dispatchEvent(_loc3_);
   }
   function _itemRollOverHandler(_loc3_)
   {
      var _loc2_ = this.owner;
      _loc3_.target = _loc2_;
      _loc2_.dispatchEvent(_loc3_);
   }
   function _itemRollOutHandler(_loc3_)
   {
      var _loc2_ = this.owner;
      _loc3_.target = _loc2_;
      _loc2_.dispatchEvent(_loc3_);
   }
   function modelChanged(_loc3_)
   {
      super.modelChanged(_loc3_);
      if(0 == this.__dataProvider.length)
      {
         this.text_mc.setText("");
         delete this.selected;
      }
      else if(this.__dataProvider.length == _loc3_.lastItem - _loc3_.firstItem + 1 && _loc3_.eventName == "addItems")
      {
         this.selectedIndex = 0;
      }
   }
   function dispatchChangeEvent(_loc3_, _loc5_, _loc6_)
   {
      var _loc2_;
      if(_loc5_ != _loc6_)
      {
         if(_loc3_ != undefined && _loc3_.type == "change")
         {
            _loc2_ = _loc3_;
         }
         else
         {
            _loc2_ = {type:"change"};
         }
         this.dispatchEvent(_loc2_);
      }
   }
}
