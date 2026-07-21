class mx.controls.listclasses.DataSelector extends Object
{
   var __dataProvider;
   var __rowCount;
   var __vPosition;
   var enabled;
   var invUpdateControl;
   var invalidate;
   var lastSelID;
   var lastSelected;
   var multipleSelection;
   var rows;
   var selected;
   var setVPosition;
   var updateControl;
   static var mixins = new mx.controls.listclasses.DataSelector();
   static var mixinProps = ["setDataProvider","getDataProvider","addItem","addItemAt","removeAll","removeItemAt","replaceItemAt","sortItemsBy","sortItems","getLength","getItemAt","modelChanged","calcPreferredWidthFromData","calcPreferredHeightFromData","getValue","getSelectedIndex","getSelectedItem","getSelectedIndices","getSelectedItems","selectItem","isSelected","clearSelected","setSelectedIndex","setSelectedIndices"];
   function DataSelector()
   {
      super();
   }
   static function Initialize(_loc2_)
   {
      var _loc3_ = mx.controls.listclasses.DataSelector.mixinProps;
      var _loc4_ = _loc3_.length;
      _loc2_ = _loc2_.prototype;
      var _loc1_ = 0;
      while(_loc1_ < _loc4_)
      {
         _loc2_[_loc3_[_loc1_]] = mx.controls.listclasses.DataSelector.mixins[_loc3_[_loc1_]];
         _loc1_ = _loc1_ + 1;
      }
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"dataProvider",true);
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"length",false);
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"value",false);
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"selectedIndex",true);
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"selectedIndices",true);
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"selectedItems",false);
      mx.controls.listclasses.DataSelector.mixins.createProp(_loc2_,"selectedItem",true);
      return true;
   }
   function createProp(_loc5_, _loc4_, _loc6_)
   {
      var p = _loc4_.charAt(0).toUpperCase() + _loc4_.substr(1);
      var _loc2_ = null;
      var _loc3_ = function(Void)
      {
         return this["get" + p]();
      };
      if(_loc6_)
      {
         _loc2_ = function(_loc2_)
         {
            this["set" + p](_loc2_);
         };
      }
      _loc5_.addProperty(_loc4_,_loc3_,_loc2_);
   }
   function setDataProvider(_loc2_)
   {
      if(this.__vPosition != 0)
      {
         this.setVPosition(0);
      }
      this.clearSelected();
      this.__dataProvider.removeEventListener(this);
      this.__dataProvider = _loc2_;
      _loc2_.addEventListener("modelChanged",this);
      _loc2_.addView(this);
      this.modelChanged({eventName:"updateAll"});
   }
   function getDataProvider(Void)
   {
      return this.__dataProvider;
   }
   function addItemAt(_loc3_, _loc4_, _loc5_)
   {
      if(_loc3_ < 0 || !this.enabled)
      {
         return undefined;
      }
      var _loc2_ = this.__dataProvider;
      var _loc0_;
      if(_loc2_ == undefined)
      {
         _loc2_ = this.__dataProvider = new Array();
         _loc2_.addEventListener("modelChanged",this);
         _loc3_ = 0;
      }
      if(typeof _loc4_ == "object" || typeof _loc2_.getItemAt(0) == "string")
      {
         _loc2_.addItemAt(_loc3_,_loc4_);
      }
      else
      {
         _loc2_.addItemAt(_loc3_,{label:_loc4_,data:_loc5_});
      }
   }
   function addItem(_loc2_, _loc3_)
   {
      this.addItemAt(this.__dataProvider.length,_loc2_,_loc3_);
   }
   function removeItemAt(_loc2_)
   {
      return this.__dataProvider.removeItemAt(_loc2_);
   }
   function removeAll(Void)
   {
      this.__dataProvider.removeAll();
   }
   function replaceItemAt(_loc4_, _loc2_, _loc6_)
   {
      if(typeof _loc2_ == "object")
      {
         this.__dataProvider.replaceItemAt(_loc4_,_loc2_);
      }
      else
      {
         this.__dataProvider.replaceItemAt(_loc4_,{label:_loc2_,data:_loc6_});
      }
   }
   function sortItemsBy(_loc2_, _loc3_)
   {
      this.lastSelID = this.__dataProvider.getItemID(this.lastSelected);
      this.__dataProvider.sortItemsBy(_loc2_,_loc3_);
   }
   function sortItems(_loc2_, _loc3_)
   {
      this.lastSelID = this.__dataProvider.getItemID(this.lastSelected);
      this.__dataProvider.sortItems(_loc2_,_loc3_);
   }
   function getLength(Void)
   {
      return this.__dataProvider.length;
   }
   function getItemAt(_loc2_)
   {
      return this.__dataProvider.getItemAt(_loc2_);
   }
   function modelChanged(_loc8_)
   {
      var _loc3_ = _loc8_.firstItem;
      var _loc6_ = _loc8_.lastItem;
      var _loc7_ = _loc8_.eventName;
      var _loc0_;
      if(_loc7_ == undefined)
      {
         _loc7_ = _loc8_.event;
         _loc3_ = _loc8_.firstRow;
         _loc6_ = _loc8_.lastRow;
         if(_loc7_ == "addRows")
         {
            _loc7_ = _loc8_.eventName = "addItems";
         }
         else if(_loc7_ == "deleteRows")
         {
            _loc7_ = _loc8_.eventName = "removeItems";
         }
         else if(_loc7_ == "updateRows")
         {
            _loc7_ = _loc8_.eventName = "updateItems";
         }
      }
      var _loc5_;
      var _loc9_;
      var _loc10_;
      var _loc2_;
      var _loc4_;
      if(_loc7_ == "addItems")
      {
         for(var _loc2_ in this.selected)
         {
            _loc5_ = this.selected[_loc2_];
            if(_loc5_ != undefined && _loc5_ >= _loc3_)
            {
               this.selected[_loc2_] += _loc6_ - _loc3_ + 1;
            }
         }
      }
      else if(_loc7_ == "removeItems")
      {
         if(this.__dataProvider.length == 0)
         {
            delete this.selected;
         }
         else
         {
            _loc9_ = _loc8_.removedIDs;
            _loc10_ = _loc9_.length;
            _loc2_ = 0;
            while(_loc2_ < _loc10_)
            {
               _loc4_ = _loc9_[_loc2_];
               if(this.selected[_loc4_] != undefined)
               {
                  delete this.selected[_loc4_];
               }
               _loc2_ = _loc2_ + 1;
            }
            for(_loc2_ in this.selected)
            {
               if(this.selected[_loc2_] >= _loc3_)
               {
                  this.selected[_loc2_] -= _loc6_ - _loc3_ + 1;
               }
            }
         }
      }
      else if(_loc7_ == "sort")
      {
         if(typeof this.__dataProvider.getItemAt(0) != "object")
         {
            delete this.selected;
         }
         else
         {
            _loc10_ = this.__dataProvider.length;
            _loc2_ = 0;
            while(_loc2_ < _loc10_)
            {
               if(this.isSelected(_loc2_))
               {
                  _loc4_ = this.__dataProvider.getItemID(_loc2_);
                  if(_loc4_ == this.lastSelID)
                  {
                     this.lastSelected = _loc2_;
                  }
                  this.selected[_loc4_] = _loc2_;
               }
               _loc2_ = _loc2_ + 1;
            }
         }
      }
      else if(_loc7_ == "filterModel")
      {
         this.setVPosition(0);
      }
      this.invUpdateControl = true;
      this.invalidate();
   }
   function getValue(Void)
   {
      var _loc2_ = this.getSelectedItem();
      if(typeof _loc2_ != "object")
      {
         return _loc2_;
      }
      return _loc2_.data != undefined ? _loc2_.data : _loc2_.label;
   }
   function getSelectedIndex(Void)
   {
      var _loc2_;
      for(var _loc3_ in this.selected)
      {
         _loc2_ = this.selected[_loc3_];
         if(_loc2_ != undefined)
         {
            return _loc2_;
         }
      }
   }
   function setSelectedIndex(_loc2_)
   {
      if(_loc2_ >= 0 && _loc2_ < this.__dataProvider.length && this.enabled)
      {
         delete this.selected;
         this.selectItem(_loc2_,true);
         this.lastSelected = _loc2_;
         this.invUpdateControl = true;
         this.invalidate();
      }
      else if(_loc2_ == undefined)
      {
         this.clearSelected();
      }
   }
   function getSelectedIndices(Void)
   {
      var _loc2_ = new Array();
      for(var _loc3_ in this.selected)
      {
         _loc2_.push(this.selected[_loc3_]);
      }
      _loc2_.reverse();
      return _loc2_.length <= 0 ? undefined : _loc2_;
   }
   function setSelectedIndices(_loc4_)
   {
      if(this.multipleSelection != true)
      {
         return undefined;
      }
      delete this.selected;
      var _loc3_ = 0;
      var _loc2_;
      while(_loc3_ < _loc4_.length)
      {
         _loc2_ = _loc4_[_loc3_];
         if(_loc2_ >= 0 && _loc2_ < this.__dataProvider.length)
         {
            this.selectItem(_loc2_,true);
         }
         _loc3_ = _loc3_ + 1;
      }
      this.invUpdateControl = true;
      this.updateControl();
   }
   function getSelectedItems(Void)
   {
      var _loc3_ = this.getSelectedIndices();
      var _loc4_ = new Array();
      var _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         _loc4_.push(this.getItemAt(_loc3_[_loc2_]));
         _loc2_ = _loc2_ + 1;
      }
      return _loc4_.length <= 0 ? undefined : _loc4_;
   }
   function getSelectedItem(Void)
   {
      return this.__dataProvider.getItemAt(this.getSelectedIndex());
   }
   function selectItem(_loc3_, _loc4_)
   {
      if(this.selected == undefined)
      {
         this.selected = new Object();
      }
      var _loc2_ = this.__dataProvider.getItemID(_loc3_);
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(_loc4_ && !this.isSelected(_loc3_))
      {
         this.selected[_loc2_] = _loc3_;
      }
      else if(!_loc4_)
      {
         delete this.selected[_loc2_];
      }
   }
   function isSelected(_loc3_)
   {
      var _loc2_ = this.__dataProvider.getItemID(_loc3_);
      if(_loc2_ == undefined)
      {
         return false;
      }
      return this.selected[_loc2_] != undefined;
   }
   function clearSelected(_loc5_)
   {
      var _loc3_ = 0;
      var _loc2_;
      for(var _loc4_ in this.selected)
      {
         _loc2_ = this.selected[_loc4_];
         if(_loc2_ != undefined && this.__vPosition <= _loc2_ && _loc2_ < this.__vPosition + this.__rowCount)
         {
            this.rows[_loc2_ - this.__vPosition].drawRow(this.rows[_loc2_ - this.__vPosition].item,"normal",_loc5_ && _loc3_ % 3 == 0);
         }
         _loc3_ = _loc3_ + 1;
      }
      delete this.selected;
   }
}
