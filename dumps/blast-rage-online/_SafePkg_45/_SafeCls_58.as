package _SafePkg_45
{
   public class _SafeCls_58
   {
      
      private var _SafeStr_464:Boolean;
      
      private var value:*;
      
      private var _SafeStr_246:_SafeCls_63;
      
      private var _SafeStr_142:_SafeCls_62;
      
      public function _SafeCls_58(param1:String, param2:Boolean)
      {
         super();
         this._SafeStr_464 = param2;
         this._SafeStr_246 = new _SafeCls_63(param1,param2);
         this._SafeStr_515();
         this.value = this._SafeStr_691();
         if(param2 && this._SafeStr_515() != null)
         {
            this._SafeStr_246._SafeStr_149("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      final private function _SafeStr_515() : _SafeCls_62
      {
         return this._SafeStr_142 = this._SafeStr_246._SafeStr_861();
      }
      
      final private function _SafeStr_369() : _SafeCls_62
      {
         this._SafeStr_142 = this._SafeStr_246._SafeStr_861();
         this._SafeStr_566();
         return this._SafeStr_142;
      }
      
      final private function _SafeStr_566() : void
      {
         if(this._SafeStr_142 == null)
         {
            this._SafeStr_246._SafeStr_149("Unexpected end of input");
         }
      }
      
      final private function _SafeStr_1116() : Array
      {
         var _loc1_:Array = new Array();
         this._SafeStr_369();
         if(this._SafeStr_142.type == _SafeCls_65._SafeStr_374)
         {
            return _loc1_;
         }
         if(!this._SafeStr_464 && this._SafeStr_142.type == _SafeCls_65._SafeStr_383)
         {
            this._SafeStr_369();
            if(this._SafeStr_142.type == _SafeCls_65._SafeStr_374)
            {
               return _loc1_;
            }
            this._SafeStr_246._SafeStr_149("Leading commas are not supported.  Expecting \']\' but found " + this._SafeStr_142.value);
         }
         while(true)
         {
            _loc1_.push(this._SafeStr_691());
            this._SafeStr_369();
            if(this._SafeStr_142.type == _SafeCls_65._SafeStr_374)
            {
               break;
            }
            if(this._SafeStr_142.type == _SafeCls_65._SafeStr_383)
            {
               this._SafeStr_515();
               if(!this._SafeStr_464)
               {
                  this._SafeStr_566();
                  if(this._SafeStr_142.type == _SafeCls_65._SafeStr_374)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this._SafeStr_246._SafeStr_149("Expecting ] or , but found " + this._SafeStr_142.value);
            }
         }
         return _loc1_;
      }
      
      final private function _SafeStr_1200() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this._SafeStr_369();
         if(this._SafeStr_142.type == _SafeCls_65._SafeStr_397)
         {
            return _loc1_;
         }
         if(!this._SafeStr_464 && this._SafeStr_142.type == _SafeCls_65._SafeStr_383)
         {
            this._SafeStr_369();
            if(this._SafeStr_142.type == _SafeCls_65._SafeStr_397)
            {
               return _loc1_;
            }
            this._SafeStr_246._SafeStr_149("Leading commas are not supported.  Expecting \'}\' but found " + this._SafeStr_142.value);
         }
         while(true)
         {
            if(this._SafeStr_142.type == _SafeCls_65._SafeStr_482)
            {
               _loc2_ = String(this._SafeStr_142.value);
               this._SafeStr_369();
               if(this._SafeStr_142.type == _SafeCls_65._SafeStr_683)
               {
                  this._SafeStr_515();
                  _loc1_[_loc2_] = this._SafeStr_691();
                  this._SafeStr_369();
                  if(this._SafeStr_142.type == _SafeCls_65._SafeStr_397)
                  {
                     break;
                  }
                  if(this._SafeStr_142.type == _SafeCls_65._SafeStr_383)
                  {
                     this._SafeStr_515();
                     if(!this._SafeStr_464)
                     {
                        this._SafeStr_566();
                        if(this._SafeStr_142.type == _SafeCls_65._SafeStr_397)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this._SafeStr_246._SafeStr_149("Expecting } or , but found " + this._SafeStr_142.value);
                  }
               }
               else
               {
                  this._SafeStr_246._SafeStr_149("Expecting : but found " + this._SafeStr_142.value);
               }
            }
            else
            {
               this._SafeStr_246._SafeStr_149("Expecting string but found " + this._SafeStr_142.value);
            }
         }
         return _loc1_;
      }
      
      final private function _SafeStr_691() : Object
      {
         this._SafeStr_566();
         switch(this._SafeStr_142.type)
         {
            case _SafeCls_65._SafeStr_571:
               return this._SafeStr_1200();
            case _SafeCls_65._SafeStr_672:
               return this._SafeStr_1116();
            case _SafeCls_65._SafeStr_482:
            case _SafeCls_65._SafeStr_657:
            case _SafeCls_65._SafeStr_584:
            case _SafeCls_65._SafeStr_684:
            case _SafeCls_65._SafeStr_663:
               return this._SafeStr_142.value;
            case _SafeCls_65._SafeStr_602:
               if(!this._SafeStr_464)
               {
                  return this._SafeStr_142.value;
               }
               this._SafeStr_246._SafeStr_149("Unexpected " + this._SafeStr_142.value);
         }
         this._SafeStr_246._SafeStr_149("Unexpected " + this._SafeStr_142.value);
         return null;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_58 = "]B"
 * @identifier _SafeCls_62 = "5>"
 * @identifier _SafeCls_63 = "69"
 * @identifier _SafeCls_65 = " each"
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafeStr_142 = "!H"
 * @identifier _SafeStr_149 = "`S"
 * @identifier _SafeStr_246 = "-B"
 * @identifier _SafeStr_369 = "0O"
 * @identifier _SafeStr_374 = "64"
 * @identifier _SafeStr_383 = "=-"
 * @identifier _SafeStr_397 = "=M"
 * @identifier _SafeStr_464 = "2D"
 * @identifier _SafeStr_482 = "%N"
 * @identifier _SafeStr_515 = "continue"
 * @identifier _SafeStr_566 = "\'K"
 * @identifier _SafeStr_571 = "]>"
 * @identifier _SafeStr_584 = "1S"
 * @identifier _SafeStr_602 = "2Q"
 * @identifier _SafeStr_657 = "2?"
 * @identifier _SafeStr_663 = "8-"
 * @identifier _SafeStr_672 = "`B"
 * @identifier _SafeStr_683 = "`M"
 * @identifier _SafeStr_684 = "[R"
 * @identifier _SafeStr_691 = "5R"
 * @identifier _SafeStr_861 = " else"
 * @identifier _SafeStr_1116 = "0K"
 * @identifier _SafeStr_1200 = "+V"
 */
