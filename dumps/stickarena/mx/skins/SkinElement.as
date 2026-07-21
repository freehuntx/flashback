class mx.skins.SkinElement extends MovieClip
{
   function SkinElement()
   {
      super();
   }
   static function registerElement(_loc2_, _loc3_)
   {
      Object.registerClass(_loc2_,_loc3_ != undefined ? _loc3_ : mx.skins.SkinElement);
      _global.skinRegistry[_loc2_] = true;
   }
   function __set__visible(_loc2_)
   {
      this._visible = _loc2_;
   }
   function move(_loc3_, _loc2_)
   {
      this._x = _loc3_;
      this._y = _loc2_;
   }
   function setSize(_loc3_, _loc2_)
   {
      this._width = _loc3_;
      this._height = _loc2_;
   }
}
