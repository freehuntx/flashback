package test187c_fla
{
   import adobe.utils.*;
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
   
   public dynamic class VCam_AS3_181 extends MovieClip
   {
      
      public var _SafeStr_2676:Number;
      
      public var _SafeStr_2672:Number;
      
      public var _SafeStr_2677:Number;
      
      public var _SafeStr_2678:Number;
      
      public function VCam_AS3_181()
      {
         super();
      }
      
      public function _SafeStr_2673(param1:Event) : void
      {
         this.init();
      }
      
      public function init() : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this._SafeStr_2673);
         var _loc1_:Object = this.getBounds(this);
         this._SafeStr_2677 = _loc1_.height;
         this._SafeStr_2678 = _loc1_.width;
         this._SafeStr_2676 = stage.stageHeight;
         this._SafeStr_2672 = stage.stageWidth;
         addEventListener(Event.REMOVED_FROM_STAGE,this.reset,false,0,true);
         addEventListener(Event.ENTER_FRAME,this._SafeStr_2674,false,0,true);
         dispatchEvent(new Event(Event.ENTER_FRAME));
      }
      
      public function _SafeStr_2674(param1:Event) : void
      {
         if(!parent || !stage)
         {
            return;
         }
         var _loc2_:Number = this._SafeStr_2677 * scaleY;
         var _loc3_:Number = this._SafeStr_2678 * scaleX;
         var _loc4_:Number = this._SafeStr_2676 / _loc2_;
         var _loc5_:Number = this._SafeStr_2672 / _loc3_;
         var _loc6_:Matrix = this.transform.matrix.clone();
         _loc6_.invert();
         _loc6_.scale(scaleX,scaleY);
         _loc6_.translate(_loc3_ / 2,_loc2_ / 2);
         _loc6_.scale(_loc5_,_loc4_);
         parent.transform.matrix = _loc6_;
         parent.transform.colorTransform = this.transform.colorTransform;
         parent.filters = this.filters;
      }
      
      public function reset(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_2674);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.reset);
         var _loc2_:Matrix = new Matrix();
         parent.transform.matrix = _loc2_;
         parent.filters = [];
         var _loc3_:ColorTransform = new ColorTransform();
         parent.transform.colorTransform = _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_2672 = "_-dc"
 * @identifier _SafeStr_2673 = "_-a4"
 * @identifier _SafeStr_2674 = "_-Xr"
 * @identifier _SafeStr_2676 = "_-Ys"
 * @identifier _SafeStr_2677 = "_-gv"
 * @identifier _SafeStr_2678 = "_-50"
 */
