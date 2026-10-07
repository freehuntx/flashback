package _SafePkg_0
{
   import _SafePkg_8.b2Shape;
   
   public class b2FixtureDef
   {
      
      public var shape:b2Shape;
      
      public var userData:*;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var _SafeStr_385:Boolean;
      
      public var filter:b2FilterData = new b2FilterData();
      
      public function b2FixtureDef()
      {
         super();
         this.shape = null;
         this.userData = null;
         this.friction = 0.2;
         this.restitution = 0;
         this.density = 0;
         this.filter.categoryBits = 1;
         this.filter.maskBits = 65535;
         this.filter._SafeStr_1100 = 0;
         this._SafeStr_385 = false;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_385 = "_-SC"
 * @identifier _SafeStr_1100 = "_-aD"
 */
