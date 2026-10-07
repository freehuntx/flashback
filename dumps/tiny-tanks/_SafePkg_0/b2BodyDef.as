package _SafePkg_0
{
   import Box2D.Common.Math.b2Vec2;
   
   public class b2BodyDef
   {
      
      public var type:uint;
      
      public var position:b2Vec2 = new b2Vec2();
      
      public var angle:Number;
      
      public var linearVelocity:b2Vec2 = new b2Vec2();
      
      public var _SafeStr_2355:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var allowSleep:Boolean;
      
      public var _SafeStr_338:Boolean;
      
      public var _SafeStr_2361:Boolean;
      
      public var bullet:Boolean;
      
      public var active:Boolean;
      
      public var userData:*;
      
      public var _SafeStr_1147:Number;
      
      public function b2BodyDef()
      {
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.linearVelocity.Set(0,0);
         this._SafeStr_2355 = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.allowSleep = true;
         this._SafeStr_338 = true;
         this._SafeStr_2361 = false;
         this.bullet = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this._SafeStr_1147 = 1;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_338 = "_-Zq"
 * @identifier _SafeStr_1147 = "_-Zg"
 * @identifier _SafeStr_2355 = "_-3K"
 * @identifier _SafeStr_2361 = "_-7Q"
 */
