package
{
   import fl.text.RuntimeManager;
   import fl.text.TLFTextField;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import test187c_fla.arialbold_3;
   
   public dynamic class _SafeCls_253 extends MovieClip
   {
      
      public var tankLabel:TLFTextField;
      
      public var __checkFontName_:String;
      
      public var _SafeStr_2517:Object;
      
      public function _SafeCls_253()
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
            RuntimeManager.getSingleton()._SafeStr_1135(this,"tankLabel",new Rectangle(0,0,120,17.35),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="1" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="true" antiAliasType="advanced" embedFonts="true"><TextFlow blockProgression="tb" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#000000" fontFamily="Arial" fontSize="12" fontStyle="normal" fontWeight="bold" kerning="off" lineHeight="117.647059%" textAlpha="1" textRotation="auto" trackingRight="0%">unnamed</span></p></TextFlow></tlfTextObject>
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
         Font.registerFont(arialbold_3);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_253 = "_-VF"
 * @identifier _SafeStr_1135 = "_-hL"
 * @identifier _SafeStr_1241 = "_-Qv"
 * @identifier _SafeStr_2517 = "_-YU"
 */
