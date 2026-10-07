package flash.text.ime
{
   public final class CompositionAttributeRange
   {
      
      public var relativeStart:int;
      
      public var relativeEnd:int;
      
      public var selected:Boolean;
      
      public var converted:Boolean;
      
      public function CompositionAttributeRange(param1:int, param2:int, param3:Boolean, param4:Boolean)
      {
         super();
         this.relativeStart = param1;
         this.relativeEnd = param2;
         this.selected = param3;
         this.converted = param4;
      }
   }
}

