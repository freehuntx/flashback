var §\x01§ = 635;
var §\x0f§ = 1;
class AdEndScreen extends MovieClip
{
   var onRelease;
   var image;
   var imageLoaded = false;
   function AdEndScreen()
   {
      super();
   }
   function onEnterFrame()
   {
      if(AdManager.configLoaded && AdManager.adEndScreenActive)
      {
         if(this.imageLoaded == false)
         {
            if(AdManager.adEndScreenLinkUrl != null && AdManager.adEndScreenLinkUrl != undefined && AdManager.adEndScreenLinkUrl != "")
            {
               this.onRelease = this.openLink;
            }
            this.image = this.createEmptyMovieClip("image2",2);
            this.image.loadMovie(AdManager.adEndScreenImage);
            this._x = AdManager.adEndScreenImageX;
            this._y = AdManager.adEndScreenImageY;
            this.imageLoaded = true;
         }
      }
   }
   function openLink()
   {
      if(AdManager.adEndScreenLinkNewWindow)
      {
         this.getURL(AdManager.adEndScreenLinkUrl,"_blank");
      }
      else
      {
         this.getURL(AdManager.adEndScreenLinkUrl);
      }
   }
}
