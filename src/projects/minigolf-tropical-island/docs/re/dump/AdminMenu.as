var §\x01§ = 161;
var §\x0f§ = 1;
class AdminMenu extends MovieClip
{
   var pName;
   static var inst;
   static var selectedPlayerName = "";
   static var buttonLabels = new Array();
   static var buttonCommands = new Array();
   static var ready = false;
   var firstEnter = true;
   function AdminMenu()
   {
      super();
      this.stop();
      AdminMenu.inst = this;
      this._visible = false;
      this.firstEnter = true;
   }
   function onEnterFrame()
   {
      if(AdminMenu.ready && this.firstEnter)
      {
         this.firstEnter = false;
         this.buildButtons();
      }
   }
   function setSelectedPlayerName(n)
   {
      AdminMenu.selectedPlayerName = n;
      this.pName.text = n;
   }
   static function addButton(la, com)
   {
      AdminMenu.buttonLabels.push(la);
      AdminMenu.buttonCommands.push(com);
   }
   function buildButtons()
   {
      this._visible = true;
      var _loc2_ = 0;
      while(_loc2_ < AdminMenu.buttonLabels.length)
      {
         var _loc3_ = "b" + String(_loc2_ + 1);
         var _loc4_ = AdminButton(this[_loc3_]);
         _loc4_.setValues(AdminMenu.buttonLabels[_loc2_],AdminMenu.buttonCommands[_loc2_]);
         _loc2_ = _loc2_ + 1;
      }
   }
}
