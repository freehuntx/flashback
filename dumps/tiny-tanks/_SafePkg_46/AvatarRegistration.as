package _SafePkg_46
{
   public class AvatarRegistration
   {
      
      public static const origin:AvatarRegistration = new AvatarRegistration(0,"origin",0,0);
      
      public static const head:AvatarRegistration = new AvatarRegistration(1,"head",590 / 2,10);
      
      public static const neck:AvatarRegistration = new AvatarRegistration(2,"neck",590 / 2,84);
      
      public static const center:AvatarRegistration = new AvatarRegistration(3,"center",590 / 2,200 / 2);
      
      public static const feet:AvatarRegistration = new AvatarRegistration(4,"feet",590 / 2,200 - 10);
      
      private var _value:uint;
      
      private var _name:String;
      
      private var _x:Number;
      
      private var _y:Number;
      
      public function AvatarRegistration(param1:uint, param2:String, param3:Number, param4:Number)
      {
         super();
         this._value = param1;
         this._name = param2;
         this._x = param3;
         this._y = param4;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function toString() : String
      {
         return "AvatarRegistration." + this._name;
      }
      
      public function valueOf() : uint
      {
         return this._value;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_46 = "_-8"
 */
