var §\x01§ = 588;
var §\x0f§ = 1;
class Hill1 extends BaseObject
{
   var hitZone;
   var amount = 0.001;
   var maxSpeed = Ball.maxSpeed;
   function Hill1()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function hitByBall(ball)
   {
      ball.inHill = true;
      if(this._rotation == 0)
      {
         ball.dy += this.amount;
         if(ball.dy > Ball.maxSpeed)
         {
            ball.dy = this.maxSpeed;
         }
      }
      else if(this._rotation == -90)
      {
         ball.dx += this.amount;
         if(ball.dx > Ball.maxSpeed)
         {
            ball.dx = this.maxSpeed;
         }
      }
      else if(this._rotation == 90)
      {
         ball.dx -= this.amount;
         if(Math.abs(ball.dx) > Ball.maxSpeed)
         {
            ball.dx = - this.maxSpeed;
         }
      }
      else if(this._rotation == 180)
      {
         ball.dy -= this.amount;
         if(Math.abs(ball.dy) > Ball.maxSpeed)
         {
            ball.dy = - this.maxSpeed;
         }
      }
      ball.calcRot();
      ball.calcSpeed();
   }
}
