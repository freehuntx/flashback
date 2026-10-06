package murray
{
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   
   public class _SafeCls_5
   {
      
      public var id:int;
      
      public var ship:_SafeCls_13;
      
      public var color1:int;
      
      public var color2:int;
      
      public var weapons:Array;
      
      public var equipment:Array;
      
      public function _SafeCls_5()
      {
         super();
      }
      
      public static function _SafeStr_632(param1:String, param2:_SafeCls_72) : _SafeCls_5
      {
         var _loc7_:int = 0;
         var _loc8_:_SafeCls_3 = null;
         var _loc3_:Array = param1.split(",");
         var _loc4_:_SafeCls_5 = new _SafeCls_5();
         _loc4_.id = int(_loc3_[0]);
         _loc4_.ship = param2._SafeStr_598(int(_loc3_[1]));
         _loc4_.color1 = parseInt(_loc3_[2],16);
         _loc4_.color2 = parseInt(_loc3_[3],16);
         _loc4_.weapons = new Array();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.ship.secondary_weapons + 1)
         {
            _loc7_ = int(int(_loc3_[_loc5_ + 4]));
            if(_loc7_ != 0)
            {
               _loc4_.weapons.push(param2._SafeStr_175(_loc7_));
            }
            _loc5_++;
         }
         if(_loc4_.weapons.length <= _loc4_.ship.secondary_weapons)
         {
            _loc8_ = _SafeCls_3._SafeStr_157();
            _loc4_.weapons[0] = _loc8_._SafeStr_196[0];
            _loc5_ = 1;
            while(_loc5_ <= _loc4_.ship.secondary_weapons)
            {
               _loc4_.weapons[_loc5_] = _loc8_.secondary_weapons[_loc5_ - 1];
               _loc5_++;
            }
         }
         _loc4_.equipment = new Array();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.ship.equipment_slots)
         {
            if(_loc6_ + _loc5_ + 4 < _loc3_.length)
            {
               _loc7_ = int(int(_loc3_[_loc6_ + _loc5_ + 4]));
            }
            else
            {
               _loc7_ = 0;
            }
            _loc4_.equipment.push(param2._SafeStr_341(_loc7_));
            _loc6_++;
         }
         return _loc4_;
      }
      
      public function _SafeStr_199(param1:MovieClip) : void
      {
         var _loc5_:MovieClip = null;
         param1.gotoAndStop(this.ship.graphic);
         param1.selected.visible = false;
         param1.selected.transform.colorTransform = new ColorTransform(1,1,1);
         param1.base.shadow.visible = false;
         var _loc2_:ColorTransform = _SafeCls_10._SafeStr_231(this.color1);
         param1.base.color1.transform.colorTransform = _loc2_;
         _loc2_ = _SafeCls_10._SafeStr_231(this.color2);
         param1.base.color2.transform.colorTransform = _loc2_;
         var _loc3_:Array = new Array();
         _loc3_.push(param1.turret);
         if(param1.turret1 != null)
         {
            _loc3_.push(param1.turret1);
         }
         if(param1.turret2 != null)
         {
            _loc3_.push(param1.turret2);
         }
         if(param1.turret3 != null)
         {
            _loc3_.push(param1.turret3);
         }
         if(param1.turret4 != null)
         {
            _loc3_.push(param1.turret4);
         }
         if(param1.turret5 != null)
         {
            _loc3_.push(param1.turret5);
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = _loc3_[_loc4_];
            if(this.ship.display_turret == 0)
            {
               _loc5_.visible = false;
            }
            else
            {
               _loc5_.visible = true;
               if(_loc5_.weapon1 != null)
               {
                  _loc5_.weapon1.gotoAndStop(this.weapons[0].graphic);
               }
               if(this.weapons.length > 1 && _loc5_.weapon2 != null)
               {
                  _loc5_.weapon2.gotoAndStop(this.weapons[1].graphic);
               }
               if(this.weapons.length > 2 && _loc5_.weapon3 != null)
               {
                  _loc5_.weapon3.gotoAndStop(this.weapons[2].graphic);
               }
               if(this.weapons.length > 3 && _loc5_.weapon4 != null)
               {
                  _loc5_.weapon4.gotoAndStop(this.weapons[3].graphic);
               }
               if(this.weapons.length > 4 && _loc5_.weapon5 != null)
               {
                  _loc5_.weapon5.gotoAndStop(this.weapons[4].graphic);
               }
            }
            _loc4_++;
         }
         if(param1.thruster1 != null)
         {
            param1.thruster1.visible = false;
         }
         if(param1.thruster2 != null)
         {
            param1.thruster2.visible = false;
         }
         if(param1.thruster3 != null)
         {
            param1.thruster3.visible = false;
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_3 = "[H"
 * @identifier _SafeCls_5 = "2A"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_13 = "-E"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeStr_157 = "^!"
 * @identifier _SafeStr_175 = "97"
 * @identifier _SafeStr_196 = "@R"
 * @identifier _SafeStr_199 = ";C"
 * @identifier _SafeStr_231 = "+N"
 * @identifier _SafeStr_341 = "6;"
 * @identifier _SafeStr_598 = ">K"
 * @identifier _SafeStr_632 = "?!"
 */
