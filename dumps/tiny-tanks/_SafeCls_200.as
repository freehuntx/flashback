package
{
   import adobe.utils.*;
   import fl.controls.Slider;
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
   
   public dynamic class _SafeCls_200 extends MovieClip
   {
      
      public var toptext:TextField;
      
      public var skillnametext:TextField;
      
      public var backbutton:SimpleButton;
      
      public var settingslider:Slider;
      
      public var removebutton:SimpleButton;
      
      public var okbutton:SimpleButton;
      
      public function _SafeCls_200()
      {
         super();
         this.__setProp_settingslider_aisettingswindow_Layer1_0();
      }
      
      internal function __setProp_settingslider_aisettingswindow_Layer1_0() : *
      {
         try
         {
            this.settingslider["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.settingslider.direction = "horizontal";
         this.settingslider.enabled = true;
         this.settingslider.liveDragging = true;
         this.settingslider.maximum = 4;
         this.settingslider.minimum = 0;
         this.settingslider.snapInterval = 1;
         this.settingslider.tickInterval = 1;
         this.settingslider.value = 2;
         this.settingslider.visible = true;
         try
         {
            this.settingslider["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_200 = "_-dl"
 */
