package
{
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flashnet.patch.FallbackTextField;

   /** TLF container rebuilt around classic TextFields (see flashnet.patch.FallbackTextField). */
   public dynamic class §_-IB§ extends MovieClip
   {
      private var _cointext:FallbackTextField;

      private var _cointextHost:Object;

      public function §_-IB§()
      {
         super();
         this._cointext = new FallbackTextField(57.65,16.55,"Arial",16,true,0xFFD735,"center",false,false,"+$100");
         this._cointext.filters = [new GlowFilter(0,1,3,3,8)];
         if(this._cointextHost != null)
         {
            this._cointext.adopt(this._cointextHost);
         }
         else
         {
            this.addChild(this._cointext);
         }
      }

      public function get cointext() : *
      {
         return this._cointext;
      }

      public function set cointext(value:*) : void
      {
         if(value == null || value == this._cointext)
         {
            return;
         }
         this._cointextHost = value;
         if(this._cointext != null)
         {
            this._cointext.adopt(value);
         }
      }
   }
}
