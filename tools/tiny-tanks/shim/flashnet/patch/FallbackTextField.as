package flashnet.patch
{
   import flash.display.DisplayObjectContainer;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;

   /**
    * Classic TextField standing in for a TLFTextField.
    *
    * Ruffle's text engine can't re-compose TLF text, so TLF fields stay stuck
    * on their authoring-time text. This field copies the TLF box (size, font,
    * alignment, vertical centering) and lives inside the timeline's TLF
    * placeholder sprite, so placeholder animations still move/fade it.
    */
   public class FallbackTextField extends TextField
   {
      private var _boxHeight:Number;

      private var _centerVertically:Boolean;

      public function FallbackTextField(width:Number, height:Number, font:String, size:Number, bold:Boolean, color:uint, align:String, multiline:Boolean, centerVertically:Boolean, initial:String)
      {
         super();
         this._boxHeight = height;
         this._centerVertically = centerVertically;
         var format:TextFormat = new TextFormat(font,size,color,bold);
         format.align = align;
         this.defaultTextFormat = format;
         this.embedFonts = true;
         this.antiAliasType = AntiAliasType.ADVANCED;
         this.selectable = false;
         this.mouseEnabled = false;
         this.multiline = multiline;
         this.wordWrap = multiline;
         this.width = width;
         this.height = height;
         this.text = initial;
      }

      override public function set text(value:String) : void
      {
         super.text = value == null ? "" : value;
         this.layout();
      }

      override public function set htmlText(value:String) : void
      {
         super.htmlText = value == null ? "" : value;
         this.layout();
      }

      /** Move into a (new) timeline placeholder, at its origin. */
      public function adopt(placeholder:Object) : void
      {
         var host:DisplayObjectContainer = placeholder as DisplayObjectContainer;
         if(host == null || host == this.parent)
         {
            return;
         }
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         this.x = 0;
         host.addChild(this);
         this.layout();
      }

      private function layout() : void
      {
         if(!this._centerVertically)
         {
            this.y = 0;
            return;
         }
         var used:Number = Math.min(this._boxHeight,this.textHeight + 4);
         this.y = Math.round((this._boxHeight - used) / 2);
      }
   }
}
