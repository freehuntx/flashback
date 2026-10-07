package _SafePkg_48
{
   public class _SafeCls_47
   {
      
      protected var _id:uint;
      
      protected var _SafeStr_268:String;
      
      protected var _SafeStr_370:String;
      
      protected var _SafeStr_621:String;
      
      protected var _location:String;
      
      protected var _SafeStr_660:Boolean;
      
      protected var _SafeStr_2482:Number;
      
      protected var _SafeStr_1567:Number;
      
      protected var _SafeStr_1636:Number;
      
      protected var _SafeStr_1897:Number;
      
      protected var _SafeStr_2639:String;
      
      protected var _SafeStr_2306:String;
      
      protected var _SafeStr_1010:Number;
      
      public function _SafeCls_47(param1:Object)
      {
         super();
         if(param1 != null)
         {
            this._id = uint(param1.id);
            this._SafeStr_268 = String(param1.sid);
            this._SafeStr_370 = String(param1.email);
            this._SafeStr_621 = String(param1.nickname);
            this._location = String(param1.location);
            this._SafeStr_660 = false;
            this._SafeStr_2482 = Number(param1.worldRank);
            this._SafeStr_1567 = Number(param1.starRank);
            this._SafeStr_1636 = Number(param1.challenges);
            this._SafeStr_1897 = Number(param1.friends);
            this._SafeStr_2639 = String(param1.playerPageURL);
            this._SafeStr_2306 = String(param1.playerAvatarURL);
            this._SafeStr_1010 = Number(param1.userLevel);
            if(param1.avatar)
            {
               this._SafeStr_660 = Boolean(param1.avatar);
            }
            if(param1.avatarCode)
            {
               this._SafeStr_660 = param1.avatarCode > 0;
            }
         }
      }
      
      public function _SafeStr_1367() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.id = this._id;
         _loc1_.sessionid = this._SafeStr_268;
         _loc1_.email = this._SafeStr_370;
         _loc1_.nickname = this._SafeStr_621;
         _loc1_.location = this._location;
         _loc1_.avatar = this._SafeStr_660;
         _loc1_.worldRank = this._SafeStr_2482;
         _loc1_.starRank = this._SafeStr_1567;
         _loc1_.challenges = this._SafeStr_1636;
         _loc1_.friends = this._SafeStr_1897;
         _loc1_.playerPageURL = this._SafeStr_2639;
         _loc1_.playerAvatarURL = this._SafeStr_2306;
         _loc1_.userLevel = this._SafeStr_1010;
         return _loc1_;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get sessionid() : String
      {
         return this._SafeStr_268;
      }
      
      public function get email() : String
      {
         return this._SafeStr_370;
      }
      
      public function get nickname() : String
      {
         return this._SafeStr_621;
      }
      
      public function get location() : String
      {
         return this._location;
      }
      
      public function get avatar() : Boolean
      {
         return this._SafeStr_660;
      }
      
      public function set avatar(param1:Boolean) : void
      {
         this._SafeStr_660 = param1;
      }
      
      public function get worldRank() : Number
      {
         return this._SafeStr_2482;
      }
      
      public function get starRank() : Number
      {
         return this._SafeStr_1567;
      }
      
      public function get challenges() : Number
      {
         return this._SafeStr_1636;
      }
      
      public function get friends() : Number
      {
         return this._SafeStr_1897;
      }
      
      public function get playerPageURL() : String
      {
         return this._SafeStr_2639;
      }
      
      public function get playerAvatarURL() : String
      {
         return this._SafeStr_2306;
      }
      
      public function get userLevel() : Number
      {
         return this._SafeStr_1010;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "[UserDetails]";
         _loc1_ += "\n\t id: " + this._id;
         _loc1_ += "\n\t sessionid: " + this._SafeStr_268;
         _loc1_ += "\n\t email: " + this._SafeStr_370;
         _loc1_ += "\n\t nickname: " + this._SafeStr_621;
         _loc1_ += "\n\t location: " + this._location;
         _loc1_ += "\n\t avatar: " + this._SafeStr_660;
         _loc1_ += "\n\t worldRank: " + this._SafeStr_2482;
         _loc1_ += "\n\t challenges: " + this._SafeStr_1636;
         _loc1_ += "\n\t playerPageURL: " + this.playerPageURL;
         return _loc1_ + ("\n\t playerAvatarURL: " + this._SafeStr_2306);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_47 = "_-BB"
 * @identifier _SafePkg_48 = "_-L9"
 * @identifier _SafeStr_268 = "_-f1"
 * @identifier _SafeStr_370 = "_-gZ"
 * @identifier _SafeStr_621 = "_-Ye"
 * @identifier _SafeStr_660 = "_-2C"
 * @identifier _SafeStr_1010 = "_-JY"
 * @identifier _SafeStr_1367 = "_-O2"
 * @identifier _SafeStr_1567 = "_-U"
 * @identifier _SafeStr_1636 = "_-3R"
 * @identifier _SafeStr_1897 = "_-RR"
 * @identifier _SafeStr_2306 = "_-Js"
 * @identifier _SafeStr_2482 = "_-Nh"
 * @identifier _SafeStr_2639 = "_-8I"
 */
