package murray
{
   import _SafePkg_15._SafeCls_14;
   import flash.events.Event;
   import flash.events.SampleDataEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   
   public class _SafeCls_6
   {
      
      private static var sm:_SafeCls_6;
      
      private var _SafeStr_907:Number = 1;
      
      private var _SafeStr_211:SoundChannel;
      
      private var _SafeStr_270:ByteArray;
      
      private var _SafeStr_276:ByteArray;
      
      public var _SafeStr_380:Number = 1;
      
      private var _SafeStr_225:Number = 0;
      
      private var _SafeStr_474:Boolean = false;
      
      private var _SafeStr_348:_SafeCls_14 = new _SafeCls_14();
      
      private var _SafeStr_462:_SafeCls_14 = new _SafeCls_14();
      
      public var _SafeStr_699:Boolean = false;
      
      private var _SafeStr_207:SoundChannel;
      
      private var _SafeStr_948:Sound;
      
      private var _SafeStr_1157:Sound;
      
      private var _SafeStr_240:Sound = new Sound();
      
      private var _SafeStr_1075:int;
      
      private var _SafeStr_335:Boolean = false;
      
      private var _SafeStr_484:Boolean = false;
      
      private var _SafeStr_846:int = 0;
      
      private var _SafeStr_339:Array;
      
      private var _SafeStr_275:int = 0;
      
      public function _SafeCls_6()
      {
         super();
      }
      
      public static function _SafeStr_121() : *
      {
         if(sm == null)
         {
            sm = new _SafeCls_6();
         }
         return sm;
      }
      
      public function _SafeStr_126(param1:Sound, param2:Number = 1, param3:Number = 0) : void
      {
         var _loc4_:SoundTransform = new SoundTransform(this._SafeStr_190 * param2,param3);
         param1.play(0,0,_loc4_);
      }
      
      public function _SafeStr_1316(param1:Sound, param2:Number = 1, param3:Number = 0) : void
      {
         if(this._SafeStr_207)
         {
            this._SafeStr_207.stop();
         }
         var _loc4_:SoundTransform = new SoundTransform(this._SafeStr_190 * param2,param3);
         this._SafeStr_207 = param1.play(0,0,_loc4_);
      }
      
      public function _SafeStr_892(param1:Sound, param2:Number = 1) : void
      {
         if(this._SafeStr_211)
         {
            this._SafeStr_211.stop();
         }
         var _loc3_:SoundTransform = new SoundTransform(param2 * this._SafeStr_190 * this._SafeStr_380);
         this._SafeStr_270 = this._SafeStr_535(param1);
         this._SafeStr_240.addEventListener(SampleDataEvent.SAMPLE_DATA,this._SafeStr_431);
         this._SafeStr_211 = this._SafeStr_240.play(0,999999,_loc3_);
         this._SafeStr_699 = true;
         this._SafeStr_335 = false;
      }
      
      public function _SafeStr_1230(param1:Event) : void
      {
         this._SafeStr_211.removeEventListener(Event.SOUND_COMPLETE,this._SafeStr_1230);
         this._SafeStr_270 = this._SafeStr_535(this._SafeStr_1157);
         this._SafeStr_240.addEventListener(SampleDataEvent.SAMPLE_DATA,this._SafeStr_431);
         this._SafeStr_211 = this._SafeStr_240.play(0,999999,this._SafeStr_211.soundTransform);
      }
      
      public function _SafeStr_1274(param1:Sound, param2:Number = 1, param3:Number = 0, param4:Sound = null) : void
      {
         if(this._SafeStr_207)
         {
            this._SafeStr_207.stop();
         }
         var _loc5_:SoundTransform = new SoundTransform(this._SafeStr_190 * param2,param3);
         if(param4)
         {
            this._SafeStr_207 = param4.play(0,0,_loc5_);
            this._SafeStr_207.addEventListener(Event.SOUND_COMPLETE,this._SafeStr_874);
            this._SafeStr_948 = param1;
         }
         else
         {
            this._SafeStr_207 = param1.play(0,99,_loc5_);
         }
      }
      
      private function _SafeStr_874(param1:Event) : void
      {
         this._SafeStr_207 = this._SafeStr_948.play(0,99,this._SafeStr_207.soundTransform);
      }
      
      public function _SafeStr_1244() : void
      {
         if(this._SafeStr_207)
         {
            this._SafeStr_207.stop();
            if(this._SafeStr_207.hasEventListener(Event.SOUND_COMPLETE))
            {
               this._SafeStr_207.removeEventListener(Event.SOUND_COMPLETE,this._SafeStr_874);
            }
         }
      }
      
      public function _SafeStr_580(param1:Array) : void
      {
         this._SafeStr_339 = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this._SafeStr_339[_loc2_] = this._SafeStr_535(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function _SafeStr_1104(param1:Sound) : void
      {
         this._SafeStr_276 = this._SafeStr_535(param1);
         if(this._SafeStr_225 == 0)
         {
            this._SafeStr_225 = 1.5;
         }
         this._SafeStr_474 = false;
         this._SafeStr_335 = false;
      }
      
      public function _SafeStr_1261(param1:Array) : void
      {
         this._SafeStr_580(param1);
         this._SafeStr_276 = this._SafeStr_339[this._SafeStr_275];
         if(this._SafeStr_225 == 0)
         {
            this._SafeStr_225 = 1.5;
         }
         this._SafeStr_474 = false;
         this._SafeStr_335 = true;
         this._SafeStr_484 = false;
         this._SafeStr_275 = Math.random() * param1.length;
      }
      
      public function _SafeStr_1258(param1:Sound) : void
      {
         this._SafeStr_276 = this._SafeStr_535(param1);
         if(this._SafeStr_225 == 0)
         {
            this._SafeStr_225 = 1;
         }
         this._SafeStr_474 = true;
         this._SafeStr_335 = false;
      }
      
      public function _SafeStr_1292(param1:Array) : void
      {
         this._SafeStr_580(param1);
         this._SafeStr_276 = this._SafeStr_339[this._SafeStr_275];
         if(this._SafeStr_225 == 0)
         {
            this._SafeStr_225 = 1;
         }
         this._SafeStr_474 = true;
         this._SafeStr_335 = true;
         this._SafeStr_484 = false;
         this._SafeStr_275 = Math.random() * param1.length;
      }
      
      public function _SafeStr_1279(param1:Array) : void
      {
         if(this._SafeStr_211)
         {
            this._SafeStr_211.stop();
         }
         this._SafeStr_580(param1);
         this._SafeStr_270 = this._SafeStr_339[this._SafeStr_275];
         var _loc2_:SoundTransform = new SoundTransform(this._SafeStr_190 * this._SafeStr_380);
         this._SafeStr_240.addEventListener(SampleDataEvent.SAMPLE_DATA,this._SafeStr_431);
         this._SafeStr_211 = this._SafeStr_240.play(0,999999,_loc2_);
         this._SafeStr_699 = true;
         this._SafeStr_335 = true;
         this._SafeStr_484 = false;
         this._SafeStr_275 = Math.random() * param1.length;
      }
      
      public function _SafeStr_692(param1:Array, param2:int = 0, param3:Number = 1) : void
      {
         if(this._SafeStr_211)
         {
            this._SafeStr_211.stop();
         }
         if(this._SafeStr_240.hasEventListener(SampleDataEvent.SAMPLE_DATA))
         {
            this._SafeStr_240.removeEventListener(SampleDataEvent.SAMPLE_DATA,this._SafeStr_431);
         }
         this._SafeStr_580(param1);
         this._SafeStr_846 = param2;
         this._SafeStr_275 = 0;
         this._SafeStr_270 = this._SafeStr_339[this._SafeStr_275];
         var _loc4_:SoundTransform = new SoundTransform(this._SafeStr_190 * this._SafeStr_380);
         this._SafeStr_240.addEventListener(SampleDataEvent.SAMPLE_DATA,this._SafeStr_431);
         this._SafeStr_211 = this._SafeStr_240.play(0,999999,_loc4_);
         this._SafeStr_699 = true;
         this._SafeStr_335 = true;
         this._SafeStr_484 = true;
      }
      
      public function _SafeStr_887() : void
      {
         if(this._SafeStr_211)
         {
            this._SafeStr_211.stop();
         }
         this._SafeStr_240.removeEventListener(SampleDataEvent.SAMPLE_DATA,this._SafeStr_431);
      }
      
      private function _SafeStr_431(param1:SampleDataEvent) : void
      {
         var _loc2_:ByteArray = null;
         var _loc6_:ByteArray = null;
         var _loc3_:uint = uint(this._SafeStr_270.position);
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:int = int(Math.min(this._SafeStr_270.bytesAvailable,8 * 8192));
         this._SafeStr_270.readBytes(_loc4_,0,_loc5_);
         if(_loc5_ < 8 * 8192)
         {
            this._SafeStr_270.position = 0;
            if(this._SafeStr_335)
            {
               if(!this._SafeStr_484)
               {
                  this._SafeStr_275 = this._SafeStr_339.length * Math.random();
               }
               else
               {
                  this._SafeStr_275 = this._SafeStr_846;
               }
               this._SafeStr_270 = this._SafeStr_339[this._SafeStr_275];
            }
            if(_loc5_ < 25000)
            {
               _loc5_ = 8 * 8192 - _loc5_;
               this._SafeStr_270.readBytes(_loc4_,0,_loc5_);
            }
         }
         if(this._SafeStr_225 != 0)
         {
            this._SafeStr_225 -= 0.3;
            if(this._SafeStr_474)
            {
               this._SafeStr_276.position = _loc3_;
            }
            _loc6_ = new ByteArray();
            _loc5_ = int(Math.min(this._SafeStr_276.bytesAvailable,8 * 8192));
            if(_loc5_ == 0)
            {
               this._SafeStr_276.position = 0;
               _loc5_ = int(Math.min(this._SafeStr_276.bytesAvailable,8 * 8192));
            }
            this._SafeStr_276.readBytes(_loc6_,0,_loc5_);
            _loc2_ = this._SafeStr_1056(_loc4_,_loc6_,this._SafeStr_225);
            if(this._SafeStr_225 <= 0)
            {
               this._SafeStr_225 = 0;
               this._SafeStr_270 = this._SafeStr_276;
            }
         }
         else
         {
            _loc2_ = this._SafeStr_1211(_loc4_);
         }
         param1.data.writeBytes(_loc2_);
         this._SafeStr_1075 = _loc2_.length;
      }
      
      private function _SafeStr_1211(param1:ByteArray) : ByteArray
      {
         if(param1.bytesAvailable == 0)
         {
            trace("PROBLEM IN EQ");
         }
         var _loc2_:ByteArray = new ByteArray();
         param1.position = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_.writeFloat(this._SafeStr_348._SafeStr_478(param1.readFloat()));
            _loc2_.writeFloat(this._SafeStr_462._SafeStr_478(param1.readFloat()));
         }
         return _loc2_;
      }
      
      private function _SafeStr_1056(param1:ByteArray, param2:ByteArray, param3:Number) : ByteArray
      {
         var _loc6_:Number = NaN;
         if(param1.bytesAvailable == 0)
         {
            trace("PROBLEM IN CF1");
         }
         if(param2.bytesAvailable == 0)
         {
            trace("PROBLEM IN CF2");
         }
         var _loc4_:ByteArray = new ByteArray();
         param1.position = 0;
         param2.position = 0;
         var _loc5_:_SafeCls_14 = this._SafeStr_348;
         while(param1.bytesAvailable > 0 && param2.bytesAvailable > 0)
         {
            if(this._SafeStr_474)
            {
               _loc6_ = _loc5_._SafeStr_478(param1.readFloat() * param3 + param2.readFloat() * (1 - param3));
            }
            else if(param3 > 1)
            {
               _loc6_ = _loc5_._SafeStr_478(param1.readFloat() * (param3 - 1));
            }
            else
            {
               _loc6_ = _loc5_._SafeStr_478(param2.readFloat() * (1 - param3));
            }
            _loc4_.writeFloat(_loc6_);
            if(_loc5_ == this._SafeStr_348)
            {
               _loc5_ = this._SafeStr_462;
            }
            else
            {
               _loc5_ = this._SafeStr_348;
            }
         }
         return _loc4_;
      }
      
      public function get _SafeStr_190() : Number
      {
         return this._SafeStr_907;
      }
      
      public function set _SafeStr_190(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         this._SafeStr_907 = param1;
         if(this._SafeStr_207)
         {
            _loc2_ = new SoundTransform(param1);
            this._SafeStr_207.soundTransform = _loc2_;
         }
      }
      
      public function set music_volume(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(param1 > 1)
         {
            param1 = 1;
         }
         this._SafeStr_380 = param1;
         if(this._SafeStr_211)
         {
            _loc2_ = new SoundTransform(this._SafeStr_380);
            this._SafeStr_211.soundTransform = _loc2_;
         }
      }
      
      public function get music_volume() : Number
      {
         return this._SafeStr_380;
      }
      
      private function _SafeStr_535(param1:Sound) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:int = int(param1.extract(_loc2_,(param1.length + 1) * 44100 / 1000,0));
         _loc2_.position = 0;
         return _loc2_;
      }
      
      public function set _SafeStr_1249(param1:int) : void
      {
         this._SafeStr_462._SafeStr_644 = (param1 & 4) / 4;
         this._SafeStr_462._SafeStr_638 = (param1 & 2) / 2;
         this._SafeStr_462._SafeStr_615 = param1 & 1;
         this._SafeStr_348._SafeStr_644 = (param1 & 4) / 4;
         this._SafeStr_348._SafeStr_638 = (param1 & 2) / 2;
         this._SafeStr_348._SafeStr_615 = param1 & 1;
      }
      
      public function _SafeStr_1264() : void
      {
         trace("Taking a break");
         trace(this._SafeStr_240.hasEventListener(SampleDataEvent.SAMPLE_DATA));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_14 = " 7"
 * @identifier _SafePkg_15 = ",!"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_126 = " M"
 * @identifier _SafeStr_190 = " ;"
 * @identifier _SafeStr_207 = "#2"
 * @identifier _SafeStr_211 = "\"<"
 * @identifier _SafeStr_225 = ">S"
 * @identifier _SafeStr_240 = "88"
 * @identifier _SafeStr_270 = "`="
 * @identifier _SafeStr_275 = "+0"
 * @identifier _SafeStr_276 = "-0"
 * @identifier _SafeStr_335 = "0+"
 * @identifier _SafeStr_339 = "#B"
 * @identifier _SafeStr_348 = "[="
 * @identifier _SafeStr_380 = "`\""
 * @identifier _SafeStr_431 = "+F"
 * @identifier _SafeStr_462 = ">!"
 * @identifier _SafeStr_474 = "?N"
 * @identifier _SafeStr_478 = "]I"
 * @identifier _SafeStr_484 = "\'L"
 * @identifier _SafeStr_535 = "\'P"
 * @identifier _SafeStr_580 = "+H"
 * @identifier _SafeStr_615 = "`J"
 * @identifier _SafeStr_638 = "?D"
 * @identifier _SafeStr_644 = "use "
 * @identifier _SafeStr_692 = "%P"
 * @identifier _SafeStr_699 = ";+"
 * @identifier _SafeStr_846 = "<"
 * @identifier _SafeStr_874 = "`-"
 * @identifier _SafeStr_887 = "=U"
 * @identifier _SafeStr_892 = "`P"
 * @identifier _SafeStr_907 = "46"
 * @identifier _SafeStr_948 = "10"
 * @identifier _SafeStr_1056 = ">$"
 * @identifier _SafeStr_1075 = ";6"
 * @identifier _SafeStr_1104 = ";S"
 * @identifier _SafeStr_1157 = ";>"
 * @identifier _SafeStr_1211 = ">#"
 * @identifier _SafeStr_1230 = "^?"
 * @identifier _SafeStr_1244 = "\"$"
 * @identifier _SafeStr_1249 = "],"
 * @identifier _SafeStr_1258 = ";J"
 * @identifier _SafeStr_1261 = "36"
 * @identifier _SafeStr_1264 = "@K"
 * @identifier _SafeStr_1274 = "<6"
 * @identifier _SafeStr_1279 = "`4"
 * @identifier _SafeStr_1292 = "5A"
 * @identifier _SafeStr_1316 = "0A"
 */
