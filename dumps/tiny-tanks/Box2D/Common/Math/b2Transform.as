package Box2D.Common.Math
{
   public class b2Transform
   {
      
      public var position:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_945:b2Mat22 = new b2Mat22();
      
      public function b2Transform(param1:b2Vec2 = null, param2:b2Mat22 = null)
      {
         super();
         if(param1)
         {
            this.position._SafeStr_1679(param1);
            this._SafeStr_945._SafeStr_2130(param2);
         }
      }
      
      public function _SafeStr_2347(param1:b2Vec2, param2:b2Mat22) : void
      {
         this.position._SafeStr_1679(param1);
         this._SafeStr_945._SafeStr_2130(param2);
      }
      
      public function _SafeStr_988() : void
      {
         this.position._SafeStr_1807();
         this._SafeStr_945._SafeStr_988();
      }
      
      public function Set(param1:b2Transform) : void
      {
         this.position._SafeStr_1679(param1.position);
         this._SafeStr_945._SafeStr_2130(param1._SafeStr_945);
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this._SafeStr_945.col1.y,this._SafeStr_945.col1.x);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_988 = "_-3l"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_2130 = "_-gz"
 * @identifier _SafeStr_2347 = "_-Wk"
 */
