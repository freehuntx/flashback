package _SafePkg_123
{
   import _SafePkg_193._SafeCls_192;
   import _SafePkg_85._SafeCls_101;
   import com.miniclip.gamemanager._SafeCls_72;
   import flash.events.EventDispatcher;
   
   public class MiniclipCurrencies extends EventDispatcher implements _SafeCls_72
   {
      
      public function MiniclipCurrencies()
      {
         super(null);
      }
      
      public function init() : void
      {
         trace("MiniclipCurrencies::init();");
      }
      
      public function _SafeStr_2370(param1:int, param2:int, param3:int) : Number
      {
         trace("MiniclipCurrencies::getConvertedAmount(); src_id, des_id, src_amount: " + param1 + ", " + param2 + ", " + param3);
         return NaN;
      }
      
      public function _SafeStr_668(param1:int, param2:int) : _SafeCls_192
      {
         return new _SafeCls_192("",45,45);
      }
      
      public function _SafeStr_1099(param1:int, param2:int, param3:int) : void
      {
         trace("MiniclipCurrencies::convertCurrency(); src_id, des_id, src_amount: " + param1 + ", " + param2 + ", " + param3);
      }
      
      public function getBalance(param1:int) : void
      {
         trace("MiniclipCurrencies::getBalance(); currency_id: " + param1);
      }
      
      public function _SafeStr_291() : void
      {
         trace("MiniclipCurrencies::getBalances();");
      }
      
      public function _SafeStr_1491(param1:int) : void
      {
         trace("MiniclipCurrencies::getUserItemQuantity();");
      }
      
      public function _SafeStr_799() : void
      {
         trace("MiniclipCurrencies::getUserItemsByGameId();");
      }
      
      public function _SafeStr_1400(param1:int) : void
      {
         trace("MiniclipCurrencies::getItemById();");
      }
      
      public function _SafeStr_318() : void
      {
         trace("MiniclipCurrencies::getItemsByGameId();");
      }
      
      public function _SafeStr_2341(param1:int, param2:Array) : void
      {
         trace("MiniclipCurrencies::getBundles();");
      }
      
      public function _SafeStr_1160(param1:int) : void
      {
         trace("MiniclipCurrencies::getCurrencyById();");
      }
      
      public function _SafeStr_1718() : void
      {
         trace("MiniclipCurrencies::getAvailableCurrencies();");
      }
      
      public function _SafeStr_2484(param1:int, param2:int) : void
      {
         trace("MiniclipCurrencies::purchaseBundle();");
      }
      
      public function _SafeStr_446(param1:int, param2:int, param3:Boolean) : void
      {
         trace("MiniclipCurrencies::purchaseItem();");
      }
      
      public function _SafeStr_870(param1:Array, param2:int, param3:Boolean) : void
      {
         trace("MiniclipCurrencies::purchaseItems();");
      }
      
      public function _SafeStr_636(param1:int, param2:Number) : void
      {
         trace("MiniclipCurrencies::adjustCurrencyBalance();");
      }
      
      public function _SafeStr_462(param1:int, param2:int) : void
      {
         trace("MiniclipCurrencies::decrementItemBalance();");
      }
      
      public function giveItem(param1:int, param2:int) : void
      {
         trace("MiniclipCurrencies::giveItem();");
      }
      
      public function _SafeStr_1584() : void
      {
         trace("MiniclipCurrencies::topupCurrency();");
      }
      
      public function _SafeStr_843(param1:int, param2:String) : void
      {
         trace("MiniclipCurrencies::creditsOfferAvailable(); currencyID:",param1,"offerType:",param2);
         dispatchEvent(new _SafeCls_101(_SafeCls_101._SafeStr_2269));
      }
      
      public function _SafeStr_1074(param1:int, param2:String) : void
      {
         dispatchEvent(new _SafeCls_101(_SafeCls_101._SafeStr_511));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_72 = "_-FX"
 * @identifier _SafeCls_101 = "_-1J"
 * @identifier _SafeCls_192 = "_-2I"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafePkg_193 = "_-7h"
 * @identifier _SafeStr_291 = "_-S"
 * @identifier _SafeStr_318 = "_-UR"
 * @identifier _SafeStr_446 = "_-D3"
 * @identifier _SafeStr_462 = "_-MG"
 * @identifier _SafeStr_511 = "_-81"
 * @identifier _SafeStr_636 = "_-6v"
 * @identifier _SafeStr_668 = "_-gT"
 * @identifier _SafeStr_799 = "_-8q"
 * @identifier _SafeStr_843 = "_-hz"
 * @identifier _SafeStr_870 = "_-Sh"
 * @identifier _SafeStr_1074 = "_-Cf"
 * @identifier _SafeStr_1099 = "_-VC"
 * @identifier _SafeStr_1160 = "_-dt"
 * @identifier _SafeStr_1400 = "_-dD"
 * @identifier _SafeStr_1491 = "_-VR"
 * @identifier _SafeStr_1584 = "_-1B"
 * @identifier _SafeStr_1718 = "_-Go"
 * @identifier _SafeStr_2269 = "_-PM"
 * @identifier _SafeStr_2341 = "_-IT"
 * @identifier _SafeStr_2370 = "_-fw"
 * @identifier _SafeStr_2484 = "_-R0"
 */
