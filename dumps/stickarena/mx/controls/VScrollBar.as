class mx.controls.VScrollBar extends mx.controls.scrollClasses.ScrollBar
{
   static var symbolName = "VScrollBar";
   static var symbolOwner = mx.core.UIComponent;
   static var version = "2.0.2.127";
   var className = "VScrollBar";
   var minusMode = "Up";
   var plusMode = "Down";
   var minMode = "AtTop";
   var maxMode = "AtBottom";
   function VScrollBar()
   {
      super();
   }
   function init(Void)
   {
      super.init();
   }
   function isScrollBarKey(_loc3_)
   {
      if(_loc3_ == 38)
      {
         this.scrollIt("Line",-1);
         return true;
      }
      if(_loc3_ == 40)
      {
         this.scrollIt("Line",1);
         return true;
      }
      if(_loc3_ == 33)
      {
         this.scrollIt("Page",-1);
         return true;
      }
      if(_loc3_ == 34)
      {
         this.scrollIt("Page",1);
         return true;
      }
      return super.isScrollBarKey(_loc3_);
   }
}
