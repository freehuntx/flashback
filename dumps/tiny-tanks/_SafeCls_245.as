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
   
   public dynamic class _SafeCls_245 extends MovieClip
   {
      
      public var settingvaluetext:TextField;
      
      public var settingnametext:TextField;
      
      public var settingslider:Slider;
      
      public var okbutton:SimpleButton;
      
      public function _SafeCls_245()
      {
         super();
         this.__setProp_settingslider_settingeditwindow_Layer1_0();
      }
      
      internal function __setProp_settingslider_settingeditwindow_Layer1_0() : *
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
         this.settingslider.maximum = 10;
         this.settingslider.minimum = 0;
         this.settingslider.snapInterval = 3;
         this.settingslider.tickInterval = 3;
         this.settingslider.value = 6;
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
 * @identifier _SafeCls_245 = "_-fV"
 */
