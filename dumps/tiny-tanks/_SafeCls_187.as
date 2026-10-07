package
{
   import _SafePkg_53._SafeCls_79;
   import _SafePkg_87._SafeCls_92;
   import _SafePkg_7._SafeCls_109;
   import _SafePkg_7._SafeCls_45;
   import _SafePkg_28._SafeCls_107;
   import com.jaludo.JaludoAds;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   
   public class _SafeCls_187 extends Sprite
   {
      
      private var _SafeStr_1206:Shape;
      
      public function _SafeCls_187()
      {
         super();
         this._SafeStr_1206 = new Shape();
         this._SafeStr_1206.graphics.beginFill(0);
         this._SafeStr_1206.graphics.drawRect(0,0,730,500);
         this._SafeStr_1206.graphics.endFill();
         addChild(this._SafeStr_1206);
         this._SafeStr_304();
      }
      
      private function _SafeStr_304() : void
      {
         JaludoAds.getAd(_SafeCls_45._SafeStr_282,false,this._SafeStr_1561);
      }
      
      private function _SafeStr_1561(param1:_SafeCls_109, param2:_SafeCls_107) : void
      {
         var _loc3_:_SafeCls_79 = null;
         var _loc4_:DisplayObject = null;
         if(!param2)
         {
            try
            {
               _loc3_ = param1._SafeStr_2521;
               _loc3_.addEventListener(_SafeCls_92._SafeStr_702,this._SafeStr_1301,false,0,true);
               _loc3_.addEventListener(_SafeCls_92._SafeStr_2632,this._SafeStr_2103,false,0,true);
               _loc3_.addEventListener(_SafeCls_92._SafeStr_1372,this._SafeStr_918,false,0,true);
               addChild(_loc3_ as DisplayObject);
               _loc3_.start();
               this.width = 730;
               this.height = 500;
               _loc4_ = _loc3_ as DisplayObject;
               _loc4_.x = 41;
            }
            catch(e:Error)
            {
            }
         }
      }
      
      private function _SafeStr_1301(param1:_SafeCls_92) : *
      {
      }
      
      private function _SafeStr_2103(param1:_SafeCls_92) : *
      {
         removeChild(this._SafeStr_1206);
         parent.removeChild(this);
      }
      
      private function _SafeStr_918(param1:_SafeCls_92) : *
      {
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_45 = "_-eI"
 * @identifier _SafeCls_79 = "_-ci"
 * @identifier _SafeCls_92 = "_-OA"
 * @identifier _SafeCls_107 = "_-Qr"
 * @identifier _SafeCls_109 = "_-Oa"
 * @identifier _SafeCls_187 = "_-To"
 * @identifier _SafePkg_7 = "_-6y"
 * @identifier _SafePkg_28 = "_-RM"
 * @identifier _SafePkg_53 = "_-59"
 * @identifier _SafePkg_87 = "_-6f"
 * @identifier _SafeStr_282 = "_-28"
 * @identifier _SafeStr_304 = "_-3r"
 * @identifier _SafeStr_702 = "_-hw"
 * @identifier _SafeStr_918 = "_-Qp"
 * @identifier _SafeStr_1206 = "_-c9"
 * @identifier _SafeStr_1301 = "_-8O"
 * @identifier _SafeStr_1372 = "_-AT"
 * @identifier _SafeStr_1561 = "_-8a"
 * @identifier _SafeStr_2103 = "_-IA"
 * @identifier _SafeStr_2521 = "_-NF"
 * @identifier _SafeStr_2632 = "_-B2"
 */
