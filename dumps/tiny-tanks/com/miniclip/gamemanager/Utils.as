package com.miniclip.gamemanager
{
   import com.miniclip.gamemanager.utils.absoluteURI;
   
   public class Utils
   {
      
      private static var _instance:Utils;
      
      public function Utils(param1:Key)
      {
         super();
         if(!param1)
         {
            throw new Error("Singelton!");
         }
      }
      
      public static function get instance() : Utils
      {
         if(!_instance)
         {
            _instance = new Utils(new Key());
         }
         return _instance;
      }
      
      public function _SafeStr_1329(param1:String) : String
      {
         return absoluteURI(param1,null);
      }
   }
}

class Key
{
   
   public function Key()
   {
      super();
   }
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_1329 = "_-Tm"
 */
