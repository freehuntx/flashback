var §\x01§ = 647;
var §\x0f§ = 1;
class ResultInfoPanel extends MovieClip
{
   var name1T;
   var name2T;
   var score1T;
   var score2T;
   static var name1;
   static var score1;
   static var name2;
   static var score2;
   static var showInfo = false;
   function ResultInfoPanel()
   {
      super();
      this.name1T.text = ResultInfoPanel.name1;
      this.name2T.text = ResultInfoPanel.name2;
      this.score1T.text = ResultInfoPanel.score1;
      this.score2T.text = ResultInfoPanel.score2;
      if(ResultInfoPanel.showInfo)
      {
         this._visible = true;
         ResultInfoPanel.showInfo = false;
      }
      else
      {
         this._visible = false;
      }
   }
}
