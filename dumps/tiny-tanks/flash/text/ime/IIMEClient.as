package flash.text.ime
{
   import flash.geom.Rectangle;
   
   public interface IIMEClient
   {
      
      function updateComposition(param1:String, param2:Vector.<CompositionAttributeRange>, param3:int, param4:int) : void;
      
      function confirmComposition(param1:String = null, param2:Boolean = false) : void;
      
      function getTextBounds(param1:int, param2:int) : Rectangle;
      
      function get compositionStartIndex() : int;
      
      function get compositionEndIndex() : int;
      
      function get verticalTextLayout() : Boolean;
      
      function get selectionAnchorIndex() : int;
      
      function get selectionActiveIndex() : int;
      
      function selectRange(param1:int, param2:int) : void;
      
      function getTextInRange(param1:int, param2:int) : String;
   }
}

