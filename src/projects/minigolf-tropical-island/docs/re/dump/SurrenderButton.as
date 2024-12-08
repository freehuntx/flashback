var §\x01§ = 675;
var §\x0f§ = 1;
class SurrenderButton extends MovieClip
{
   function SurrenderButton()
   {
      super();
      _root.stop();
   }
   function onPress()
   {
      _root.surrenderAck._visible = true;
   }
}
