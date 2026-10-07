package com.miniclip.gamemanager
{
   import flash.display.DisplayObjectContainer;
   import flash.events.IEventDispatcher;
   import flash.system.ApplicationDomain;
   
   public interface GameManager extends IEventDispatcher
   {
      
      function init(param1:DisplayObjectContainer) : void;
      
      function get ready() : Boolean;
      
      function get info() : String;
      
      function get _SafeStr_1622() : ApplicationDomain;
      
      function get version() : String;
      
      function get services() : _SafeCls_71;
      
      function get player() : _SafeCls_74;
      
      function get avatars() : _SafeCls_73;
      
      function get credits() : _SafeCls_76;
      
      function get currencies() : _SafeCls_72;
      
      function get lobby() : _SafeCls_77;
      
      function get tracking() : GameTracking;
      
      function get midRoll() : _SafeCls_132;
      
      function get chat() : _SafeCls_75;
      
      function get sponsorship() : _SafeCls_24;
      
      function get utils() : Utils;
      
      function get AMFGateway() : String;
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_24 = "_-3X"
 * @identifier _SafeCls_71 = "_-Rn"
 * @identifier _SafeCls_72 = "_-FX"
 * @identifier _SafeCls_73 = "_-Hp"
 * @identifier _SafeCls_74 = "_-Sq"
 * @identifier _SafeCls_75 = "_-Z3"
 * @identifier _SafeCls_76 = "_-jW"
 * @identifier _SafeCls_77 = "_-gt"
 * @identifier _SafeCls_132 = "_-AK"
 * @identifier _SafeStr_1622 = "_-OT"
 */
