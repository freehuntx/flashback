class mx.styles.CSSTextStyles
{
   var _tf;
   function CSSTextStyles()
   {
   }
   static function addTextStyles(_loc2_, _loc3_)
   {
      _loc2_.addProperty("textAlign",function()
      {
         return this._tf.align;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.align = _loc2_;
      }
      );
      _loc2_.addProperty("fontWeight",function()
      {
         return this._tf.bold == undefined ? undefined : (!this._tf.bold ? "none" : "bold");
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.bold = _loc2_ == "bold";
      }
      );
      if(_loc3_)
      {
         _loc2_.addProperty("color",function()
         {
            return this._tf.color;
         }
         ,function(_loc2_)
         {
            if(this._tf == undefined)
            {
               this._tf = new TextFormat();
            }
            this._tf.color = _loc2_;
         }
         );
      }
      _loc2_.addProperty("fontFamily",function()
      {
         return this._tf.font;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.font = _loc2_;
      }
      );
      _loc2_.addProperty("textIndent",function()
      {
         return this._tf.indent;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.indent = _loc2_;
      }
      );
      _loc2_.addProperty("fontStyle",function()
      {
         return this._tf.italic == undefined ? undefined : (!this._tf.italic ? "none" : "italic");
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.italic = _loc2_ == "italic";
      }
      );
      _loc2_.addProperty("marginLeft",function()
      {
         return this._tf.leftMargin;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.leftMargin = _loc2_;
      }
      );
      _loc2_.addProperty("marginRight",function()
      {
         return this._tf.rightMargin;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.rightMargin = _loc2_;
      }
      );
      _loc2_.addProperty("fontSize",function()
      {
         return this._tf.size;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.size = _loc2_;
      }
      );
      _loc2_.addProperty("textDecoration",function()
      {
         return this._tf.underline == undefined ? undefined : (!this._tf.underline ? "none" : "underline");
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.underline = _loc2_ == "underline";
      }
      );
      _loc2_.addProperty("embedFonts",function()
      {
         return this._tf.embedFonts;
      }
      ,function(_loc2_)
      {
         if(this._tf == undefined)
         {
            this._tf = new TextFormat();
         }
         this._tf.embedFonts = _loc2_;
      }
      );
   }
}
