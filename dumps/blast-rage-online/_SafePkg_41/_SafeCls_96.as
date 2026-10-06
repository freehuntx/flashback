package _SafePkg_41
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class _SafeCls_96 extends Sprite
   {
      
      public var image:Bitmap;
      
      public function _SafeCls_96(param1:Bitmap, param2:int = 0, param3:int = 0)
      {
         super();
         if(param2 == 0 && param3 == 0)
         {
            param2 = param1.width / 2;
            param3 = param1.height / 2;
         }
         param1.x = -param2;
         param1.y = -param3;
         this.image = param1;
         addChild(param1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_96 = "^S"
 * @identifier _SafePkg_41 = "%#"
 */
