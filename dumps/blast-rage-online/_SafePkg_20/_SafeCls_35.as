package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   import murray._SafeCls_17;
   
   public class _SafeCls_35
   {
      
      public var x:int;
      
      public var y:int;
      
      public var alive:Boolean;
      
      public var side:int;
      
      public var shields:int;
      
      public var health:int;
      
      public var energy:int;
      
      public var _SafeStr_264:int;
      
      public function _SafeCls_35(param1:int, param2:int, param3:Boolean, param4:int, param5:int, param6:int, param7:int, param8:int)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.alive = param3;
         this.shields = param4;
         this.health = param5;
         this.energy = param6;
         this._SafeStr_264 = param7;
         this.side = param8;
      }
      
      public static function _SafeStr_357(param1:_SafeCls_17) : _SafeCls_35
      {
         var _loc2_:int = param1._SafeStr_111;
         var _loc3_:int = param1._SafeStr_112;
         var _loc4_:Boolean = param1.alive;
         var _loc5_:int = param1.shields;
         var _loc6_:int = param1.health;
         var _loc7_:int = param1.energy;
         var _loc8_:int = param1._SafeStr_264;
         var _loc9_:int = param1.side;
         return new _SafeCls_35(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      public static function _SafeStr_152(param1:String) : _SafeCls_35
      {
         var _loc2_:int = _SafeCls_40._SafeStr_115(param1.substr(1,4));
         var _loc3_:int = _SafeCls_40._SafeStr_115(param1.substr(5,4));
         var _loc4_:int = _SafeCls_40._SafeStr_115(param1.substr(9,1));
         var _loc5_:Boolean = _loc4_ != 0;
         var _loc6_:int = _SafeCls_40._SafeStr_115(param1.substr(10,2));
         var _loc7_:int = _SafeCls_40._SafeStr_115(param1.substr(12,2));
         var _loc8_:int = _SafeCls_40._SafeStr_115(param1.substr(14,2));
         var _loc9_:int = _SafeCls_40._SafeStr_115(param1.substr(16,3));
         var _loc10_:int = _SafeCls_40._SafeStr_115(param1.substr(19,1));
         return new _SafeCls_35(_loc2_,_loc3_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
      }
      
      public function toString() : String
      {
         var _loc1_:int = 0;
         if(this.alive)
         {
            _loc1_++;
         }
         return _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_611,1) + _SafeCls_40._SafeStr_106(this.x,4) + _SafeCls_40._SafeStr_106(this.y,4) + _SafeCls_40._SafeStr_106(_loc1_,1) + _SafeCls_40._SafeStr_106(this.shields,2) + _SafeCls_40._SafeStr_106(this.health,2) + _SafeCls_40._SafeStr_106(this.energy,2) + _SafeCls_40._SafeStr_106(this._SafeStr_264,3) + _SafeCls_40._SafeStr_106(this.side,1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_35 = "!Q"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_111 = "=T"
 * @identifier _SafeStr_112 = "22"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_264 = "!3"
 * @identifier _SafeStr_357 = "<#"
 * @identifier _SafeStr_611 = " 4"
 */
