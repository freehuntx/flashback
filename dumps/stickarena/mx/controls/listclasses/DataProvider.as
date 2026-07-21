class mx.controls.listclasses.DataProvider extends Object
{
   var __ID__;
   var dispatchEvent;
   var length;
   var reverse;
   var sort;
   var sortOn;
   var splice;
   static var mixinProps = ["addView","addItem","addItemAt","removeAll","removeItemAt","replaceItemAt","getItemAt","getItemID","sortItemsBy","sortItems","updateViews","addItemsAt","removeItemsAt","getEditingData","editField"];
   static var evtDipatcher = mx.events.EventDispatcher;
   static var mixins = new mx.controls.listclasses.DataProvider();
   function DataProvider(obj)
   {
      super();
   }
   static function Initialize(_loc5_)
   {
      var _loc4_ = mx.controls.listclasses.DataProvider.mixinProps;
      var _loc6_ = _loc4_.length;
      _loc5_ = _loc5_.prototype;
      var _loc3_ = 0;
      while(_loc3_ < _loc6_)
      {
         _loc5_[_loc4_[_loc3_]] = mx.controls.listclasses.DataProvider.mixins[_loc4_[_loc3_]];
         _global.ASSetPropFlags(_loc5_,_loc4_[_loc3_],1);
         _loc3_ = _loc3_ + 1;
      }
      mx.events.EventDispatcher.initialize(_loc5_);
      _global.ASSetPropFlags(_loc5_,"addEventListener",1);
      _global.ASSetPropFlags(_loc5_,"removeEventListener",1);
      _global.ASSetPropFlags(_loc5_,"dispatchEvent",1);
      _global.ASSetPropFlags(_loc5_,"dispatchQueue",1);
      Object.prototype.LargestID = 0;
      Object.prototype.getID = function()
      {
         if(this.__ID__ == undefined)
         {
            this.__ID__ = Object.prototype.LargestID++;
            _global.ASSetPropFlags(this,"__ID__",1);
         }
         return this.__ID__;
      };
      _global.ASSetPropFlags(Object.prototype,"LargestID",1);
      _global.ASSetPropFlags(Object.prototype,"getID",1);
      return true;
   }
   function addItemAt(_loc2_, _loc3_)
   {
      if(_loc2_ < this.length)
      {
         this.splice(_loc2_,0,_loc3_);
      }
      else if(_loc2_ > this.length)
      {
         return undefined;
      }
      this[_loc2_] = _loc3_;
      this.updateViews("addItems",_loc2_,_loc2_);
   }
   function addItem(_loc2_)
   {
      this.addItemAt(this.length,_loc2_);
   }
   function addItemsAt(_loc2_, _loc3_)
   {
      _loc2_ = Math.min(this.length,_loc2_);
      _loc3_.unshift(_loc2_,0);
      this.splice.apply(this,_loc3_);
      _loc3_.splice(0,2);
      this.updateViews("addItems",_loc2_,_loc2_ + _loc3_.length - 1);
   }
   function removeItemsAt(_loc4_, _loc5_)
   {
      var _loc3_ = new Array();
      var _loc2_ = 0;
      while(_loc2_ < _loc5_)
      {
         _loc3_.push(this.getItemID(_loc4_ + _loc2_));
         _loc2_ = _loc2_ + 1;
      }
      var _loc6_ = this.splice(_loc4_,_loc5_);
      this.dispatchEvent({type:"modelChanged",eventName:"removeItems",firstItem:_loc4_,lastItem:_loc4_ + _loc5_ - 1,removedItems:_loc6_,removedIDs:_loc3_});
   }
   function removeItemAt(_loc3_)
   {
      var _loc2_ = this[_loc3_];
      this.removeItemsAt(_loc3_,1);
      return _loc2_;
   }
   function removeAll(Void)
   {
      this.splice(0);
      this.updateViews("removeItems",0,this.length - 1);
   }
   function replaceItemAt(_loc2_, _loc4_)
   {
      if(_loc2_ < 0 || _loc2_ >= this.length)
      {
         return undefined;
      }
      var _loc3_ = this.getItemID(_loc2_);
      this[_loc2_] = _loc4_;
      this[_loc2_].__ID__ = _loc3_;
      this.updateViews("updateItems",_loc2_,_loc2_);
   }
   function getItemAt(_loc2_)
   {
      return this[_loc2_];
   }
   function getItemID(_loc3_)
   {
      var _loc2_ = this[_loc3_];
      if(typeof _loc2_ != "object" && _loc2_ != undefined)
      {
         return _loc3_;
      }
      return _loc2_.getID();
   }
   function sortItemsBy(_loc3_, _loc2_)
   {
      if(typeof _loc2_ == "string")
      {
         this.sortOn(_loc3_);
         if(_loc2_.toUpperCase() == "DESC")
         {
            this.reverse();
         }
      }
      else
      {
         this.sortOn(_loc3_,_loc2_);
      }
      this.updateViews("sort");
   }
   function sortItems(_loc3_, _loc2_)
   {
      this.sort(_loc3_,_loc2_);
      this.updateViews("sort");
   }
   function editField(_loc2_, _loc5_, _loc8_)
   {
      this[_loc2_][_loc5_] = _loc8_;
      this.dispatchEvent({type:"modelChanged",eventName:"updateField",firstItem:_loc2_,lastItem:_loc2_,fieldName:_loc5_});
   }
   function getEditingData(_loc2_, _loc3_)
   {
      return this[_loc2_][_loc3_];
   }
   function updateViews(_loc6_, _loc7_, _loc8_)
   {
      this.dispatchEvent({type:"modelChanged",eventName:_loc6_,firstItem:_loc7_,lastItem:_loc8_});
   }
}
