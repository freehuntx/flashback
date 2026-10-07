package
{
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flashnet.patch.FallbackTextField;

   /** TLF container rebuilt around classic TextFields (see flashnet.patch.FallbackTextField). */
   public dynamic class xpdisplaymc extends MovieClip
   {
      private var _xptext:FallbackTextField;

      private var _xptextHost:Object;

      private var _cointext:FallbackTextField;

      private var _cointextHost:Object;

      public function xpdisplaymc()
      {
         super();
         this._xptext = new FallbackTextField(57.65,16.55,"Arial",9,true,0x333333,"center",false,false,"+5xp");
         if(this._xptextHost != null)
         {
            this._xptext.adopt(this._xptextHost);
         }
         else
         {
            this.addChild(this._xptext);
         }
         this._cointext = new FallbackTextField(57.65,16.55,"Arial",9,true,0x000000,"center",false,false,"+$100");
         if(this._cointextHost != null)
         {
            this._cointext.adopt(this._cointextHost);
         }
         else
         {
            this.addChild(this._cointext);
         }
      }

      public function get xptext() : *
      {
         return this._xptext;
      }

      public function set xptext(value:*) : void
      {
         if(value == null || value == this._xptext)
         {
            return;
         }
         this._xptextHost = value;
         if(this._xptext != null)
         {
            this._xptext.adopt(value);
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
