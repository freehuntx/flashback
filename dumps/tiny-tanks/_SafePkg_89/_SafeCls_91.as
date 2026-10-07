package _SafePkg_89
{
   import _SafePkg_30._SafeCls_29;
   import flash.events.Event;
   
   public class _SafeCls_91 extends Event
   {
      
      public static var _SafeStr_2013:String = "particleCreated";
      
      public static var _SafeStr_2060:String = "particleDead";
      
      public static var _SafeStr_1990:String = "particleAdded";
      
      public static var _SafeStr_2418:String = "particleRemoved";
      
      public static var _SafeStr_1925:String = "particlesCollision";
      
      public static var _SafeStr_2449:String = "zoneCollision";
      
      public static var _SafeStr_1086:String = "boundingBoxCollision";
      
      public var particle:_SafeCls_29;
      
      public var _SafeStr_350:*;
      
      public function _SafeCls_91(param1:String, param2:_SafeCls_29 = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.particle = param2;
      }
      
      override public function clone() : Event
      {
         var _loc1_:_SafeCls_91 = new _SafeCls_91(type,this.particle,bubbles,cancelable);
         _loc1_._SafeStr_350 = this._SafeStr_350;
         return _loc1_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_29 = "_-KC"
 * @identifier _SafeCls_91 = "_-V1"
 * @identifier _SafePkg_30 = "_-M0"
 * @identifier _SafePkg_89 = "_-jw"
 * @identifier _SafeStr_350 = "_-Nd"
 * @identifier _SafeStr_1086 = "_-P6"
 * @identifier _SafeStr_1925 = "_-Jm"
 * @identifier _SafeStr_1990 = "_-H7"
 * @identifier _SafeStr_2013 = "_-N6"
 * @identifier _SafeStr_2060 = "_-d4"
 * @identifier _SafeStr_2418 = "_-Vt"
 * @identifier _SafeStr_2449 = "_-EM"
 */
