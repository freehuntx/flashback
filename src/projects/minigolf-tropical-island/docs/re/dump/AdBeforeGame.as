var §\x01§ = 605;
var §\x0f§ = 1;
class AdBeforeGame extends MovieClip
{
   var sTime;
   var onRelease;
   var image;
   var imageLoaded = false;
   function AdBeforeGame()
   {
      super();
      this.sTime = getTimer();
   }
   function onEnterFrame()
   {
      if(AdManager.configLoaded && AdManager.adBeforeGameActive)
      {
         if(this.imageLoaded == false)
         {
            if(AdManager.adBeforeGameLinkUrl != null && AdManager.adBeforeGameLinkUrl != undefined && AdManager.adBeforeGameLinkUrl != "")
            {
               this.onRelease = this.openLink;
            }
            this.image = this.createEmptyMovieClip("image",3);
            this.image.loadMovie(AdManager.adBeforeGameImage);
            this._x = AdManager.adBeforeGameImageX;
            this._y = AdManager.adBeforeGameImageY;
            this.imageLoaded = true;
         }
         if(getTimer() > AdManager.adBeforeGameDuration + this.sTime)
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
      if(AdManager.adBeforeGameLinkNewWindow)
      {
         this.getURL(AdManager.adBeforeGameLinkUrl,"_blank");
      }
      else
      {
         this.getURL(AdManager.adBeforeGameLinkUrl);
      }
   }
}
