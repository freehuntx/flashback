class mx.controls.RadioButtonGroup
{
   var __groupName;
   var radioList;
   var selectedRadio;
   static var symbolName = "RadioButtonGroup";
   static var symbolOwner = mx.controls.RadioButtonGroup;
   static var version = "2.0.2.127";
   var className = "RadioButtonGroup";
   var indexNumber = 0;
   function RadioButtonGroup()
   {
      this.init();
      mx.events.UIEventDispatcher.initialize(this);
   }
   function init(Void)
   {
      this.radioList = new Array();
   }
   function setGroupName(_loc4_)
   {
      if(_loc4_ == undefined || _loc4_ == "")
      {
         return undefined;
      }
      var _loc6_ = this.__groupName;
      _parent[_loc4_] = this;
      var _loc3_;
      for(var _loc5_ in this.radioList)
      {
         this.radioList[_loc5_].groupName = _loc4_;
         _loc3_ = this.radioList[_loc5_];
      }
      _loc3_.deleteGroupObj(_loc6_);
   }
   function getGroupName()
   {
      return this.__groupName;
   }
   function addInstance(_loc2_)
   {
      _loc2_.indexNumber = this.indexNumber++;
      this.radioList.push(_loc2_);
   }
   function getValue()
   {
      if(this.selectedRadio.data == "")
      {
         return this.selectedRadio.label;
      }
      return this.selectedRadio.__data;
   }
   function getLabelPlacement()
   {
      var _loc2_;
      for(var _loc3_ in this.radioList)
      {
         _loc2_ = this.radioList[_loc3_].getLabelPlacement();
      }
      return _loc2_;
   }
   function setLabelPlacement(_loc2_)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].setLabelPlacement(_loc2_);
      }
   }
   function setEnabled(_loc2_)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].enabled = _loc2_;
      }
   }
   function setSize(_loc2_, _loc4_)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].setSize(_loc2_,_loc4_);
      }
   }
   function getEnabled()
   {
      var _loc2_;
      var _loc3_;
      for(var _loc4_ in this.radioList)
      {
         _loc2_ = this.radioList[_loc4_].enabled;
         _loc3_ = t + (_loc2_ + 0);
      }
      if(_loc3_ == this.radioList.length)
      {
         return true;
      }
      if(_loc3_ == 0)
      {
         return false;
      }
   }
   function setStyle(_loc2_, _loc3_)
   {
      for(var _loc4_ in this.radioList)
      {
         this.radioList[_loc4_].setStyle(_loc2_,_loc3_);
      }
   }
   function setInstance(_loc2_)
   {
      for(var _loc3_ in this.radioList)
      {
         if(this.radioList[_loc3_] == _loc2_)
         {
            this.radioList[_loc3_].selected = true;
         }
      }
   }
   function getInstance()
   {
      return this.selectedRadio;
   }
   function setValue(_loc3_)
   {
      var _loc2_;
      for(_loc4_ in this.radioList)
      {
         if(this.radioList[_loc4_].__data == _loc3_ || this.radioList[_loc4_].label == _loc3_)
         {
            _loc2_ = _loc4_;
            break;
         }
      }
      if(_loc2_ != undefined)
      {
         this.selectedRadio.setState(false);
         this.selectedRadio.hitArea_mc._height = this.selectedRadio.__height;
         this.selectedRadio.hitArea_mc._width = this.selectedRadio.__width;
         this.selectedRadio = this.radioList[_loc2_];
         this.selectedRadio.setState(true);
         this.selectedRadio.hitArea_mc._height = this.selectedRadio.hitArea_mc._width = 0;
      }
   }
   function set groupName(_loc4_)
   {
      if(_loc4_ == undefined || _loc4_ == "")
      {
         return;
      }
      var _loc6_ = this.__groupName;
      _parent[_loc4_] = this;
      var _loc3_;
      for(var _loc5_ in this.radioList)
      {
         this.radioList[_loc5_].groupName = _loc4_;
         _loc3_ = this.radioList[_loc5_];
      }
      _loc3_.deleteGroupObj(_loc6_);
   }
   function get groupName()
   {
      return this.__groupName;
   }
   function set selectedData(_loc3_)
   {
      var _loc2_;
      for(_loc4_ in this.radioList)
      {
         if(this.radioList[_loc4_].__data == _loc3_ || this.radioList[_loc4_].label == _loc3_)
         {
            _loc2_ = _loc4_;
            break;
         }
      }
      if(_loc2_ != undefined)
      {
         this.selectedRadio.setState(false);
         this.selectedRadio = this.radioList[_loc2_];
         this.selectedRadio.setState(true);
      }
   }
   function get selectedData()
   {
      if(this.selectedRadio.data == "" || this.selectedRadio.data == undefined)
      {
         return this.selectedRadio.label;
      }
      return this.selectedRadio.__data;
   }
   function get selection()
   {
      return this.selectedRadio;
   }
   function set selection(_loc2_)
   {
      for(var _loc3_ in this.radioList)
      {
         if(this.radioList[_loc3_] == _loc2_)
         {
            this.radioList[_loc3_].selected = true;
         }
      }
   }
   function set labelPlacement(_loc2_)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].setLabelPlacement(_loc2_);
      }
   }
   function get labelPlacement()
   {
      var _loc2_;
      for(var _loc3_ in this.radioList)
      {
         _loc2_ = this.radioList[_loc3_].getLabelPlacement();
      }
      return _loc2_;
   }
   function set enabled(_loc2_)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].enabled = _loc2_;
      }
   }
   function get enabled()
   {
      var _loc2_ = 0;
      for(var _loc3_ in this.radioList)
      {
         _loc2_ += this.radioList[_loc3_].enabled;
      }
      if(_loc2_ == 0)
      {
         return false;
      }
      if(_loc2_ == this.radioList.length)
      {
         return true;
      }
   }
}
