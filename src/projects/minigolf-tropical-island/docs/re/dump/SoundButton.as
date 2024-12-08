var §\x01§ = 979;
var §\x0f§ = 1;
class SoundButton extends MovieClip
{
   var soundOn = true;
   function SoundButton()
   {
      super();
      this.stop();
      SoundPlayer.init();
      this.update();
   }
   function onPress()
   {
      SoundPlayer.onOff();
      this.update();
   }
   function update()
   {
      if(SoundPlayer.soundOn == true)
      {
         this.gotoAndStop(1);
      }
      else
      {
         this.gotoAndStop(2);
      }
   }
}
