package flashx.textLayout.operations
{
   import flashx.textLayout.edit.ModelEdit;
   import flashx.textLayout.edit.ParaEdit;
   import flashx.textLayout.edit.PointFormat;
   import flashx.textLayout.edit.SelectionState;
   import flashx.textLayout.edit.TextFlowEdit;
   import flashx.textLayout.elements.FlowElement;
   import flashx.textLayout.elements.FlowLeafElement;
   import flashx.textLayout.elements.LinkElement;
   import flashx.textLayout.elements.SpanElement;
   import flashx.textLayout.elements.TCYElement;
   import flashx.textLayout.formats.ITextLayoutFormat;
   import flashx.textLayout.formats.TextLayoutFormat;
   import flashx.textLayout.tlf_internal;
   
   use namespace tlf_internal;
   
   public class InsertTextOperation extends FlowTextOperation
   {
      
      private var _deleteSelectionState:SelectionState;
      
      private var delSelOp:DeleteTextOperation = null;
      
      public var _text:String;
      
      private var _pointFormat:ITextLayoutFormat;
      
      public function InsertTextOperation(param1:SelectionState, param2:String, param3:SelectionState = null)
      {
         super(param1);
         this._pointFormat = param1.pointFormat;
         this._text = param2;
         this.initialize(param3);
      }
      
      private function initialize(param1:SelectionState) : void
      {
         if(param1 == null)
         {
            param1 = originalSelectionState;
         }
         if(param1.anchorPosition != param1.activePosition)
         {
            this._deleteSelectionState = param1;
            this.delSelOp = new DeleteTextOperation(this._deleteSelectionState);
         }
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
      }
      
      public function get deleteSelectionState() : SelectionState
      {
         return this._deleteSelectionState;
      }
      
      public function set deleteSelectionState(param1:SelectionState) : void
      {
         this._deleteSelectionState = param1;
      }
      
      public function get characterFormat() : ITextLayoutFormat
      {
         return this._pointFormat;
      }
      
      public function set characterFormat(param1:ITextLayoutFormat) : void
      {
         this._pointFormat = new PointFormat(param1);
      }
      
      private function doDelete(param1:FlowLeafElement) : ITextLayoutFormat
      {
         var _loc2_:PointFormat = PointFormat.createFromFlowElement(textFlow.findLeaf(absoluteStart));
         var _loc3_:PointFormat = absoluteStart == param1.getParagraph().getAbsoluteStart() ? null : PointFormat.createFromFlowElement(textFlow.findLeaf(absoluteStart - 1));
         if(this.delSelOp.doOperation())
         {
            if(!this._pointFormat && absoluteStart < absoluteEnd && PointFormat.isEqual(_loc2_,_loc3_))
            {
               _loc2_ = null;
            }
            else if(param1.textLength == 0)
            {
               param1.parent.removeChild(param1);
            }
         }
         return _loc2_;
      }
      
      private function applyPointFormat(param1:SpanElement, param2:ITextLayoutFormat) : void
      {
         var _loc3_:TextLayoutFormat = null;
         var _loc4_:PointFormat = null;
         var _loc5_:FlowLeafElement = null;
         var _loc6_:FlowElement = null;
         var _loc7_:FlowLeafElement = null;
         var _loc8_:FlowElement = null;
         if(!TextLayoutFormat.isEqual(param2,param1.format))
         {
            _loc3_ = new TextLayoutFormat(param1.format);
            _loc3_.apply(param2);
            param1.format = _loc3_;
         }
         if(param2 is PointFormat)
         {
            _loc4_ = param2 as PointFormat;
            if(_loc4_.linkElement)
            {
               if(_loc4_.linkElement.href)
               {
                  TextFlowEdit.makeLink(textFlow,absoluteStart,absoluteStart + this._text.length,_loc4_.linkElement.href,_loc4_.linkElement.target);
                  _loc5_ = textFlow.findLeaf(absoluteStart);
                  _loc6_ = _loc5_.getParentByType(LinkElement);
                  _loc6_.format = _loc4_.linkElement.format;
               }
            }
            if(_loc4_.tcyElement)
            {
               TextFlowEdit.makeTCY(textFlow,absoluteStart,absoluteStart + this._text.length);
               _loc7_ = textFlow.findLeaf(absoluteStart);
               _loc8_ = _loc7_.getParentByType(TCYElement);
               _loc8_.format = _loc4_.tcyElement.format;
            }
            else if(param1.getParentByType(TCYElement))
            {
               TextFlowEdit.removeTCY(textFlow,absoluteStart,absoluteStart + this._text.length);
            }
         }
      }
      
      private function doInternal() : void
      {
         var _loc1_:ITextLayoutFormat = null;
         var _loc3_:SelectionState = null;
         if(this.delSelOp != null)
         {
            _loc1_ = this.doDelete(textFlow.findLeaf(absoluteStart));
         }
         var _loc2_:SpanElement = ParaEdit.insertText(textFlow,absoluteStart,this._text,this._pointFormat != null || _loc1_ != null);
         if(textFlow.interactionManager)
         {
            textFlow.interactionManager.notifyInsertOrDelete(absoluteStart,this._text.length);
         }
         if(_loc2_ != null)
         {
            if(_loc1_)
            {
               _loc2_.format = _loc1_;
               this.applyPointFormat(_loc2_,_loc1_);
               if(Boolean(_loc1_ is PointFormat && PointFormat(_loc1_).linkElement && PointFormat(_loc1_).linkElement.href) && Boolean(originalSelectionState.selectionManagerOperationState) && Boolean(textFlow.interactionManager))
               {
                  _loc3_ = textFlow.interactionManager.getSelectionState();
                  _loc3_.pointFormat = PointFormat.clone(_loc1_ as PointFormat);
                  textFlow.interactionManager.setSelectionState(_loc3_);
               }
            }
            if(this._pointFormat)
            {
               this.applyPointFormat(_loc2_,this._pointFormat);
            }
         }
      }
      
      override public function doOperation() : Boolean
      {
         this.doInternal();
         return true;
      }
      
      override public function undo() : SelectionState
      {
         ModelEdit.deleteText(textFlow,absoluteStart,absoluteStart + this._text.length,false);
         var _loc1_:SelectionState = originalSelectionState;
         if(this.delSelOp != null)
         {
            _loc1_ = this.delSelOp.undo();
         }
         return originalSelectionState;
      }
      
      override public function redo() : SelectionState
      {
         this.doInternal();
         return new SelectionState(textFlow,absoluteStart + this._text.length,absoluteStart + this._text.length,null);
      }
      
      override tlf_internal function merge(param1:FlowOperation) : FlowOperation
      {
         if(absoluteStart < absoluteEnd)
         {
            return null;
         }
         if(this.endGeneration != param1.beginGeneration)
         {
            return null;
         }
         var _loc2_:InsertTextOperation = null;
         if(param1 is InsertTextOperation)
         {
            _loc2_ = param1 as InsertTextOperation;
         }
         if(_loc2_)
         {
            if(_loc2_.deleteSelectionState != null || this.deleteSelectionState != null)
            {
               return null;
            }
            if(_loc2_.originalSelectionState.pointFormat == null && originalSelectionState.pointFormat != null)
            {
               return null;
            }
            if(originalSelectionState.pointFormat == null && _loc2_.originalSelectionState.pointFormat != null)
            {
               return null;
            }
            if(originalSelectionState.absoluteStart + this._text.length != _loc2_.originalSelectionState.absoluteStart)
            {
               return null;
            }
            if(originalSelectionState.pointFormat == null && _loc2_.originalSelectionState.pointFormat == null || PointFormat.isEqual(originalSelectionState.pointFormat,_loc2_.originalSelectionState.pointFormat))
            {
               this._text += _loc2_.text;
               setGenerations(beginGeneration,_loc2_.endGeneration);
               setGenerations(beginGeneration,_loc2_.endGeneration);
               return this;
            }
            return null;
         }
         if(param1 is SplitParagraphOperation)
         {
            return new CompositeOperation([this,param1]);
         }
         return null;
      }
   }
}

