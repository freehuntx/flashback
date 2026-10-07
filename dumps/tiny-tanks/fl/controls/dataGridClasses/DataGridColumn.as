package fl.controls.dataGridClasses
{
   import fl.controls.DataGrid;
   import fl.core.InvalidationType;
   
   public class DataGridColumn
   {
      
      private var _columnName:String;
      
      private var _headerText:String;
      
      private var _minWidth:Number = 20;
      
      private var _width:Number = 100;
      
      private var _visible:Boolean = true;
      
      private var _cellRenderer:Object;
      
      private var _headerRenderer:Object;
      
      private var _labelFunction:Function;
      
      private var _sortCompareFunction:Function;
      
      private var _imeMode:String;
      
      public var owner:DataGrid;
      
      public var colNum:Number;
      
      public var explicitWidth:Number;
      
      public var sortable:Boolean = true;
      
      public var resizable:Boolean = true;
      
      public var editable:Boolean = true;
      
      public var itemEditor:Object = "fl.controls.dataGridClasses.DataGridCellEditor";
      
      public var editorDataField:String = "text";
      
      public var dataField:String;
      
      public var sortDescending:Boolean = false;
      
      public var sortOptions:uint = 0;
      
      private var forceImport:DataGridCellEditor;
      
      public function DataGridColumn(param1:String = null)
      {
         super();
         if(param1)
         {
            dataField = param1;
            headerText = param1;
         }
      }
      
      public function get cellRenderer() : Object
      {
         return _cellRenderer;
      }
      
      public function set cellRenderer(param1:Object) : void
      {
         _cellRenderer = param1;
         if(owner)
         {
            owner.invalidate(InvalidationType.DATA);
         }
      }
      
      public function get headerRenderer() : Object
      {
         return _headerRenderer;
      }
      
      public function set headerRenderer(param1:Object) : void
      {
         _headerRenderer = param1;
         if(owner)
         {
            owner.invalidate(InvalidationType.DATA);
         }
      }
      
      public function get headerText() : String
      {
         return _headerText != null ? _headerText : dataField;
      }
      
      public function set headerText(param1:String) : void
      {
         _headerText = param1;
         if(owner)
         {
            owner.invalidate(InvalidationType.DATA);
         }
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         _imeMode = param1;
      }
      
      public function get labelFunction() : Function
      {
         return _labelFunction;
      }
      
      public function set labelFunction(param1:Function) : void
      {
         if(_labelFunction == param1)
         {
            return;
         }
         _labelFunction = param1;
         if(owner)
         {
            owner.invalidate(InvalidationType.DATA);
         }
      }
      
      public function get minWidth() : Number
      {
         return _minWidth;
      }
      
      public function set minWidth(param1:Number) : void
      {
         _minWidth = param1;
         if(_width < param1)
         {
            _width = param1;
         }
         if(owner)
         {
            owner.invalidate(InvalidationType.SIZE);
         }
      }
      
      public function get sortCompareFunction() : Function
      {
         return _sortCompareFunction;
      }
      
      public function set sortCompareFunction(param1:Function) : void
      {
         _sortCompareFunction = param1;
      }
      
      public function get visible() : Boolean
      {
         return _visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(_visible != param1)
         {
            _visible = param1;
            if(owner)
            {
               owner.invalidate(InvalidationType.SIZE);
            }
         }
      }
      
      public function get width() : Number
      {
         return _width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         explicitWidth = param1;
         if(owner != null)
         {
            _loc2_ = resizable;
            resizable = false;
            owner.resizeColumn(colNum,param1);
            resizable = _loc2_;
         }
         else
         {
            _width = param1;
         }
      }
      
      public function setWidth(param1:Number) : void
      {
         _width = param1;
      }
      
      public function itemToLabel(param1:Object) : String
      {
         var data:Object = param1;
         if(!data)
         {
            return " ";
         }
         if(labelFunction != null)
         {
            return labelFunction(data);
         }
         if(owner.labelFunction != null)
         {
            return owner.labelFunction(data,this);
         }
         if(typeof data == "object" || typeof data == "xml")
         {
            try
            {
               data = data[dataField];
            }
            catch(e:Error)
            {
               data = null;
            }
         }
         if(data is String)
         {
            return String(data);
         }
         try
         {
            return data.toString();
         }
         catch(e:Error)
         {
         }
         return " ";
      }
      
      public function toString() : String
      {
         return "[object DataGridColumn]";
      }
   }
}

