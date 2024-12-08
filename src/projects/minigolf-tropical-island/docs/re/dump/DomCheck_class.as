var §\x01§ = 465;
var §\x0f§ = 1;
class DomCheck_class
{
   function DomCheck_class()
   {
      var _loc2_ = new LocalConnection();
      switch(_loc2_.domain())
      {
         case "localhost":
         case "192.168.1.100":
         case "qplay.de":
         case "www.qplay.de":
            break;
         default:
            _root.gotoAndStop("Copyright");
      }
   }
}
