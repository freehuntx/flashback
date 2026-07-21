class mx.core.UIComponent extends mx.core.UIObject
{
   var __height;
   var __width;
   var _focusrect;
   var _xscale;
   var _yscale;
   var addEventListener;
   var dispatchEvent;
   var drawFocus;
   var enabled;
   var invalidate;
   var removeEventListener;
   var stylecache;
   var watch;
   static var symbolName = "UIComponent";
   static var symbolOwner = mx.core.UIComponent;
   static var version = "2.0.2.127";
   static var kStretch = 5000;
   var focusEnabled = true;
   var tabEnabled = true;
   var origBorderStyles = {themeColor:16711680};
   var clipParameters = {};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.core.UIComponent.prototype.clipParameters,mx.core.UIObject.prototype.clipParameters);
   function UIComponent()
   {
      super();
   }
   function get width()
   {
      return this.__width;
   }
   function get height()
   {
      return this.__height;
   }
   function setVisible(_loc3_, _loc2_)
   {
      super.setVisible(_loc3_,_loc2_);
   }
   function enabledChanged(id, oldValue, _loc2_)
   {
      this.setEnabled(_loc2_);
      this.invalidate();
      delete this.stylecache.tf;
      return _loc2_;
   }
   function setEnabled(enabled)
   {
      this.invalidate();
   }
   function getFocus()
   {
      var selFocus = Selection.getFocus();
      return selFocus !== null ? eval(selFocus) : null;
   }
   function setFocus()
   {
      Selection.setFocus(this);
   }
   function getFocusManager()
   {
      var _loc2_ = this;
      while(_loc2_ != undefined)
      {
         if(_loc2_.focusManager != undefined)
         {
            return _loc2_.focusManager;
         }
         _loc2_ = _loc2_._parent;
      }
      return undefined;
   }
   function onKillFocus(newFocus)
   {
      this.removeEventListener("keyDown",this);
      this.removeEventListener("keyUp",this);
      this.dispatchEvent({type:"focusOut"});
      this.drawFocus(false);
   }
   function onSetFocus(oldFocus)
   {
      this.addEventListener("keyDown",this);
      this.addEventListener("keyUp",this);
      this.dispatchEvent({type:"focusIn"});
      if(this.getFocusManager().bDrawFocus != false)
      {
         this.drawFocus(true);
      }
   }
   function findFocusInChildren(_loc1_)
   {
      if(_loc1_.focusTextField != undefined)
      {
         return _loc1_.focusTextField;
      }
      if(_loc1_.tabEnabled == true)
      {
         return _loc1_;
      }
      return undefined;
   }
   function findFocusFromObject(_loc2_)
   {
      if(_loc2_.tabEnabled != true)
      {
         if(_loc2_._parent == undefined)
         {
            return undefined;
         }
         if(_loc2_._parent.tabEnabled == true)
         {
            _loc2_ = _loc2_._parent;
         }
         else if(_loc2_._parent.tabChildren)
         {
            _loc2_ = this.findFocusInChildren(_loc2_._parent);
         }
         else
         {
            _loc2_ = this.findFocusFromObject(_loc2_._parent);
         }
      }
      return _loc2_;
   }
   function pressFocus()
   {
      var _loc3_ = this.findFocusFromObject(this);
      var _loc2_ = this.getFocus();
      if(_loc3_ != _loc2_)
      {
         _loc2_.drawFocus(false);
         if(this.getFocusManager().bDrawFocus != false)
         {
            _loc3_.drawFocus(true);
         }
      }
   }
   function releaseFocus()
   {
      var _loc2_ = this.findFocusFromObject(this);
      if(_loc2_ != this.getFocus())
      {
         _loc2_.setFocus();
      }
   }
   function isParent(_loc2_)
   {
      while(_loc2_ != undefined)
      {
         if(_loc2_ == this)
         {
            return true;
         }
         _loc2_ = _loc2_._parent;
      }
      return false;
   }
   function size()
   {
   }
   function init()
   {
      super.init();
      this._xscale = 100;
      this._yscale = 100;
      this._focusrect = _global.useFocusRect == false;
      this.watch("enabled",this.enabledChanged);
      if(this.enabled == false)
      {
         this.setEnabled(false);
      }
   }
   function dispatchValueChangedEvent(_loc2_)
   {
      this.dispatchEvent({type:"valueChanged",value:_loc2_});
   }
}
