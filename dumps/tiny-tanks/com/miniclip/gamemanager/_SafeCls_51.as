package com.miniclip.gamemanager
{
   public class _SafeCls_51
   {
      
      private var _SafeStr_2460:Object;
      
      public function _SafeCls_51(param1:Object)
      {
         super();
         this._SafeStr_2460 = param1;
      }
      
      public function get getBalance() : Boolean
      {
         return Boolean(this._SafeStr_2460["getBalance"] != null ? this._SafeStr_2460["getBalance"] : true);
      }
      
      public function get purchaseProducts() : Boolean
      {
         return Boolean(this._SafeStr_2460["purchaseProducts"] != null ? this._SafeStr_2460["purchaseProducts"] : true);
      }
      
      public function get obj() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         for(_loc2_ in this._SafeStr_2460)
         {
            _loc1_[_loc2_] = this._SafeStr_2460[_loc2_];
         }
         return _loc1_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_51 = "_-3a"
 * @identifier _SafeStr_2460 = "_-3H"
 */
