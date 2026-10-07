package _SafePkg_26
{
   import _SafePkg_11._SafeCls_10;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class _SafeCls_25
   {
      
      public var container:DisplayObject;
      
      public var instanceName:String;
      
      public var content:DisplayObject;
      
      public var type:int;
      
      public var _SafeStr_2150:_SafeCls_25;
      
      public var _SafeStr_633:_SafeCls_25;
      
      public var endFrame:int;
      
      public var extraInfo:*;
      
      public var data:XML;
      
      public var startFrame:int;
      
      public var next:_SafeCls_25;
      
      public var _SafeStr_404:Rectangle;
      
      public var sceneName:String;
      
      public var parent:_SafeCls_25;
      
      public var xns:Vector.<_SafeCls_25>;
      
      public var children:Vector.<_SafeCls_25>;
      
      public function _SafeCls_25(param1:DisplayObject, param2:String, param3:int, param4:int, param5:int, param6:Rectangle = null, param7:XML = null, param8:Vector.<_SafeCls_25> = null, param9:* = undefined, param10:String = null)
      {
         super();
         this.container = param1;
         this.instanceName = param2;
         this._SafeStr_404 = param6;
         this.data = param7;
         this.startFrame = param3;
         this.endFrame = param4;
         this.type = param5;
         this.xns = param8;
         this.extraInfo = param9;
         this.sceneName = param10;
      }
      
      public function clone() : _SafeCls_25
      {
         var _loc1_:_SafeCls_25 = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<_SafeCls_25> = new Vector.<_SafeCls_25>();
         _loc2_ = 0;
         while(_loc2_ < this.xns.length)
         {
            _loc1_ = this.xns[_loc2_];
            _loc3_.push(new _SafeCls_25(_loc1_.container,_loc1_.instanceName,_loc1_.startFrame,_loc1_.endFrame,_loc1_.type));
            _loc2_++;
         }
         if(this._SafeStr_2150 != null)
         {
            _loc3_.push(new _SafeCls_25(this._SafeStr_2150.container,this._SafeStr_2150.instanceName,this._SafeStr_2150.startFrame,this._SafeStr_2150.endFrame,_SafeCls_10._SafeStr_766));
         }
         if(this.next != null)
         {
            _loc3_.push(new _SafeCls_25(this.next.container,this.next.instanceName,this.next.startFrame,this.next.endFrame,_SafeCls_10._SafeStr_1018));
         }
         if(this.parent != null)
         {
            _loc3_.push(new _SafeCls_25(this.parent.container,this.parent.instanceName,this.parent.startFrame,this.parent.endFrame,_SafeCls_10._SafeStr_1046));
         }
         if(this.children != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.children.length)
            {
               _loc1_ = this.children[_loc2_];
               _loc3_.push(new _SafeCls_25(_loc1_.container,_loc1_.instanceName,_loc1_.startFrame,_loc1_.endFrame,_SafeCls_10._SafeStr_2242));
               _loc2_++;
            }
         }
         return new _SafeCls_25(this.container,this.instanceName,this.startFrame,this.endFrame,this.type,new Rectangle(this._SafeStr_404.x,this._SafeStr_404.y,this._SafeStr_404.width,this._SafeStr_404.height),this.data.copy(),_loc3_,this.extraInfo,this.sceneName);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "_-Z7"
 * @identifier _SafeCls_25 = "_-DH"
 * @identifier _SafePkg_11 = "_-1a"
 * @identifier _SafePkg_26 = "_-DU"
 * @identifier _SafeStr_404 = "_-P7"
 * @identifier _SafeStr_633 = "_-Dp"
 * @identifier _SafeStr_766 = "_-Wj"
 * @identifier _SafeStr_1018 = "_-Tn"
 * @identifier _SafeStr_1046 = "_-j7"
 * @identifier _SafeStr_2150 = "_-1O"
 * @identifier _SafeStr_2242 = "_-Sm"
 */
