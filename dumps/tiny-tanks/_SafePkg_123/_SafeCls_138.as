package _SafePkg_123
{
   import _SafePkg_193._SafeCls_192;
   import _SafePkg_85._SafeCls_104;
   import com.miniclip.gamemanager._SafeCls_51;
   import com.miniclip.gamemanager._SafeCls_76;
   import flash.events.EventDispatcher;
   
   public class _SafeCls_138 extends EventDispatcher implements _SafeCls_76
   {
      
      public function _SafeCls_138()
      {
         super();
      }
      
      public function _SafeStr_1174() : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_2535,null));
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_1871,{
            "success":true,
            "result":1000,
            "description":""
         }));
      }
      
      public function getBalance(param1:Boolean = false) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_1937,{
            "success":true,
            "result":0
         }));
      }
      
      public function _SafeStr_799(param1:Boolean = false) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104.USER_ITEMS_BY_GAME_ID,{
            "success":true,
            "result":null
         }));
      }
      
      public function _SafeStr_352(param1:int, param2:Boolean = false) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_651,{
            "success":true,
            "result":0
         }));
      }
      
      public function _SafeStr_1459(param1:int) : void
      {
         var _loc2_:Object = {
            "description":"A test widget",
            "enabled":"1",
            "game_id":"0",
            "id":"0",
            "max_qty":"0",
            "name":"Widget"
         };
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_2472,{
            "success":true,
            "result":_loc2_
         }));
      }
      
      public function _SafeStr_1996(param1:int, param2:int) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_1123,{
            "success":false,
            "result":113
         }));
      }
      
      public function _SafeStr_771(param1:int, param2:int, param3:String = null, param4:Boolean = false) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_2620,{
            "success":false,
            "result":100
         }));
      }
      
      public function purchaseProducts(param1:Array, param2:int, param3:String = null, param4:Boolean = false) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104._SafeStr_2620,{
            "success":false,
            "result":100
         }));
      }
      
      public function _SafeStr_1201(param1:Boolean = true) : void
      {
         dispatchEvent(new _SafeCls_104(_SafeCls_104.GET_PRODUCT_BY_GAME_ID,{
            "success":false,
            "result":117
         }));
      }
      
      public function _SafeStr_364(param1:int) : void
      {
         var _loc2_:Object = {
            "credit_cost":"0",
            "description":"test product",
            "enabled":"1",
            "game_id":"0",
            "id":"0",
            "items":[{
               "enabled":1,
               "game_id":0,
               "item_id":0,
               "lifetime":0,
               "max_qty":0,
               "name":"Widget",
               "qty":"1",
               "name":"Test name"
            }]
         };
         dispatchEvent(new _SafeCls_104(_SafeCls_104.GET_PRODUCT_BY_ID,{
            "success":true,
            "result":_loc2_
         }));
      }
      
      public function _SafeStr_1713() : _SafeCls_192
      {
         return new _SafeCls_192("",45,45);
      }
      
      public function _SafeStr_968() : _SafeCls_192
      {
         return new _SafeCls_192("",45,45);
      }
      
      public function _SafeStr_1157() : _SafeCls_192
      {
         return new _SafeCls_192("",200,45);
      }
      
      public function get _SafeStr_1707() : _SafeCls_51
      {
         return new _SafeCls_51({});
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_51 = "_-3a"
 * @identifier _SafeCls_76 = "_-jW"
 * @identifier _SafeCls_104 = "_-6X"
 * @identifier _SafeCls_138 = "_-IO"
 * @identifier _SafeCls_192 = "_-2I"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_123 = "_-QR"
 * @identifier _SafePkg_193 = "_-7h"
 * @identifier _SafeStr_352 = "_-Ns"
 * @identifier _SafeStr_364 = "_-J"
 * @identifier _SafeStr_651 = "_-Ts"
 * @identifier _SafeStr_771 = "_-Hb"
 * @identifier _SafeStr_799 = "_-8q"
 * @identifier _SafeStr_968 = "_-fu"
 * @identifier _SafeStr_1123 = "_-AU"
 * @identifier _SafeStr_1157 = "_-Bp"
 * @identifier _SafeStr_1174 = "_-5L"
 * @identifier _SafeStr_1201 = "_-iT"
 * @identifier _SafeStr_1459 = "_-1C"
 * @identifier _SafeStr_1707 = "_-ih"
 * @identifier _SafeStr_1713 = "_-12"
 * @identifier _SafeStr_1871 = "_-YV"
 * @identifier _SafeStr_1937 = "_-eP"
 * @identifier _SafeStr_1996 = "_-Yz"
 * @identifier _SafeStr_2472 = "_-gP"
 * @identifier _SafeStr_2535 = "_-k4"
 * @identifier _SafeStr_2620 = "_-Zr"
 */
