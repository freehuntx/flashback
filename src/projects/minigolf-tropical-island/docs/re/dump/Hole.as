var §\x01§ = 42;
var §\x0f§ = 1;
class Hole extends BaseObject
{
   var hitZone;
   var speedLimit = 1.2;
   function Hole()
   {
      super();
      trace("hole");
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function hitByBall(ball)
   {
      if(ball.speed < this.speedLimit)
      {
         Game.inst.ballInHole(ball);
         SoundPlayer.playV(Config.soundHole,Config.soundHoleV);
      }
   }
}
