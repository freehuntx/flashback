var §\x01§ = 134;
var §\x0f§ = 1;
class ToPRButton extends MovieClip
{
   function ToPRButton()
   {
      super();
   }
   function onPress()
   {
      trace("To PlayerRoom");
      _root.chatBox.clearChatList();
      Connector.sendGameMsg("<toRoom/>\n");
      Connector.gameStarted = false;
      _root.gotoAndStop("PlayerRoom");
   }
}
