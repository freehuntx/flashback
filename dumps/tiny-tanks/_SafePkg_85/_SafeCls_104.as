package _SafePkg_85
{
   import flash.events.Event;
   
   public class _SafeCls_104 extends Event
   {
      
      public static const _SafeStr_2535:String = "topup_window_opened";
      
      public static const _SafeStr_1871:String = "topup_window_closed";
      
      public static const _SafeStr_1937:String = "credits_balance";
      
      public static const _SafeStr_948:String = "credits_purchased";
      
      public static const _SafeStr_2620:String = "credits_purchase_failed";
      
      public static const _SafeStr_1123:String = "credits_itemqnt_decremented";
      
      public static const _SafeStr_2595:String = "credits_purchase_cancelled";
      
      public static const _SafeStr_2051:String = "credits_purchase_accepted";
      
      public static const GET_PRODUCT_BY_ID:String = "credits_product_byid";
      
      public static const GET_PRODUCT_BY_GAME_ID:String = "credits_product_by_gameid";
      
      public static const _SafeStr_2472:String = "credits_i_info";
      
      public static const _SafeStr_651:String = "credits_item_toal_u_balance";
      
      public static const USER_ITEMS_BY_GAME_ID:String = "credits_user_items_by_gameid";
      
      public static const ERROR:String = "credits_error";
      
      private var _data:*;
      
      public function _SafeCls_104(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
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
         return new _SafeCls_104(type,this.data,bubbles,cancelable);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_104 = "_-6X"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafeStr_651 = "_-Ts"
 * @identifier _SafeStr_948 = "_-1W"
 * @identifier _SafeStr_1123 = "_-AU"
 * @identifier _SafeStr_1871 = "_-YV"
 * @identifier _SafeStr_1937 = "_-eP"
 * @identifier _SafeStr_2051 = "_-LN"
 * @identifier _SafeStr_2472 = "_-gP"
 * @identifier _SafeStr_2535 = "_-k4"
 * @identifier _SafeStr_2595 = "_-BE"
 * @identifier _SafeStr_2620 = "_-Zr"
 */
