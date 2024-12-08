var §\x01§ = 605;
var §\x0f§ = 1;
class MoveZone extends BaseObject
{
   var hitZone;
   var speedLimit = 0.2;
   function MoveZone()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
      this.hitZone._visible = false;
      this._visible = false;
   }
   function hitByBall(ball)
   {
      if(ball.speed < this.speedLimit)
      {
         ball.inHill = true;
      }
   }
}
