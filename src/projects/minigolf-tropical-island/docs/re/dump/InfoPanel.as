var §\x01§ = 404;
var §\x0f§ = 1;
class InfoPanel extends MovieClip
{
   var yourTurn;
   var othersTurn;
   static var inst;
   function InfoPanel()
   {
      super();
      trace("InfoPanel()");
      InfoPanel.inst = this;
      this.yourTurn._visible = false;
      this.othersTurn._visible = false;
   }
   function setVal(pNr, bNr, n, total)
   {
      this["p" + pNr + "b" + bNr].text = n;
      this["p" + pNr + "total"].text = total;
   }
}
