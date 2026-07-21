class mx.styles.CSSSetStyle
{
   var _color;
   var invalidateStyle;
   var setColor;
   var styleName;
   var stylecache;
   static var classConstructed = mx.styles.CSSSetStyle.classConstruct();
   static var CSSStyleDeclarationDependency = mx.styles.CSSStyleDeclaration;
   function CSSSetStyle()
   {
   }
   function _setStyle(_loc3_, _loc2_)
   {
      this[_loc3_] = _loc2_;
      if(mx.styles.StyleManager.TextStyleMap[_loc3_] != undefined)
      {
         if(_loc3_ == "color")
         {
            if(isNaN(_loc2_))
            {
               _loc2_ = mx.styles.StyleManager.getColorName(_loc2_);
               this[_loc3_] = _loc2_;
               if(_loc2_ == undefined)
               {
                  return undefined;
               }
            }
         }
         _level0.changeTextStyleInChildren(_loc3_);
         return undefined;
      }
      var _loc7_;
      var _loc6_;
      var _loc8_;
      var _loc4_;
      var _loc5_;
      var _loc9_;
      var _loc10_;
      if(mx.styles.StyleManager.isColorStyle(_loc3_))
      {
         if(isNaN(_loc2_))
         {
            _loc2_ = mx.styles.StyleManager.getColorName(_loc2_);
            this[_loc3_] = _loc2_;
            if(_loc2_ == undefined)
            {
               return undefined;
            }
         }
         if(_loc3_ == "themeColor")
         {
            _loc7_ = mx.styles.StyleManager.colorNames.haloBlue;
            _loc6_ = mx.styles.StyleManager.colorNames.haloGreen;
            _loc8_ = mx.styles.StyleManager.colorNames.haloOrange;
            _loc4_ = {};
            _loc4_[_loc7_] = 12188666;
            _loc4_[_loc6_] = 13500353;
            _loc4_[_loc8_] = 16766319;
            _loc5_ = {};
            _loc5_[_loc7_] = 13958653;
            _loc5_[_loc6_] = 14942166;
            _loc5_[_loc8_] = 16772787;
            _loc9_ = _loc4_[_loc2_];
            _loc10_ = _loc5_[_loc2_];
            if(_loc9_ == undefined)
            {
               _loc9_ = _loc2_;
            }
            if(_loc10_ == undefined)
            {
               _loc10_ = _loc2_;
            }
            this.setStyle("selectionColor",_loc9_);
            this.setStyle("rollOverColor",_loc10_);
         }
         _level0.changeColorStyleInChildren(this.styleName,_loc3_,_loc2_);
      }
      else
      {
         if(_loc3_ == "backgroundColor" && isNaN(_loc2_))
         {
            _loc2_ = mx.styles.StyleManager.getColorName(_loc2_);
            this[_loc3_] = _loc2_;
            if(_loc2_ == undefined)
            {
               return undefined;
            }
         }
         _level0.notifyStyleChangeInChildren(this.styleName,_loc3_,_loc2_);
      }
   }
   function changeTextStyleInChildren(_loc3_)
   {
      var _loc4_ = getTimer();
      var _loc5_;
      var _loc2_;
      for(_loc5_ in this)
      {
         _loc2_ = this[_loc5_];
         if(_loc2_._parent == this)
         {
            if(_loc2_.searchKey != _loc4_)
            {
               if(_loc2_.stylecache != undefined)
               {
                  delete _loc2_.stylecache.tf;
                  delete _loc2_.stylecache[_loc3_];
               }
               _loc2_.invalidateStyle(_loc3_);
               _loc2_.changeTextStyleInChildren(_loc3_);
               _loc2_.searchKey = _loc4_;
            }
         }
      }
   }
   function changeColorStyleInChildren(_loc5_, _loc3_, _loc8_)
   {
      var _loc6_ = getTimer();
      var _loc7_;
      var _loc2_;
      var _loc4_;
      for(_loc7_ in this)
      {
         _loc2_ = this[_loc7_];
         if(_loc2_._parent == this)
         {
            if(_loc2_.searchKey != _loc6_)
            {
               if(_loc2_.getStyleName() == _loc5_ || _loc5_ == undefined || _loc5_ == "_global")
               {
                  if(_loc2_.stylecache != undefined)
                  {
                     delete _loc2_.stylecache[_loc3_];
                  }
                  if(typeof _loc2_._color == "string")
                  {
                     if(_loc2_._color == _loc3_)
                     {
                        _loc4_ = _loc2_.getStyle(_loc3_);
                        if(_loc3_ == "color")
                        {
                           if(this.stylecache.tf.color != undefined)
                           {
                              this.stylecache.tf.color = _loc4_;
                           }
                        }
                        _loc2_.setColor(_loc4_);
                     }
                  }
                  else if(_loc2_._color[_loc3_] != undefined)
                  {
                     if(typeof _loc2_ != "movieclip")
                     {
                        _loc2_._parent.invalidateStyle();
                     }
                     else
                     {
                        _loc2_.invalidateStyle(_loc3_);
                     }
                  }
               }
               _loc2_.changeColorStyleInChildren(_loc5_,_loc3_,_loc8_);
               _loc2_.searchKey = _loc6_;
            }
         }
      }
   }
   function notifyStyleChangeInChildren(_loc3_, _loc4_, _loc7_)
   {
      var _loc5_ = getTimer();
      var _loc6_;
      var _loc2_;
      for(_loc6_ in this)
      {
         _loc2_ = this[_loc6_];
         if(_loc2_._parent == this)
         {
            if(_loc2_.searchKey != _loc5_)
            {
               if(_loc2_.styleName == _loc3_ || _loc2_.styleName != undefined && typeof _loc2_.styleName == "movieclip" || _loc3_ == undefined)
               {
                  if(_loc2_.stylecache != undefined)
                  {
                     delete _loc2_.stylecache[_loc4_];
                     delete _loc2_.stylecache.tf;
                  }
                  delete _loc2_.enabledColor;
                  _loc2_.invalidateStyle(_loc4_);
               }
               _loc2_.notifyStyleChangeInChildren(_loc3_,_loc4_,_loc7_);
               _loc2_.searchKey = _loc5_;
            }
         }
      }
   }
   function setStyle(_loc4_, _loc3_)
   {
      if(this.stylecache != undefined)
      {
         delete this.stylecache[_loc4_];
         delete this.stylecache.tf;
      }
      this[_loc4_] = _loc3_;
      var _loc10_;
      var _loc9_;
      var _loc11_;
      var _loc6_;
      var _loc7_;
      var _loc12_;
      var _loc13_;
      if(mx.styles.StyleManager.isColorStyle(_loc4_))
      {
         if(isNaN(_loc3_))
         {
            _loc3_ = mx.styles.StyleManager.getColorName(_loc3_);
            this[_loc4_] = _loc3_;
            if(_loc3_ == undefined)
            {
               return undefined;
            }
         }
         if(_loc4_ == "themeColor")
         {
            _loc10_ = mx.styles.StyleManager.colorNames.haloBlue;
            _loc9_ = mx.styles.StyleManager.colorNames.haloGreen;
            _loc11_ = mx.styles.StyleManager.colorNames.haloOrange;
            _loc6_ = {};
            _loc6_[_loc10_] = 12188666;
            _loc6_[_loc9_] = 13500353;
            _loc6_[_loc11_] = 16766319;
            _loc7_ = {};
            _loc7_[_loc10_] = 13958653;
            _loc7_[_loc9_] = 14942166;
            _loc7_[_loc11_] = 16772787;
            _loc12_ = _loc6_[_loc3_];
            _loc13_ = _loc7_[_loc3_];
            if(_loc12_ == undefined)
            {
               _loc12_ = _loc3_;
            }
            if(_loc13_ == undefined)
            {
               _loc13_ = _loc3_;
            }
            this.setStyle("selectionColor",_loc12_);
            this.setStyle("rollOverColor",_loc13_);
         }
         if(typeof this._color == "string")
         {
            if(this._color == _loc4_)
            {
               if(_loc4_ == "color")
               {
                  if(this.stylecache.tf.color != undefined)
                  {
                     this.stylecache.tf.color = _loc3_;
                  }
               }
               this.setColor(_loc3_);
            }
         }
         else if(this._color[_loc4_] != undefined)
         {
            this.invalidateStyle(_loc4_);
         }
         this.changeColorStyleInChildren(undefined,_loc4_,_loc3_);
      }
      else
      {
         if(_loc4_ == "backgroundColor" && isNaN(_loc3_))
         {
            _loc3_ = mx.styles.StyleManager.getColorName(_loc3_);
            this[_loc4_] = _loc3_;
            if(_loc3_ == undefined)
            {
               return undefined;
            }
         }
         this.invalidateStyle(_loc4_);
      }
      var _loc8_;
      var _loc5_;
      if(mx.styles.StyleManager.isInheritingStyle(_loc4_) || _loc4_ == "styleName")
      {
         _loc5_ = _loc3_;
         if(_loc4_ == "styleName")
         {
            _loc8_ = typeof _loc3_ != "string" ? _loc5_ : _global.styles[_loc3_];
            _loc5_ = _loc8_.themeColor;
            if(_loc5_ != undefined)
            {
               _loc8_.rollOverColor = _loc8_.selectionColor = _loc5_;
            }
         }
         this.notifyStyleChangeInChildren(undefined,_loc4_,_loc3_);
      }
   }
   static function enableRunTimeCSS()
   {
   }
   static function classConstruct()
   {
      var _loc2_ = MovieClip.prototype;
      var _loc3_ = mx.styles.CSSSetStyle.prototype;
      mx.styles.CSSStyleDeclaration.prototype.setStyle = _loc3_._setStyle;
      _loc2_.changeTextStyleInChildren = _loc3_.changeTextStyleInChildren;
      _loc2_.changeColorStyleInChildren = _loc3_.changeColorStyleInChildren;
      _loc2_.notifyStyleChangeInChildren = _loc3_.notifyStyleChangeInChildren;
      _loc2_.setStyle = _loc3_.setStyle;
      _global.ASSetPropFlags(_loc2_,"changeTextStyleInChildren",1);
      _global.ASSetPropFlags(_loc2_,"changeColorStyleInChildren",1);
      _global.ASSetPropFlags(_loc2_,"notifyStyleChangeInChildren",1);
      _global.ASSetPropFlags(_loc2_,"setStyle",1);
      var _loc4_ = TextField.prototype;
      _loc4_.setStyle = _loc2_.setStyle;
      _loc4_.changeTextStyleInChildren = _loc3_.changeTextStyleInChildren;
      return true;
   }
}
