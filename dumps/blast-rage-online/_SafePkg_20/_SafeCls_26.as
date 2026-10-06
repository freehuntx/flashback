package _SafePkg_20
{
   import _SafePkg_41._SafeCls_40;
   import murray._SafeCls_72;
   import murray._SafeCls_17;
   
   public class _SafeCls_26
   {
      
      public var ship:int;
      
      public var weapons:Array;
      
      public var equipment:Array = [];
      
      public var color1:int;
      
      public var color2:int;
      
      public var side:int;
      
      public function _SafeCls_26(param1:int, param2:Array, param3:Array, param4:int, param5:int, param6:int)
      {
         super();
         this.ship = param1;
         this.weapons = param2;
         this.equipment = param3;
         this.color1 = param4;
         this.color2 = param5;
         this.side = param6;
      }
      
      public static function _SafeStr_1204(param1:_SafeCls_17) : _SafeCls_26
      {
         var _loc2_:int = param1.ship.id;
         var _loc3_:Array = new Array();
         var _loc4_:int = 0;
         while(_loc4_ < param1.weapons.length)
         {
            _loc3_.push(param1.weapons[_loc4_].weapon);
            _loc4_++;
         }
         var _loc5_:Array = _loc3_;
         var _loc6_:Array = param1.equipment;
         var _loc7_:int = param1.color1;
         var _loc8_:int = param1.color2;
         var _loc9_:int = param1.side;
         return new _SafeCls_26(_loc2_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      
      public static function _SafeStr_152(param1:String, param2:_SafeCls_72) : _SafeCls_26
      {
         var _loc10_:int = 0;
         var _loc3_:int = _SafeCls_40._SafeStr_115(param1.substr(1,2));
         var _loc4_:Array = new Array();
         var _loc5_:Array = new Array();
         var _loc6_:int = 0;
         while(_loc6_ < 5)
         {
            _loc10_ = _SafeCls_40._SafeStr_115(param1.substr(3 + _loc6_ * 2,2));
            if(_loc10_ != 0)
            {
               _loc4_[_loc6_] = param2._SafeStr_175(_loc10_);
            }
            _loc6_++;
         }
         var _loc7_:int = _SafeCls_40._SafeStr_115(param1.substr(13,4));
         var _loc8_:int = _SafeCls_40._SafeStr_115(param1.substr(17,4));
         var _loc9_:int = _SafeCls_40._SafeStr_115(param1.substr(21,1));
         _loc6_ = 0;
         while(_loc6_ < 5)
         {
            _loc10_ = _SafeCls_40._SafeStr_115(param1.substr(22 + _loc6_ * 2,2));
            _loc5_[_loc6_] = param2._SafeStr_341(_loc10_);
            _loc6_++;
         }
         return new _SafeCls_26(_loc3_,_loc4_,_loc5_,_loc7_,_loc8_,_loc9_);
      }
      
      public function toString() : String
      {
         var _loc1_:String = _SafeCls_40._SafeStr_106(_SafeCls_39._SafeStr_629,1) + _SafeCls_40._SafeStr_106(this.ship,2);
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if(_loc2_ < this.weapons.length)
            {
               _loc1_ += _SafeCls_40._SafeStr_106(this.weapons[_loc2_].id,2);
            }
            else
            {
               _loc1_ += _SafeCls_40._SafeStr_106(0,2);
            }
            _loc2_++;
         }
         _loc1_ += _SafeCls_40._SafeStr_106(this.color1,4) + _SafeCls_40._SafeStr_106(this.color2,4) + _SafeCls_40._SafeStr_106(this.side,1);
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            if(_loc2_ < this.equipment.length)
            {
               _loc1_ += _SafeCls_40._SafeStr_106(this.equipment[_loc2_].id,2);
            }
            else
            {
               _loc1_ += _SafeCls_40._SafeStr_106(0,2);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_17 = ";<"
 * @identifier _SafeCls_26 = "9$"
 * @identifier _SafeCls_39 = "1M"
 * @identifier _SafeCls_40 = "0Q"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafePkg_41 = "%#"
 * @identifier _SafeStr_106 = "43"
 * @identifier _SafeStr_115 = "7R"
 * @identifier _SafeStr_152 = ";7"
 * @identifier _SafeStr_175 = "97"
 * @identifier _SafeStr_341 = "6;"
 * @identifier _SafeStr_629 = "=P"
 * @identifier _SafeStr_1204 = "3\""
 */
