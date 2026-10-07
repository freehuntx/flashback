package test187c_fla
{
   import adobe.utils.*;
   import fl.controls.DataGrid;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.engine.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class joingamewindow_104 extends MovieClip
   {
      
      public var modetext:TextField;
      
      public var fullbutton:SimpleButton;
      
      public var passtick:MovieClip;
      
      public var buttonJoin:SimpleButton;
      
      public var modebutton:SimpleButton;
      
      public var fulltick:MovieClip;
      
      public var roomList:DataGrid;
      
      public var buttonGetRoomList:SimpleButton;
      
      public var joingamebackbutton:SimpleButton;
      
      public var passbutton:SimpleButton;
      
      public var nogamestext:TextField;
      
      public var buttonCreateGame:SimpleButton;
      
      public function joingamewindow_104()
      {
         super();
         this.__setProp_roomList_joingamewindow_Layer1_0();
      }
      
      internal function __setProp_roomList_joingamewindow_Layer1_0() : *
      {
         try
         {
            this.roomList["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.roomList.allowMultipleSelection = false;
         this.roomList.editable = false;
         this.roomList.headerHeight = 25;
         this.roomList.horizontalLineScrollSize = 4;
         this.roomList.horizontalPageScrollSize = 0;
         this.roomList.horizontalScrollPolicy = "off";
         this.roomList.resizableColumns = false;
         this.roomList.rowHeight = 20;
         this.roomList.showHeaders = true;
         this.roomList.sortableColumns = true;
         this.roomList.verticalLineScrollSize = 4;
         this.roomList.verticalPageScrollSize = 0;
         this.roomList.verticalScrollPolicy = "auto";
         try
         {
            this.roomList["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

