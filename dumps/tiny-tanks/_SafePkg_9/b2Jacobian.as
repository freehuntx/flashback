package _SafePkg_9
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2Jacobian
   {
      
      public var linearA:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_1903:Number;
      
      public var linearB:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2213:Number;
      
      public function b2Jacobian()
      {
         super();
      }
      
      public function _SafeStr_1807() : void
      {
         this.linearA._SafeStr_1807();
         this._SafeStr_1903 = 0;
         this.linearB._SafeStr_1807();
         this._SafeStr_2213 = 0;
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         this.linearA._SafeStr_1679(param1);
         this._SafeStr_1903 = param2;
         this.linearB._SafeStr_1679(param3);
         this._SafeStr_2213 = param4;
      }
      
      public function _SafeStr_2435(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         return this.linearA.x * param1.x + this.linearA.y * param1.y + this._SafeStr_1903 * param2 + (this.linearB.x * param3.x + this.linearB.y * param3.y) + this._SafeStr_2213 * param4;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1903 = "_-Tc"
 * @identifier _SafeStr_2213 = "_-PI"
 * @identifier _SafeStr_2435 = "_-OO"
 */
