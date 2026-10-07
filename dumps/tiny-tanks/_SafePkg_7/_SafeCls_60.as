package _SafePkg_7
{
   public class _SafeCls_60
   {
      
      public static const _SafeStr_2525:String = "large";
      
      public static const _SafeStr_1639:String = "small";
      
      public static const _SafeStr_765:String = "medium";
      
      public static const _SafeStr_2500:String = "mp-small";
      
      public static const _SafeStr_1006:String = "mp-medium";
      
      public static const _SafeStr_1635:String = "mp-large";
      
      public static const _SafeStr_2339:String = "mp-complete";
      
      internal var _id:Number;
      
      internal var _url:String;
      
      internal var _type:String;
      
      internal var _SafeStr_1199:Boolean;
      
      private var _SafeStr_880:String;
      
      public function _SafeCls_60()
      {
         super();
      }
      
      public static function _SafeStr_743(param1:Object) : _SafeCls_60
      {
         var _loc2_:_SafeCls_60 = null;
         _loc2_ = new _SafeCls_60();
         _loc2_._id = param1.id;
         _loc2_._url = param1.url;
         _loc2_._type = param1.type;
         _loc2_._SafeStr_1199 = param1.current;
         _loc2_._SafeStr_880 = param1.gender;
         return _loc2_;
      }
      
      public function get gender() : String
      {
         return this._SafeStr_880;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function set url(param1:String) : void
      {
         this._url = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function get current() : Boolean
      {
         return this._SafeStr_1199;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_60 = "_-6F"
 * @identifier _SafePkg_7 = "_-6y"
 * @identifier _SafeStr_743 = "_-dw"
 * @identifier _SafeStr_765 = "_-SU"
 * @identifier _SafeStr_880 = "_-bs"
 * @identifier _SafeStr_1006 = "_-dU"
 * @identifier _SafeStr_1199 = "_-OP"
 * @identifier _SafeStr_1635 = "_-18"
 * @identifier _SafeStr_1639 = "_-dz"
 * @identifier _SafeStr_2339 = "_-N"
 * @identifier _SafeStr_2500 = "_-hJ"
 * @identifier _SafeStr_2525 = "_-Op"
 */
