package
{
   import fl.text.RuntimeManager;
   import fl.text.TLFTextField;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import test187c_fla.arialbold_3;
   
   public dynamic class xpdisplaymc extends MovieClip
   {
      
      public var cointext:TLFTextField;
      
      public var xptext:TLFTextField;
      
      public var __checkFontName_:String;
      
      public var _SafeStr_2517:Object;
      
      public function xpdisplaymc()
      {
         super();
         this.__checkFontName_ = "test187c_fla.arialbold_3";
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
            RuntimeManager.getSingleton()._SafeStr_1135(this,"xptext",new Rectangle(0,0,57.65,16.55),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="auto" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="false" antiAliasType="normal" embedFonts="true"><TextFlow lineBreak="explicit" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphStartIndent="0" textAlign="center" textIndent="0"><span baselineShift="0" color="#333333" fontFamily="Arial" fontSize="9" fontStyle="normal" fontWeight="bold" kerning="auto" lineHeight="132.272727%" textAlpha="1" trackingRight="0.000000%">+5xp</span></p></TextFlow></tlfTextObject>,null,undefined,0,18,"",true,true);
            RuntimeManager.getSingleton()._SafeStr_1135(this,"cointext",new Rectangle(0,0,57.65,16.55),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="auto" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="false" antiAliasType="normal" embedFonts="true"><TextFlow lineBreak="explicit" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphStartIndent="0" textAlign="center" textIndent="0"><span baselineShift="0" color="#000000" fontFamily="Arial" fontSize="9" fontStyle="normal" fontWeight="bold" kerning="auto" lineHeight="132.272727%" trackingRight="0.000000%">+$100</span></p></TextFlow></tlfTextObject>,null,undefined,19,19,"",true,false);
         }
         finally
         {
            XML.setSettings(this._SafeStr_2517);
         }
         RuntimeManager.getSingleton()._SafeStr_1241(this);
      }
      
      public function __registerTLFFonts() : void
      {
         Font.registerFont(arialbold_3);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_1135 = "_-hL"
 * @identifier _SafeStr_1241 = "_-Qv"
 * @identifier _SafeStr_2517 = "_-YU"
 */
