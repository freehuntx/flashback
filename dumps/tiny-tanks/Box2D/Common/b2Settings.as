package Box2D.Common
{
   public class b2Settings
   {
      
      public static const _SafeStr_676:String = "2.1alpha";
      
      public static const _SafeStr_1169:int = 65535;
      
      public static const b2_pi:Number = Math.PI;
      
      public static const b2_maxManifoldPoints:int = 2;
      
      public static const b2_aabbExtension:Number = 0.1;
      
      public static const b2_aabbMultiplier:Number = 2;
      
      public static const b2_polygonRadius:Number = 2 * b2_linearSlop;
      
      public static const b2_linearSlop:Number = 0.005;
      
      public static const b2_angularSlop:Number = 2 / 180 * b2_pi;
      
      public static const b2_toiSlop:Number = 8 * b2_linearSlop;
      
      public static const b2_maxTOIContactsPerIsland:int = 32;
      
      public static const b2_maxTOIJointsPerIsland:int = 32;
      
      public static const b2_velocityThreshold:Number = 1;
      
      public static const b2_maxLinearCorrection:Number = 0.2;
      
      public static const b2_maxAngularCorrection:Number = 8 / 180 * b2_pi;
      
      public static const b2_maxTranslation:Number = 2;
      
      public static const b2_maxTranslationSquared:Number = b2_maxTranslation * b2_maxTranslation;
      
      public static const b2_maxRotation:Number = 0.5 * b2_pi;
      
      public static const b2_maxRotationSquared:Number = b2_maxRotation * b2_maxRotation;
      
      public static const b2_contactBaumgarte:Number = 0.2;
      
      public static const b2_timeToSleep:Number = 0.5;
      
      public static const b2_linearSleepTolerance:Number = 0.01;
      
      public static const b2_angularSleepTolerance:Number = 2 / 180 * b2Settings.b2_pi;
      
      public function b2Settings()
      {
         super();
      }
      
      public static function b2MixFriction(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param2);
      }
      
      public static function b2MixRestitution(param1:Number, param2:Number) : Number
      {
         return param1 > param2 ? param1 : param2;
      }
      
      public static function b2Assert(param1:Boolean) : void
      {
         if(!param1)
         {
            throw "Assertion Failed";
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_676 = "_-4R"
 * @identifier _SafeStr_1169 = "_-Ym"
 */
