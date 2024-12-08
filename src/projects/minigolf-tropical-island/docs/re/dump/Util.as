var §\x01§ = 108;
var §\x0f§ = 1;
class Util
{
   function Util()
   {
   }
   static function calcDx(rot, speed)
   {
      return Math.sin(0.017453292519943295 * rot) * speed;
   }
   static function calcDy(rot, speed)
   {
      return (- Math.cos(0.017453292519943295 * rot)) * speed;
   }
   static function calcSpeed(myDx, myDy)
   {
      return Math.sqrt(myDx * myDx + myDy * myDy);
   }
   static function calcAbstand(x1, y1, x2, y2)
   {
      var _loc2_ = x1 - x2;
      var _loc1_ = y1 - y2;
      return Math.sqrt(_loc2_ * _loc2_ + _loc1_ * _loc1_);
   }
   static function calcRot(myDx, myDy)
   {
      if(myDx >= 0)
      {
         return 90 + Math.atan(myDy / myDx) / 0.017453292519943295;
      }
      return -90 + Math.atan(myDy / myDx) / 0.017453292519943295;
   }
   static function calcAngelRel(dirAngle, hitAngle)
   {
      var _loc1_ = dirAngle + 180 + hitAngle + hitAngle;
      if(_loc1_ > 180)
      {
         _loc1_ -= 360;
      }
      return _loc1_;
   }
   static function cleanMsg(msg)
   {
      msg = msg.split("\"").join("\'");
      msg = msg.split("&").join("+");
      msg = msg.split("<").join("(");
      msg = msg.split(">").join(")");
      msg = msg.split("[").join("(");
      msg = msg.split("]").join(")");
      return msg;
   }
}
