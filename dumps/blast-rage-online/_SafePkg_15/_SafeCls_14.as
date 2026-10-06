package _SafePkg_15
{
   public class _SafeCls_14
   {
      
      private static const _SafeStr_940:Number = 1 / 4294967295;
      
      private const _SafeStr_996:int = 44100;
      
      public var _SafeStr_1321:Boolean = false;
      
      public var _SafeStr_615:Number = 1;
      
      public var _SafeStr_638:Number = 1;
      
      public var _SafeStr_644:Number = 1;
      
      private var _SafeStr_1028:Number = 880;
      
      private var _SafeStr_1045:Number = 5000;
      
      private var _SafeStr_500:Number = 0;
      
      private var _SafeStr_542:Number = 0;
      
      private var _SafeStr_517:Number = 0;
      
      private var _SafeStr_537:Number = 0;
      
      private var _SafeStr_481:Number = 0;
      
      private var _SafeStr_550:Number = 0;
      
      private var _SafeStr_512:Number = 0;
      
      private var _SafeStr_549:Number = 0;
      
      private var _SafeStr_707:Number = 0;
      
      private var _SafeStr_744:Number = 0;
      
      private var _SafeStr_639:Number = 0;
      
      private var _SafeStr_513:Number;
      
      private var _SafeStr_527:Number;
      
      public function _SafeCls_14()
      {
         super();
         this._SafeStr_615 = 1;
         this._SafeStr_638 = 1;
         this._SafeStr_644 = 1;
         this._SafeStr_500 = 0;
         this._SafeStr_542 = 0;
         this._SafeStr_517 = 0;
         this._SafeStr_537 = 0;
         this._SafeStr_512 = 0;
         this._SafeStr_481 = 0;
         this._SafeStr_550 = 0;
         this._SafeStr_549 = 0;
         this._SafeStr_707 = 0;
         this._SafeStr_744 = 0;
         this._SafeStr_639 = 0;
         this._SafeStr_513 = 2 * Math.sin(Math.PI * (this._SafeStr_1028 / this._SafeStr_996));
         this._SafeStr_527 = 2 * Math.sin(Math.PI * (this._SafeStr_1045 / this._SafeStr_996));
      }
      
      public function _SafeStr_478(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._SafeStr_500 += this._SafeStr_513 * (param1 - this._SafeStr_500);
         this._SafeStr_542 += this._SafeStr_513 * (this._SafeStr_500 - this._SafeStr_542);
         this._SafeStr_517 += this._SafeStr_513 * (this._SafeStr_542 - this._SafeStr_517);
         this._SafeStr_537 += this._SafeStr_513 * (this._SafeStr_517 - this._SafeStr_537);
         _loc2_ = this._SafeStr_537;
         this._SafeStr_512 += this._SafeStr_527 * (param1 - this._SafeStr_512);
         this._SafeStr_481 += this._SafeStr_527 * (this._SafeStr_512 - this._SafeStr_481);
         this._SafeStr_550 += this._SafeStr_527 * (this._SafeStr_481 - this._SafeStr_550);
         this._SafeStr_549 += this._SafeStr_527 * (this._SafeStr_550 - this._SafeStr_549);
         _loc4_ = this._SafeStr_639 - this._SafeStr_549;
         _loc3_ = this._SafeStr_639 - (_loc2_ + _loc4_);
         _loc2_ *= this._SafeStr_615;
         _loc3_ *= this._SafeStr_638;
         _loc4_ *= this._SafeStr_644;
         this._SafeStr_639 = this._SafeStr_744;
         this._SafeStr_744 = this._SafeStr_707;
         this._SafeStr_707 = param1;
         return _loc2_ + _loc3_ + _loc4_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_14 = " 7"
 * @identifier _SafePkg_15 = ",!"
 * @identifier _SafeStr_478 = "]I"
 * @identifier _SafeStr_481 = "@-"
 * @identifier _SafeStr_500 = "8J"
 * @identifier _SafeStr_512 = "?S"
 * @identifier _SafeStr_513 = "in"
 * @identifier _SafeStr_517 = "7$"
 * @identifier _SafeStr_527 = "5F"
 * @identifier _SafeStr_537 = "#R"
 * @identifier _SafeStr_542 = " Q"
 * @identifier _SafeStr_549 = "24"
 * @identifier _SafeStr_550 = "8@"
 * @identifier _SafeStr_615 = "`J"
 * @identifier _SafeStr_638 = "?D"
 * @identifier _SafeStr_639 = "&="
 * @identifier _SafeStr_644 = "use "
 * @identifier _SafeStr_707 = "^6"
 * @identifier _SafeStr_744 = ",3"
 * @identifier _SafeStr_940 = "&L"
 * @identifier _SafeStr_996 = "\'S"
 * @identifier _SafeStr_1028 = "29"
 * @identifier _SafeStr_1045 = "?-"
 * @identifier _SafeStr_1321 = "=4"
 */
