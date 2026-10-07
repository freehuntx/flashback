package com.google.analytics.debug
{
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.events.TextEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   
   public class Label extends UISprite
   {
      
      public static var count:uint = 0;
      
      private var _color:uint;
      
      private var _background:Shape;
      
      private var _textField:TextField;
      
      public var stickToEdge:Boolean;
      
      private var _text:String;
      
      protected var selectable:Boolean;
      
      private var _tag:String;
      
      public function Label(param1:String = "", param2:String = "uiLabel", param3:uint = 0, param4:Align = null, param5:Boolean = false)
      {
         super();
         this.name = "Label" + count++;
         selectable = false;
         _background = new Shape();
         _textField = new TextField();
         _text = param1;
         _tag = param2;
         if(param4 == null)
         {
            param4 = Align.none;
         }
         this.alignement = param4;
         this.stickToEdge = param5;
         if(param3 == 0)
         {
            param3 = uint(Style.backgroundColor);
         }
         _color = param3;
         _textField.addEventListener(TextEvent.LINK,onLink);
      }
      
      public function get tag() : String
      {
         return _tag;
      }
      
      private function _draw() : void
      {
         var _loc1_:Graphics = _background.graphics;
         _loc1_.clear();
         _loc1_.beginFill(_color);
         var _loc2_:uint = uint(_textField.width);
         var _loc3_:uint = uint(_textField.height);
         if(forcedWidth > 0)
         {
            _loc2_ = forcedWidth;
         }
         Background.drawRounded(this,_loc1_,_loc2_,_loc3_);
         _loc1_.endFill();
      }
      
      public function get text() : String
      {
         return _textField.text;
      }
      
      public function appendText(param1:String, param2:String = "") : void
      {
         if(param1 == "")
         {
            return;
         }
         if(param2 == "")
         {
            param2 = tag;
         }
         _textField.htmlText += "<span class=\"" + param2 + "\">" + param1 + "</span>";
         _text += param1;
         _draw();
         resize();
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == "")
         {
            param1 = _text;
         }
         _textField.htmlText = "<span class=\"" + tag + "\">" + param1 + "</span>";
         _text = param1;
         _draw();
         resize();
      }
      
      override protected function layout() : void
      {
         _textField.type = TextFieldType.DYNAMIC;
         _textField.autoSize = TextFieldAutoSize.LEFT;
         _textField.background = false;
         _textField.selectable = selectable;
         _textField.multiline = true;
         _textField.styleSheet = Style.sheet;
         this.text = _text;
         addChild(_background);
         addChild(_textField);
      }
      
      public function set tag(param1:String) : void
      {
         _tag = param1;
         text = "";
      }
      
      public function onLink(param1:TextEvent) : void
      {
      }
      
      override protected function dispose() : void
      {
         _textField.removeEventListener(TextEvent.LINK,onLink);
         super.dispose();
      }
   }
}

