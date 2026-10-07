package
{
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flashnet.patch.FallbackTextField;

   /** TLF container rebuilt around classic TextFields (see flashnet.patch.FallbackTextField). */
   public dynamic class §_-Gt§ extends MovieClip
   {
      public var okbutton:*;

      private var _notificationtext:FallbackTextField;

      private var _notificationtextHost:Object;

      public function §_-Gt§()
      {
         super();
         this._notificationtext = new FallbackTextField(158.05,70.4,"Hand Of Sean",18,false,0x333333,"center",true,true,"");
         if(this._notificationtextHost != null)
         {
            this._notificationtext.adopt(this._notificationtextHost);
         }
         else
         {
            this.addChild(this._notificationtext);
         }
      }

      public function get notificationtext() : *
      {
         return this._notificationtext;
      }

      public function set notificationtext(value:*) : void
      {
         if(value == null || value == this._notificationtext)
         {
            return;
         }
         this._notificationtextHost = value;
         if(this._notificationtext != null)
         {
            this._notificationtext.adopt(value);
         }
      }
   }
}
