package _SafePkg_123
{
   import _SafePkg_46.AvatarBitmapType;
   import _SafePkg_46._SafeCls_61;
   import com.miniclip.gamemanager.YoMe;
   import com.miniclip.gamemanager._SafeCls_73;
   import com.miniclip.gamemanager._SafeCls_194;
   import com.miniclip.loggers.LogsHandler;
   import flash.events.EventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class MiniclipAvatars extends EventDispatcher implements _SafeCls_73
   {
      
      private var _SafeStr_1816:Boolean;
      
      private var _SafeStr_852:Boolean;
      
      private var _list:Object;
      
      public function MiniclipAvatars()
      {
         super();
         this._SafeStr_1816 = false;
         this._SafeStr_852 = true;
         this._list = new Object();
      }
      
      public function get _SafeStr_681() : Boolean
      {
         return this._SafeStr_1816;
      }
      
      public function set _SafeStr_681(param1:Boolean) : void
      {
         this._SafeStr_1816 = param1;
      }
      
      public function get allowDuplicates() : Boolean
      {
         return this._SafeStr_852;
      }
      
      public function set allowDuplicates(param1:Boolean) : void
      {
         this._SafeStr_852 = param1;
      }
      
      public function load(param1:int, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : YoMe
      {
         var _loc9_:uint = 0;
         LogsHandler.info("MiniclipAvatars.load()");
         var _loc5_:String = "";
         var _loc7_:_SafeCls_61 = new _SafeCls_61("",param1,param2,param3,param4,this._SafeStr_1816);
         var _loc8_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain,null);
         if(this.allowDuplicates)
         {
            _loc5_ = String(param1) + "_";
            _loc9_ = 1;
            while(this._list[_loc5_ + String(_loc9_)])
            {
               _loc9_++;
            }
            _loc5_ += String(_loc9_);
            return new YoMe(_loc7_);
         }
         _loc5_ = String(param1);
         LogsHandler.debug("YoMe refid: " + _loc5_);
         if(!this._list[_loc5_])
         {
            this._list[_loc5_] = new YoMe(_loc7_);
         }
         return this._list[_loc5_];
      }
      
      public function _SafeStr_495(param1:uint, param2:Number = 200, param3:Number = 200, param4:AvatarBitmapType = null) : _SafeCls_194
      {
         var _loc6_:_SafeCls_61 = new _SafeCls_61("",param1);
         LogsHandler.info("MiniclipAvatars.loadBitmap()");
         return new _SafeCls_194(_loc6_,param2,param3,param4);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_61 = "_-MR"
 * @identifier _SafeCls_73 = "_-Hp"
 * @identifier _SafeCls_194 = "_-XP"
 * @identifier _SafePkg_46 = "_-8"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_495 = "_-WD"
 * @identifier _SafeStr_681 = "_-go"
 * @identifier _SafeStr_852 = "_-RA"
 * @identifier _SafeStr_1816 = "_-f4"
 */
