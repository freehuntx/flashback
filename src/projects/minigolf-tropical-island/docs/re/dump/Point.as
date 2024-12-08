var §\x01§ = 2;
var §\x0f§ = 1;
class Point
{
   var x;
   var y;
   var rot;
   var hit = false;
   function Point(xx, yy)
   {
      this.x = xx;
      this.y = yy;
   }
   function printInfo()
   {
      trace("point rot:" + this.rot + " x:" + this.x + " y:" + this.y + " hit:" + this.hit);
   }
}
