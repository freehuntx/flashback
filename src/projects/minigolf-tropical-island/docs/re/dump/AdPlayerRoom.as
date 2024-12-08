var §\x01§ = 718;
var §\x0f§ = 1;
class AdPlayerRoom extends MovieClip
{
   var onRelease;
   var image;
   var imageLoaded = false;
   function AdPlayerRoom()
   {
      super();
      _root.werbungPlayerRoom._visible = false;
   }
   function onEnterFrame()
   {
      if(AdManager.configLoaded && AdManager.adPlayerRoomActive)
      {
         if(this.imageLoaded == false)
         {
            if(AdManager.adPlayerRoomLinkUrl != null && AdManager.adPlayerRoomLinkUrl != undefined && AdManager.adPlayerRoomLinkUrl != "")
            {
               this.onRelease = this.openLink;
            }
            this.image = this.createEmptyMovieClip("image",1);
            this.image.loadMovie(AdManager.adPlayerRoomImage);
            this._x = AdManager.adPlayerRoomImageX;
            this._y = AdManager.adPlayerRoomImageY;
            this.imageLoaded = true;
            _root.werbungPlayerRoom._visible = true;
         }
      }
   }
   function openLink()
   {
      if(AdManager.adPlayerRoomLinkNewWindow)
      {
         this.getURL(AdManager.adPlayerRoomLinkUrl,"_blank");
      }
      else
      {
         this.getURL(AdManager.adPlayerRoomLinkUrl);
      }
   }
}
