package _SafePkg_123
{
   import _SafePkg_85._SafeCls_96;
   import com.miniclip.gamemanager.GameManager;
   import com.miniclip.gamemanager.GameTracking;
   import com.miniclip.gamemanager.Utils;
   import com.miniclip.gamemanager._SafeCls_24;
   import com.miniclip.gamemanager._SafeCls_132;
   import com.miniclip.gamemanager._SafeCls_72;
   import com.miniclip.gamemanager._SafeCls_73;
   import com.miniclip.gamemanager._SafeCls_71;
   import com.miniclip.gamemanager._SafeCls_74;
   import com.miniclip.gamemanager._SafeCls_75;
   import com.miniclip.gamemanager._SafeCls_77;
   import com.miniclip.gamemanager._SafeCls_76;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   
   public class _SafeCls_195 extends Sprite implements GameManager
   {
      
      private var _ready:Boolean;
      
      private var _SafeStr_692:_SafeCls_71;
      
      private var _SafeStr_738:_SafeCls_74;
      
      private var _SafeStr_1557:_SafeCls_73;
      
      private var _SafeStr_565:_SafeCls_76;
      
      private var _SafeStr_2526:_SafeCls_72;
      
      private var _SafeStr_1111:_SafeCls_77;
      
      private var _tracking:GameTracking;
      
      private var _midroll:_SafeCls_132;
      
      private var _SafeStr_1425:_SafeCls_75;
      
      private var _SafeStr_2314:_SafeCls_24;
      
      private const delayedReadyPeriod:uint = 250;
      
      private var _SafeStr_990:uint;
      
      public function _SafeCls_195()
      {
         super();
         if(Capabilities.playerType != "Desktop")
         {
            Security.allowDomain("*");
            Security.allowInsecureDomain("*");
         }
         this._SafeStr_463();
      }
      
      private function _SafeStr_463() : void
      {
         this._SafeStr_692 = new _SafeCls_135();
         this._SafeStr_738 = new _SafeCls_136(new _SafeCls_139());
         this._SafeStr_1557 = new MiniclipAvatars();
         this._SafeStr_1557 = new MiniclipAvatars();
         this._SafeStr_565 = new _SafeCls_138();
         this._SafeStr_2526 = new MiniclipCurrencies();
         this._SafeStr_1111 = new MiniclipLobby();
         this._tracking = new MiniclipTracking();
         this._SafeStr_1425 = new _SafeCls_137();
      }
      
      public function init(param1:DisplayObjectContainer) : void
      {
         this._ready = true;
         this.dispatchEvent(new _SafeCls_96(_SafeCls_96.READY));
         this._SafeStr_990 = setInterval(this._SafeStr_1728,this.delayedReadyPeriod);
      }
      
      private function _SafeStr_1728() : void
      {
         clearInterval(this._SafeStr_990);
         this.dispatchEvent(new _SafeCls_96(_SafeCls_96._SafeStr_1008));
      }
      
      public function get _SafeStr_1622() : ApplicationDomain
      {
         return ApplicationDomain.currentDomain;
      }
      
      public function get version() : String
      {
         return "4.0.0.0";
      }
      
      public function get services() : _SafeCls_71
      {
         return this._SafeStr_692;
      }
      
      public function get player() : _SafeCls_74
      {
         return this._SafeStr_738;
      }
      
      public function get avatars() : _SafeCls_73
      {
         return this._SafeStr_1557;
      }
      
      public function get credits() : _SafeCls_76
      {
         return this._SafeStr_565;
      }
      
      public function get currencies() : _SafeCls_72
      {
         return this._SafeStr_2526;
      }
      
      public function get lobby() : _SafeCls_77
      {
         return this._SafeStr_1111;
      }
      
      public function get tracking() : GameTracking
      {
         return this._tracking;
      }
      
      public function get ready() : Boolean
      {
         return this._ready;
      }
      
      public function get midRoll() : _SafeCls_132
      {
         return null;
      }
      
      public function get chat() : _SafeCls_75
      {
         return this._SafeStr_1425;
      }
      
      public function get info() : String
      {
         return "Miniclip Game Manager (Development Mode)";
      }
      
      public function get sponsorship() : _SafeCls_24
      {
         return null;
      }
      
      public function get utils() : Utils
      {
         return Utils.instance;
      }
      
      public function get AMFGateway() : String
      {
         return "/php/amfphp/gateway.php";
      }
   }
}

import _SafePkg_85._SafeCls_97;

_SafeCls_97;


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_24 = "_-3X"
 * @identifier _SafeCls_71 = "_-Rn"
 * @identifier _SafeCls_72 = "_-FX"
 * @identifier _SafeCls_73 = "_-Hp"
 * @identifier _SafeCls_74 = "_-Sq"
 * @identifier _SafeCls_75 = "_-Z3"
 * @identifier _SafeCls_76 = "_-jW"
 * @identifier _SafeCls_77 = "_-gt"
 * @identifier _SafeCls_96 = "_-PR"
 * @identifier _SafeCls_97 = "_-9Q"
 * @identifier _SafeCls_132 = "_-AK"
 * @identifier _SafeCls_135 = "_-6W"
 * @identifier _SafeCls_136 = "_-Bt"
 * @identifier _SafeCls_137 = "_-Uh"
 * @identifier _SafeCls_138 = "_-IO"
 * @identifier _SafeCls_139 = "_-Ec"
 * @identifier _SafeCls_195 = "_-Jf"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafeStr_463 = "_-Ci"
 * @identifier _SafeStr_565 = "_-Pg"
 * @identifier _SafeStr_692 = "_-bq"
 * @identifier _SafeStr_738 = "_-cF"
 * @identifier _SafeStr_990 = "_-UU"
 * @identifier _SafeStr_1008 = "_-Je"
 * @identifier _SafeStr_1111 = "_-j3"
 * @identifier _SafeStr_1425 = "_-7k"
 * @identifier _SafeStr_1557 = "_-Yn"
 * @identifier _SafeStr_1622 = "_-OT"
 * @identifier _SafeStr_1728 = "_-Dl"
 * @identifier _SafeStr_2314 = "_-ju"
 * @identifier _SafeStr_2526 = "_-dO"
 */
