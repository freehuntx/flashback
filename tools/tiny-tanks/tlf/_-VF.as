package
{
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flashnet.patch.FallbackTextField;

   /** TLF container rebuilt around classic TextFields (see flashnet.patch.FallbackTextField). */
   public dynamic class §_-VF§ extends MovieClip
   {
      private var _tankLabel:FallbackTextField;

      private var _tankLabelHost:Object;

      public function §_-VF§()
      {
         super();
         this._tankLabel = new FallbackTextField(120,17.35,"Arial",12,true,0x000000,"center",true,false,"unnamed");
         if(this._tankLabelHost != null)
         {
            this._tankLabel.adopt(this._tankLabelHost);
         }
         else
         {
            this.addChild(this._tankLabel);
         }
      }

      public function get tankLabel() : *
      {
         return this._tankLabel;
      }

      public function set tankLabel(value:*) : void
      {
         if(value == null || value == this._tankLabel)
         {
            return;
         }
         this._tankLabelHost = value;
         if(this._tankLabel != null)
         {
            this._tankLabel.adopt(value);
         }
      }
   }
}
