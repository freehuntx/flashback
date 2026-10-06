package murray
{
   import flash.media.Sound;
   
   public class _SafeCls_13
   {
      
      public var id:int;
      
      public var name:String;
      
      public var description:String;
      
      public var max_velocity:int;
      
      public var acceleration:int;
      
      public var friction:int;
      
      public var rotation:int;
      
      public var bounce:int;
      
      public var radius:int;
      
      public var movement_style:int;
      
      public var secondary_weapons:int;
      
      public var equipment_slots:int;
      
      public var shield_down_time:int;
      
      public var shield_recharge_rate:int;
      
      public var shield_tolerance:int;
      
      public var shields:int;
      
      public var health:int;
      
      public var energy:int;
      
      public var energy_recharge_rate:int;
      
      public var armor:int;
      
      public var graphic:int;
      
      public var bounce_sound:Sound;
      
      public var shield_damage_sound:Sound;
      
      public var health_damage_sound:Sound;
      
      public var _SafeStr_1153:Sound;
      
      public var death_sound:Sound;
      
      public var explosion:int;
      
      public var thruster:int;
      
      public var wreck:int;
      
      public var tier:int;
      
      public var display_turret:int;
      
      public var display_health:int;
      
      public var display_shields:int;
      
      public var display_energy:int;
      
      public var display_top_speed:int;
      
      public var display_acceleration:int;
      
      public var display_armor:int;
      
      public function _SafeCls_13()
      {
         super();
      }
      
      public static function _SafeStr_238(param1:Object, param2:_SafeCls_72) : _SafeCls_13
      {
         var _loc3_:_SafeCls_13 = new _SafeCls_13();
         _loc3_.id = param1.id;
         _loc3_.name = _SafeCls_10._SafeStr_107(param1,"name","");
         _loc3_.description = _SafeCls_10._SafeStr_107(param1,"description","");
         _loc3_.max_velocity = param1.max_velocity;
         _loc3_.acceleration = param1.acceleration;
         _loc3_.friction = param1.friction;
         _loc3_.rotation = _SafeCls_10._SafeStr_107(param1,"rotation",0);
         _loc3_.bounce = _SafeCls_10._SafeStr_107(param1,"bounce",100);
         _loc3_.radius = param1.radius;
         _loc3_.movement_style = _SafeCls_10._SafeStr_107(param1,"movement_style",1);
         _loc3_.graphic = param1.graphic;
         _loc3_.secondary_weapons = param1.secondary_weapons;
         _loc3_.equipment_slots = _SafeCls_10._SafeStr_107(param1,"equipment_slots",0);
         _loc3_.shields = param1.shields;
         _loc3_.health = param1.health;
         _loc3_.energy = param1.energy;
         _loc3_.armor = _SafeCls_10._SafeStr_107(param1,"armor",0);
         _loc3_.shield_down_time = param1.shield_down_time;
         _loc3_.shield_recharge_rate = param1.shield_recharge_rate;
         _loc3_.shield_tolerance = param1.shield_tolerance;
         _loc3_.energy_recharge_rate = param1.energy_recharge_rate;
         _loc3_.bounce_sound = param2._SafeStr_119(_SafeCls_10._SafeStr_107(param1,"bounce_sound","Bounce2"));
         _loc3_.shield_damage_sound = param2._SafeStr_119(_SafeCls_10._SafeStr_107(param1,"shield_damage_sound","ShieldDamage2"));
         _loc3_.health_damage_sound = param2._SafeStr_119(_SafeCls_10._SafeStr_107(param1,"health_damage_sound","HealthDamage"));
         _loc3_._SafeStr_1153 = param2._SafeStr_119(_SafeCls_10._SafeStr_107(param1,"not_enought_energy_sound","NotEnoughEnergy"));
         _loc3_.death_sound = param2._SafeStr_119(_SafeCls_10._SafeStr_107(param1,"death_sound","ShipDeath"));
         _loc3_.display_health = _SafeCls_10._SafeStr_107(param1,"display_health",0);
         _loc3_.display_shields = _SafeCls_10._SafeStr_107(param1,"display_shields",0);
         _loc3_.display_energy = _SafeCls_10._SafeStr_107(param1,"display_energy",0);
         _loc3_.display_top_speed = _SafeCls_10._SafeStr_107(param1,"display_top_speed",0);
         _loc3_.display_acceleration = _SafeCls_10._SafeStr_107(param1,"display_acceleration",0);
         _loc3_.display_armor = _SafeCls_10._SafeStr_107(param1,"display_armor",0);
         _loc3_.explosion = _SafeCls_10._SafeStr_107(param1,"explosion",1);
         _loc3_.thruster = _SafeCls_10._SafeStr_107(param1,"thruster",1);
         if(_loc3_.thruster > param2._SafeStr_488.length)
         {
            _loc3_.thruster = 1;
         }
         _loc3_.explosion = _SafeCls_10._SafeStr_107(param1,"explosion",1);
         if(_loc3_.explosion > param2._SafeStr_436.length)
         {
            _loc3_.explosion = 1;
         }
         _loc3_.wreck = _SafeCls_10._SafeStr_107(param1,"wreck",1);
         if(_loc3_.wreck > param2._SafeStr_446.length)
         {
            _loc3_.wreck = 1;
         }
         _loc3_.tier = _SafeCls_10._SafeStr_107(param1,"tier",1);
         _loc3_.display_turret = _SafeCls_10._SafeStr_107(param1,"display_turret",1);
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_13 = "-E"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_238 = "%R"
 * @identifier _SafeStr_436 = "!8"
 * @identifier _SafeStr_446 = "1F"
 * @identifier _SafeStr_488 = "]U"
 * @identifier _SafeStr_1153 = "#0"
 */
