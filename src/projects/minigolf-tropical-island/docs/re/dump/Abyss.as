var §\x01§ = 190;
var §\x0f§ = 1;
class Abyss extends BaseObject
{
   var hitZone;
   function Abyss()
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
      SoundPlayer.playV(Config.soundAbyss,Config.soundAbyssV);
   }
}
