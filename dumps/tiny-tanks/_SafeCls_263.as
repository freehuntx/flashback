package
{
   import fl.controls.listClasses.CellRenderer;
   
   public class _SafeCls_263 extends CellRenderer
   {
      
      public function _SafeCls_263()
      {
         super();
      }
      
      public function _SafeStr_2406() : *
      {
      }
      
      override protected function drawLayout() : void
      {
         textField.htmlText = textField.text;
         super.drawLayout();
      }
      
      override protected function drawBackground() : void
      {
         if(data.Friendsinthisroom == true)
         {
            setStyle("upSkin",_SafeCls_197);
         }
         else
         {
            setStyle("upSkin",CellRenderer_upSkin);
         }
         super.drawBackground();
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_197 = "_-Hw"
 * @identifier _SafeCls_263 = "_-D1"
 * @identifier _SafeStr_2406 = "_-cq"
 */
