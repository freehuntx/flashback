var §\x01§ = 770;
var §\x0f§ = 1;
class AdAfterGame extends MovieClip
{
   var sTime;
   var onRelease;
   var image;
   var imageLoaded = false;
   function AdAfterGame()
   {
      super();
      this.sTime = getTimer();
   }
   function onEnterFrame()
   {
      if(AdManager.configLoaded && AdManager.adAfterGameActive)
      {
         if(this.imageLoaded == false)
         {
            if(AdManager.adAfterGameLinkUrl != null && AdManager.adAfterGameLinkUrl != undefined && AdManager.adAfterGameLinkUrl != "")
            {
               this.onRelease = this.openLink;
            }
            this.image = this.createEmptyMovieClip("image",3);
            this.image.loadMovie(AdManager.adAfterGameImage);
            this._x = AdManager.adAfterGameImageX;
            this._y = AdManager.adAfterGameImageY;
            this.imageLoaded = true;
         }
         if(getTimer() > AdManager.adAfterGameDuration + this.sTime)
         {
            _root.nextFrame();
         }
      }
      else
      {
         _root.nextFrame();
      }
   }
   function openLink()
   {
      if(AdManager.adAfterGameLinkNewWindow)
      {
         this.getURL(AdManager.adAfterGameLinkUrl,"_blank");
      }
      else
      {
         this.getURL(AdManager.adAfterGameLinkUrl);
      }
   }
}
