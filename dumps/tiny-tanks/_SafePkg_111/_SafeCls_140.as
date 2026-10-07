package _SafePkg_111
{
   import _SafePkg_7._SafeCls_60;
   import flash.utils.Dictionary;
   
   public class _SafeCls_140 extends _SafeCls_110
   {
      
      public static const _SafeStr_296:String = "Guest";
      
      public static const _SafeStr_1471:String = "Member activated";
      
      public static const _SafeStr_1750:String = "Member awaiting activation";
      
      public static const _SafeStr_1062:String = "Member not activated";
      
      public static const _SafeStr_1363:String = "Member awaiting parent approval";
      
      public static const _SafeStr_1312:String = "Member needs migration";
      
      public static const _SafeStr_914:String = "Member has invalid email";
      
      public static const _SafeStr_1411:String = "Member deleted";
      
      public static const _SafeStr_1020:String = "Moderator";
      
      public static const _SafeStr_302:Dictionary = new Dictionary();
      
      public static const _SafeStr_443:String = "m";
      
      public static const _SafeStr_461:String = "f";
      
      _SafeStr_302[1] = _SafeStr_296;
      _SafeStr_302[2] = _SafeStr_1471;
      _SafeStr_302[4] = _SafeStr_1750;
      _SafeStr_302[8] = _SafeStr_1062;
      _SafeStr_302[16] = _SafeStr_1363;
      _SafeStr_302[32] = _SafeStr_1312;
      _SafeStr_302[64] = _SafeStr_914;
      _SafeStr_302[128] = _SafeStr_1411;
      _SafeStr_302[256] = _SafeStr_1020;
      
      private var _SafeStr_449:String;
      
      private var _SafeStr_1555:String;
      
      private var _SafeStr_2363:String;
      
      private var _SafeStr_370:String;
      
      private var _SafeStr_880:String;
      
      private var _SafeStr_677:uint;
      
      private var _dateOfBirth:Date;
      
      private var _status:String;
      
      private var _SafeStr_1980:uint;
      
      internal var _SafeStr_895:uint;
      
      internal var _type:String;
      
      public function _SafeCls_140(param1:String = null, param2:String = null, param3:String = null, param4:Date = null, param5:String = null, param6:String = null)
      {
         super();
         this._SafeStr_494 = param1;
         this._SafeStr_1439 = param2;
         this.gender = param3;
         this.dateOfBirth = param4;
         this._SafeStr_2244 = param5;
         this.language = param6;
      }
      
      public static function _SafeStr_743(param1:Object) : _SafeCls_140
      {
         var _loc2_:_SafeCls_140 = null;
         _loc2_ = new _SafeCls_140();
         _loc2_.type = param1.type;
         _loc2_.userID = param1.user_id;
         _loc2_.username = param1.username;
         _loc2_.avatars = param1.avatar;
         _loc2_.status = param1.status;
         _loc2_.created = param1.created;
         _loc2_.modified = uint(param1.modified) || uint(param1.updated);
         _loc2_.language = param1.language;
         return _loc2_;
      }
      
      public static function _SafeStr_1735(param1:Array) : Vector.<_SafeCls_140>
      {
         var _loc2_:Vector.<_SafeCls_140> = null;
         var _loc3_:Object = null;
         _loc2_ = new Vector.<_SafeCls_140>();
         for each(_loc3_ in param1)
         {
            _loc2_.push(_SafeCls_140._SafeStr_743(_loc3_));
         }
         return _loc2_;
      }
      
      public function get _SafeStr_1316() : uint
      {
         return this._SafeStr_1980;
      }
      
      public function set _SafeStr_1316(param1:uint) : void
      {
         this._SafeStr_1980 = param1;
      }
      
      public function get _SafeStr_494() : String
      {
         return this._SafeStr_449;
      }
      
      public function set _SafeStr_494(param1:String) : void
      {
         this._SafeStr_449 = param1;
      }
      
      public function get _SafeStr_1439() : String
      {
         return this._SafeStr_1555;
      }
      
      public function set _SafeStr_1439(param1:String) : void
      {
         this._SafeStr_1555 = param1;
      }
      
      public function get _SafeStr_2244() : String
      {
         return this._SafeStr_2363;
      }
      
      public function set _SafeStr_2244(param1:String) : void
      {
         this._SafeStr_2363 = param1;
      }
      
      public function set created(param1:uint) : void
      {
         this._SafeStr_677 = param1;
      }
      
      public function set status(param1:String) : void
      {
         this._status = param1;
      }
      
      public function get email() : String
      {
         return this._SafeStr_370;
      }
      
      public function set email(param1:String) : void
      {
         this._SafeStr_370 = param1;
      }
      
      public function get gender() : String
      {
         return this._SafeStr_880;
      }
      
      public function set gender(param1:String) : void
      {
         this._SafeStr_880 = param1;
      }
      
      public function get dateOfBirth() : Date
      {
         return this._dateOfBirth;
      }
      
      public function set dateOfBirth(param1:Date) : void
      {
         this._dateOfBirth = param1;
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function get created() : uint
      {
         return this._SafeStr_677;
      }
      
      public function get modified() : uint
      {
         return this._SafeStr_895;
      }
      
      public function set modified(param1:uint) : void
      {
         this._SafeStr_895 = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function _SafeStr_1288(param1:String) : String
      {
         var _loc2_:_SafeCls_60 = null;
         var _loc3_:_SafeCls_60 = null;
         for each(_loc3_ in _SafeStr_1557)
         {
            if(_loc3_.type == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         return _loc2_.url;
      }
      
      public function _SafeStr_783(param1:uint = 0) : String
      {
         var _loc2_:String = null;
         return _SafeStr_302[this._SafeStr_1316];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_60 = "_-6F"
 * @identifier _SafeCls_110 = "_-7l"
 * @identifier _SafeCls_140 = "_-f6"
 * @identifier _SafePkg_7 = "_-6y"
 * @identifier _SafePkg_111 = "_-Xo"
 * @identifier _SafeStr_296 = "_-hf"
 * @identifier _SafeStr_302 = "_-fK"
 * @identifier _SafeStr_370 = "_-gZ"
 * @identifier _SafeStr_443 = "_-KQ"
 * @identifier _SafeStr_449 = "_-Fg"
 * @identifier _SafeStr_461 = "_-TK"
 * @identifier _SafeStr_494 = "_-dA"
 * @identifier _SafeStr_677 = "_-5m"
 * @identifier _SafeStr_743 = "_-dw"
 * @identifier _SafeStr_783 = "_-2R"
 * @identifier _SafeStr_880 = "_-bs"
 * @identifier _SafeStr_895 = "_-Wr"
 * @identifier _SafeStr_914 = "_-EP"
 * @identifier _SafeStr_1020 = "_-SP"
 * @identifier _SafeStr_1062 = "_-4Q"
 * @identifier _SafeStr_1288 = "_-bC"
 * @identifier _SafeStr_1312 = "_-l"
 * @identifier _SafeStr_1316 = "_-Xs"
 * @identifier _SafeStr_1363 = "_-Q3"
 * @identifier _SafeStr_1411 = "_-2o"
 * @identifier _SafeStr_1439 = "_-Ib"
 * @identifier _SafeStr_1471 = "_-Dj"
 * @identifier _SafeStr_1555 = "_-hr"
 * @identifier _SafeStr_1557 = "_-Yn"
 * @identifier _SafeStr_1735 = "_-Ra"
 * @identifier _SafeStr_1750 = "_-gD"
 * @identifier _SafeStr_1980 = "_-eQ"
 * @identifier _SafeStr_2244 = "_-K8"
 * @identifier _SafeStr_2363 = "_-3p"
 */
