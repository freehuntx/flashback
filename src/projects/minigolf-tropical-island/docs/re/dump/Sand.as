var §\x01§ = 664;
var §\x0f§ = 1;
class Sand extends BaseObject
{
   var hitZone;
   var breaking = 0.01;
   function Sand()
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
