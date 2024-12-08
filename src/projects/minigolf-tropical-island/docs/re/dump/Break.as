var §\x01§ = 528;
var §\x0f§ = 1;
class Break extends BaseObject
{
   var hitZone;
   var breaking = 0.008;
   function Break()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function hitByBall(ball)
   {
      ball.speed -= this.breaking;
      ball.calcDxDy();
   }
}
