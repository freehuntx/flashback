class mx.skins.halo.Defaults
{
   var beginFill;
   var beginGradientFill;
   var curveTo;
   var endFill;
   var lineTo;
   var moveTo;
   static var classConstructed = mx.skins.halo.Defaults.classConstruct();
   static var CSSStyleDeclarationDependency = mx.styles.CSSStyleDeclaration;
   static var UIObjectExtensionsDependency = mx.core.ext.UIObjectExtensions;
   static var UIObjectDependency = mx.core.UIObject;
   function Defaults()
   {
   }
   static function setThemeDefaults()
   {
      var _loc2_ = _global.style;
      _loc2_.themeColor = 8453965;
      _loc2_.disabledColor = 8684164;
      _loc2_.modalTransparency = 0;
      _loc2_.filled = true;
      _loc2_.stroked = true;
      _loc2_.strokeWidth = 1;
      _loc2_.strokeColor = 0;
      _loc2_.fillColor = 16777215;
      _loc2_.repeatInterval = 35;
      _loc2_.repeatDelay = 500;
      _loc2_.fontFamily = "_sans";
      _loc2_.fontSize = 12;
      _loc2_.selectionColor = 13500353;
      _loc2_.rollOverColor = 14942166;
      _loc2_.useRollOver = true;
      _loc2_.backgroundDisabledColor = 14540253;
      _loc2_.selectionDisabledColor = 14540253;
      _loc2_.selectionDuration = 200;
      _loc2_.openDuration = 250;
      _loc2_.borderStyle = "inset";
      _loc2_.color = 734012;
      _loc2_.textSelectedColor = 24371;
      _loc2_.textRollOverColor = 2831164;
      _loc2_.textDisabledColor = 16777215;
      _loc2_.vGridLines = true;
      _loc2_.hGridLines = false;
      _loc2_.vGridLineColor = 6710886;
      _loc2_.hGridLineColor = 6710886;
      _loc2_.headerColor = 15395562;
      _loc2_.indentation = 17;
      _loc2_.folderOpenIcon = "TreeFolderOpen";
      _loc2_.folderClosedIcon = "TreeFolderClosed";
      _loc2_.defaultLeafIcon = "TreeNodeIcon";
      _loc2_.disclosureOpenIcon = "TreeDisclosureOpen";
      _loc2_.disclosureClosedIcon = "TreeDisclosureClosed";
      _loc2_.popupDuration = 150;
      _loc2_.todayColor = 6710886;
      var _loc0_;
      _loc2_ = _global.styles.ScrollSelectList = new mx.styles.CSSStyleDeclaration();
      _loc2_.backgroundColor = 16777215;
      _loc2_.borderColor = 13290186;
      _loc2_.borderStyle = "inset";
      _loc2_ = _global.styles.ComboBox = new mx.styles.CSSStyleDeclaration();
      _loc2_.borderStyle = "inset";
      _loc2_ = _global.styles.NumericStepper = new mx.styles.CSSStyleDeclaration();
      _loc2_.textAlign = "center";
      _loc2_ = _global.styles.RectBorder = new mx.styles.CSSStyleDeclaration();
      _loc2_.borderColor = 14015965;
      _loc2_.buttonColor = 7305079;
      _loc2_.shadowColor = 15658734;
      _loc2_.highlightColor = 12897484;
      _loc2_.shadowCapColor = 14015965;
      _loc2_.borderCapColor = 9542041;
      var _loc4_ = new Object();
      _loc4_.borderColor = 16711680;
      _loc4_.buttonColor = 16711680;
      _loc4_.shadowColor = 16711680;
      _loc4_.highlightColor = 16711680;
      _loc4_.shadowCapColor = 16711680;
      _loc4_.borderCapColor = 16711680;
      mx.core.UIComponent.prototype.origBorderStyles = _loc4_;
      var _loc3_;
      _loc3_ = _global.styles.TextInput = new mx.styles.CSSStyleDeclaration();
      _loc3_.backgroundColor = 16777215;
      _loc3_.borderStyle = "inset";
      _global.styles.TextArea = _global.styles.TextInput;
      _loc3_ = _global.styles.Window = new mx.styles.CSSStyleDeclaration();
      _loc3_.borderStyle = "default";
      _loc3_ = _global.styles.windowStyles = new mx.styles.CSSStyleDeclaration();
      _loc3_.fontWeight = "bold";
      _loc3_ = _global.styles.dataGridStyles = new mx.styles.CSSStyleDeclaration();
      _loc3_.fontWeight = "bold";
      _loc3_ = _global.styles.Alert = new mx.styles.CSSStyleDeclaration();
      _loc3_.borderStyle = "alert";
      _loc3_ = _global.styles.ScrollView = new mx.styles.CSSStyleDeclaration();
      _loc3_.borderStyle = "inset";
      _loc3_ = _global.styles.View = new mx.styles.CSSStyleDeclaration();
      _loc3_.borderStyle = "none";
      _loc3_ = _global.styles.ProgressBar = new mx.styles.CSSStyleDeclaration();
      _loc3_.color = 11187123;
      _loc3_.fontWeight = "bold";
      _loc3_ = _global.styles.AccordionHeader = new mx.styles.CSSStyleDeclaration();
      _loc3_.fontWeight = "bold";
      _loc3_.fontSize = "11";
      _loc3_ = _global.styles.Accordion = new mx.styles.CSSStyleDeclaration();
      _loc3_.borderStyle = "solid";
      _loc3_.backgroundColor = 16777215;
      _loc3_.borderColor = 9081738;
      _loc3_.headerHeight = 22;
      _loc3_.marginTop = _loc3_.marginBottom = -1;
      _loc3_.marginRight = _loc3_.marginBottom = -1;
      _loc3_.marginLeft = _loc3_.marginBottom = -1;
      _loc3_.verticalGap = -1;
      _loc3_ = _global.styles.DateChooser = new mx.styles.CSSStyleDeclaration();
      _loc3_.borderColor = 9542041;
      _loc3_.headerColor = 16777215;
      _loc3_ = _global.styles.CalendarLayout = new mx.styles.CSSStyleDeclaration();
      _loc3_.fontSize = 10;
      _loc3_.textAlign = "right";
      _loc3_.color = 2831164;
      _loc3_ = _global.styles.WeekDayStyle = new mx.styles.CSSStyleDeclaration();
      _loc3_.fontWeight = "bold";
      _loc3_.fontSize = 11;
      _loc3_.textAlign = "center";
      _loc3_.color = 2831164;
      _loc3_ = _global.styles.TodayStyle = new mx.styles.CSSStyleDeclaration();
      _loc3_.color = 16777215;
      _loc3_ = _global.styles.HeaderDateText = new mx.styles.CSSStyleDeclaration();
      _loc3_.fontSize = 12;
      _loc3_.fontWeight = "bold";
      _loc3_.textAlign = "center";
   }
   function drawRoundRect(_loc4_, _loc3_, _loc6_, _loc5_, _loc2_, _loc7_, _loc8_, _loc19_, _loc21_, _loc17_)
   {
      var _loc18_;
      var _loc16_;
      var _loc15_;
      var _loc10_;
      if(typeof _loc2_ == "object")
      {
         _loc18_ = _loc2_.br;
         _loc16_ = _loc2_.bl;
         _loc15_ = _loc2_.tl;
         _loc10_ = _loc2_.tr;
      }
      else
      {
         _loc18_ = _loc16_ = _loc15_ = _loc10_ = _loc2_;
      }
      var _loc9_;
      var _loc14_;
      var _loc11_;
      if(typeof _loc7_ == "object")
      {
         if(typeof _loc8_ != "object")
         {
            _loc9_ = [_loc8_,_loc8_];
         }
         else
         {
            _loc9_ = _loc8_;
         }
         if(_loc17_ == undefined)
         {
            _loc17_ = [0,255];
         }
         _loc14_ = _loc5_ * 0.7;
         if(typeof _loc19_ != "object")
         {
            _loc11_ = {matrixType:"box",x:- _loc14_,y:_loc14_,w:_loc6_ * 2,h:_loc5_ * 4,r:_loc19_ * 0.0174532925199433};
         }
         else
         {
            _loc11_ = _loc19_;
         }
         if(_loc21_ == "radial")
         {
            this.beginGradientFill("radial",_loc7_,_loc9_,_loc17_,_loc11_);
         }
         else
         {
            this.beginGradientFill("linear",_loc7_,_loc9_,_loc17_,_loc11_);
         }
      }
      else if(_loc7_ != undefined)
      {
         this.beginFill(_loc7_,_loc8_);
      }
      _loc2_ = _loc18_;
      var _loc13_ = _loc2_ - _loc2_ * 0.707106781186547;
      var _loc12_ = _loc2_ - _loc2_ * 0.414213562373095;
      this.moveTo(_loc4_ + _loc6_,_loc3_ + _loc5_ - _loc2_);
      this.lineTo(_loc4_ + _loc6_,_loc3_ + _loc5_ - _loc2_);
      this.curveTo(_loc4_ + _loc6_,_loc3_ + _loc5_ - _loc12_,_loc4_ + _loc6_ - _loc13_,_loc3_ + _loc5_ - _loc13_);
      this.curveTo(_loc4_ + _loc6_ - _loc12_,_loc3_ + _loc5_,_loc4_ + _loc6_ - _loc2_,_loc3_ + _loc5_);
      _loc2_ = _loc16_;
      _loc13_ = _loc2_ - _loc2_ * 0.707106781186547;
      _loc12_ = _loc2_ - _loc2_ * 0.414213562373095;
      this.lineTo(_loc4_ + _loc2_,_loc3_ + _loc5_);
      this.curveTo(_loc4_ + _loc12_,_loc3_ + _loc5_,_loc4_ + _loc13_,_loc3_ + _loc5_ - _loc13_);
      this.curveTo(_loc4_,_loc3_ + _loc5_ - _loc12_,_loc4_,_loc3_ + _loc5_ - _loc2_);
      _loc2_ = _loc15_;
      _loc13_ = _loc2_ - _loc2_ * 0.707106781186547;
      _loc12_ = _loc2_ - _loc2_ * 0.414213562373095;
      this.lineTo(_loc4_,_loc3_ + _loc2_);
      this.curveTo(_loc4_,_loc3_ + _loc12_,_loc4_ + _loc13_,_loc3_ + _loc13_);
      this.curveTo(_loc4_ + _loc12_,_loc3_,_loc4_ + _loc2_,_loc3_);
      _loc2_ = _loc10_;
      _loc13_ = _loc2_ - _loc2_ * 0.707106781186547;
      _loc12_ = _loc2_ - _loc2_ * 0.414213562373095;
      this.lineTo(_loc4_ + _loc6_ - _loc2_,_loc3_);
      this.curveTo(_loc4_ + _loc6_ - _loc12_,_loc3_,_loc4_ + _loc6_ - _loc13_,_loc3_ + _loc13_);
      this.curveTo(_loc4_ + _loc6_,_loc3_ + _loc12_,_loc4_ + _loc6_,_loc3_ + _loc2_);
      this.lineTo(_loc4_ + _loc6_,_loc3_ + _loc5_ - _loc2_);
      if(_loc7_ != undefined)
      {
         this.endFill();
      }
   }
   static function classConstruct()
   {
      mx.core.ext.UIObjectExtensions.Extensions();
      mx.skins.halo.Defaults.setThemeDefaults();
      mx.core.UIObject.prototype.drawRoundRect = mx.skins.halo.Defaults.prototype.drawRoundRect;
      return true;
   }
}
