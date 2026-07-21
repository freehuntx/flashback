class mx.skins.halo.FocusRect extends mx.skins.SkinElement
{
   var _parent;
   var _visible;
   var _xscale;
   var _yscale;
   var addEventListener;
   var beginFill;
   var boundingBox_mc;
   var clear;
   var drawRoundRect;
   var endFill;
   var getDepth;
   var getStyle;
   var height;
   var removeEventListener;
   var width;
   var x;
   var y;
   static var classConstructed = mx.skins.halo.FocusRect.classConstruct();
   static var DefaultsDependency = mx.skins.halo.Defaults;
   static var UIComponentDependency = mx.core.UIComponent;
   function FocusRect()
   {
      super();
      this.boundingBox_mc._visible = false;
      this.boundingBox_mc._width = this.boundingBox_mc._height = 0;
   }
   function draw(_loc1_)
   {
      _loc1_.adjustFocusRect();
   }
   function setSize(_loc4_, _loc3_, _loc2_, _loc6_, _loc7_)
   {
      this._xscale = this._yscale = 100;
      this.clear();
      var _loc5_;
      if(typeof _loc2_ == "object")
      {
         _loc2_.br = _loc2_.br <= 2 ? 0 : _loc2_.br - 2;
         _loc2_.bl = _loc2_.bl <= 2 ? 0 : _loc2_.bl - 2;
         _loc2_.tr = _loc2_.tr <= 2 ? 0 : _loc2_.tr - 2;
         _loc2_.tl = _loc2_.tl <= 2 ? 0 : _loc2_.tl - 2;
         this.beginFill(_loc7_,_loc6_ * 0.3);
         this.drawRoundRect(0,0,_loc4_,_loc3_,_loc2_);
         this.drawRoundRect(2,2,_loc4_ - 4,_loc3_ - 4,_loc2_);
         this.endFill();
         _loc2_.br = _loc2_.br <= 1 ? 0 : _loc2_.br + 1;
         _loc2_.bl = _loc2_.bl <= 1 ? 0 : _loc2_.bl + 1;
         _loc2_.tr = _loc2_.tr <= 1 ? 0 : _loc2_.tr + 1;
         _loc2_.tl = _loc2_.tl <= 1 ? 0 : _loc2_.tl + 1;
         this.beginFill(_loc7_,_loc6_ * 0.3);
         this.drawRoundRect(1,1,_loc4_ - 2,_loc3_ - 2,_loc2_);
         _loc2_.br = _loc2_.br <= 1 ? 0 : _loc2_.br - 1;
         _loc2_.bl = _loc2_.bl <= 1 ? 0 : _loc2_.bl - 1;
         _loc2_.tr = _loc2_.tr <= 1 ? 0 : _loc2_.tr - 1;
         _loc2_.tl = _loc2_.tl <= 1 ? 0 : _loc2_.tl - 1;
         this.drawRoundRect(2,2,_loc4_ - 4,_loc3_ - 4,_loc2_);
         this.endFill();
      }
      else
      {
         if(_loc2_ != 0)
         {
            _loc5_ = _loc2_ - 2;
         }
         else
         {
            _loc5_ = 0;
         }
         this.beginFill(_loc7_,_loc6_ * 0.3);
         this.drawRoundRect(0,0,_loc4_,_loc3_,_loc2_);
         this.drawRoundRect(2,2,_loc4_ - 4,_loc3_ - 4,_loc5_);
         this.endFill();
         this.beginFill(_loc7_,_loc6_ * 0.3);
         if(_loc2_ != 0)
         {
            _loc5_ = _loc2_ - 2;
            _loc2_ -= 1;
         }
         else
         {
            _loc5_ = 0;
            _loc2_ = 0;
         }
         this.drawRoundRect(1,1,_loc4_ - 2,_loc3_ - 2,_loc2_);
         this.drawRoundRect(2,2,_loc4_ - 4,_loc3_ - 4,_loc5_);
         this.endFill();
      }
   }
   function handleEvent(_loc2_)
   {
      if(_loc2_.type == "unload")
      {
         this._visible = true;
      }
      else if(_loc2_.type == "resize")
      {
         _loc2_.target.adjustFocusRect();
      }
      else if(_loc2_.type == "move")
      {
         _loc2_.target.adjustFocusRect();
      }
   }
   static function classConstruct()
   {
      mx.core.UIComponent.prototype.drawFocus = function(_loc3_)
      {
         var _loc2_ = this._parent.focus_mc;
         if(!_loc3_)
         {
            _loc2_._visible = false;
            this.removeEventListener("unload",_loc2_);
            this.removeEventListener("move",_loc2_);
            this.removeEventListener("resize",_loc2_);
         }
         else
         {
            if(_loc2_ == undefined)
            {
               _loc2_ = this._parent.createChildAtDepth("FocusRect",mx.managers.DepthManager.kTop);
               _loc2_.tabEnabled = false;
               this._parent.focus_mc = _loc2_;
            }
            else
            {
               _loc2_._visible = true;
            }
            _loc2_.draw(this);
            if(_loc2_.getDepth() < this.getDepth())
            {
               _loc2_.setDepthAbove(this);
            }
            this.addEventListener("unload",_loc2_);
            this.addEventListener("move",_loc2_);
            this.addEventListener("resize",_loc2_);
         }
      };
      mx.core.UIComponent.prototype.adjustFocusRect = function()
      {
         var _loc2_ = this.getStyle("themeColor");
         if(_loc2_ == undefined)
         {
            _loc2_ = 8453965;
         }
         var _loc3_ = this._parent.focus_mc;
         _loc3_.setSize(this.width + 4,this.height + 4,0,100,_loc2_);
         _loc3_.move(this.x - 2,this.y - 2);
      };
      TextField.prototype.drawFocus = mx.core.UIComponent.prototype.drawFocus;
      TextField.prototype.adjustFocusRect = mx.core.UIComponent.prototype.adjustFocusRect;
      mx.skins.halo.FocusRect.prototype.drawRoundRect = mx.skins.halo.Defaults.prototype.drawRoundRect;
      return true;
   }
}
