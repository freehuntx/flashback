package _SafePkg_111
{
   import _SafePkg_7._SafeCls_60;
   import _SafePkg_7._SafeCls_6;
   
   public class _SafeCls_110 extends _SafeCls_6
   {
      
      private var _SafeStr_706:String;
      
      private var _userID:uint;
      
      private var _language:String;
      
      internal var _SafeStr_1557:Vector.<_SafeCls_60>;
      
      public function _SafeCls_110()
      {
         super();
      }
      
      public function get userID() : uint
      {
         return this._userID;
      }
      
      public function set userID(param1:uint) : void
      {
         this._userID = param1;
      }
      
      public function get language() : String
      {
         return this._language;
      }
      
      public function set language(param1:String) : void
      {
         this._language = param1;
      }
      
      public function get avatars() : Object
      {
         return this._SafeStr_1557;
      }
      
      public function set avatars(param1:Object) : void
      {
         var _loc2_:_SafeCls_60 = null;
         var _loc3_:String = null;
         this._SafeStr_1557 = new Vector.<_SafeCls_60>();
         for(_loc3_ in param1)
         {
            _loc2_ = new _SafeCls_60();
            _loc2_.url = param1[_loc3_] || "";
            _loc2_.type = _loc3_;
            this._SafeStr_1557.push(_loc2_);
         }
      }
      
      public function get username() : String
      {
         return this._SafeStr_706;
      }
      
      public function set username(param1:String) : void
      {
         this._SafeStr_706 = param1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "_-7E"
 * @identifier _SafeCls_60 = "_-6F"
 * @identifier _SafeCls_110 = "_-7l"
 * @identifier _SafePkg_7 = "_-6y"
 * @identifier _SafePkg_111 = "_-Xo"
 * @identifier _SafeStr_706 = "_-V8"
 * @identifier _SafeStr_1557 = "_-Yn"
 */
