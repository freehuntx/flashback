var §\x01§ = 692;
var §\x0f§ = 1;
class Abyss_jump extends BaseObject
{
   var hitZone;
   var speedLimit = 1.2;
   function Abyss_jump()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function hitByBall(ball)
   {
      if(ball.speed < this.speedLimit)
      {
         ball.setToLastPos();
         SoundPlayer.playV(Config.soundWater,Config.soundWaterV);
      }
   }
}
