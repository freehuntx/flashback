package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_101 extends Event
   {
      
      public static const ERROR:String = "currencies_error";
      
      public static const READY:String = "currencies_ready";
      
      public static const _SafeStr_1937:String = "currencies_balance";
      
      public static const _SafeStr_2420:String = "currencies_balances";
      
      public static const _SafeStr_1123:String = "currencies_itemqnt_decremented";
      
      public static const _SafeStr_2595:String = "currencies_purchase_cancelled";
      
      public static const _SafeStr_2051:String = "currencies_purchase_accepted";
      
      public static const GET_ITEM_BY_ID:String = "currencies_item_byid";
      
      public static const GET_ITEMS_BY_GAME_ID:String = "currencies_items_gameid";
      
      public static const _SafeStr_2481:String = "currencies_bundles";
      
      public static const _SafeStr_2259:String = "currencies_available_currencies";
      
      public static const GET_CURRENCY_BY_ID:String = "currencies_currency_byid";
      
      public static const _SafeStr_756:String = "currencies_adjust_Currency_Balance";
      
      public static const _SafeStr_646:String = "currencies_decrement_Item_Balance";
      
      public static const _SafeStr_2202:String = "currencies_give_item";
      
      public static const _SafeStr_2305:String = "currencies_user_item_quantity";
      
      public static const USER_ITEMS_BY_GAME_ID:String = "currencies_user_items_by_gameid";
      
      public static const _SafeStr_948:String = "currencies_purchased";
      
      public static const _SafeStr_1188:String = "currencies_bundle_purchased";
      
      public static const _SafeStr_2620:String = "currencies_purchase_failed";
      
      public static const _SafeStr_827:String = "currencies_purchase_bundle_failed";
      
      public static const _SafeStr_1845:String = "currencies_currency_converted";
      
      public static const _SafeStr_1528:String = "currencies_convert_cancelled";
      
      public static const _SafeStr_1881:String = "currencies_convert_accepted";
      
      public static const _SafeStr_1152:String = "currencies_conversion_failed";
      
      public static const _SafeStr_1871:String = "currencies_topup_window_closed";
      
      public static const _SafeStr_351:String = "currencies_offer_available";
      
      public static const _SafeStr_2269:String = "currencies_offer_unavailable";
      
      public static const _SafeStr_511:String = "currencies_offer_closed";
      
      private var _data:*;
      
      public function _SafeCls_101(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this._data = param2;
      }
      
      public function get data() : *
      {
         return this._data;
      }
      
      override public function clone() : Event
      {
         return new _SafeCls_101(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_101 = "_-1J"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_351 = "_-a"
 * @identifier _SafeStr_511 = "_-81"
 * @identifier _SafeStr_646 = "_-gH"
 * @identifier _SafeStr_756 = "_-9n"
 * @identifier _SafeStr_827 = "_-Ot"
 * @identifier _SafeStr_948 = "_-1W"
 * @identifier _SafeStr_1123 = "_-AU"
 * @identifier _SafeStr_1152 = "_-gI"
 * @identifier _SafeStr_1188 = "_-AE"
 * @identifier _SafeStr_1528 = "_-9s"
 * @identifier _SafeStr_1845 = "_-GW"
 * @identifier _SafeStr_1871 = "_-YV"
 * @identifier _SafeStr_1881 = "_-1M"
 * @identifier _SafeStr_1937 = "_-eP"
 * @identifier _SafeStr_2051 = "_-LN"
 * @identifier _SafeStr_2202 = "_-5y"
 * @identifier _SafeStr_2259 = "_-ce"
 * @identifier _SafeStr_2269 = "_-PM"
 * @identifier _SafeStr_2305 = "_-1S"
 * @identifier _SafeStr_2420 = "_-cW"
 * @identifier _SafeStr_2481 = "_-Tx"
 * @identifier _SafeStr_2595 = "_-BE"
 * @identifier _SafeStr_2620 = "_-Zr"
 */
