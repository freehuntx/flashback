package murray
{
   import flash.ui.Keyboard;
   
   public class _SafeCls_4
   {
      
      public static var _SafeStr_143:_SafeCls_4;
      
      public static const _SafeStr_1006:int = 0;
      
      public static const _SafeStr_880:int = 1;
      
      public static const _SafeStr_164:int = 0;
      
      public static const _SafeStr_144:int = 1;
      
      public static const _SafeStr_213:int = 2;
      
      public var servers:Array;
      
      public var max_players:int;
      
      public var warmup_length:int;
      
      public var summary_length:int;
      
      public var point_health:int;
      
      public var respawn_wave_time:int;
      
      public var maps:Array;
      
      public var language_filter:Array;
      
      public var map_prefixes:Array;
      
      public var map_suffixes:Array;
      
      public var qs_prefixes:Array;
      
      public var qs_suffixes:Array;
      
      public var ranks:Array;
      
      public var tracks:Array;
      
      public var _SafeStr_458:Array;
      
      public var use_filler_ships:Boolean = false;
      
      public var min_intensity:int;
      
      public var color_add:int;
      
      public var low_quality:Boolean = false;
      
      public var show_names:Boolean = true;
      
      public var show_tutorial:Boolean = true;
      
      public var error_messages:Array;
      
      public var create:Boolean = false;
      
      public var preferred_game_mode:int = 2;
      
      public var _SafeStr_194:Array = new Array();
      
      public var custom_controls:Boolean = false;
      
      public var controls:Array = [Keyboard.UP,Keyboard.DOWN,Keyboard.LEFT,Keyboard.RIGHT,Keyboard.ENTER,Keyboard.SHIFT,Keyboard.SPACE,Keyboard.NUMBER_1,Keyboard.NUMBER_2,Keyboard.NUMBER_3,Keyboard.NUMBER_4];
      
      public function _SafeCls_4()
      {
         super();
      }
      
      public static function _SafeStr_238(param1:Object, param2:_SafeCls_72) : _SafeCls_4
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         _SafeStr_143 = _SafeStr_121();
         _SafeStr_143.servers = param1.servers;
         _SafeStr_143.max_players = param1.max_players;
         _SafeStr_143.warmup_length = param1.warmup_length;
         _SafeStr_143.summary_length = param1.summary_length;
         _SafeStr_143.point_health = param1.point_health;
         _SafeStr_143.respawn_wave_time = param1.respawn_wave_time;
         _SafeStr_143.maps = param1.maps;
         _SafeStr_143.language_filter = param1.language_filter;
         _SafeStr_143.map_prefixes = param1.map_prefixes;
         _SafeStr_143.map_suffixes = param1.map_suffixes;
         _SafeStr_143.qs_prefixes = param1.qs_prefixes;
         _SafeStr_143.qs_suffixes = param1.qs_suffixes;
         _SafeStr_143.ranks = param1.ranks;
         _SafeStr_143._SafeStr_458 = param1.tracks;
         _SafeStr_143.tracks = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _SafeStr_143._SafeStr_458.length)
         {
            _loc4_ = new Array();
            _loc5_ = 0;
            while(_loc5_ < _SafeStr_143._SafeStr_458[_loc3_][0].length)
            {
               _loc4_.push(param2._SafeStr_119(_SafeStr_143._SafeStr_458[_loc3_][0][_loc5_]));
               _loc5_++;
            }
            _SafeStr_143.tracks.push(_loc4_);
            _loc3_++;
         }
         if(param1.use_filler_ships)
         {
            _SafeStr_143.use_filler_ships = true;
         }
         _SafeStr_143.min_intensity = param1.min_intensity;
         _SafeStr_143.color_add = parseInt(param1.color_add,16);
         _SafeStr_143.error_messages = param1.error_messages;
         return _SafeStr_143;
      }
      
      public static function _SafeStr_121() : _SafeCls_4
      {
         if(_SafeStr_143 == null)
         {
            _SafeStr_143 = new _SafeCls_4();
         }
         return _SafeStr_143;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_72 = "6\'"
 * @identifier _SafeStr_119 = "%8"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_143 = "!K"
 * @identifier _SafeStr_144 = "set "
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_194 = "&U"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_238 = "%R"
 * @identifier _SafeStr_458 = "2M"
 * @identifier _SafeStr_880 = "01"
 * @identifier _SafeStr_1006 = "+S"
 */
