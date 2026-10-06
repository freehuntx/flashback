package murray
{
   public class _SafeCls_16
   {
      
      public var id:int;
      
      public var name:String;
      
      public var description:String;
      
      public var card:String;
      
      public var type_damages:Array;
      
      public var type_defences:Array;
      
      public var acceleration:int;
      
      public var max_velocity:int;
      
      public var health:int;
      
      public var shields:int;
      
      public var energy:int;
      
      public var tier:int;
      
      public function _SafeCls_16()
      {
         super();
      }
      
      public static function _SafeStr_238(param1:Object) : _SafeCls_16
      {
         var _loc2_:_SafeCls_16 = new _SafeCls_16();
         _loc2_.id = param1.id;
         _loc2_.name = param1.name;
         _loc2_.description = param1.description;
         _loc2_.card = _SafeCls_10._SafeStr_107(param1,"card","");
         if(param1.type_damages)
         {
            _loc2_.type_damages = param1.type_damages;
         }
         else
         {
            _loc2_.type_damages = [];
         }
         if(param1.type_defences)
         {
            _loc2_.type_defences = param1.type_defences;
         }
         else
         {
            _loc2_.type_defences = [];
         }
         _loc2_.acceleration = _SafeCls_10._SafeStr_107(param1,"acceleration",0);
         _loc2_.max_velocity = _SafeCls_10._SafeStr_107(param1,"max_velocity",0);
         _loc2_.health = _SafeCls_10._SafeStr_107(param1,"health",0);
         _loc2_.shields = _SafeCls_10._SafeStr_107(param1,"shields",0);
         _loc2_.energy = _SafeCls_10._SafeStr_107(param1,"energy",0);
         _loc2_.tier = _SafeCls_10._SafeStr_107(param1,"tier",1);
         return _loc2_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_16 = "true"
 * @identifier _SafeStr_107 = "5Q"
 * @identifier _SafeStr_238 = "%R"
 */
