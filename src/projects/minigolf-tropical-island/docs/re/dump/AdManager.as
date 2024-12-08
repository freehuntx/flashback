var §\x01§ = 320;
var §\x0f§ = 1;
class AdManager
{
   static var adAfterGameActive;
   static var adAfterGameLinkUrl;
   static var adAfterGameImage;
   static var adAfterGameImageX;
   static var adAfterGameImageY;
   static var adAfterGameDuration;
   static var adAfterGameLinkNewWindow;
   static var adBeforeGameActive;
   static var adBeforeGameLinkUrl;
   static var adBeforeGameImage;
   static var adBeforeGameImageX;
   static var adBeforeGameImageY;
   static var adBeforeGameDuration;
   static var adBeforeGameLinkNewWindow;
   static var adEndScreenActive;
   static var adEndScreenLinkUrl;
   static var adEndScreenImage;
   static var adEndScreenImageX;
   static var adEndScreenImageY;
   static var adEndScreenLinkNewWindow;
   static var adAllowDomain;
   static var adPlayerRoomActive;
   static var adPlayerRoomImage;
   static var adPlayerRoomLinkUrl;
   static var adPlayerRoomImageX;
   static var adPlayerRoomImageY;
   static var adPlayerRoomLinkNewWindow;
   static var configLoaded = false;
   function AdManager()
   {
   }
   static function loadAdConfig(adConfigUrl)
   {
      if(adConfigUrl != "")
      {
         var _loc1_ = new LoadVars();
         var resultlist = new LoadVars();
         resultlist.onLoad = function(data)
         {
            AdManager.adAllowDomain = resultlist.adAllowDomain;
            if(AdManager.adAllowDomain != null && AdManager.adAllowDomain != undefined && AdManager.adAllowDomain != "")
            {
               System.security.allowDomain(AdManager.adAllowDomain);
            }
            AdManager.adPlayerRoomActive = AdManager.getBoolean(resultlist.adPlayerRoomActive);
            AdManager.adPlayerRoomImage = resultlist.adPlayerRoomImage;
            AdManager.adPlayerRoomLinkUrl = resultlist.adPlayerRoomLinkUrl;
            AdManager.adPlayerRoomImageX = AdManager.getNumber(resultlist.adPlayerRoomImageX);
            AdManager.adPlayerRoomImageY = AdManager.getNumber(resultlist.adPlayerRoomImageY);
            AdManager.adPlayerRoomLinkNewWindow = AdManager.getBoolean(resultlist.adPlayerRoomLinkNewWindow);
            AdManager.adBeforeGameActive = AdManager.getBoolean(resultlist.adBeforeGameActive);
            AdManager.adBeforeGameImage = resultlist.adBeforeGameImage;
            AdManager.adBeforeGameLinkUrl = resultlist.adBeforeGameLinkUrl;
            AdManager.adBeforeGameImageX = AdManager.getNumber(resultlist.adBeforeGameImageX);
            AdManager.adBeforeGameImageY = AdManager.getNumber(resultlist.adBeforeGameImageY);
            AdManager.adBeforeGameLinkNewWindow = AdManager.getBoolean(resultlist.adBeforeGameLinkNewWindow);
            AdManager.adBeforeGameDuration = AdManager.getNumber(resultlist.adBeforeGameDuration);
            AdManager.adAfterGameActive = AdManager.getBoolean(resultlist.adAfterGameActive);
            AdManager.adAfterGameImage = resultlist.adAfterGameImage;
            AdManager.adAfterGameLinkUrl = resultlist.adAfterGameLinkUrl;
            AdManager.adAfterGameImageX = AdManager.getNumber(resultlist.adAfterGameImageX);
            AdManager.adAfterGameImageY = AdManager.getNumber(resultlist.adAfterGameImageY);
            AdManager.adAfterGameLinkNewWindow = AdManager.getBoolean(resultlist.adAfterGameLinkNewWindow);
            AdManager.adAfterGameDuration = AdManager.getNumber(resultlist.adAfterGameDuration);
            AdManager.adEndScreenActive = AdManager.getBoolean(resultlist.adEndScreenActive);
            AdManager.adEndScreenImage = resultlist.adEndScreenImage;
            AdManager.adEndScreenLinkUrl = resultlist.adEndScreenLinkUrl;
            AdManager.adEndScreenImageX = AdManager.getNumber(resultlist.adEndScreenImageX);
            AdManager.adEndScreenImageY = AdManager.getNumber(resultlist.adEndScreenImageY);
            AdManager.adEndScreenLinkNewWindow = AdManager.getBoolean(resultlist.adEndScreenLinkNewWindow);
            AdManager.configLoaded = true;
         };
         _loc1_.sendAndLoad("http://" + adConfigUrl,resultlist,"GET");
      }
   }
   static function getNumber(string)
   {
      return Number(AdManager.trim(string));
   }
   static function getBoolean(string)
   {
      return AdManager.trim(string) != "1" ? false : true;
   }
   static function trim(matter)
   {
      return AdManager.ltrim(AdManager.rtrim(matter));
   }
   static function ltrim(matter)
   {
      if(matter.length > 1 || matter.length == 1 && matter.charCodeAt(0) > 32 && matter.charCodeAt(0) < 255)
      {
         var _loc1_ = 0;
         while(_loc1_ < matter.length && (matter.charCodeAt(_loc1_) <= 32 || matter.charCodeAt(_loc1_) >= 255))
         {
            _loc1_ = _loc1_ + 1;
         }
         matter = matter.substring(_loc1_);
      }
      else
      {
         matter = "";
      }
      return matter;
   }
   static function rtrim(matter)
   {
      if(matter.length > 1 || matter.length == 1 && matter.charCodeAt(0) > 32 && matter.charCodeAt(0) < 255)
      {
         var _loc1_ = matter.length - 1;
         while(_loc1_ >= 0 && (matter.charCodeAt(_loc1_) <= 32 || matter.charCodeAt(_loc1_) >= 255))
         {
            _loc1_ = _loc1_ - 1;
         }
         matter = matter.substring(0,_loc1_ + 1);
      }
      else
      {
         matter = "";
      }
      return matter;
   }
}
