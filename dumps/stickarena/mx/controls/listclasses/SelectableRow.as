class mx.controls.listclasses.SelectableRow extends mx.core.UIComponent
{
   var __height;
   var __width;
   var bGTween;
   var backGround;
   var cell;
   var createClassObject;
   var createEmptyMovieClip;
   var createLabel;
   var createObject;
   var drawRect;
   var grandOwner;
   var highlight;
   var highlightColor;
   var icon_mc;
   var isChangedToSelected;
   var item;
   var listOwner;
   var owner;
   var rowIndex;
   var tabEnabled;
   static var LOWEST_DEPTH = -16384;
   var state = "normal";
   var disabledColor = 15263976;
   var normalColor = 16777215;
   function SelectableRow()
   {
      super();
   }
   function setValue(_loc6_, _loc10_)
   {
      var _loc7_ = this.__height;
      var _loc2_ = this.cell;
      var _loc5_ = this.owner;
      var _loc8_ = this.itemToString(_loc6_);
      if(_loc2_.getValue() != _loc8_)
      {
         _loc2_.setValue(_loc8_,_loc6_,_loc10_);
      }
      var _loc4_ = _loc5_.getPropertiesAt(this.rowIndex + _loc5_.__vPosition).icon;
      if(_loc4_ == undefined)
      {
         _loc4_ = _loc5_.__iconFunction(_loc6_);
         if(_loc4_ == undefined)
         {
            _loc4_ = _loc6_[_loc5_.__iconField];
            if(_loc4_ == undefined)
            {
               _loc4_ = _loc5_.getStyle("defaultIcon");
            }
         }
      }
      var _loc3_ = this.icon_mc;
      if(_loc4_ != undefined && _loc6_ != undefined)
      {
         _loc3_ = this.createObject(_loc4_,"icon_mc",20);
         _loc3_._x = 2;
         _loc3_._y = (_loc7_ - _loc3_._height) / 2;
         _loc2_._x = 4 + _loc3_._width;
      }
      else
      {
         _loc3_.removeMovieClip();
         _loc2_._x = 2;
      }
      var _loc9_ = _loc3_ != undefined ? _loc3_._width : 0;
      _loc2_.setSize(this.__width - _loc9_,Math.min(_loc7_,_loc2_.getPreferredHeight()));
      _loc2_._y = (_loc7_ - _loc2_._height) / 2;
   }
   function size(Void)
   {
      var _loc3_ = this.backGround;
      var _loc2_ = this.cell;
      var _loc4_ = this.__height;
      var _loc5_ = this.__width;
      var _loc6_ = this.icon_mc != undefined ? this.icon_mc._width : 0;
      _loc2_.setSize(_loc5_ - _loc6_,Math.min(_loc4_,_loc2_.getPreferredHeight()));
      _loc2_._y = (_loc4_ - _loc2_._height) / 2;
      this.icon_mc._y = (_loc4_ - this.icon_mc._height) / 2;
      _loc3_._x = 0;
      _loc3_._width = _loc5_;
      _loc3_._height = _loc4_;
      this.drawRowFill(_loc3_,this.normalColor);
      this.drawRowFill(this.highlight,this.highlightColor);
   }
   function setCellRenderer(_loc6_)
   {
      var _loc3_ = this.owner.__cellRenderer;
      var _loc4_;
      if(this.cell != undefined)
      {
         _loc4_ = this.cell._x;
         this.cell.removeMovieClip();
         this.cell.removeTextField();
      }
      var _loc2_;
      var _loc0_;
      if(_loc3_ == undefined)
      {
         _loc2_ = this.cell = this.createLabel("cll",0,{styleName:this});
         _loc2_.styleName = this.owner;
         _loc2_.selectable = false;
         _loc2_.tabEnabled = false;
         _loc2_.background = false;
         _loc2_.border = false;
      }
      else if(typeof _loc3_ == "string")
      {
         _loc2_ = this.cell = this.createObject(_loc3_,"cll",0,{styleName:this});
      }
      else
      {
         _loc2_ = this.cell = this.createClassObject(_loc3_,"cll",0,{styleName:this});
      }
      _loc2_.owner = this;
      _loc2_.listOwner = this.owner;
      _loc2_.getCellIndex = this.getCellIndex;
      _loc2_.getDataLabel = this.getDataLabel;
      if(_loc4_ != undefined)
      {
         _loc2_._x = _loc4_;
      }
      if(_loc6_)
      {
         this.size();
      }
   }
   function getCellIndex(Void)
   {
      return {columnIndex:0,itemIndex:this.owner.rowIndex + this.listOwner.__vPosition};
   }
   function getDataLabel()
   {
      return this.listOwner.labelField;
   }
   function init(Void)
   {
      super.init();
      this.tabEnabled = false;
   }
   function createChildren(Void)
   {
      this.setCellRenderer(false);
      this.setupBG();
      this.setState(this.state,false);
   }
   function drawRow(_loc2_, _loc3_, _loc4_)
   {
      this.item = _loc2_;
      this.setState(_loc3_,_loc4_);
      this.setValue(_loc2_,_loc3_,_loc4_);
   }
   function itemToString(_loc3_)
   {
      if(_loc3_ == undefined)
      {
         return " ";
      }
      var _loc2_ = this.owner.__labelFunction(_loc3_);
      if(_loc2_ == undefined)
      {
         _loc2_ = !(_loc3_ instanceof XMLNode) ? _loc3_[this.owner.__labelField] : _loc3_.attributes[this.owner.__labelField];
         if(_loc2_ == undefined)
         {
            _loc2_ = " ";
            if(typeof _loc3_ == "object")
            {
               for(var _loc4_ in _loc3_)
               {
                  if(_loc4_ != "__ID__")
                  {
                     _loc2_ = _loc3_[_loc4_] + ", " + _loc2_;
                  }
               }
               _loc2_ = _loc2_.substring(0,_loc2_.length - 2);
            }
            else
            {
               _loc2_ = _loc3_;
            }
         }
      }
      return _loc2_;
   }
   function setupBG(Void)
   {
      var _loc0_;
      var _loc2_ = this.backGround = this.createEmptyMovieClip("bG_mc",mx.controls.listclasses.SelectableRow.LOWEST_DEPTH);
      this.drawRowFill(_loc2_,this.normalColor);
      this.highlight = this.createEmptyMovieClip("tran_mc",mx.controls.listclasses.SelectableRow.LOWEST_DEPTH + 10);
      _loc2_.owner = this;
      _loc2_.grandOwner = this.owner;
      _loc2_.onPress = this.bGOnPress;
      _loc2_.onRelease = this.bGOnRelease;
      _loc2_.onRollOver = this.bGOnRollOver;
      _loc2_.onRollOut = this.bGOnRollOut;
      _loc2_.onDragOver = this.bGOnDragOver;
      _loc2_.onDragOut = this.bGOnDragOut;
      _loc2_.useHandCursor = false;
      _loc2_.trackAsMenu = true;
      _loc2_.drawRect = this.drawRect;
      this.highlight.drawRect = this.drawRect;
   }
   function drawRowFill(_loc2_, _loc3_)
   {
      _loc2_.clear();
      _loc2_.beginFill(_loc3_);
      _loc2_.drawRect(1,0,this.__width,this.__height);
      _loc2_.endFill();
      _loc2_._width = this.__width;
      _loc2_._height = this.__height;
   }
   function setState(_loc5_, _loc11_)
   {
      var _loc2_ = this.highlight;
      var _loc8_ = this.backGround;
      var _loc4_ = this.__height;
      var _loc3_ = this.owner;
      var _loc6_;
      var _loc7_;
      var _loc10_;
      var _loc9_;
      if(!_loc3_.enabled)
      {
         if(_loc5_ == "selected" || this.state == "selected")
         {
            this.highlightColor = _loc3_.getStyle("selectionDisabledColor");
            this.drawRowFill(_loc2_,this.highlightColor);
            _loc2_._visible = true;
            _loc2_._y = 0;
            _loc2_._height = _loc4_;
         }
         else
         {
            _loc2_._visible = false;
            this.normalColor = _loc3_.getStyle("backgroundDisabledColor");
            this.drawRowFill(_loc8_,this.normalColor);
         }
         this.cell.__enabled = false;
         this.cell.setColor(_loc3_.getStyle("disabledColor"));
      }
      else
      {
         this.cell.__enabled = true;
         if(_loc11_ && (_loc5_ == this.state || _loc5_ == "highlighted" && this.state == "selected"))
         {
            this.isChangedToSelected = true;
            return undefined;
         }
         _loc6_ = _loc3_.getStyle("selectionDuration");
         _loc7_ = 0;
         if(this.isChangedToSelected && _loc5_ == "selected")
         {
            _loc11_ = false;
         }
         _loc10_ = _loc11_ && _loc6_ != 0;
         if(_loc5_ == "normal")
         {
            _loc7_ = _loc3_.getStyle("color");
            this.normalColor = this.getNormalColor();
            this.drawRowFill(_loc8_,this.normalColor);
            if(_loc10_)
            {
               _loc6_ /= 2;
               _loc2_._height = _loc4_;
               _loc2_._width = this.__width;
               _loc2_._y = 0;
               this.bGTween = new mx.effects.Tween(this,_loc4_ + 2,_loc4_ * 0.2,_loc6_,5);
            }
            else
            {
               _loc2_._visible = false;
            }
            delete this.isChangedToSelected;
         }
         else
         {
            this.highlightColor = _loc3_.getStyle(_loc5_ != "highlighted" ? "selectionColor" : "rollOverColor");
            this.drawRowFill(_loc2_,this.highlightColor);
            _loc2_._visible = true;
            _loc7_ = _loc3_.getStyle(_loc5_ != "highlighted" ? "textSelectedColor" : "textRollOverColor");
            if(_loc10_)
            {
               _loc2_._height = _loc4_ * 0.5;
               _loc2_._y = (_loc4_ - _loc2_._height) / 2;
               this.bGTween = new mx.effects.Tween(this,_loc2_._height,_loc4_ + 2,_loc6_,5);
               _loc9_ = _loc3_.getStyle("selectionEasing");
               if(_loc9_ != undefined)
               {
                  this.bGTween.easingEquation = _loc9_;
               }
            }
            else
            {
               _loc2_._y = 0;
               _loc2_._height = _loc4_;
            }
         }
         this.cell.setColor(_loc7_);
      }
      this.state = _loc5_;
   }
   function onTweenUpdate(_loc2_)
   {
      this.highlight._height = _loc2_;
      this.highlight._y = (this.__height - _loc2_) / 2;
   }
   function onTweenEnd(_loc2_)
   {
      this.onTweenUpdate(_loc2_);
      this.highlight._visible = this.state != "normal";
   }
   function getNormalColor(Void)
   {
      var _loc3_;
      var _loc2_ = this.owner;
      var _loc5_;
      var _loc4_;
      if(!this.owner.enabled)
      {
         _loc3_ = _loc2_.getStyle("backgroundDisabledColor");
      }
      else
      {
         _loc5_ = this.rowIndex + _loc2_.__vPosition;
         if(this.rowIndex == undefined)
         {
            _loc3_ = _loc2_.getPropertiesOf(this.item).backgroundColor;
         }
         else
         {
            _loc3_ = _loc2_.getPropertiesAt(_loc5_).backgroundColor;
         }
         if(_loc3_ == undefined)
         {
            _loc4_ = _loc2_.getStyle("alternatingRowColors");
            if(_loc4_ == undefined)
            {
               _loc3_ = _loc2_.getStyle("backgroundColor");
            }
            else
            {
               _loc3_ = _loc4_[_loc5_ % _loc4_.length];
            }
         }
      }
      return _loc3_;
   }
   function invalidateStyle(_loc3_)
   {
      this.cell.invalidateStyle(_loc3_);
      super.invalidateStyle(_loc3_);
   }
   function bGOnPress(Void)
   {
      this.grandOwner.pressFocus();
      this.grandOwner.onRowPress(this.owner.rowIndex);
   }
   function bGOnRelease(Void)
   {
      this.grandOwner.releaseFocus();
      this.grandOwner.onRowRelease(this.owner.rowIndex);
   }
   function bGOnRollOver(Void)
   {
      this.grandOwner.onRowRollOver(this.owner.rowIndex);
   }
   function bGOnRollOut(Void)
   {
      this.grandOwner.onRowRollOut(this.owner.rowIndex);
   }
   function bGOnDragOver(Void)
   {
      this.grandOwner.onRowDragOver(this.owner.rowIndex);
   }
   function bGOnDragOut(Void)
   {
      this.grandOwner.onRowDragOut(this.owner.rowIndex);
   }
}
