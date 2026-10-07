package flashx.textLayout
{
   use namespace tlf_internal;
   
   public class TextLayoutVersion
   {
      
      public static const CURRENT_VERSION:uint = 33554432;
      
      public static const VERSION_2_0:uint = 33554432;
      
      public static const VERSION_1_0:uint = 16777216;
      
      public static const VERSION_1_1:uint = 16842752;
      
      tlf_internal static const BUILD_NUMBER:String = "232 (759049)";
      
      tlf_internal static const BRANCH:String = "2.0";
      
      public static const AUDIT_ID:String = "<AdobeIP 0000486>";
      
      public function TextLayoutVersion()
      {
         super();
      }
      
      tlf_internal static function getVersionString(param1:uint) : String
      {
         var _loc2_:uint = uint(param1 >> 24 & 0xFF);
         var _loc3_:uint = uint(param1 >> 16 & 0xFF);
         var _loc4_:uint = uint(param1 & 0xFFFF);
         return _loc2_.toString() + "." + _loc3_.toString() + "." + _loc4_.toString();
      }
      
      public function dontStripAuditID() : String
      {
         return AUDIT_ID;
      }
   }
}

