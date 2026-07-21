class mx.controls.CheckBox extends mx.controls.Button
{
   var _getTextFormat;
   var iconName;
   var labelPath;
   static var symbolName = "CheckBox";
   static var symbolOwner = mx.controls.CheckBox;
   static var version = "2.0.2.127";
   var className = "CheckBox";
   var ignoreClassStyleDeclaration = {Button:1};
   var btnOffset = 0;
   var __toggle = true;
   var __selected = false;
   var __labelPlacement = "right";
   var __label = "CheckBox";
   var falseUpSkin = "";
   var falseDownSkin = "";
   var falseOverSkin = "";
   var falseDisabledSkin = "";
   var trueUpSkin = "";
   var trueDownSkin = "";
   var trueOverSkin = "";
   var trueDisabledSkin = "";
   var falseUpIcon = "CheckFalseUp";
   var falseDownIcon = "CheckFalseDown";
   var falseOverIcon = "CheckFalseOver";
   var falseDisabledIcon = "CheckFalseDisabled";
   var trueUpIcon = "CheckTrueUp";
   var trueDownIcon = "CheckTrueDown";
   var trueOverIcon = "CheckTrueOver";
   var trueDisabledIcon = "CheckTrueDisabled";
   var clipParameters = {label:1,labelPlacement:1,selected:1};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.CheckBox.prototype.clipParameters,mx.controls.Button.prototype.clipParameters);
   var centerContent = false;
   var borderW = 0;
   function CheckBox()
   {
      super();
   }
   function onRelease()
   {
      super.onRelease();
   }
   function init()
   {
      super.init();
   }
   function size()
   {
      super.size();
   }
   function get emphasized()
   {
      return undefined;
   }
   function calcPreferredHeight()
   {
      var _loc5_ = this._getTextFormat();
      var _loc3_ = _loc5_.getTextExtent2(this.labelPath.text).height;
      var _loc4_ = this.iconName._height;
      var _loc2_ = 0;
      if(this.__labelPlacement == "left" || this.__labelPlacement == "right")
      {
         _loc2_ = Math.max(_loc3_,_loc4_);
      }
      else
      {
         _loc2_ = _loc3_ + _loc4_;
      }
      return Math.max(14,_loc2_);
   }
   function set toggle(v)
   {
   }
   function get toggle()
   {
   }
   function set icon(v)
   {
   }
   function get icon()
   {
   }
}
