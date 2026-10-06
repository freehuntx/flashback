package murray
{
   public class _SafeCls_2
   {
      
      public var id:int = 0;
      
      public var name:String;
      
      public var description:String;
      
      public var price:int;
      
      public var energy_cost:int;
      
      public var cooldown:int;
      
      public var self_cooldown:int;
      
      public var graphic:String;
      
      public var firing_sounds:Array;
      
      public var size:int;
      
      public var card:String;
      
      public var projectiles:Array;
      
      public var display_type:String;
      
      public var display_damage:int;
      
      public var display_energy_cost:int;
      
      public var display_range:int;
      
      public var display_rate:int;
      
      public var tier:int;
      
      public function _SafeCls_2()
      {
         super();
      }
      
      public static function _SafeStr_238(param1:Object, param2:_SafeCls_72) : _SafeCls_2
      {
         var _loc4_:int = 0;
         var _loc3_:_SafeCls_2 = new _SafeCls_2();
         _loc3_.id = param1.id;
         _loc3_.name = _SafeCls_10._SafeStr_107(param1,"name","");
         _loc3_.description = _SafeCls_10._SafeStr_107(param1,"description","");
         _loc3_.price = param1.price;
         _loc3_.energy_cost = _SafeCls_10._SafeStr_107(param1,"energy_cost",0);
         _loc3_.cooldown = param1.cooldown;
         _loc3_.self_cooldown = _SafeCls_10._SafeStr_107(param1,"self_cooldown",0);
         _loc3_.graphic = param1.graphic;
         if(!param1.hasOwnProperty("firing_sounds"))
         {
            _loc3_.firing_sounds = [param2._SafeStr_119("PlasmaGun")];
         }
         else
         {
            _loc3_.firing_sounds = new Array();
            _loc4_ = 0;
            while(_loc4_ < param1.firing_sounds.length)
            {
               _loc3_.firing_sounds.push(param2._SafeStr_119(param1.firing_sounds[_loc4_]));
               _loc4_++;
            }
         }
         _loc3_.card = _SafeCls_10._SafeStr_107(param1,"card","card1");
         _loc3_.size = param1.size;
         _loc3_.projectiles = param1.projectiles;
         _loc3_.cooldown = param1.cooldown;
         _loc3_.tier = _SafeCls_10._SafeStr_107(param1,"tier",1);
         _loc3_.display_type = _SafeCls_10._SafeStr_107(param1,"display_type","");
         _loc3_.display_damage = _SafeCls_10._SafeStr_107(param1,"display_damage",0);
         _loc3_.display_energy_cost = _SafeCls_10._SafeStr_107(param1,"display_energy_cost",0);
         _loc3_.display_range = _SafeCls_10._SafeStr_107(param1,"display_range",0);
         _loc3_.display_rate = _SafeCls_10._SafeStr_107(param1,"display_rate",0);
         return _loc3_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "2H"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_238 = "%R"
 */
