package fl.controls
{
   import fl.controls.dataGridClasses.DataGridColumn;
   import fl.controls.dataGridClasses.HeaderRenderer;
   import fl.controls.listClasses.ICellRenderer;
   import fl.controls.listClasses.ListData;
   import fl.core.InvalidationType;
   import fl.core.UIComponent;
   import fl.data.DataProvider;
   import fl.events.DataChangeEvent;
   import fl.events.DataGridEvent;
   import fl.events.DataGridEventReason;
   import fl.managers.IFocusManager;
   import fl.managers.IFocusManagerComponent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   
   public class DataGrid extends SelectableList implements IFocusManagerComponent
   {
      
      public static var createAccessibilityImplementation:Function;
      
      private static var defaultStyles:Object = {
         "headerUpSkin":"HeaderRenderer_upSkin",
         "headerDownSkin":"HeaderRenderer_downSkin",
         "headerOverSkin":"HeaderRenderer_overSkin",
         "headerDisabledSkin":"HeaderRenderer_disabledSkin",
         "headerSortArrowDescSkin":"HeaderSortArrow_descIcon",
         "headerSortArrowAscSkin":"HeaderSortArrow_ascIcon",
         "columnStretchCursorSkin":"ColumnStretch_cursor",
         "columnDividerSkin":null,
         "headerTextFormat":null,
         "headerDisabledTextFormat":null,
         "headerTextPadding":5,
         "headerRenderer":HeaderRenderer,
         "focusRectSkin":null,
         "focusRectPadding":null,
         "skin":"DataGrid_skin"
      };
      
      protected static const HEADER_STYLES:Object = {
         "disabledSkin":"headerDisabledSkin",
         "downSkin":"headerDownSkin",
         "overSkin":"headerOverSkin",
         "upSkin":"headerUpSkin",
         "textFormat":"headerTextFormat",
         "disabledTextFormat":"headerDisabledTextFormat",
         "textPadding":"headerTextPadding"
      };
      
      protected var _rowHeight:Number = 20;
      
      protected var _headerHeight:Number = 25;
      
      protected var _showHeaders:Boolean = true;
      
      protected var _columns:Array;
      
      protected var _minColumnWidth:Number;
      
      protected var header:Sprite;
      
      protected var headerMask:Sprite;
      
      protected var headerSortArrow:Sprite;
      
      protected var _cellRenderer:Object;
      
      protected var _headerRenderer:Object;
      
      protected var _labelFunction:Function;
      
      protected var visibleColumns:Array;
      
      protected var displayableColumns:Array;
      
      protected var columnsInvalid:Boolean = true;
      
      protected var minColumnWidthInvalid:Boolean = false;
      
      protected var activeCellRenderersMap:Dictionary;
      
      protected var availableCellRenderersMap:Dictionary;
      
      protected var dragHandlesMap:Dictionary;
      
      protected var columnStretchIndex:Number = -1;
      
      protected var columnStretchStartX:Number;
      
      protected var columnStretchStartWidth:Number;
      
      protected var columnStretchCursor:Sprite;
      
      protected var _sortIndex:int = -1;
      
      protected var lastSortIndex:int = -1;
      
      protected var _sortDescending:Boolean = false;
      
      protected var _editedItemPosition:Object;
      
      protected var editedItemPositionChanged:Boolean = false;
      
      protected var proposedEditedItemPosition:*;
      
      protected var actualRowIndex:int;
      
      protected var actualColIndex:int;
      
      protected var isPressed:Boolean = false;
      
      protected var losingFocus:Boolean = false;
      
      protected var maxHeaderHeight:Number = 25;
      
      protected var currentHoveredRow:int = -1;
      
      public var editable:Boolean = false;
      
      public var resizableColumns:Boolean = true;
      
      public var sortableColumns:Boolean = true;
      
      public var itemEditorInstance:Object;
      
      public function DataGrid()
      {
         super();
         if(_columns == null)
         {
            _columns = [];
         }
         _horizontalScrollPolicy = ScrollPolicy.OFF;
         activeCellRenderersMap = new Dictionary(true);
         availableCellRenderersMap = new Dictionary(true);
         addEventListener(DataGridEvent.ITEM_EDIT_BEGINNING,itemEditorItemEditBeginningHandler,false,-50);
         addEventListener(DataGridEvent.ITEM_EDIT_BEGIN,itemEditorItemEditBeginHandler,false,-50);
         addEventListener(DataGridEvent.ITEM_EDIT_END,itemEditorItemEditEndHandler,false,-50);
         addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
         addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
      }
      
      public static function getStyleDefinition() : Object
      {
         return mergeStyles(defaultStyles,SelectableList.getStyleDefinition(),ScrollBar.getStyleDefinition());
      }
      
      override public function set dataProvider(param1:DataProvider) : void
      {
         super.dataProvider = param1;
         if(_columns == null)
         {
            _columns = [];
         }
         if(_columns.length == 0)
         {
            createColumnsFromDataProvider();
         }
         removeCellRenderers();
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         header.mouseChildren = _enabled;
      }
      
      override public function setSize(param1:Number, param2:Number) : void
      {
         super.setSize(param1,param2);
         columnsInvalid = true;
      }
      
      override public function get horizontalScrollPolicy() : String
      {
         return _horizontalScrollPolicy;
      }
      
      override public function set horizontalScrollPolicy(param1:String) : void
      {
         super.horizontalScrollPolicy = param1;
         columnsInvalid = true;
      }
      
      public function get columns() : Array
      {
         return _columns.slice(0);
      }
      
      public function set columns(param1:Array) : void
      {
         removeCellRenderers();
         _columns = [];
         var _loc2_:uint = 0;
         while(_loc2_ < param1.length)
         {
            addColumn(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function get minColumnWidth() : Number
      {
         return _minColumnWidth;
      }
      
      public function set minColumnWidth(param1:Number) : void
      {
         _minColumnWidth = param1;
         columnsInvalid = true;
         minColumnWidthInvalid = true;
         invalidate(InvalidationType.SIZE);
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
         invalidate(InvalidationType.DATA);
      }
      
      override public function get rowCount() : uint
      {
         return Math.ceil(calculateAvailableHeight() / rowHeight);
      }
      
      public function set rowCount(param1:uint) : void
      {
         var _loc2_:Number = Number(Number(getStyleValue("contentPadding")));
         var _loc3_:Number = _horizontalScrollPolicy == ScrollPolicy.ON || _horizontalScrollPolicy == ScrollPolicy.AUTO && hScrollBar ? 15 : 0;
         height = rowHeight * param1 + 2 * _loc2_ + _loc3_ + (showHeaders ? headerHeight : 0);
      }
      
      public function get rowHeight() : Number
      {
         return _rowHeight;
      }
      
      public function set rowHeight(param1:Number) : void
      {
         _rowHeight = Math.max(0,param1);
         invalidate(InvalidationType.SIZE);
      }
      
      public function get headerHeight() : Number
      {
         return _headerHeight;
      }
      
      public function set headerHeight(param1:Number) : void
      {
         maxHeaderHeight = param1;
         _headerHeight = Math.max(0,param1);
         invalidate(InvalidationType.SIZE);
      }
      
      public function get showHeaders() : Boolean
      {
         return _showHeaders;
      }
      
      public function set showHeaders(param1:Boolean) : void
      {
         _showHeaders = param1;
         invalidate(InvalidationType.SIZE);
      }
      
      public function get sortIndex() : int
      {
         return _sortIndex;
      }
      
      public function get sortDescending() : Boolean
      {
         return _sortDescending;
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         _imeMode = param1;
      }
      
      public function get editedItemRenderer() : ICellRenderer
      {
         if(!itemEditorInstance)
         {
            return null;
         }
         return getCellRendererAt(actualRowIndex,actualColIndex);
      }
      
      public function get editedItemPosition() : Object
      {
         if(_editedItemPosition)
         {
            return {
               "rowIndex":_editedItemPosition.rowIndex,
               "columnIndex":_editedItemPosition.columnIndex
            };
         }
         return _editedItemPosition;
      }
      
      public function set editedItemPosition(param1:Object) : void
      {
         var _loc2_:Object = {
            "rowIndex":param1.rowIndex,
            "columnIndex":param1.columnIndex
         };
         setEditedItemPosition(_loc2_);
      }
      
      protected function calculateAvailableHeight() : Number
      {
         var _loc1_:Number = Number(Number(getStyleValue("contentPadding")));
         var _loc2_:Number = _horizontalScrollPolicy == ScrollPolicy.ON || _horizontalScrollPolicy == ScrollPolicy.AUTO && _maxHorizontalScrollPosition > 0 ? 15 : 0;
         return height - _loc1_ * 2 - _loc2_ - (showHeaders ? headerHeight : 0);
      }
      
      public function addColumn(param1:*) : DataGridColumn
      {
         return addColumnAt(param1,_columns.length);
      }
      
      public function addColumnAt(param1:*, param2:uint) : DataGridColumn
      {
         var _loc3_:DataGridColumn = null;
         var _loc5_:uint = 0;
         if(param2 < _columns.length)
         {
            _columns.splice(param2,0,"");
            _loc5_ = param2 + 1;
            while(_loc5_ < _columns.length)
            {
               _loc3_ = _columns[_loc5_] as DataGridColumn;
               _loc3_.colNum = _loc5_;
               _loc5_++;
            }
         }
         var _loc4_:* = param1;
         if(!(_loc4_ is DataGridColumn))
         {
            if(_loc4_ is String)
            {
               _loc4_ = new DataGridColumn(_loc4_);
            }
            else
            {
               _loc4_ = new DataGridColumn();
            }
         }
         _loc3_ = _loc4_ as DataGridColumn;
         _loc3_.owner = this;
         _loc3_.colNum = param2;
         _columns[param2] = _loc3_;
         invalidate(InvalidationType.SIZE);
         columnsInvalid = true;
         return _loc3_;
      }
      
      public function removeColumnAt(param1:uint) : DataGridColumn
      {
         var _loc3_:uint = 0;
         var _loc2_:DataGridColumn = _columns[param1] as DataGridColumn;
         if(_loc2_ != null)
         {
            removeCellRenderersByColumn(_loc2_);
            _columns.splice(param1,1);
            _loc3_ = param1;
            while(_loc3_ < _columns.length)
            {
               _loc2_ = _columns[_loc3_] as DataGridColumn;
               if(_loc2_)
               {
                  _loc2_.colNum = _loc3_;
               }
               _loc3_++;
            }
            invalidate(InvalidationType.SIZE);
            columnsInvalid = true;
         }
         return _loc2_;
      }
      
      public function removeAllColumns() : void
      {
         if(_columns.length > 0)
         {
            removeCellRenderers();
            _columns = [];
            invalidate(InvalidationType.SIZE);
            columnsInvalid = true;
         }
      }
      
      public function getColumnAt(param1:uint) : DataGridColumn
      {
         return _columns[param1] as DataGridColumn;
      }
      
      public function getColumnIndex(param1:String) : int
      {
         var _loc3_:DataGridColumn = null;
         var _loc2_:uint = 0;
         while(_loc2_ < _columns.length)
         {
            _loc3_ = _columns[_loc2_] as DataGridColumn;
            if(_loc3_.dataField == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function getColumnCount() : uint
      {
         return _columns.length;
      }
      
      public function spaceColumnsEqually() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:DataGridColumn = null;
         drawNow();
         if(displayableColumns.length > 0)
         {
            _loc1_ = availableWidth / displayableColumns.length;
            _loc2_ = 0;
            while(_loc2_ < displayableColumns.length)
            {
               _loc3_ = displayableColumns[_loc2_] as DataGridColumn;
               _loc3_.width = _loc1_;
               _loc2_++;
            }
            invalidate(InvalidationType.SIZE);
            columnsInvalid = true;
         }
      }
      
      public function editField(param1:uint, param2:String, param3:Object) : void
      {
         var _loc4_:Object = getItemAt(param1);
         _loc4_[param2] = param3;
         replaceItemAt(_loc4_,param1);
      }
      
      override public function itemToCellRenderer(param1:Object) : ICellRenderer
      {
         return null;
      }
      
      override protected function configUI() : void
      {
         useFixedHorizontalScrolling = false;
         super.configUI();
         headerMask = new Sprite();
         var _loc1_:Graphics = headerMask.graphics;
         _loc1_.beginFill(0,0.3);
         _loc1_.drawRect(0,0,100,100);
         _loc1_.endFill();
         headerMask.visible = false;
         addChild(headerMask);
         header = new Sprite();
         addChild(header);
         header.mask = headerMask;
         _horizontalScrollPolicy = ScrollPolicy.OFF;
         _verticalScrollPolicy = ScrollPolicy.AUTO;
      }
      
      override protected function draw() : void
      {
         var _loc1_:Boolean = contentHeight != rowHeight * length;
         contentHeight = rowHeight * length;
         if(isInvalid(InvalidationType.STYLES))
         {
            setStyles();
            drawBackground();
            if(contentPadding != getStyleValue("contentPadding"))
            {
               invalidate(InvalidationType.SIZE,false);
            }
            if(_cellRenderer != getStyleValue("cellRenderer") || _headerRenderer != getStyleValue("headerRenderer"))
            {
               _invalidateList();
               _cellRenderer = getStyleValue("cellRenderer");
               _headerRenderer = getStyleValue("headerRenderer");
            }
         }
         if(isInvalid(InvalidationType.SIZE))
         {
            columnsInvalid = true;
         }
         if(isInvalid(InvalidationType.SIZE,InvalidationType.STATE) || _loc1_)
         {
            drawLayout();
            drawDisabledOverlay();
         }
         if(isInvalid(InvalidationType.RENDERER_STYLES))
         {
            updateRendererStyles();
         }
         if(isInvalid(InvalidationType.STYLES,InvalidationType.SIZE,InvalidationType.DATA,InvalidationType.SCROLL,InvalidationType.SELECTED))
         {
            drawList();
         }
         updateChildren();
         validate();
      }
      
      override protected function drawLayout() : void
      {
         vOffset = showHeaders ? headerHeight : 0;
         super.drawLayout();
         contentScrollRect = listHolder.scrollRect;
         if(showHeaders)
         {
            headerHeight = maxHeaderHeight;
            if(Math.floor(availableHeight - headerHeight) <= 0)
            {
               _headerHeight = availableHeight;
            }
            list.y = headerHeight;
            contentScrollRect = listHolder.scrollRect;
            contentScrollRect.y = contentPadding + headerHeight;
            contentScrollRect.height = availableHeight - headerHeight;
            listHolder.y = contentPadding + headerHeight;
            headerMask.x = contentPadding;
            headerMask.y = contentPadding;
            headerMask.width = availableWidth;
            headerMask.height = headerHeight;
         }
         else
         {
            contentScrollRect.y = contentPadding;
            listHolder.y = 0;
         }
         listHolder.scrollRect = contentScrollRect;
      }
      
      override protected function drawList() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:uint = 0;
         var _loc6_:Object = null;
         var _loc7_:ICellRenderer = null;
         var _loc8_:Array = null;
         var _loc9_:DataGridColumn = null;
         var _loc13_:Sprite = null;
         var _loc14_:UIComponent = null;
         var _loc18_:Number = NaN;
         var _loc19_:DataGridColumn = null;
         var _loc20_:Object = null;
         var _loc21_:Array = null;
         var _loc22_:Dictionary = null;
         var _loc23_:Object = null;
         var _loc24_:HeaderRenderer = null;
         var _loc25_:Sprite = null;
         var _loc26_:Graphics = null;
         var _loc27_:Boolean = false;
         var _loc28_:String = null;
         if(showHeaders)
         {
            header.visible = true;
            header.x = contentPadding - _horizontalScrollPosition;
            header.y = contentPadding;
            listHolder.y = contentPadding + headerHeight;
            _loc18_ = Number(Math.floor(availableHeight - headerHeight));
            _verticalScrollBar.setScrollProperties(_loc18_,0,contentHeight - _loc18_,_verticalScrollBar.pageScrollSize);
         }
         else
         {
            header.visible = false;
            listHolder.y = contentPadding;
         }
         listHolder.x = contentPadding;
         contentScrollRect = listHolder.scrollRect;
         contentScrollRect.x = _horizontalScrollPosition;
         contentScrollRect.y = vOffset + Math.floor(_verticalScrollPosition) % rowHeight;
         listHolder.scrollRect = contentScrollRect;
         listHolder.cacheAsBitmap = useBitmapScrolling;
         var _loc1_:uint = uint(Math.min(Math.max(length - 1,0),Math.floor(_verticalScrollPosition / rowHeight)));
         var _loc2_:uint = uint(Math.min(Math.max(length - 1,0),_loc1_ + rowCount + 1));
         var _loc10_:Boolean = Boolean(list.hitTestPoint(stage.mouseX,stage.mouseY));
         calculateColumnSizes();
         var _loc11_:Dictionary = renderedItems = new Dictionary(true);
         if(length > 0)
         {
            _loc5_ = _loc1_;
            while(_loc5_ <= _loc2_)
            {
               _loc11_[_dataProvider.getItemAt(_loc5_)] = true;
               _loc5_++;
            }
         }
         _loc3_ = 0;
         var _loc12_:DataGridColumn = visibleColumns[0] as DataGridColumn;
         _loc5_ = 0;
         while(_loc5_ < displayableColumns.length)
         {
            _loc19_ = displayableColumns[_loc5_] as DataGridColumn;
            if(_loc19_ == _loc12_)
            {
               break;
            }
            _loc3_ += _loc19_.width;
            _loc5_++;
         }
         while(header.numChildren > 0)
         {
            header.removeChildAt(0);
         }
         dragHandlesMap = new Dictionary(true);
         var _loc15_:Array = [];
         var _loc16_:uint = uint(visibleColumns.length);
         var _loc17_:uint = 0;
         while(_loc17_ < _loc16_)
         {
            _loc9_ = visibleColumns[_loc17_] as DataGridColumn;
            _loc15_.push(_loc9_.colNum);
            if(showHeaders)
            {
               _loc23_ = _loc9_.headerRenderer != null ? _loc9_.headerRenderer : _headerRenderer;
               _loc24_ = getDisplayObjectInstance(_loc23_) as HeaderRenderer;
               if(_loc24_ != null)
               {
                  _loc24_.addEventListener(MouseEvent.CLICK,handleHeaderRendererClick,false,0,true);
                  _loc24_.x = _loc3_;
                  _loc24_.y = 0;
                  _loc24_.setSize(_loc9_.width,headerHeight);
                  _loc24_.column = _loc9_.colNum;
                  _loc24_.label = _loc9_.headerText;
                  header.addChildAt(_loc24_,_loc17_);
                  copyStylesToChild(_loc24_,HEADER_STYLES);
                  if(sortIndex == -1 && lastSortIndex == -1 || _loc9_.colNum != sortIndex)
                  {
                     _loc24_.setStyle("icon",null);
                  }
                  else
                  {
                     _loc24_.setStyle("icon",sortDescending ? getStyleValue("headerSortArrowAscSkin") : getStyleValue("headerSortArrowDescSkin"));
                  }
                  if(_loc17_ < _loc16_ - 1 && resizableColumns && _loc9_.resizable)
                  {
                     _loc25_ = new Sprite();
                     _loc26_ = _loc25_.graphics;
                     _loc26_.beginFill(0,0);
                     _loc26_.drawRect(0,0,3,headerHeight);
                     _loc26_.endFill();
                     _loc25_.x = _loc3_ + _loc9_.width - 2;
                     _loc25_.y = 0;
                     _loc25_.alpha = 0;
                     _loc25_.addEventListener(MouseEvent.MOUSE_OVER,handleHeaderResizeOver,false,0,true);
                     _loc25_.addEventListener(MouseEvent.MOUSE_OUT,handleHeaderResizeOut,false,0,true);
                     _loc25_.addEventListener(MouseEvent.MOUSE_DOWN,handleHeaderResizeDown,false,0,true);
                     header.addChild(_loc25_);
                     dragHandlesMap[_loc25_] = _loc9_.colNum;
                  }
                  if(_loc17_ == _loc16_ - 1 && _horizontalScrollPosition == 0 && availableWidth > _loc3_ + _loc9_.width)
                  {
                     _loc4_ = Number(Math.floor(availableWidth - _loc3_));
                     _loc24_.setSize(_loc4_,headerHeight);
                  }
                  else
                  {
                     _loc4_ = _loc9_.width;
                  }
                  _loc24_.drawNow();
               }
            }
            _loc20_ = _loc9_.cellRenderer != null ? _loc9_.cellRenderer : _cellRenderer;
            _loc21_ = availableCellRenderersMap[_loc9_];
            _loc8_ = activeCellRenderersMap[_loc9_];
            if(_loc8_ == null)
            {
               activeCellRenderersMap[_loc9_] = _loc8_ = [];
            }
            if(_loc21_ == null)
            {
               availableCellRenderersMap[_loc9_] = _loc21_ = [];
            }
            _loc22_ = new Dictionary(true);
            while(_loc8_.length > 0)
            {
               _loc7_ = _loc8_.pop();
               _loc6_ = _loc7_.data;
               if(_loc11_[_loc6_] == null || invalidItems[_loc6_] == true)
               {
                  _loc21_.push(_loc7_);
               }
               else
               {
                  _loc22_[_loc6_] = _loc7_;
                  invalidItems[_loc6_] = true;
               }
               list.removeChild(_loc7_ as DisplayObject);
            }
            if(length > 0)
            {
               _loc5_ = _loc1_;
               while(_loc5_ <= _loc2_)
               {
                  _loc27_ = false;
                  _loc6_ = _dataProvider.getItemAt(_loc5_);
                  if(_loc22_[_loc6_] != null)
                  {
                     _loc27_ = true;
                     _loc7_ = _loc22_[_loc6_];
                     delete _loc22_[_loc6_];
                  }
                  else if(_loc21_.length > 0)
                  {
                     _loc7_ = _loc21_.pop() as ICellRenderer;
                  }
                  else
                  {
                     _loc7_ = getDisplayObjectInstance(_loc20_) as ICellRenderer;
                     _loc13_ = _loc7_ as Sprite;
                     if(_loc13_ != null)
                     {
                        _loc13_.addEventListener(MouseEvent.CLICK,handleCellRendererClick,false,0,true);
                        _loc13_.addEventListener(MouseEvent.ROLL_OVER,handleCellRendererMouseEvent,false,0,true);
                        _loc13_.addEventListener(MouseEvent.ROLL_OUT,handleCellRendererMouseEvent,false,0,true);
                        _loc13_.addEventListener(Event.CHANGE,handleCellRendererChange,false,0,true);
                        _loc13_.doubleClickEnabled = true;
                        _loc13_.addEventListener(MouseEvent.DOUBLE_CLICK,handleCellRendererDoubleClick,false,0,true);
                        if(_loc13_["setStyle"] != null)
                        {
                           for(_loc28_ in rendererStyles)
                           {
                              _loc13_["setStyle"](_loc28_,rendererStyles[_loc28_]);
                           }
                        }
                     }
                  }
                  list.addChild(_loc7_ as Sprite);
                  _loc8_.push(_loc7_);
                  _loc7_.x = _loc3_;
                  _loc7_.y = rowHeight * (_loc5_ - _loc1_);
                  _loc7_.setSize(_loc17_ == _loc16_ - 1 ? _loc4_ : _loc9_.width,rowHeight);
                  if(!_loc27_)
                  {
                     _loc7_.data = _loc6_;
                  }
                  _loc7_.listData = new ListData(columnItemToLabel(_loc9_.colNum,_loc6_),null,this,_loc5_,_loc5_,_loc9_.colNum);
                  if(_loc10_ && isHovered(_loc7_))
                  {
                     _loc7_.setMouseState("over");
                     currentHoveredRow = _loc5_;
                  }
                  else
                  {
                     _loc7_.setMouseState("up");
                  }
                  _loc7_.selected = _selectedIndices.indexOf(_loc5_) != -1;
                  if(_loc7_ is UIComponent)
                  {
                     _loc14_ = _loc7_ as UIComponent;
                     _loc14_.drawNow();
                  }
                  _loc5_++;
               }
            }
            _loc3_ += _loc9_.width;
            _loc17_++;
         }
         _loc5_ = 0;
         while(_loc5_ < _columns.length)
         {
            if(_loc15_.indexOf(_loc5_) == -1)
            {
               removeCellRenderersByColumn(_columns[_loc5_] as DataGridColumn);
            }
            _loc5_++;
         }
         if(editedItemPositionChanged)
         {
            editedItemPositionChanged = false;
            commitEditedItemPosition(proposedEditedItemPosition);
            proposedEditedItemPosition = undefined;
         }
         invalidItems = new Dictionary(true);
      }
      
      override protected function updateRendererStyles() : void
      {
         var _loc2_:Object = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in availableCellRenderersMap)
         {
            _loc1_ = _loc1_.concat(availableCellRenderersMap[_loc2_]);
         }
         for(_loc2_ in activeCellRenderersMap)
         {
            _loc1_ = _loc1_.concat(activeCellRenderersMap[_loc2_]);
         }
         _loc3_ = uint(_loc1_.length);
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc1_[_loc4_]["setStyle"] != null)
            {
               for(_loc5_ in updatedRendererStyles)
               {
                  _loc1_[_loc4_].setStyle(_loc5_,updatedRendererStyles[_loc5_]);
               }
               _loc1_[_loc4_].drawNow();
            }
            _loc4_++;
         }
         updatedRendererStyles = {};
      }
      
      protected function removeCellRenderers() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < _columns.length)
         {
            removeCellRenderersByColumn(_columns[_loc1_] as DataGridColumn);
            _loc1_++;
         }
      }
      
      protected function removeCellRenderersByColumn(param1:DataGridColumn) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Array = activeCellRenderersMap[param1];
         if(_loc2_ != null)
         {
            while(_loc2_.length > 0)
            {
               list.removeChild(_loc2_.pop() as DisplayObject);
            }
         }
      }
      
      override protected function handleCellRendererMouseEvent(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:DataGridColumn = null;
         var _loc7_:ICellRenderer = null;
         var _loc2_:ICellRenderer = param1.target as ICellRenderer;
         if(_loc2_)
         {
            _loc3_ = int(_loc2_.listData.row);
            if(param1.type == MouseEvent.ROLL_OVER)
            {
               _loc4_ = "over";
            }
            else if(param1.type == MouseEvent.ROLL_OUT)
            {
               _loc4_ = "up";
            }
            if(_loc4_)
            {
               _loc5_ = 0;
               while(_loc5_ < visibleColumns.length)
               {
                  _loc6_ = visibleColumns[_loc5_] as DataGridColumn;
                  _loc7_ = getCellRendererAt(_loc3_,_loc6_.colNum);
                  if(_loc7_)
                  {
                     _loc7_.setMouseState(_loc4_);
                  }
                  if(_loc3_ != currentHoveredRow)
                  {
                     _loc7_ = getCellRendererAt(currentHoveredRow,_loc6_.colNum);
                     if(_loc7_)
                     {
                        _loc7_.setMouseState("up");
                     }
                  }
                  _loc5_++;
               }
            }
         }
         super.handleCellRendererMouseEvent(param1);
      }
      
      protected function isHovered(param1:ICellRenderer) : Boolean
      {
         var _loc2_:uint = uint(Math.min(Math.max(length - 1,0),Math.floor(_verticalScrollPosition / rowHeight)));
         var _loc3_:Number = (param1.listData.row - _loc2_) * rowHeight;
         var _loc4_:Point = list.globalToLocal(new Point(0,stage.mouseY));
         return _loc4_.y > _loc3_ && _loc4_.y < _loc3_ + rowHeight;
      }
      
      override protected function setHorizontalScrollPosition(param1:Number, param2:Boolean = false) : void
      {
         if(param1 == _horizontalScrollPosition)
         {
            return;
         }
         contentScrollRect = listHolder.scrollRect;
         contentScrollRect.x = param1;
         listHolder.scrollRect = contentScrollRect;
         list.x = 0;
         header.x = -param1;
         super.setHorizontalScrollPosition(param1,true);
         invalidate(InvalidationType.SCROLL);
         columnsInvalid = true;
      }
      
      override protected function setVerticalScrollPosition(param1:Number, param2:Boolean = false) : void
      {
         if(itemEditorInstance)
         {
            endEdit(DataGridEventReason.OTHER);
         }
         invalidate(InvalidationType.SCROLL);
         super.setVerticalScrollPosition(param1,true);
      }
      
      public function columnItemToLabel(param1:uint, param2:Object) : String
      {
         var _loc3_:DataGridColumn = _columns[param1] as DataGridColumn;
         if(_loc3_ != null)
         {
            return _loc3_.itemToLabel(param2);
         }
         return " ";
      }
      
      protected function calculateColumnSizes() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:DataGridColumn = null;
         var _loc6_:DataGridColumn = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc4_:Number = 0;
         if(_columns.length == 0)
         {
            visibleColumns = [];
            displayableColumns = [];
            return;
         }
         if(columnsInvalid)
         {
            columnsInvalid = false;
            visibleColumns = [];
            if(minColumnWidthInvalid)
            {
               _loc2_ = int(_columns.length);
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  _columns[_loc3_].minWidth = minColumnWidth;
                  _loc3_++;
               }
               minColumnWidthInvalid = false;
            }
            displayableColumns = null;
            _loc2_ = int(_columns.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               if(Boolean(displayableColumns) && Boolean(_columns[_loc3_].visible))
               {
                  displayableColumns.push(_columns[_loc3_]);
               }
               else if(!displayableColumns && !_columns[_loc3_].visible)
               {
                  displayableColumns = new Array(_loc3_);
                  _loc8_ = 0;
                  while(_loc8_ < _loc3_)
                  {
                     displayableColumns[_loc8_] = _columns[_loc8_];
                     _loc8_++;
                  }
               }
               _loc3_++;
            }
            if(!displayableColumns)
            {
               displayableColumns = _columns;
            }
            if(horizontalScrollPolicy == ScrollPolicy.OFF)
            {
               _loc2_ = int(displayableColumns.length);
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  visibleColumns.push(displayableColumns[_loc3_]);
                  _loc3_++;
               }
            }
            else
            {
               _loc2_ = int(displayableColumns.length);
               _loc9_ = 0;
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  _loc5_ = displayableColumns[_loc3_] as DataGridColumn;
                  if(_loc9_ + _loc5_.width > _horizontalScrollPosition && _loc9_ < _horizontalScrollPosition + availableWidth)
                  {
                     visibleColumns.push(_loc5_);
                  }
                  _loc9_ += _loc5_.width;
                  _loc3_++;
               }
            }
         }
         if(horizontalScrollPolicy == ScrollPolicy.OFF)
         {
            _loc10_ = 0;
            _loc11_ = 0;
            _loc2_ = int(visibleColumns.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc5_ = visibleColumns[_loc3_] as DataGridColumn;
               if(_loc5_.resizable)
               {
                  if(!isNaN(_loc5_.explicitWidth))
                  {
                     _loc11_ += _loc5_.width;
                  }
                  else
                  {
                     _loc10_++;
                     _loc11_ += _loc5_.minWidth;
                  }
               }
               else
               {
                  _loc11_ += _loc5_.width;
               }
               _loc4_ += _loc5_.width;
               _loc3_++;
            }
            _loc13_ = availableWidth;
            if(availableWidth > _loc11_ && Boolean(_loc10_))
            {
               _loc2_ = int(visibleColumns.length);
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  _loc5_ = visibleColumns[_loc3_] as DataGridColumn;
                  if(_loc5_.resizable && Boolean(isNaN(_loc5_.explicitWidth)))
                  {
                     _loc6_ = _loc5_;
                     if(_loc4_ > availableWidth)
                     {
                        _loc12_ = (_loc6_.width - _loc6_.minWidth) / (_loc4_ - _loc11_);
                     }
                     else
                     {
                        _loc12_ = _loc6_.width / _loc4_;
                     }
                     _loc7_ = _loc6_.width - (_loc4_ - availableWidth) * _loc12_;
                     _loc14_ = _loc5_.minWidth;
                     _loc5_.setWidth(Math.max(_loc7_,_loc14_));
                  }
                  _loc13_ -= _loc5_.width;
                  _loc3_++;
               }
               if(Boolean(_loc13_) && Boolean(_loc6_))
               {
                  _loc6_.setWidth(_loc6_.width + _loc13_);
               }
            }
            else
            {
               _loc2_ = int(visibleColumns.length);
               _loc3_ = 0;
               while(_loc3_ < _loc2_)
               {
                  _loc6_ = visibleColumns[_loc3_] as DataGridColumn;
                  _loc12_ = _loc6_.width / _loc4_;
                  _loc7_ = availableWidth * _loc12_;
                  _loc6_.setWidth(_loc7_);
                  _loc6_.explicitWidth = NaN;
                  _loc13_ -= _loc7_;
                  _loc3_++;
               }
               if(Boolean(_loc13_) && Boolean(_loc6_))
               {
                  _loc6_.setWidth(_loc6_.width + _loc13_);
               }
            }
         }
      }
      
      override protected function calculateContentWidth() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:DataGridColumn = null;
         if(_columns.length == 0)
         {
            contentWidth = 0;
            return;
         }
         if(minColumnWidthInvalid)
         {
            _loc1_ = int(_columns.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _columns[_loc2_] as DataGridColumn;
               _loc3_.minWidth = minColumnWidth;
               _loc2_++;
            }
            minColumnWidthInvalid = false;
         }
         if(horizontalScrollPolicy == ScrollPolicy.OFF)
         {
            contentWidth = availableWidth;
         }
         else
         {
            contentWidth = 0;
            _loc1_ = int(_columns.length);
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _columns[_loc2_] as DataGridColumn;
               if(_loc3_.visible)
               {
                  contentWidth += _loc3_.width;
               }
               _loc2_++;
            }
            if(!isNaN(_horizontalScrollPosition) && _horizontalScrollPosition + availableWidth > contentWidth)
            {
               setHorizontalScrollPosition(contentWidth - availableWidth);
            }
         }
      }
      
      protected function handleHeaderRendererClick(param1:MouseEvent) : void
      {
         var _loc5_:uint = 0;
         var _loc6_:DataGridEvent = null;
         if(!_enabled)
         {
            return;
         }
         var _loc2_:HeaderRenderer = param1.currentTarget as HeaderRenderer;
         var _loc3_:uint = _loc2_.column;
         var _loc4_:DataGridColumn = _columns[_loc3_] as DataGridColumn;
         if(sortableColumns && _loc4_.sortable)
         {
            _loc5_ = uint(_sortIndex);
            _sortIndex = _loc3_;
            _loc6_ = new DataGridEvent(DataGridEvent.HEADER_RELEASE,false,true,_loc3_,-1,_loc2_,_loc4_ ? _loc4_.dataField : null);
            if(!dispatchEvent(_loc6_) || !_selectable)
            {
               _sortIndex = lastSortIndex;
               return;
            }
            lastSortIndex = _loc5_;
            sortByColumn(_loc3_);
            invalidate(InvalidationType.DATA);
         }
      }
      
      public function resizeColumn(param1:int, param2:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:DataGridColumn = null;
         var _loc8_:DataGridColumn = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(_columns.length == 0)
         {
            return;
         }
         var _loc3_:DataGridColumn = _columns[param1] as DataGridColumn;
         if(!_loc3_)
         {
            return;
         }
         if(!visibleColumns || visibleColumns.length == 0)
         {
            _loc3_.setWidth(param2);
            return;
         }
         if(param2 < _loc3_.minWidth)
         {
            param2 = _loc3_.minWidth;
         }
         if(_horizontalScrollPolicy == ScrollPolicy.ON || _horizontalScrollPolicy == ScrollPolicy.AUTO)
         {
            _loc3_.setWidth(param2);
            _loc3_.explicitWidth = param2;
         }
         else
         {
            _loc4_ = getVisibleColumnIndex(_loc3_);
            if(_loc4_ != -1)
            {
               _loc5_ = 0;
               _loc6_ = int(visibleColumns.length);
               _loc9_ = _loc4_ + 1;
               while(_loc9_ < _loc6_)
               {
                  _loc7_ = visibleColumns[_loc9_] as DataGridColumn;
                  if((Boolean(_loc7_)) && _loc7_.resizable)
                  {
                     _loc5_ += _loc7_.width;
                  }
                  _loc9_++;
               }
               _loc11_ = _loc3_.width - param2 + _loc5_;
               if(_loc5_)
               {
                  _loc3_.setWidth(param2);
                  _loc3_.explicitWidth = param2;
               }
               _loc12_ = 0;
               _loc9_ = _loc4_ + 1;
               while(_loc9_ < _loc6_)
               {
                  _loc7_ = visibleColumns[_loc9_] as DataGridColumn;
                  if(_loc7_.resizable)
                  {
                     _loc10_ = _loc7_.width * _loc11_ / _loc5_;
                     if(_loc10_ < _loc7_.minWidth)
                     {
                        _loc10_ = _loc7_.minWidth;
                     }
                     _loc7_.setWidth(_loc10_);
                     _loc12_ += _loc7_.width;
                     _loc8_ = _loc7_;
                  }
                  _loc9_++;
               }
               if(_loc12_ > _loc11_)
               {
                  _loc10_ = _loc3_.width - _loc12_ + _loc11_;
                  if(_loc10_ < _loc3_.minWidth)
                  {
                     _loc10_ = _loc3_.minWidth;
                  }
                  _loc3_.setWidth(_loc10_);
               }
               else if(_loc8_)
               {
                  _loc8_.setWidth(_loc8_.width - _loc12_ + _loc11_);
               }
            }
            else
            {
               _loc3_.setWidth(param2);
               _loc3_.explicitWidth = param2;
            }
         }
         columnsInvalid = true;
         invalidate(InvalidationType.SIZE);
      }
      
      protected function sortByColumn(param1:int) : void
      {
         var _loc2_:DataGridColumn = columns[param1] as DataGridColumn;
         if(!enabled || !_loc2_ || !_loc2_.sortable)
         {
            return;
         }
         var _loc3_:Boolean = _loc2_.sortDescending;
         var _loc4_:uint = _loc2_.sortOptions;
         if(_loc3_)
         {
            _loc4_ |= Array.DESCENDING;
         }
         else
         {
            _loc4_ &= ~Array.DESCENDING;
         }
         if(_loc2_.sortCompareFunction != null)
         {
            sortItems(_loc2_.sortCompareFunction,_loc4_);
         }
         else
         {
            sortItemsOn(_loc2_.dataField,_loc4_);
         }
         _sortDescending = _loc2_.sortDescending = !_loc3_;
         if(lastSortIndex >= 0 && lastSortIndex != sortIndex)
         {
            _loc2_ = columns[lastSortIndex] as DataGridColumn;
            if(_loc2_ != null)
            {
               _loc2_.sortDescending = false;
            }
         }
      }
      
      protected function createColumnsFromDataProvider() : void
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         _columns = [];
         if(length > 0)
         {
            _loc1_ = _dataProvider.getItemAt(0);
            for(_loc2_ in _loc1_)
            {
               addColumn(_loc2_);
            }
         }
      }
      
      protected function getVisibleColumnIndex(param1:DataGridColumn) : int
      {
         var _loc2_:uint = 0;
         while(_loc2_ < visibleColumns.length)
         {
            if(param1 == visibleColumns[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      protected function handleHeaderResizeOver(param1:MouseEvent) : void
      {
         if(columnStretchIndex == -1)
         {
            showColumnStretchCursor();
         }
      }
      
      protected function handleHeaderResizeOut(param1:MouseEvent) : void
      {
         if(columnStretchIndex == -1)
         {
            showColumnStretchCursor(false);
         }
      }
      
      protected function handleHeaderResizeDown(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         var _loc3_:Number = Number(dragHandlesMap[_loc2_]);
         var _loc4_:DataGridColumn = getColumnAt(_loc3_);
         columnStretchIndex = _loc3_;
         columnStretchStartX = param1.stageX;
         columnStretchStartWidth = _loc4_.width;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,handleHeaderResizeMove,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,handleHeaderResizeUp,false,0,true);
      }
      
      protected function handleHeaderResizeMove(param1:MouseEvent) : void
      {
         var _loc2_:Number = param1.stageX - columnStretchStartX;
         var _loc3_:Number = columnStretchStartWidth + _loc2_;
         resizeColumn(columnStretchIndex,_loc3_);
      }
      
      protected function handleHeaderResizeUp(param1:MouseEvent) : void
      {
         var _loc4_:HeaderRenderer = null;
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         var _loc3_:DataGridColumn = _columns[columnStretchIndex] as DataGridColumn;
         var _loc5_:uint = 0;
         while(_loc5_ < header.numChildren)
         {
            _loc4_ = header.getChildAt(_loc5_) as HeaderRenderer;
            if((Boolean(_loc4_)) && _loc4_.column == columnStretchIndex)
            {
               break;
            }
            _loc5_++;
         }
         var _loc6_:DataGridEvent = new DataGridEvent(DataGridEvent.COLUMN_STRETCH,false,true,columnStretchIndex,-1,_loc4_,_loc3_ ? _loc3_.dataField : null);
         dispatchEvent(_loc6_);
         columnStretchIndex = -1;
         showColumnStretchCursor(false);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,handleHeaderResizeMove,false);
         stage.removeEventListener(MouseEvent.MOUSE_UP,handleHeaderResizeUp,false);
      }
      
      protected function showColumnStretchCursor(param1:Boolean = true) : void
      {
         if(columnStretchCursor == null)
         {
            columnStretchCursor = getDisplayObjectInstance(getStyleValue("columnStretchCursorSkin")) as Sprite;
            columnStretchCursor.mouseEnabled = false;
         }
         if(param1)
         {
            Mouse.hide();
            stage.addChild(columnStretchCursor);
            stage.addEventListener(MouseEvent.MOUSE_MOVE,positionColumnStretchCursor,false,0,true);
            columnStretchCursor.x = stage.mouseX;
            columnStretchCursor.y = stage.mouseY;
         }
         else
         {
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,positionColumnStretchCursor,false);
            if(stage.contains(columnStretchCursor))
            {
               stage.removeChild(columnStretchCursor);
            }
            Mouse.show();
         }
      }
      
      protected function positionColumnStretchCursor(param1:MouseEvent) : void
      {
         columnStretchCursor.x = param1.stageX;
         columnStretchCursor.y = param1.stageY;
      }
      
      protected function setEditedItemPosition(param1:Object) : void
      {
         editedItemPositionChanged = true;
         proposedEditedItemPosition = param1;
         if(Boolean(param1) && param1.rowIndex != selectedIndex)
         {
            selectedIndex = param1.rowIndex;
         }
         invalidate(InvalidationType.DATA);
      }
      
      protected function commitEditedItemPosition(param1:Object) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         if(!enabled || !editable)
         {
            return;
         }
         if(Boolean(itemEditorInstance && param1 && itemEditorInstance is IFocusManagerComponent) && Boolean(_editedItemPosition.rowIndex == param1.rowIndex) && _editedItemPosition.columnIndex == param1.columnIndex)
         {
            IFocusManagerComponent(itemEditorInstance).setFocus();
            return;
         }
         if(itemEditorInstance)
         {
            if(!param1)
            {
               _loc4_ = DataGridEventReason.OTHER;
            }
            else if(!editedItemPosition || param1.rowIndex == editedItemPosition.rowIndex)
            {
               _loc4_ = DataGridEventReason.NEW_COLUMN;
            }
            else
            {
               _loc4_ = DataGridEventReason.NEW_ROW;
            }
            if(!endEdit(_loc4_) && _loc4_ != DataGridEventReason.OTHER)
            {
               return;
            }
         }
         _editedItemPosition = param1;
         if(!param1)
         {
            return;
         }
         actualRowIndex = param1.rowIndex;
         actualColIndex = param1.columnIndex;
         if(displayableColumns.length != _columns.length)
         {
            _loc5_ = 0;
            while(_loc5_ < displayableColumns.length)
            {
               if(displayableColumns[_loc5_].colNum >= actualColIndex)
               {
                  actualColIndex = displayableColumns[_loc5_].colNum;
                  break;
               }
               _loc5_++;
            }
            if(_loc5_ == displayableColumns.length)
            {
               actualColIndex = 0;
            }
         }
         scrollToPosition(actualRowIndex,actualColIndex);
         var _loc2_:ICellRenderer = getCellRendererAt(actualRowIndex,actualColIndex);
         var _loc3_:DataGridEvent = new DataGridEvent(DataGridEvent.ITEM_EDIT_BEGIN,false,true,actualColIndex,actualRowIndex,_loc2_);
         dispatchEvent(_loc3_);
         if(editedItemPositionChanged)
         {
            editedItemPositionChanged = false;
            commitEditedItemPosition(proposedEditedItemPosition);
            proposedEditedItemPosition = undefined;
         }
         if(!itemEditorInstance)
         {
            commitEditedItemPosition(null);
         }
      }
      
      protected function itemEditorItemEditBeginningHandler(param1:DataGridEvent) : void
      {
         if(!param1.isDefaultPrevented())
         {
            setEditedItemPosition({
               "columnIndex":param1.columnIndex,
               "rowIndex":uint(param1.rowIndex)
            });
         }
         else if(!itemEditorInstance)
         {
            _editedItemPosition = null;
            editable = false;
            setFocus();
            editable = true;
         }
      }
      
      protected function itemEditorItemEditBeginHandler(param1:DataGridEvent) : void
      {
         var _loc2_:IFocusManager = null;
         if(stage)
         {
            stage.addEventListener(Event.DEACTIVATE,deactivateHandler,false,0,true);
         }
         if(!param1.isDefaultPrevented())
         {
            createItemEditor(param1.columnIndex,uint(param1.rowIndex));
            ICellRenderer(itemEditorInstance).listData = ICellRenderer(editedItemRenderer).listData;
            ICellRenderer(itemEditorInstance).data = editedItemRenderer.data;
            itemEditorInstance.imeMode = columns[param1.columnIndex].imeMode == null ? _imeMode : columns[param1.columnIndex].imeMode;
            _loc2_ = focusManager;
            if(itemEditorInstance is IFocusManagerComponent)
            {
               _loc2_.setFocus(InteractiveObject(itemEditorInstance));
            }
            _loc2_.defaultButtonEnabled = false;
            param1 = new DataGridEvent(DataGridEvent.ITEM_FOCUS_IN,false,false,_editedItemPosition.columnIndex,_editedItemPosition.rowIndex,itemEditorInstance);
            dispatchEvent(param1);
         }
      }
      
      protected function itemEditorItemEditEndHandler(param1:DataGridEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:XML = null;
         var _loc8_:IFocusManager = null;
         if(!param1.isDefaultPrevented())
         {
            _loc2_ = false;
            if(Boolean(itemEditorInstance) && param1.reason != DataGridEventReason.CANCELLED)
            {
               _loc3_ = itemEditorInstance[_columns[param1.columnIndex].editorDataField];
               _loc4_ = _columns[param1.columnIndex].dataField;
               _loc5_ = param1.itemRenderer.data;
               _loc6_ = "";
               for each(_loc7_ in describeType(_loc5_).variable)
               {
                  if(_loc4_ == _loc7_.@name.toString())
                  {
                     _loc6_ = _loc7_.@type.toString();
                     break;
                  }
               }
               switch(_loc6_)
               {
                  case "String":
                     if(!(_loc3_ is String))
                     {
                        _loc3_ = _loc3_.toString();
                     }
                     break;
                  case "uint":
                     if(!(_loc3_ is uint))
                     {
                        _loc3_ = uint(_loc3_);
                     }
                     break;
                  case "int":
                     if(!(_loc3_ is int))
                     {
                        _loc3_ = int(_loc3_);
                     }
                     break;
                  case "Number":
                     if(!(_loc3_ is Number))
                     {
                        _loc3_ = Number(_loc3_);
                     }
               }
               if(_loc5_[_loc4_] != _loc3_)
               {
                  _loc2_ = true;
                  _loc5_[_loc4_] = _loc3_;
               }
               param1.itemRenderer.data = _loc5_;
            }
         }
         else if(param1.reason != DataGridEventReason.OTHER)
         {
            if(Boolean(itemEditorInstance) && Boolean(_editedItemPosition))
            {
               if(selectedIndex != _editedItemPosition.rowIndex)
               {
                  selectedIndex = _editedItemPosition.rowIndex;
               }
               _loc8_ = focusManager;
               if(itemEditorInstance is IFocusManagerComponent)
               {
                  _loc8_.setFocus(InteractiveObject(itemEditorInstance));
               }
            }
         }
         if(param1.reason == DataGridEventReason.OTHER || !param1.isDefaultPrevented())
         {
            destroyItemEditor();
         }
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:DataGridColumn = null;
         if(param1.target != this)
         {
            return;
         }
         if(losingFocus)
         {
            losingFocus = false;
            return;
         }
         setIMEMode(true);
         super.focusInHandler(param1);
         if(editable && !isPressed)
         {
            _loc2_ = editedItemPosition != null;
            if(!_editedItemPosition)
            {
               _editedItemPosition = {
                  "rowIndex":0,
                  "columnIndex":0
               };
               while(_editedItemPosition.columnIndex < _columns.length)
               {
                  _loc3_ = _columns[_editedItemPosition.columnIndex] as DataGridColumn;
                  if(_loc3_.editable && _loc3_.visible)
                  {
                     _loc2_ = true;
                     break;
                  }
                  ++_editedItemPosition.columnIndex;
               }
            }
            if(_loc2_)
            {
               setEditedItemPosition(_editedItemPosition);
            }
         }
         if(editable)
         {
            addEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
            addEventListener(MouseEvent.MOUSE_DOWN,mouseFocusChangeHandler);
         }
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         setIMEMode(false);
         if(param1.target == this)
         {
            super.focusOutHandler(param1);
         }
         if(param1.relatedObject == this && itemRendererContains(itemEditorInstance,DisplayObject(param1.target)))
         {
            return;
         }
         if(param1.relatedObject == null && itemRendererContains(editedItemRenderer,DisplayObject(param1.target)))
         {
            return;
         }
         if(param1.relatedObject == null && itemRendererContains(itemEditorInstance,DisplayObject(param1.target)))
         {
            return;
         }
         if(Boolean(itemEditorInstance) && (!param1.relatedObject || !itemRendererContains(itemEditorInstance,param1.relatedObject)))
         {
            endEdit(DataGridEventReason.OTHER);
            removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,keyFocusChangeHandler);
            removeEventListener(MouseEvent.MOUSE_DOWN,mouseFocusChangeHandler);
         }
      }
      
      protected function editorMouseDownHandler(param1:MouseEvent) : void
      {
         var _loc2_:ICellRenderer = null;
         var _loc3_:uint = 0;
         if(!itemRendererContains(itemEditorInstance,DisplayObject(param1.target)))
         {
            if(param1.target is ICellRenderer && Boolean(contains(DisplayObject(param1.target))))
            {
               _loc2_ = param1.target as ICellRenderer;
               _loc3_ = _loc2_.listData.row;
               if(_editedItemPosition.rowIndex == _loc3_)
               {
                  endEdit(DataGridEventReason.NEW_COLUMN);
               }
               else
               {
                  endEdit(DataGridEventReason.NEW_ROW);
               }
            }
            else
            {
               endEdit(DataGridEventReason.OTHER);
            }
         }
      }
      
      protected function editorKeyDownHandler(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            endEdit(DataGridEventReason.CANCELLED);
         }
         else if(Boolean(param1.ctrlKey) && param1.charCode == 46)
         {
            endEdit(DataGridEventReason.CANCELLED);
         }
         else if(param1.charCode == Keyboard.ENTER && param1.keyCode != 229)
         {
            if(endEdit(DataGridEventReason.NEW_ROW))
            {
               findNextEnterItemRenderer(param1);
            }
         }
      }
      
      protected function findNextItemRenderer(param1:Boolean) : Boolean
      {
         var _loc7_:String = null;
         var _loc8_:DataGridEvent = null;
         if(!_editedItemPosition)
         {
            return false;
         }
         if(proposedEditedItemPosition !== undefined)
         {
            return false;
         }
         var _loc2_:int = int(_editedItemPosition.rowIndex);
         var _loc3_:int = int(_editedItemPosition.columnIndex);
         var _loc4_:Boolean = false;
         var _loc5_:int = param1 ? -1 : 1;
         var _loc6_:int = length - 1;
         while(!_loc4_)
         {
            _loc3_ += _loc5_;
            if(_loc3_ < 0 || _loc3_ >= _columns.length)
            {
               _loc3_ = _loc3_ < 0 ? int(_columns.length - 1) : 0;
               _loc2_ += _loc5_;
               if(_loc2_ < 0 || _loc2_ > _loc6_)
               {
                  setEditedItemPosition(null);
                  losingFocus = true;
                  setFocus();
                  return false;
               }
            }
            if(Boolean(_columns[_loc3_].editable) && Boolean(_columns[_loc3_].visible))
            {
               _loc4_ = true;
               if(_loc2_ == _editedItemPosition.rowIndex)
               {
                  _loc7_ = DataGridEventReason.NEW_COLUMN;
               }
               else
               {
                  _loc7_ = DataGridEventReason.NEW_ROW;
               }
               if(!itemEditorInstance || endEdit(_loc7_))
               {
                  _loc8_ = new DataGridEvent(DataGridEvent.ITEM_EDIT_BEGINNING,false,true,_loc3_,_loc2_);
                  _loc8_.dataField = _columns[_loc3_].dataField;
                  dispatchEvent(_loc8_);
               }
            }
         }
         return _loc4_;
      }
      
      protected function findNextEnterItemRenderer(param1:KeyboardEvent) : void
      {
         if(proposedEditedItemPosition !== undefined)
         {
            return;
         }
         var _loc2_:int = int(_editedItemPosition.rowIndex);
         var _loc3_:int = int(_editedItemPosition.columnIndex);
         var _loc4_:int = _editedItemPosition.rowIndex + (param1.shiftKey ? -1 : 1);
         if(_loc4_ >= 0 && _loc4_ < length)
         {
            _loc2_ = _loc4_;
         }
         var _loc5_:DataGridEvent = new DataGridEvent(DataGridEvent.ITEM_EDIT_BEGINNING,false,true,_loc3_,_loc2_);
         _loc5_.dataField = _columns[_loc3_].dataField;
         dispatchEvent(_loc5_);
      }
      
      protected function mouseFocusChangeHandler(param1:MouseEvent) : void
      {
         if(Boolean(itemEditorInstance) && Boolean(!param1.isDefaultPrevented()) && itemRendererContains(itemEditorInstance,DisplayObject(param1.target)))
         {
            param1.preventDefault();
         }
      }
      
      protected function keyFocusChangeHandler(param1:FocusEvent) : void
      {
         if(param1.keyCode == Keyboard.TAB && !param1.isDefaultPrevented() && findNextItemRenderer(param1.shiftKey))
         {
            param1.preventDefault();
         }
      }
      
      private function itemEditorFocusOutHandler(param1:FocusEvent) : void
      {
         if(Boolean(param1.relatedObject) && Boolean(contains(param1.relatedObject)))
         {
            return;
         }
         if(!param1.relatedObject)
         {
            return;
         }
         if(itemEditorInstance)
         {
            endEdit(DataGridEventReason.OTHER);
         }
      }
      
      protected function deactivateHandler(param1:Event) : void
      {
         if(itemEditorInstance)
         {
            endEdit(DataGridEventReason.OTHER);
            losingFocus = true;
            setFocus();
         }
      }
      
      protected function mouseDownHandler(param1:MouseEvent) : void
      {
         if(!enabled || !selectable)
         {
            return;
         }
         isPressed = true;
      }
      
      protected function mouseUpHandler(param1:MouseEvent) : void
      {
         if(!enabled || !selectable)
         {
            return;
         }
         isPressed = false;
      }
      
      override protected function handleCellRendererClick(param1:MouseEvent) : void
      {
         var _loc3_:DataGridColumn = null;
         var _loc4_:DataGridEvent = null;
         super.handleCellRendererClick(param1);
         var _loc2_:ICellRenderer = param1.currentTarget as ICellRenderer;
         if(Boolean(_loc2_) && Boolean(_loc2_.data) && _loc2_ != itemEditorInstance)
         {
            _loc3_ = _columns[_loc2_.listData.column] as DataGridColumn;
            if(Boolean(editable) && Boolean(_loc3_) && _loc3_.editable)
            {
               _loc4_ = new DataGridEvent(DataGridEvent.ITEM_EDIT_BEGINNING,false,true,_loc2_.listData.column,_loc2_.listData.row,_loc2_,_loc3_.dataField);
               dispatchEvent(_loc4_);
            }
         }
      }
      
      public function createItemEditor(param1:uint, param2:uint) : void
      {
         var _loc6_:int = 0;
         if(displayableColumns.length != _columns.length)
         {
            _loc6_ = 0;
            while(_loc6_ < displayableColumns.length)
            {
               if(displayableColumns[_loc6_].colNum >= param1)
               {
                  param1 = uint(displayableColumns[_loc6_].colNum);
                  break;
               }
               _loc6_++;
            }
            if(_loc6_ == displayableColumns.length)
            {
               param1 = 0;
            }
         }
         var _loc3_:DataGridColumn = _columns[param1] as DataGridColumn;
         var _loc4_:ICellRenderer = getCellRendererAt(param2,param1);
         if(!itemEditorInstance)
         {
            itemEditorInstance = getDisplayObjectInstance(_loc3_.itemEditor);
            itemEditorInstance.tabEnabled = false;
            list.addChild(DisplayObject(itemEditorInstance));
         }
         list.setChildIndex(DisplayObject(itemEditorInstance),list.numChildren - 1);
         var _loc5_:Sprite = _loc4_ as Sprite;
         itemEditorInstance.visible = true;
         itemEditorInstance.move(_loc5_.x,_loc5_.y);
         itemEditorInstance.setSize(_loc3_.width,rowHeight);
         itemEditorInstance.drawNow();
         DisplayObject(itemEditorInstance).addEventListener(FocusEvent.FOCUS_OUT,itemEditorFocusOutHandler);
         _loc5_.visible = false;
         DisplayObject(itemEditorInstance).addEventListener(KeyboardEvent.KEY_DOWN,editorKeyDownHandler);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,editorMouseDownHandler,true,0,true);
      }
      
      public function destroyItemEditor() : void
      {
         var _loc1_:DataGridEvent = null;
         if(itemEditorInstance)
         {
            DisplayObject(itemEditorInstance).removeEventListener(KeyboardEvent.KEY_DOWN,editorKeyDownHandler);
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,editorMouseDownHandler,true);
            _loc1_ = new DataGridEvent(DataGridEvent.ITEM_FOCUS_OUT,false,false,_editedItemPosition.columnIndex,_editedItemPosition.rowIndex,itemEditorInstance);
            dispatchEvent(_loc1_);
            if(Boolean(itemEditorInstance) && itemEditorInstance is UIComponent)
            {
               UIComponent(itemEditorInstance).drawFocus(false);
            }
            list.removeChild(DisplayObject(itemEditorInstance));
            DisplayObject(editedItemRenderer).visible = true;
            itemEditorInstance = null;
         }
      }
      
      protected function endEdit(param1:String) : Boolean
      {
         if(!editedItemRenderer)
         {
            return true;
         }
         var _loc2_:DataGridEvent = new DataGridEvent(DataGridEvent.ITEM_EDIT_END,false,true,editedItemPosition.columnIndex,editedItemPosition.rowIndex,editedItemRenderer,_columns[editedItemPosition.columnIndex].dataField,param1);
         dispatchEvent(_loc2_);
         return !_loc2_.isDefaultPrevented();
      }
      
      public function getCellRendererAt(param1:uint, param2:uint) : ICellRenderer
      {
         var _loc4_:Array = null;
         var _loc5_:uint = 0;
         var _loc6_:ICellRenderer = null;
         var _loc3_:DataGridColumn = _columns[param2] as DataGridColumn;
         if(_loc3_ != null)
         {
            _loc4_ = activeCellRenderersMap[_loc3_] as Array;
            if(_loc4_ != null)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length)
               {
                  _loc6_ = _loc4_[_loc5_] as ICellRenderer;
                  if(_loc6_.listData.row == param1)
                  {
                     return _loc6_;
                  }
                  _loc5_++;
               }
            }
         }
         return null;
      }
      
      protected function itemRendererContains(param1:Object, param2:DisplayObject) : Boolean
      {
         if(!param2 || !param1 || !(param1 is DisplayObjectContainer))
         {
            return false;
         }
         return DisplayObjectContainer(param1).contains(param2);
      }
      
      override protected function handleDataChange(param1:DataChangeEvent) : void
      {
         super.handleDataChange(param1);
         if(_columns == null)
         {
            _columns = [];
         }
         if(_columns.length == 0)
         {
            createColumnsFromDataProvider();
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(!selectable || Boolean(itemEditorInstance))
         {
            return;
         }
         switch(param1.keyCode)
         {
            case Keyboard.UP:
            case Keyboard.DOWN:
            case Keyboard.END:
            case Keyboard.HOME:
            case Keyboard.PAGE_UP:
            case Keyboard.PAGE_DOWN:
               moveSelectionVertically(param1.keyCode,Boolean(param1.shiftKey) && _allowMultipleSelection,Boolean(param1.ctrlKey) && _allowMultipleSelection);
               break;
            case Keyboard.LEFT:
            case Keyboard.RIGHT:
               moveSelectionHorizontally(param1.keyCode,Boolean(param1.shiftKey) && _allowMultipleSelection,Boolean(param1.ctrlKey) && _allowMultipleSelection);
               break;
            case Keyboard.SPACE:
               if(caretIndex == -1)
               {
                  caretIndex = 0;
               }
               scrollToIndex(caretIndex);
               doKeySelection(caretIndex,param1.shiftKey,param1.ctrlKey);
         }
         param1.stopPropagation();
      }
      
      override protected function moveSelectionHorizontally(param1:uint, param2:Boolean, param3:Boolean) : void
      {
      }
      
      override protected function moveSelectionVertically(param1:uint, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:int = int(Math.max(Math.floor(calculateAvailableHeight() / rowHeight),1));
         var _loc5_:int = -1;
         switch(param1)
         {
            case Keyboard.UP:
               if(caretIndex > 0)
               {
                  _loc5_ = caretIndex - 1;
               }
               break;
            case Keyboard.DOWN:
               if(caretIndex < length - 1)
               {
                  _loc5_ = caretIndex + 1;
               }
               break;
            case Keyboard.PAGE_UP:
               if(caretIndex > 0)
               {
                  _loc5_ = int(Math.max(caretIndex - _loc4_,0));
               }
               break;
            case Keyboard.PAGE_DOWN:
               if(caretIndex < length - 1)
               {
                  _loc5_ = int(Math.min(caretIndex + _loc4_,length - 1));
               }
               break;
            case Keyboard.HOME:
               if(caretIndex > 0)
               {
                  _loc5_ = 0;
               }
               break;
            case Keyboard.END:
               if(caretIndex < length - 1)
               {
                  _loc5_ = length - 1;
               }
         }
         if(_loc5_ >= 0)
         {
            doKeySelection(_loc5_,param2,param3);
            scrollToSelected();
         }
      }
      
      override public function scrollToIndex(param1:int) : void
      {
         var _loc4_:Number = NaN;
         drawNow();
         var _loc2_:int = Math.floor((_verticalScrollPosition + availableHeight) / rowHeight) - 1;
         var _loc3_:int = int(Math.ceil(_verticalScrollPosition / rowHeight));
         if(param1 < _loc3_)
         {
            verticalScrollPosition = param1 * rowHeight;
         }
         else if(param1 >= _loc2_)
         {
            _loc4_ = _horizontalScrollPolicy == ScrollPolicy.ON || _horizontalScrollPolicy == ScrollPolicy.AUTO && hScrollBar ? 15 : 0;
            verticalScrollPosition = (param1 + 1) * rowHeight - availableHeight + _loc4_ + (showHeaders ? headerHeight : 0);
         }
      }
      
      protected function scrollToPosition(param1:int, param2:int) : void
      {
         var _loc5_:uint = 0;
         var _loc8_:DataGridColumn = null;
         var _loc3_:Number = verticalScrollPosition;
         var _loc4_:Number = horizontalScrollPosition;
         scrollToIndex(param1);
         var _loc6_:Number = 0;
         var _loc7_:DataGridColumn = _columns[param2] as DataGridColumn;
         _loc5_ = 0;
         while(_loc5_ < displayableColumns.length)
         {
            _loc8_ = displayableColumns[_loc5_] as DataGridColumn;
            if(_loc8_ == _loc7_)
            {
               break;
            }
            _loc6_ += _loc8_.width;
            _loc5_++;
         }
         if(horizontalScrollPosition > _loc6_)
         {
            horizontalScrollPosition = _loc6_;
         }
         else if(horizontalScrollPosition + availableWidth < _loc6_ + _loc7_.width)
         {
            horizontalScrollPosition = -(availableWidth - (_loc6_ + _loc7_.width));
         }
         if(_loc3_ != verticalScrollPosition || _loc4_ != horizontalScrollPosition)
         {
            drawNow();
         }
      }
      
      protected function doKeySelection(param1:int, param2:Boolean, param3:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc4_:Boolean = false;
         if(param2)
         {
            _loc6_ = [];
            _loc7_ = lastCaretIndex;
            _loc8_ = param1;
            if(_loc7_ == -1)
            {
               _loc7_ = caretIndex != -1 ? caretIndex : param1;
            }
            if(_loc7_ > _loc8_)
            {
               _loc8_ = _loc7_;
               _loc7_ = param1;
            }
            _loc5_ = _loc7_;
            while(_loc5_ <= _loc8_)
            {
               _loc6_.push(_loc5_);
               _loc5_++;
            }
            selectedIndices = _loc6_;
            caretIndex = param1;
            _loc4_ = true;
         }
         else if(param3)
         {
            caretIndex = param1;
         }
         else
         {
            selectedIndex = param1;
            caretIndex = lastCaretIndex = param1;
            _loc4_ = true;
         }
         if(_loc4_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         invalidate(InvalidationType.DATA);
      }
      
      override protected function initializeAccessibility() : void
      {
         if(DataGrid.createAccessibilityImplementation != null)
         {
            DataGrid.createAccessibilityImplementation(this);
         }
      }
   }
}

