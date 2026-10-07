package _SafePkg_9
{
   import Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2GearJointDef extends b2JointDef
   {
      
      public var joint1:b2Joint;
      
      public var joint2:b2Joint;
      
      public var _SafeStr_2548:Number;
      
      public function b2GearJointDef()
      {
         super();
         type = b2Joint._SafeStr_2225;
         this.joint1 = null;
         this.joint2 = null;
         this._SafeStr_2548 = 1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafeStr_2225 = "_-Rd"
 * @identifier _SafeStr_2548 = "_-Fx"
 */
