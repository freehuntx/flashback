package murray
{
   public class _SafeCls_55
   {
      
      public var _SafeStr_252:_SafeCls_18;
      
      public var id:int;
      
      public var x:int;
      
      public var y:int;
      
      public var r:int;
      
      public var _SafeStr_382:Number;
      
      public var _SafeStr_134:Array;
      
      public var _SafeStr_554:Array;
      
      public function _SafeCls_55(param1:Array, param2:_SafeCls_18)
      {
         var _loc4_:Array = null;
         this._SafeStr_134 = new Array();
         super();
         this._SafeStr_252 = param2;
         this.id = param1[0];
         this.x = param1[1];
         this.y = param1[2];
         this.r = param1[3];
         this._SafeStr_382 = this.r * Math.PI / 180;
         var _loc3_:int = 0;
         while(_loc3_ < param2.collision.length)
         {
            _loc4_ = new Array();
            _loc4_.push(_SafeCls_10._SafeStr_233(param2.collision[_loc3_][0],param2.collision[_loc3_][1],this._SafeStr_382) + this.x);
            _loc4_.push(_SafeCls_10._SafeStr_227(param2.collision[_loc3_][0],param2.collision[_loc3_][1],this._SafeStr_382) + this.y);
            _loc4_.push(_SafeCls_10._SafeStr_233(param2.collision[_loc3_][2],param2.collision[_loc3_][3],this._SafeStr_382) + this.x);
            _loc4_.push(_SafeCls_10._SafeStr_227(param2.collision[_loc3_][2],param2.collision[_loc3_][3],this._SafeStr_382) + this.y);
            this._SafeStr_134.push(_loc4_);
            _loc3_++;
         }
      }
      
      public function toJSON() : String
      {
         return "[" + this.id + "," + this.x + "," + this.y + "," + this.r + "]";
      }
      
      public function _SafeStr_1252() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         trace(this._SafeStr_134.length);
         if(this._SafeStr_134.length > 0)
         {
            _loc1_ = this._SafeStr_134[0][0] - this.x;
            _loc2_ = this._SafeStr_134[0][0] - this.x;
            _loc3_ = this._SafeStr_134[0][1] - this.y;
            _loc4_ = this._SafeStr_134[0][1] - this.y;
            _loc5_ = 0;
            while(_loc5_ < this._SafeStr_134.length)
            {
               if(this._SafeStr_134[_loc5_][0] - this.x < _loc1_)
               {
                  _loc1_ = this._SafeStr_134[_loc5_][0] - this.x;
               }
               if(this._SafeStr_134[_loc5_][2] - this.x < _loc1_)
               {
                  _loc1_ = this._SafeStr_134[_loc5_][2] - this.x;
               }
               if(this._SafeStr_134[_loc5_][0] - this.x > _loc2_)
               {
                  _loc2_ = this._SafeStr_134[_loc5_][0] - this.x;
               }
               if(this._SafeStr_134[_loc5_][2] - this.x > _loc2_)
               {
                  _loc2_ = this._SafeStr_134[_loc5_][2] - this.x;
               }
               if(this._SafeStr_134[_loc5_][1] - this.y < _loc3_)
               {
                  _loc3_ = this._SafeStr_134[_loc5_][1] - this.y;
               }
               if(this._SafeStr_134[_loc5_][3] - this.y < _loc3_)
               {
                  _loc3_ = this._SafeStr_134[_loc5_][3] - this.y;
               }
               if(this._SafeStr_134[_loc5_][1] - this.y > _loc4_)
               {
                  _loc4_ = this._SafeStr_134[_loc5_][1] - this.y;
               }
               if(this._SafeStr_134[_loc5_][3] - this.y > _loc4_)
               {
                  _loc4_ = this._SafeStr_134[_loc5_][1] - this.y;
               }
               _loc5_++;
            }
         }
         else
         {
            _loc1_ = -this._SafeStr_252._SafeStr_293.width / 2;
            _loc3_ = -this._SafeStr_252._SafeStr_293.height / 2;
            _loc2_ = this._SafeStr_252._SafeStr_293.width / 2;
            _loc4_ = this._SafeStr_252._SafeStr_293.height / 2;
         }
         this._SafeStr_554 = [_loc1_,_loc3_,_loc2_,_loc4_];
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_18 = ";M"
 * @identifier _SafeCls_55 = "!B"
 * @identifier _SafeStr_134 = "]&"
 * @identifier _SafeStr_227 = ";G"
 * @identifier _SafeStr_233 = "3I"
 * @identifier _SafeStr_252 = "\'Q"
 * @identifier _SafeStr_293 = "3M"
 * @identifier _SafeStr_382 = "\'\'"
 * @identifier _SafeStr_554 = ",P"
 * @identifier _SafeStr_1252 = "8\'"
 */
