var §\x01§ = 122;
var §\x0f§ = 1;
class OneWayWall extends BaseObject
{
   var hitZone;
   function OneWayWall()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function hitByBall(ball)
   {
      if(this._rotation == 0)
      {
         if(ball.dx < 0)
         {
            ball.dx = - ball.dx;
         }
      }
      else if(this._rotation != -90)
      {
         if(this._rotation != 90)
         {
            if(this._rotation == 180)
            {
            }
         }
      }
      ball.calcRot();
      ball.calcSpeed();
   }
}
