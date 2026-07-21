class mx.controls.listclasses.ScrollSelectList extends mx.core.ScrollView
{
   var __cellRenderer;
   var __dataProvider;
   var __height;
   var __iconField;
   var __iconFunction;
   var __labelFunction;
   var __vPosition;
   var _ymouse;
   var baseRowZ;
   var border_mc;
   var changeFlag;
   var clearSelected;
   var createEmptyMovieClip;
   var dispatchEvent;
   var dragScrolling;
   var enabled;
   var getLength;
   var getSelectedIndex;
   var invLayoutContent;
   var invRowHeight;
   var invUpdateControl;
   var invalidate;
   var isPressed;
   var isSelected;
   var lastPosition;
   var lastSelected;
   var layoutX;
   var layoutY;
   var listContent;
   var onMouseUp;
   var propertyTable;
   var rows;
   var scrollInterval;
   var selectItem;
   var tH;
   var tW;
   var tabChildren;
   var tabEnabled;
   var topRowZ;
   var wasKeySelected;
   static var mixIt1 = mx.controls.listclasses.DataSelector.Initialize(mx.controls.listclasses.ScrollSelectList);
   static var mixIt2 = mx.controls.listclasses.DataProvider.Initialize(Array);
   var CONTENTDEPTH = 100;
   var __hPosition = 0;
   var __rowRenderer = "SelectableRow";
   var __rowHeight = 22;
   var __rowCount = 0;
   var __labelField = "label";
   var minScrollInterval = 30;
   var dropEnabled = false;
   var dragEnabled = false;
   var className = "ScrollSelectList";
   var isRowStyle = {styleName:true,backgroundColor:true,selectionColor:true,rollOverColor:true,selectionDisabledColor:true,backgroundDisabledColor:true,textColor:true,textSelectedColor:true,textRollOverColor:true,textDisabledColor:true,alternatingRowColors:true,defaultIcon:true};
   var roundUp = 0;
   var selectable = true;
   var multipleSelection = false;
   function ScrollSelectList()
   {
      super();
   }
   function layoutContent(_loc6_, _loc5_, _loc7_, _loc13_)
   {
      delete this.invLayoutContent;
      var _loc4_ = Math.ceil(_loc13_ / this.__rowHeight);
      this.roundUp = _loc13_ % this.__rowHeight != 0;
      var _loc12_ = _loc4_ - this.__rowCount;
      var _loc3_;
      var _loc0_;
      var _loc2_;
      if(_loc12_ < 0)
      {
         _loc3_ = _loc4_;
         while(_loc3_ < this.__rowCount)
         {
            this.rows[_loc3_].removeMovieClip();
            delete this.rows[_loc3_];
            _loc3_ = _loc3_ + 1;
         }
         this.topRowZ += _loc12_;
      }
      else if(_loc12_ > 0)
      {
         if(this.rows == undefined)
         {
            this.rows = new Array();
         }
         _loc3_ = this.__rowCount;
         while(_loc3_ < _loc4_)
         {
            _loc2_ = this.rows[_loc3_] = this.listContent.createObject(this.__rowRenderer,"listRow" + this.topRowZ++,this.topRowZ,{owner:this,styleName:this,rowIndex:_loc3_});
            _loc2_._x = _loc6_;
            _loc2_._y = Math.round(_loc3_ * this.__rowHeight + _loc5_);
            _loc2_.setSize(_loc7_,this.__rowHeight);
            _loc2_.drawRow(this.__dataProvider.getItemAt(this.__vPosition + _loc3_),this.getStateAt(this.__vPosition + _loc3_));
            _loc2_.lastY = _loc2_._y;
            _loc3_ = _loc3_ + 1;
         }
      }
      var _loc11_;
      if(_loc7_ != this.tW)
      {
         _loc11_ = _loc12_ <= 0 ? _loc4_ : this.__rowCount;
         _loc3_ = 0;
         while(_loc3_ < _loc11_)
         {
            this.rows[_loc3_].setSize(_loc7_,this.__rowHeight);
            _loc3_ = _loc3_ + 1;
         }
      }
      if(this.layoutX != _loc6_ || this.layoutY != _loc5_)
      {
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.rows[_loc3_]._x = _loc6_;
            this.rows[_loc3_]._y = Math.round(_loc3_ * this.__rowHeight + _loc5_);
            _loc3_ = _loc3_ + 1;
         }
      }
      this.__rowCount = _loc4_;
      this.layoutX = _loc6_;
      this.layoutY = _loc5_;
      this.tW = _loc7_;
      this.tH = _loc13_;
   }
   function getRowHeight(Void)
   {
      return this.__rowHeight;
   }
   function setRowHeight(_loc2_)
   {
      this.__rowHeight = _loc2_;
      this.invRowHeight = true;
      this.invalidate();
   }
   function get rowHeight()
   {
      return this.getRowHeight();
   }
   function set rowHeight(_loc2_)
   {
      this.setRowHeight(_loc2_);
   }
   function setRowCount(_loc2_)
   {
      this.__rowCount = _loc2_;
   }
   function getRowCount(Void)
   {
      var _loc2_ = this.__rowCount != 0 ? this.__rowCount : Math.ceil(this.__height / this.__rowHeight);
      return _loc2_;
   }
   function get rowCount()
   {
      return this.getRowCount();
   }
   function set rowCount(_loc2_)
   {
      this.setRowCount(_loc2_);
   }
   function setEnabled(_loc3_)
   {
      super.setEnabled(_loc3_);
      this.invUpdateControl = true;
      this.invalidate();
   }
   function setCellRenderer(_loc3_)
   {
      this.__cellRenderer = _loc3_;
      var _loc2_ = 0;
      while(_loc2_ < this.rows.length)
      {
         this.rows[_loc2_].setCellRenderer(true);
         _loc2_ = _loc2_ + 1;
      }
      this.invUpdateControl = true;
      this.invalidate();
   }
   function set cellRenderer(_loc2_)
   {
      this.setCellRenderer(_loc2_);
   }
   function get cellRenderer()
   {
      return this.__cellRenderer;
   }
   function set labelField(_loc2_)
   {
      this.setLabelField(_loc2_);
   }
   function setLabelField(_loc2_)
   {
      this.__labelField = _loc2_;
      this.invUpdateControl = true;
      this.invalidate();
   }
   function get labelField()
   {
      return this.__labelField;
   }
   function set labelFunction(_loc2_)
   {
      this.setLabelFunction(_loc2_);
   }
   function setLabelFunction(_loc2_)
   {
      this.__labelFunction = _loc2_;
      this.invUpdateControl = true;
      this.invalidate();
   }
   function get labelFunction()
   {
      return this.__labelFunction;
   }
   function set iconField(_loc2_)
   {
      this.setIconField(_loc2_);
   }
   function setIconField(_loc2_)
   {
      this.__iconField = _loc2_;
      this.invUpdateControl = true;
      this.invalidate();
   }
   function get iconField()
   {
      return this.__iconField;
   }
   function set iconFunction(_loc2_)
   {
      this.setIconFunction(_loc2_);
   }
   function setIconFunction(_loc2_)
   {
      this.__iconFunction = _loc2_;
      this.invUpdateControl = true;
      this.invalidate();
   }
   function get iconFunction()
   {
      return this.__iconFunction;
   }
   function setVPosition(_loc13_)
   {
      if(_loc13_ < 0)
      {
         return undefined;
      }
      if(_loc13_ > 0 && _loc13_ > this.getLength() - this.__rowCount + this.roundUp)
      {
         return undefined;
      }
      var _loc8_ = _loc13_ - this.__vPosition;
      if(_loc8_ == 0)
      {
         return undefined;
      }
      this.__vPosition = _loc13_;
      var _loc10_ = _loc8_ > 0;
      _loc8_ = Math.abs(_loc8_);
      var _loc4_;
      var _loc9_;
      var _loc12_;
      var _loc11_;
      var _loc6_;
      var _loc3_;
      var _loc5_;
      var _loc7_;
      if(_loc8_ >= this.__rowCount)
      {
         this.updateControl();
      }
      else
      {
         _loc4_ = new Array();
         _loc9_ = this.__rowCount - _loc8_;
         _loc12_ = _loc8_ * this.__rowHeight;
         _loc11_ = _loc9_ * this.__rowHeight;
         _loc6_ = !_loc10_ ? -1 : 1;
         _loc3_ = 0;
         while(_loc3_ < this.__rowCount)
         {
            if(_loc3_ < _loc8_ && _loc10_ || _loc3_ >= _loc9_ && !_loc10_)
            {
               this.rows[_loc3_]._y += Math.round(_loc6_ * _loc11_);
               _loc5_ = _loc3_ + _loc6_ * _loc9_;
               _loc7_ = this.__vPosition + _loc5_;
               _loc4_[_loc5_] = this.rows[_loc3_];
               _loc4_[_loc5_].rowIndex = _loc5_;
               _loc4_[_loc5_].drawRow(this.__dataProvider.getItemAt(_loc7_),this.getStateAt(_loc7_),false);
            }
            else
            {
               this.rows[_loc3_]._y -= Math.round(_loc6_ * _loc12_);
               _loc5_ = _loc3_ - _loc6_ * _loc8_;
               _loc4_[_loc5_] = this.rows[_loc3_];
               _loc4_[_loc5_].rowIndex = _loc5_;
            }
            _loc3_ = _loc3_ + 1;
         }
         this.rows = _loc4_;
         _loc3_ = 0;
         while(_loc3_ < this.__rowCount)
         {
            this.rows[_loc3_].swapDepths(this.baseRowZ + _loc3_);
            _loc3_ = _loc3_ + 1;
         }
      }
      this.lastPosition = _loc13_;
      super.setVPosition(_loc13_);
   }
   function setPropertiesAt(_loc3_, _loc4_)
   {
      var _loc2_ = this.__dataProvider.getItemID(_loc3_);
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(this.propertyTable == undefined)
      {
         this.propertyTable = new Object();
      }
      this.propertyTable[_loc2_] = _loc4_;
      this.rows[_loc3_ - this.__vPosition].drawRow(this.__dataProvider.getItemAt(_loc3_),this.getStateAt(_loc3_));
   }
   function getPropertiesAt(_loc3_)
   {
      var _loc2_ = this.__dataProvider.getItemID(_loc3_);
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      return this.propertyTable[_loc2_];
   }
   function getPropertiesOf(_loc3_)
   {
      var _loc2_ = _loc3_.getID();
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      return this.propertyTable[_loc2_];
   }
   function getStyle(_loc4_)
   {
      var _loc2_ = super.getStyle(_loc4_);
      var _loc3_ = mx.styles.StyleManager.colorNames[_loc2_];
      if(_loc3_ != undefined)
      {
         _loc2_ = _loc3_;
      }
      return _loc2_;
   }
   function updateControl(Void)
   {
      var _loc2_ = 0;
      while(_loc2_ < this.__rowCount)
      {
         this.rows[_loc2_].drawRow(this.__dataProvider.getItemAt(_loc2_ + this.__vPosition),this.getStateAt(_loc2_ + this.__vPosition));
         _loc2_ = _loc2_ + 1;
      }
      delete this.invUpdateControl;
   }
   function getStateAt(_loc2_)
   {
      return !this.isSelected(_loc2_) ? "normal" : "selected";
   }
   function selectRow(_loc11_, _loc6_, _loc10_)
   {
      if(!this.selectable)
      {
         return undefined;
      }
      var _loc3_ = this.__vPosition + _loc11_;
      var _loc8_ = this.__dataProvider.getItemAt(_loc3_);
      var _loc5_ = this.rows[_loc11_];
      if(_loc8_ == undefined)
      {
         return undefined;
      }
      if(_loc6_ == undefined)
      {
         _loc6_ = true;
      }
      if(_loc10_ == undefined)
      {
         _loc10_ = this.wasKeySelected;
      }
      this.changeFlag = true;
      var _loc4_;
      var _loc2_;
      var _loc7_;
      var _loc9_;
      if(!this.multipleSelection && !Key.isDown(17) || !Key.isDown(16) && !Key.isDown(17))
      {
         this.clearSelected(_loc6_);
         this.selectItem(_loc3_,true);
         this.lastSelected = _loc3_;
         _loc5_.drawRow(_loc5_.item,this.getStateAt(_loc3_),_loc6_);
      }
      else if(Key.isDown(16) && this.multipleSelection)
      {
         if(this.lastSelected == undefined)
         {
            this.lastSelected = _loc3_;
         }
         _loc4_ = this.lastSelected >= _loc3_ ? -1 : 1;
         this.clearSelected(false);
         _loc2_ = this.lastSelected;
         while(_loc2_ != _loc3_)
         {
            this.selectItem(_loc2_,true);
            if(_loc2_ >= this.__vPosition && _loc2_ < this.__vPosition + this.__rowCount)
            {
               this.rows[_loc2_ - this.__vPosition].drawRow(this.rows[_loc2_ - this.__vPosition].item,"selected",false);
            }
            _loc2_ += _loc4_;
         }
         this.selectItem(_loc3_,true);
         _loc5_.drawRow(_loc5_.item,"selected",_loc6_);
      }
      else if(Key.isDown(17))
      {
         _loc7_ = this.isSelected(_loc3_);
         if(!this.multipleSelection || this.wasKeySelected)
         {
            this.clearSelected(_loc6_);
         }
         if(!(!this.multipleSelection && _loc7_))
         {
            this.selectItem(_loc3_,!_loc7_);
            _loc9_ = _loc7_ ? "normal" : "selected";
            _loc5_.drawRow(_loc5_.item,_loc9_,_loc6_);
         }
         this.lastSelected = _loc3_;
      }
      if(_loc10_)
      {
         this.dispatchEvent({type:"change"});
      }
      delete this.wasKeySelected;
   }
   function dragScroll(Void)
   {
      clearInterval(this.dragScrolling);
      var _loc2_;
      var _loc3_;
      if(this._ymouse < 0)
      {
         this.setVPosition(this.__vPosition - 1);
         this.selectRow(0,false);
         _loc2_ = Math.min(- this._ymouse - 30,0);
         this.scrollInterval = 0.593 * _loc2_ * _loc2_ + 1 + this.minScrollInterval;
         this.dragScrolling = setInterval(this,"dragScroll",this.scrollInterval);
         this.dispatchEvent({type:"scroll",direction:"vertical",position:this.__vPosition});
      }
      else if(this._ymouse > this.__height)
      {
         _loc3_ = this.__vPosition;
         this.setVPosition(this.__vPosition + 1);
         if(_loc3_ != this.__vPosition)
         {
            this.selectRow(this.__rowCount - 1 - this.roundUp,false);
         }
         _loc2_ = Math.min(this._ymouse - this.__height - 30,0);
         this.scrollInterval = 0.593 * _loc2_ * _loc2_ + 1 + this.minScrollInterval;
         this.dragScrolling = setInterval(this,"dragScroll",this.scrollInterval);
         this.dispatchEvent({type:"scroll",direction:"vertical",position:this.__vPosition});
      }
      else
      {
         this.dragScrolling = setInterval(this,"dragScroll",15);
      }
      updateAfterEvent();
   }
   function __onMouseUp(Void)
   {
      clearInterval(this.dragScrolling);
      delete this.dragScrolling;
      delete this.dragScrolling;
      delete this.isPressed;
      delete this.onMouseUp;
      if(!this.selectable)
      {
         return undefined;
      }
      if(this.changeFlag)
      {
         this.dispatchEvent({type:"change"});
      }
      delete this.changeFlag;
   }
   function moveSelBy(_loc4_)
   {
      if(!this.selectable)
      {
         this.setVPosition(this.__vPosition + _loc4_);
         return undefined;
      }
      var _loc3_ = this.getSelectedIndex();
      if(_loc3_ == undefined)
      {
         _loc3_ = -1;
      }
      var _loc2_ = _loc3_ + _loc4_;
      _loc2_ = Math.max(0,_loc2_);
      _loc2_ = Math.min(this.getLength() - 1,_loc2_);
      if(_loc2_ == _loc3_)
      {
         return undefined;
      }
      if(_loc3_ < this.__vPosition || _loc3_ >= this.__vPosition + this.__rowCount)
      {
         this.setVPosition(_loc3_);
      }
      if(_loc2_ >= this.__vPosition + this.__rowCount - this.roundUp || _loc2_ < this.__vPosition)
      {
         this.setVPosition(this.__vPosition + _loc4_);
      }
      this.wasKeySelected = true;
      this.selectRow(_loc2_ - this.__vPosition,false);
   }
   function keyDown(_loc2_)
   {
      if(this.selectable)
      {
         if(this.findInputText())
         {
            return undefined;
         }
      }
      var _loc3_;
      if(_loc2_.code == 40)
      {
         this.moveSelBy(1);
      }
      else if(_loc2_.code == 38)
      {
         this.moveSelBy(-1);
      }
      else if(_loc2_.code == 34)
      {
         if(this.selectable)
         {
            _loc3_ = this.getSelectedIndex();
            if(_loc3_ == undefined)
            {
               _loc3_ = 0;
            }
            this.setVPosition(_loc3_);
         }
         this.moveSelBy(this.__rowCount - 1 - this.roundUp);
      }
      else if(_loc2_.code == 33)
      {
         if(this.selectable)
         {
            _loc3_ = this.getSelectedIndex();
            if(_loc3_ == undefined)
            {
               _loc3_ = 0;
            }
            this.setVPosition(_loc3_);
         }
         this.moveSelBy(1 - this.__rowCount + this.roundUp);
      }
      else if(_loc2_.code == 36)
      {
         this.moveSelBy(- this.__dataProvider.length);
      }
      else if(_loc2_.code == 35)
      {
         this.moveSelBy(this.__dataProvider.length);
      }
   }
   function findInputText(Void)
   {
      var _loc2_ = Key.getAscii();
      if(_loc2_ >= 33 && _loc2_ <= 126)
      {
         this.findString(String.fromCharCode(_loc2_));
         return true;
      }
   }
   function findString(_loc5_)
   {
      if(this.__dataProvider.length == 0)
      {
         return undefined;
      }
      var _loc4_ = this.getSelectedIndex();
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      var _loc6_ = 0;
      var _loc3_ = _loc4_ + 1;
      var _loc2_;
      while(_loc3_ != _loc4_)
      {
         _loc2_ = this.__dataProvider.getItemAt(_loc3_);
         if(_loc2_ instanceof XMLNode)
         {
            _loc2_ = _loc2_.attributes[this.__labelField];
         }
         else if(typeof _loc2_ != "string")
         {
            _loc2_ = String(_loc2_[this.__labelField]);
         }
         _loc2_ = _loc2_.substring(0,_loc5_.length);
         if(_loc5_ == _loc2_ || _loc5_.toUpperCase() == _loc2_.toUpperCase())
         {
            _loc6_ = _loc3_ - _loc4_;
            break;
         }
         if(_loc3_ >= this.getLength() - 1)
         {
            _loc3_ = -1;
         }
         _loc3_ = _loc3_ + 1;
      }
      if(_loc6_ != 0)
      {
         this.moveSelBy(_loc6_);
      }
   }
   function onRowPress(_loc2_)
   {
      if(!this.enabled)
      {
         return undefined;
      }
      this.isPressed = true;
      this.dragScrolling = setInterval(this,"dragScroll",15);
      this.onMouseUp = this.__onMouseUp;
      if(!this.selectable)
      {
         return undefined;
      }
      this.selectRow(_loc2_);
   }
   function onRowRelease(rowIndex)
   {
   }
   function onRowRollOver(_loc3_)
   {
      if(!this.enabled)
      {
         return undefined;
      }
      var _loc2_ = this.rows[_loc3_].item;
      if(this.getStyle("useRollOver") && _loc2_ != undefined)
      {
         this.rows[_loc3_].drawRow(_loc2_,"highlighted",false);
      }
      this.dispatchEvent({type:"itemRollOver",index:_loc3_ + this.__vPosition});
   }
   function onRowRollOut(_loc2_)
   {
      if(!this.enabled)
      {
         return undefined;
      }
      if(this.getStyle("useRollOver"))
      {
         this.rows[_loc2_].drawRow(this.rows[_loc2_].item,this.getStateAt(_loc2_ + this.__vPosition),false);
      }
      this.dispatchEvent({type:"itemRollOut",index:_loc2_ + this.__vPosition});
   }
   function onRowDragOver(_loc2_)
   {
      if(!this.enabled || this.isPressed != true || !this.selectable)
      {
         return undefined;
      }
      if(!this.dropEnabled)
      {
         if(this.dragScrolling)
         {
            this.selectRow(_loc2_,false);
         }
         else
         {
            this.onMouseUp = this.__onMouseUp;
            this.onRowPress(_loc2_);
         }
      }
   }
   function onRowDragOut(_loc2_)
   {
      if(!this.enabled)
      {
         return undefined;
      }
      if(!this.dragEnabled)
      {
         this.onRowRollOut(_loc2_);
      }
   }
   function init(Void)
   {
      super.init();
      this.tabEnabled = true;
      this.tabChildren = false;
      if(this.__dataProvider == undefined)
      {
         this.__dataProvider = new Array();
         this.__dataProvider.addEventListener("modelChanged",this);
      }
      this.baseRowZ = this.topRowZ = 10;
   }
   function createChildren(Void)
   {
      super.createChildren();
      this.listContent = this.createEmptyMovieClip("content_mc",this.CONTENTDEPTH);
      this.invLayoutContent = true;
      this.invalidate();
   }
   function draw(Void)
   {
      if(this.invRowHeight)
      {
         delete this.invRowHeight;
         this.__rowCount = 0;
         this.listContent.removeMovieClip();
         this.listContent = this.createEmptyMovieClip("content_mc",this.CONTENTDEPTH);
      }
      if(this.invUpdateControl)
      {
         this.updateControl();
      }
      this.border_mc.draw();
   }
   function invalidateStyle(_loc4_)
   {
      var _loc3_;
      if(this.isRowStyle[_loc4_])
      {
         this.invUpdateControl = true;
         this.invalidate();
      }
      else
      {
         _loc3_ = 0;
         while(_loc3_ < this.__rowCount)
         {
            this.rows[_loc3_].invalidateStyle(_loc4_);
            _loc3_ = _loc3_ + 1;
         }
      }
      super.invalidateStyle(_loc4_);
   }
}
