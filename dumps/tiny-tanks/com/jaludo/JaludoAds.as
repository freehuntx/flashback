package com.jaludo
{
   public class JaludoAds
   {
      
      public static const _SafeStr_2049:String = "JaludoAds";
      
      public function JaludoAds()
      {
         super();
      }
      
      public static function getAd(param1:String, param2:Boolean, param3:Function) : int
      {
         return Jaludo.instance.addRequest(_SafeStr_2049,"getAd",param3,param1,param2);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_2049 = "_-AH"
 */
