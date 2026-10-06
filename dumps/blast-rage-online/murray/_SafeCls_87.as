package murray
{
   import _SafePkg_20._SafeCls_66;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   
   public class _SafeCls_87 extends EventDispatcher
   {
      
      public static const _SafeStr_263:int = 13;
      
      public var mc:MovieClip;
      
      public var color:uint;
      
      private var _SafeStr_442:Boolean = true;
      
      public function _SafeCls_87(param1:MovieClip)
      {
         super();
         this.mc = param1;
         this._SafeStr_757();
         param1.palette.buttonMode = true;
         param1.palette.useHandCursor = true;
         param1.selection.mouseEnabled = false;
         param1.palette.addEventListener(MouseEvent.CLICK,this._SafeStr_1124);
         param1.lock_check.addEventListener(MouseEvent.CLICK,this._SafeStr_917);
      }
      
      public function _SafeStr_1124(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.localX / _SafeStr_263;
         var _loc3_:int = param1.localY / _SafeStr_263;
         if(this._SafeStr_442)
         {
            if(_loc3_ > 0)
            {
               return;
            }
         }
         if(_loc2_ >= int(this.mc.palette.width / _SafeStr_263))
         {
            _loc2_ = this.mc.palette.width / _SafeStr_263 - 1;
         }
         this.mc.selection.visible = true;
         this.mc.selection.x = _loc2_ * _SafeStr_263 - 1;
         this.mc.selection.y = _loc3_ * _SafeStr_263 + 14;
         this._SafeStr_757();
      }
      
      public function _SafeStr_757() : void
      {
         var _loc1_:Bitmap = this.mc.palette.getChildAt(0) as Bitmap;
         this.color = _loc1_.bitmapData.getPixel(this.mc.selection.x + 7,this.mc.selection.y - 7);
         var _loc2_:ColorTransform = new ColorTransform();
         _loc2_.color = this.color;
         this.mc.current.transform.colorTransform = _loc2_;
         this.mc.hex_code.text = this.color.toString(16).toUpperCase();
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_415));
      }
      
      public function _SafeStr_917(param1:MouseEvent = null) : void
      {
         var _loc2_:ColorTransform = null;
         if(!this._SafeStr_442)
         {
            this.mc.selection.visible = false;
            this.color = parseInt(this.mc.hex_code.text,16);
            _loc2_ = new ColorTransform();
            _loc2_.color = this.color;
            this.mc.current.transform.colorTransform = _loc2_;
            dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_415));
         }
      }
      
      public function randomize() : *
      {
         var _loc1_:int = 0;
         var _loc2_:uint = 0;
         if(this._SafeStr_442)
         {
            _loc1_ = Math.random() * (this.mc.palette.width / _SafeStr_263);
            if(_loc1_ >= int(this.mc.palette.width / _SafeStr_263))
            {
               _loc1_ = this.mc.palette.width / _SafeStr_263 - 1;
            }
            this.mc.selection.x = _loc1_ * _SafeStr_263 - 1;
            this._SafeStr_757();
         }
         else
         {
            _loc2_ = Math.random() * 16777215;
            this.mc.hex_code.text = _loc2_.toString(16).toUpperCase();
            this._SafeStr_917();
         }
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._SafeStr_442 = param1;
         if(!this._SafeStr_442)
         {
            this.mc.colors_locked.visible = false;
            this.mc.lock_check.gotoAndStop(2);
            this.mc.lock_check.buttonMode = true;
            this.mc.lock_check.useHandCursor = true;
         }
         else
         {
            this.mc.colors_locked.visible = true;
            this.mc.lock_check.gotoAndStop(1);
            this.mc.lock_check.buttonMode = false;
            this.mc.lock_check.useHandCursor = false;
         }
      }
      
      public function get locked() : Boolean
      {
         return this._SafeStr_442;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_87 = "!\""
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_263 = "-3"
 * @identifier _SafeStr_415 = "<9"
 * @identifier _SafeStr_442 = ",9"
 * @identifier _SafeStr_757 = "@4"
 * @identifier _SafeStr_917 = " B"
 * @identifier _SafeStr_1124 = "1K"
 */
