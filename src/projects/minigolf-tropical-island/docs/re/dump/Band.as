var §\x01§ = 203;
var §\x0f§ = 1;
class Band extends Hill
{
   var hitZone;
   var bandSpeed = 0.32;
   function Band()
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
         if(ball.dy < this.bandSpeed)
         {
            ball.dy += this.amount;
         }
         if(ball.dy > Ball.maxSpeed)
         {
            ball.dy = this.maxSpeed;
         }
      }
      else if(this._rotation == -90)
      {
         if(ball.dx < this.bandSpeed)
         {
            ball.dx += this.amount;
         }
         if(ball.dx > Ball.maxSpeed)
         {
            ball.dx = this.maxSpeed;
         }
      }
      else if(this._rotation == 90)
      {
         if(ball.dx > - this.bandSpeed)
         {
            ball.dx -= this.amount;
         }
         if(Math.abs(ball.dx) > Ball.maxSpeed)
         {
            ball.dx = - this.maxSpeed;
         }
      }
      else if(this._rotation == 180)
      {
         if(ball.dy > - this.bandSpeed)
         {
            ball.dy -= this.amount;
         }
         if(Math.abs(ball.dy) > Ball.maxSpeed)
         {
            ball.dy = - this.maxSpeed;
         }
      }
      ball.calcRot();
      ball.calcSpeed();
   }
}
