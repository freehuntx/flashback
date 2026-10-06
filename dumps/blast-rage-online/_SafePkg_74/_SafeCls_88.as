package _SafePkg_74
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   
   public class _SafeCls_88 extends ProgressEvent
   {
      
      public static const PROGRESS:String = "progress";
      
      public static const COMPLETE:String = "complete";
      
      public var _SafeStr_394:int;
      
      public var _SafeStr_1009:Number;
      
      public var _SafeStr_280:Number;
      
      public var _SafeStr_461:Number;
      
      public var _SafeStr_507:int;
      
      public var _SafeStr_345:int;
      
      public var name:String;
      
      public function _SafeCls_88(param1:String, param2:Boolean = true, param3:Boolean = false)
      {
         super(param1,param2,param3);
         this.name = param1;
      }
      
      public function _SafeStr_570(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Number) : void
      {
         this.bytesLoaded = param1;
         this.bytesTotal = param2;
         this._SafeStr_394 = param3;
         this._SafeStr_507 = param4;
         this._SafeStr_345 = param5;
         this._SafeStr_347 = param6;
         this._SafeStr_433 = param2 > 0 ? param1 / param2 : 0;
         this._SafeStr_647 = param5 == 0 ? 0 : param4 / param5;
      }
      
      override public function clone() : Event
      {
         var _loc1_:_SafeCls_88 = new _SafeCls_88(this.name,bubbles,cancelable);
         _loc1_._SafeStr_570(bytesLoaded,bytesTotal,this._SafeStr_394,this._SafeStr_507,this._SafeStr_345,this._SafeStr_347);
         return _loc1_;
      }
      
      public function _SafeStr_1270() : String
      {
         var _loc1_:Array = [];
         _loc1_.push("bytesLoaded: " + bytesLoaded);
         _loc1_.push("bytesTotal: " + bytesTotal);
         _loc1_.push("itemsLoaded: " + this._SafeStr_507);
         _loc1_.push("itemsTotal: " + this._SafeStr_345);
         _loc1_.push("bytesTotalCurrent: " + this._SafeStr_394);
         _loc1_.push("percentLoaded: " + _SafeCls_73._SafeStr_226(this._SafeStr_433));
         _loc1_.push("weightPercent: " + _SafeCls_73._SafeStr_226(this._SafeStr_347));
         _loc1_.push("ratioLoaded: " + _SafeCls_73._SafeStr_226(this._SafeStr_647));
         return "BulkProgressEvent " + _loc1_.join(", ") + ";";
      }
      
      public function get _SafeStr_347() : Number
      {
         return this._SafeStr_461;
      }
      
      public function set _SafeStr_347(param1:Number) : void
      {
         if(Boolean(isNaN(param1)) || !isFinite(param1))
         {
            param1 = 0;
         }
         this._SafeStr_461 = param1;
      }
      
      public function get _SafeStr_433() : Number
      {
         return this._SafeStr_280;
      }
      
      public function set _SafeStr_433(param1:Number) : void
      {
         if(Boolean(isNaN(param1)) || !isFinite(param1))
         {
            param1 = 0;
         }
         this._SafeStr_280 = param1;
      }
      
      public function get _SafeStr_647() : Number
      {
         return this._SafeStr_1009;
      }
      
      public function set _SafeStr_647(param1:Number) : void
      {
         if(Boolean(isNaN(param1)) || !isFinite(param1))
         {
            param1 = 0;
         }
         this._SafeStr_1009 = param1;
      }
      
      override public function toString() : String
      {
         return super.toString();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_73 = "3S"
 * @identifier _SafeCls_88 = "71"
 * @identifier _SafePkg_74 = "4G"
 * @identifier _SafeStr_226 = " set"
 * @identifier _SafeStr_280 = "`,"
 * @identifier _SafeStr_345 = "\'R"
 * @identifier _SafeStr_347 = "native"
 * @identifier _SafeStr_394 = "`I"
 * @identifier _SafeStr_433 = "04"
 * @identifier _SafeStr_461 = "`3"
 * @identifier _SafeStr_507 = "5&"
 * @identifier _SafeStr_570 = "##"
 * @identifier _SafeStr_647 = "^L"
 * @identifier _SafeStr_1009 = "[,"
 * @identifier _SafeStr_1270 = "%>"
 */
