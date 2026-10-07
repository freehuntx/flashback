package Box2D.Common.Math
{
   public class b2Vec3
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function b2Vec3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function _SafeStr_1807() : void
      {
         this.x = this.y = this.z = 0;
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function _SafeStr_1679(param1:b2Vec3) : void
      {
         this.x = param1.x;
         this.y = param1.y;
         this.z = param1.z;
      }
      
      public function _SafeStr_714() : b2Vec3
      {
         return new b2Vec3(-this.x,-this.y,-this.z);
      }
      
      public function _SafeStr_762() : void
      {
         this.x = -this.x;
         this.y = -this.y;
         this.z = -this.z;
      }
      
      public function _SafeStr_2396() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function Add(param1:b2Vec3) : void
      {
         this.x += param1.x;
         this.y += param1.y;
         this.z += param1.z;
      }
      
      public function _SafeStr_2354(param1:b2Vec3) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
         this.z -= param1.z;
      }
      
      public function Multiply(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
         this.z *= param1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_714 = "_-dS"
 * @identifier _SafeStr_762 = "_-br"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_2354 = "_-i6"
 * @identifier _SafeStr_2396 = "_-2N"
 */
