class mx.styles.StyleManager
{
   static var inheritingStyles = {color:true,direction:true,fontFamily:true,fontSize:true,fontStyle:true,fontWeight:true,textAlign:true,textIndent:true};
   static var colorStyles = {barColor:true,trackColor:true,borderColor:true,buttonColor:true,color:true,dateHeaderColor:true,dateRollOverColor:true,disabledColor:true,fillColor:true,highlightColor:true,scrollTrackColor:true,selectedDateColor:true,shadowColor:true,strokeColor:true,symbolBackgroundColor:true,symbolBackgroundDisabledColor:true,symbolBackgroundPressedColor:true,symbolColor:true,symbolDisabledColor:true,themeColor:true,todayIndicatorColor:true,shadowCapColor:true,borderCapColor:true,focusColor:true};
   static var colorNames = {black:0,white:16777215,red:16711680,green:65280,blue:255,magenta:16711935,yellow:16776960,cyan:65535,haloGreen:8453965,haloBlue:2881013,haloOrange:16761344};
   static var TextFormatStyleProps = {font:true,size:true,color:true,leftMargin:false,rightMargin:false,italic:true,bold:true,align:true,indent:true,underline:false,embedFonts:false};
   static var TextStyleMap = {textAlign:true,fontWeight:true,color:true,fontFamily:true,textIndent:true,fontStyle:true,lineHeight:true,marginLeft:true,marginRight:true,fontSize:true,textDecoration:true,embedFonts:true};
   function StyleManager()
   {
   }
   static function registerInheritingStyle(_loc1_)
   {
      mx.styles.StyleManager.inheritingStyles[_loc1_] = true;
   }
   static function isInheritingStyle(_loc1_)
   {
      return mx.styles.StyleManager.inheritingStyles[_loc1_] == true;
   }
   static function registerColorStyle(_loc1_)
   {
      mx.styles.StyleManager.colorStyles[_loc1_] = true;
   }
   static function isColorStyle(_loc1_)
   {
      return mx.styles.StyleManager.colorStyles[_loc1_] == true;
   }
   static function registerColorName(_loc2_, _loc1_)
   {
      mx.styles.StyleManager.colorNames[_loc2_] = _loc1_;
   }
   static function isColorName(_loc1_)
   {
      return mx.styles.StyleManager.colorNames[_loc1_] != undefined;
   }
   static function getColorName(_loc1_)
   {
      return mx.styles.StyleManager.colorNames[_loc1_];
   }
}
