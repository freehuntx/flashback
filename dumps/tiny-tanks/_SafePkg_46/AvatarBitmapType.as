package _SafePkg_46
{
   public class AvatarBitmapType
   {
      
      public static const cropped:AvatarBitmapType = new AvatarBitmapType(2,"cropped");
      
      public static const fullbody:AvatarBitmapType = new AvatarBitmapType(1,"fullbody");
      
      private var _value:uint;
      
      private var _name:String;
      
      public function AvatarBitmapType(param1:uint, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public function toString() : String
      {
         return "AvatarBitmapType." + this._name;
      }
      
      public function valueOf() : uint
      {
         return this._value;
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      public function get name() : String
      {
         return this._name;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_46 = "_-8"
 */
