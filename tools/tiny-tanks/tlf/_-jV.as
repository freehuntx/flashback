package
{
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flashnet.patch.FallbackTextField;

   /** TLF container rebuilt around classic TextFields (see flashnet.patch.FallbackTextField). */
   public dynamic class §_-jV§ extends MovieClip
   {
      public var tankicon:*;

      public var costpremiumicon:*;

      public var coinsbutton:*;

      public var partname:*;

      public var powerupicon:*;

      public var partcostpremium:*;

      public var button:*;

      public var costicon:*;

      public var premiumbutton:*;

      public var postitpin:*;

      public var partcost:*;

      public var padlock:*;

      private var _partdescription:FallbackTextField;

      private var _partdescriptionHost:Object;

      public function §_-jV§()
      {
         super();
         this._partdescription = new FallbackTextField(154,84.45,"Hand Of Sean",14,false,0x333333,"center",true,true,"");
         if(this._partdescriptionHost != null)
         {
            this._partdescription.adopt(this._partdescriptionHost);
         }
         else
         {
            this.addChild(this._partdescription);
         }
      }

      public function get partdescription() : *
      {
         return this._partdescription;
      }

      public function set partdescription(value:*) : void
      {
         if(value == null || value == this._partdescription)
         {
            return;
         }
         this._partdescriptionHost = value;
         if(this._partdescription != null)
         {
            this._partdescription.adopt(value);
         }
      }
   }
}
