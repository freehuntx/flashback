package murray
{
   import flash.media.Sound;
   
   public class _SafeCls_32
   {
      
      public static const _SafeStr_665:Array = ["physical","laser","plasma","ion","frost","fire","emp","bio","explosion","void","photon","healing","organic"];
      
      public var graphic:String;
      
      public var speed:int;
      
      public var radius:int;
      
      public var _SafeStr_237:int;
      
      public var angle:int;
      
      public var _SafeStr_870:Number;
      
      public var lifetime:int;
      
      public var instant_damage:int;
      
      public var energy_damage:int;
      
      public var shield_damage:int;
      
      public var spin:Number;
      
      public var _SafeStr_293:Array;
      
      public var _SafeStr_774:int;
      
      public var fizzle:Array;
      
      public var _SafeStr_946:Boolean = false;
      
      public var react:Array;
      
      public var trail:Array;
      
      public var trail_frequency:int;
      
      public var force:int;
      
      public var force_angle:int;
      
      public var dot_damage:int;
      
      public var dot_time:int;
      
      public var dot_mod_accel:int;
      
      public var dot_mod_velocity:int;
      
      public var dot_rate:int;
      
      public var dot_delay:int;
      
      public var dot_effect:int;
      
      public var x_offset:int;
      
      public var y_offset:int;
      
      public var ap:int;
      
      public var type:int;
      
      public var inherit_momentum:Number;
      
      public var mod_momentum:Number;
      
      public var react_sound:Sound;
      
      public var deploy_delay:int;
      
      public var react_sounds:Array;
      
      public var fizzle_sounds:Array;
      
      public var draw_layer:int;
      
      public var mod_boosters:Number;
      
      public var mod_resist:Number;
      
      public function _SafeCls_32()
      {
         super();
      }
      
      public static function _SafeStr_238(param1:Object, param2:_SafeCls_72) : _SafeCls_32
      {
         var _loc3_:_SafeCls_32 = new _SafeCls_32();
         _loc3_.graphic = param1.graphic;
         _loc3_.speed = param1.speed;
         _loc3_.radius = param1.radius;
         _loc3_._SafeStr_237 = _loc3_.radius * 0.5 * 100;
         _loc3_.angle = param1.angle;
         _loc3_._SafeStr_870 = _loc3_.angle * Math.PI / 180;
         _loc3_.lifetime = param1.lifetime;
         _loc3_.instant_damage = _SafeCls_10._SafeStr_107(param1,"instant_damage",0);
         _loc3_.energy_damage = _SafeCls_10._SafeStr_107(param1,"energy_damage",0);
         _loc3_.shield_damage = _SafeCls_10._SafeStr_107(param1,"shield_damage",0);
         _loc3_.spin = _SafeCls_10._SafeStr_107(param1,"spin",0) * Math.PI / 180;
         _loc3_._SafeStr_293 = param2._SafeStr_1163(_loc3_.graphic);
         _loc3_.force = _SafeCls_10._SafeStr_107(param1,"force",0);
         _loc3_.force_angle = _SafeCls_10._SafeStr_107(param1,"force_angle",0) * Math.PI / 180;
         _loc3_.dot_damage = _SafeCls_10._SafeStr_107(param1,"dot_damage",0);
         _loc3_.dot_time = _SafeCls_10._SafeStr_107(param1,"dot_time",0);
         _loc3_.dot_rate = _SafeCls_10._SafeStr_107(param1,"dot_rate",1);
         _loc3_.dot_delay = _SafeCls_10._SafeStr_107(param1,"dot_delay",0);
         _loc3_.dot_mod_accel = _SafeCls_10._SafeStr_107(param1,"dot_mod_accel",0);
         _loc3_.dot_mod_velocity = _SafeCls_10._SafeStr_107(param1,"dot_mod_velocity",0);
         _loc3_.dot_effect = _SafeCls_10._SafeStr_107(param1,"dot_effect",0);
         _loc3_.trail = param2._SafeStr_1065(_SafeCls_10._SafeStr_107(param1,"trail","none"));
         _loc3_.fizzle = param2._SafeStr_1025(_SafeCls_10._SafeStr_107(param1,"fizzle",_loc3_.graphic));
         _loc3_._SafeStr_946 = param2._SafeStr_1072(_SafeCls_10._SafeStr_107(param1,"fizzle",_loc3_.graphic));
         _loc3_.react = param2._SafeStr_1139(_SafeCls_10._SafeStr_107(param1,"react",_loc3_.graphic));
         _loc3_.trail_frequency = _SafeCls_10._SafeStr_107(param1,"trail_frequency",3);
         _loc3_._SafeStr_774 = param2._SafeStr_1108(param1.graphic);
         _loc3_.x_offset = _SafeCls_10._SafeStr_107(param1,"x_offset",0);
         _loc3_.y_offset = _SafeCls_10._SafeStr_107(param1,"y_offset",0);
         _loc3_.ap = _SafeCls_10._SafeStr_107(param1,"ap",0);
         _loc3_.inherit_momentum = _SafeCls_10._SafeStr_107(param1,"inherit_momentum",0);
         _loc3_.mod_momentum = _SafeCls_10._SafeStr_107(param1,"mod_momentum",1);
         _loc3_.draw_layer = _SafeCls_10._SafeStr_107(param1,"draw_layer",1);
         _loc3_.type = 0;
         var _loc4_:int = 0;
         while(_loc4_ < _SafeStr_665.length)
         {
            if(_loc3_.graphic.indexOf(_SafeStr_665[_loc4_]) == 0)
            {
               _loc3_.type = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(param1.hasOwnProperty("react_sounds"))
         {
            _loc3_.react_sounds = new Array();
            _loc4_ = 0;
            while(_loc4_ < param1.react_sounds.length)
            {
               _loc3_.react_sounds.push(param2._SafeStr_119(param1.react_sounds[_loc4_]));
               _loc4_++;
            }
         }
         if(param1.hasOwnProperty("fizzle_sounds"))
         {
            _loc3_.fizzle_sounds = new Array();
            _loc4_ = 0;
            while(_loc4_ < param1.fizzle_sounds.length)
            {
               _loc3_.fizzle_sounds.push(param2._SafeStr_119(param1.fizzle_sounds[_loc4_]));
               _loc4_++;
            }
         }
         if(param1.react_sound)
         {
            _loc3_.react_sound = param2._SafeStr_119(param1.react_sound);
         }
         _loc3_.mod_boosters = _SafeCls_10._SafeStr_107(param1,"mod_boosters",1);
         _loc3_.mod_resist = _SafeCls_10._SafeStr_107(param1,"mod_resist",1);
         _loc3_.deploy_delay = _SafeCls_10._SafeStr_107(param1,"deploy_delay",0);
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_32 = "6-"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_237 = "+Q"
 * @identifier _SafeStr_238 = "%R"
 * @identifier _SafeStr_293 = "3M"
 * @identifier _SafeStr_665 = "8P"
 * @identifier _SafeStr_774 = "dynamic"
 * @identifier _SafeStr_870 = "]="
 * @identifier _SafeStr_946 = "?#"
 * @identifier _SafeStr_1025 = "93"
 * @identifier _SafeStr_1065 = "7C"
 * @identifier _SafeStr_1072 = "2#"
 * @identifier _SafeStr_1108 = "#E"
 * @identifier _SafeStr_1139 = "-L"
 * @identifier _SafeStr_1163 = ">,"
 */
