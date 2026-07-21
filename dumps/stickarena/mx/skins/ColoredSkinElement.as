class mx.skins.ColoredSkinElement
{
   var _color;
   var getStyle;
   var onEnterFrame;
   static var mixins = new mx.skins.ColoredSkinElement();
   function ColoredSkinElement()
   {
   }
   function setColor(_loc3_)
   {
      var _loc2_;
      if(_loc3_ != undefined)
      {
         _loc2_ = new Color(this);
         _loc2_.setRGB(_loc3_);
      }
   }
   function draw(Void)
   {
      this.setColor(this.getStyle(this._color));
      this.onEnterFrame = undefined;
   }
   function invalidateStyle(Void)
   {
      this.onEnterFrame = this.draw;
   }
   static function setColorStyle(_loc1_, _loc2_)
   {
      if(_loc1_._color == undefined)
      {
         _loc1_._color = _loc2_;
      }
      _loc1_.setColor = mx.skins.ColoredSkinElement.mixins.setColor;
      _loc1_.invalidateStyle = mx.skins.ColoredSkinElement.mixins.invalidateStyle;
      _loc1_.draw = mx.skins.ColoredSkinElement.mixins.draw;
      _loc1_.setColor(_loc1_.getStyle(_loc2_));
   }
}
