var §\x01§ = 115;
var §\x0f§ = 1;
class Water extends BaseObject
{
   var hitZone;
   function Water()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function hitByBall(ball)
   {
      ball.setToLastPos();
      SoundPlayer.playV(Config.soundWater,Config.soundWaterV);
   }
}
