package murray
{
   import _SafePkg_41._SafeCls_96;
   import _SafePkg_45._SafeCls_44;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class _SafeCls_18
   {
      
      public var id:int;
      
      public var graphic:String;
      
      public var _SafeStr_293:_SafeCls_96;
      
      public var _SafeStr_966:_SafeCls_96;
      
      public var collision:Array;
      
      public var _SafeStr_1334:Boolean = false;
      
      public var height:int;
      
      public var width:int;
      
      public var _SafeStr_1328:int;
      
      public var _SafeStr_1297:int;
      
      public function _SafeCls_18()
      {
         super();
      }
      
      public static function _SafeStr_238(param1:Object) : _SafeCls_18
      {
         var _loc2_:_SafeCls_18 = new _SafeCls_18();
         _loc2_.id = param1.id;
         _loc2_.graphic = param1.graphic;
         _loc2_.collision = param1.collision;
         return _loc2_;
      }
      
      public function grabGraphic(param1:MovieClip, param2:MovieClip, param3:DisplayObject) : void
      {
         param1.gotoAndStop(this.graphic);
         param2.gotoAndStop(this.graphic);
         this._SafeStr_293 = _SafeCls_10._SafeStr_758(param1,param3);
         this._SafeStr_966 = _SafeCls_10._SafeStr_758(param2,param3);
      }
      
      public function _SafeStr_1305() : String
      {
         var _loc1_:String = "[";
         var _loc2_:int = 0;
         while(_loc2_ < this.collision.length)
         {
            _loc1_ += "[" + this.collision[_loc2_][0] + "," + this.collision[_loc2_][1] + "," + this.collision[_loc2_][2] + "," + this.collision[_loc2_][3] + "]";
            if(_loc2_ < this.collision.length - 1)
            {
               _loc1_ += ",";
            }
            _loc2_++;
         }
         return _loc1_ + "]";
      }
      
      public function _SafeStr_1277(param1:String) : void
      {
         this.collision = _SafeCls_44._SafeStr_363(param1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_18 = ";M"
 * @identifier _SafeCls_44 = "98"
 * @identifier _SafeCls_96 = "^S"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafePkg_45 = "2<"
 * @identifier _SafeStr_238 = "%R"
 * @identifier _SafeStr_293 = "3M"
 * @identifier _SafeStr_363 = "set"
 * @identifier _SafeStr_758 = "\"M"
 * @identifier _SafeStr_966 = " E"
 * @identifier _SafeStr_1277 = "#D"
 * @identifier _SafeStr_1297 = "75"
 * @identifier _SafeStr_1305 = "[T"
 * @identifier _SafeStr_1328 = "?6"
 * @identifier _SafeStr_1334 = "[7"
 */
