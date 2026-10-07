package com.miniclip
{
   import com.miniclip.gamemanager.GameTracking;
   import com.miniclip.gamemanager.Utils;
   import com.miniclip.gamemanager._SafeCls_24;
   import com.miniclip.gamemanager._SafeCls_132;
   import com.miniclip.gamemanager._SafeCls_72;
   import com.miniclip.gamemanager._SafeCls_73;
   import com.miniclip.gamemanager._SafeCls_71;
   import com.miniclip.gamemanager._SafeCls_74;
   import com.miniclip.gamemanager._SafeCls_75;
   import com.miniclip.gamemanager._SafeCls_77;
   import com.miniclip.gamemanager._SafeCls_76;
   import flash.display.DisplayObjectContainer;
   
   public class _SafeCls_4
   {
      
      public function _SafeCls_4()
      {
         super();
      }
      
      public static function init(param1:DisplayObjectContainer) : void
      {
         MiniclipGameManager.init(param1);
      }
      
      public static function get ready() : Boolean
      {
         return MiniclipGameManager.ready;
      }
      
      public static function get info() : String
      {
         return MiniclipGameManager.info;
      }
      
      public static function get version() : String
      {
         return MiniclipGameManager.version;
      }
      
      public static function get services() : _SafeCls_71
      {
         return MiniclipGameManager.services;
      }
      
      public static function get player() : _SafeCls_74
      {
         return MiniclipGameManager.player;
      }
      
      public static function get avatars() : _SafeCls_73
      {
         return MiniclipGameManager.avatars;
      }
      
      public static function get credits() : _SafeCls_76
      {
         return MiniclipGameManager.credits;
      }
      
      public static function get lobby() : _SafeCls_77
      {
         return MiniclipGameManager.lobby;
      }
      
      public static function get tracking() : GameTracking
      {
         return MiniclipGameManager.tracking;
      }
      
      public static function get midRoll() : _SafeCls_132
      {
         return MiniclipGameManager.midRoll;
      }
      
      public static function get chat() : _SafeCls_75
      {
         return MiniclipGameManager.chat;
      }
      
      public static function get sponsorship() : _SafeCls_24
      {
         return MiniclipGameManager.sponsorship;
      }
      
      public static function get currencies() : _SafeCls_72
      {
         return MiniclipGameManager.currencies;
      }
      
      public static function get utils() : Utils
      {
         return MiniclipGameManager.utils;
      }
      
      public static function get AMFGateway() : String
      {
         return MiniclipGameManager.AMFGateway;
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         MiniclipGameManager.addEventListener(param1,param2,false,0,true);
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         MiniclipGameManager.removeEventListener(param1,param2);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return MiniclipGameManager.hasEventListener(param1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "_-ep"
 * @identifier _SafeCls_24 = "_-3X"
 * @identifier _SafeCls_71 = "_-Rn"
 * @identifier _SafeCls_72 = "_-FX"
 * @identifier _SafeCls_73 = "_-Hp"
 * @identifier _SafeCls_74 = "_-Sq"
 * @identifier _SafeCls_75 = "_-Z3"
 * @identifier _SafeCls_76 = "_-jW"
 * @identifier _SafeCls_77 = "_-gt"
 * @identifier _SafeCls_132 = "_-AK"
 */
