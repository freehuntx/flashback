package
{
   import fl.text.RuntimeManager;
   import fl.text.TLFTextField;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.text.TextField;
   
   public dynamic class _SafeCls_254 extends MovieClip
   {
      
      public var tankicon:_SafeCls_220;
      
      public var costpremiumicon:MovieClip;
      
      public var coinsbutton:SimpleButton;
      
      public var partname:TextField;
      
      public var powerupicon:MovieClip;
      
      public var partcostpremium:TextField;
      
      public var partdescription:TLFTextField;
      
      public var button:SimpleButton;
      
      public var costicon:MovieClip;
      
      public var premiumbutton:SimpleButton;
      
      public var postitpin:MovieClip;
      
      public var partcost:TextField;
      
      public var padlock:MovieClip;
      
      public var __checkFontName_:String;
      
      public var _SafeStr_2517:Object;
      
      public function _SafeCls_254()
      {
         super();
         this.__checkFontName_ = "handofsean";
         if(!RuntimeManager.checkTLFFontsLoaded(null,this.__checkFontName_,this.__registerTLFFonts))
         {
            addEventListener(Event.FRAME_CONSTRUCTED,RuntimeManager.checkTLFFontsLoaded,false,1);
         }
         this._SafeStr_2517 = XML.settings();
         try
         {
            XML.ignoreProcessingInstructions = false;
            XML.ignoreWhitespace = false;
            XML.prettyPrinting = false;
            RuntimeManager.getSingleton()._SafeStr_1135(this,"partdescription",new Rectangle(0,0,154,84.45),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="1" columnGap="20" verticalAlign="middle" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="true" antiAliasType="normal" embedFonts="true"><TextFlow blockProgression="tb" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#29692c" fontFamily="Hand Of Sean" fontSize="14" fontStyle="normal" fontWeight="normal" kerning="auto" lineHeight="210.000000%" textAlpha="1" textRotation="auto" trackingRight="0.000000%">+ No self damage</span></p><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#992d2d" fontFamily="Hand Of Sean" fontSize="14" fontStyle="normal" fontWeight="normal" kerning="auto" lineHeight="210.000000%" textAlpha="1" textRotation="auto" trackingRight="0.000000%">- 25% ammo</span></p></TextFlow></tlfTextObject>
            ,null,undefined,0,0,"",false,true);
         }
         finally
         {
            XML.setSettings(this._SafeStr_2517);
         }
         RuntimeManager.getSingleton()._SafeStr_1241(this);
      }
      
      public function __registerTLFFonts() : void
      {
         Font.registerFont(handofsean);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_220 = "_-Hy"
 * @identifier _SafeCls_254 = "_-jV"
 * @identifier _SafeStr_1135 = "_-hL"
 * @identifier _SafeStr_1241 = "_-Qv"
 * @identifier _SafeStr_2517 = "_-YU"
 */
