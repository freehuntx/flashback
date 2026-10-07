package _SafePkg_50
{
   import com.miniclip.gamemanager.utils.gm_internal;
   
   use namespace gm_internal;
   
   public class _SafeCls_49
   {
      
      public static const login:_SafeCls_49 = new _SafeCls_49(0,"login");
      
      public static const signup:_SafeCls_49 = new _SafeCls_49(1,"signup");
      
      gm_internal static const player:_SafeCls_49 = new _SafeCls_49(2,"player");
      
      gm_internal static const game:_SafeCls_49 = new _SafeCls_49(3,"game");
      
      gm_internal static const external:_SafeCls_49 = new _SafeCls_49(4,"external");
      
      gm_internal static const signupad:_SafeCls_49 = new _SafeCls_49(5,"signupad");
      
      private var _value:uint;
      
      private var _name:String;
      
      public function _SafeCls_49(param1:uint, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public function toString() : String
      {
         return this._name;
      }
      
      public function valueOf() : uint
      {
         return this._value;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_49 = "_-2P"
 * @identifier _SafePkg_50 = "_-al"
 */
