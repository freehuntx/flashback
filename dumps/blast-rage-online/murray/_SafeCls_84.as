package murray
{
   import _SafePkg_20._SafeCls_66;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.net.SharedObject;
   
   public class _SafeCls_84 extends EventDispatcher
   {
      
      public var mc:MovieClip;
      
      private var gs:_SafeCls_4;
      
      private var _SafeStr_531:_SafeCls_86;
      
      private var _SafeStr_485:_SafeCls_86;
      
      private var sm:_SafeCls_6;
      
      private var bro_so:SharedObject;
      
      public function _SafeCls_84(param1:MovieClip)
      {
         super();
         this.mc = param1;
         this.bro_so = SharedObject.getLocal("bro_so");
         param1.low_quality.buttonMode = true;
         param1.low_quality.useHandCursor = true;
         param1.display_names.buttonMode = true;
         param1.display_names.useHandCursor = true;
         this.gs = _SafeCls_4._SafeStr_121();
         this.sm = _SafeCls_6._SafeStr_121();
         this._SafeStr_531 = new _SafeCls_86(param1.slider_sfx);
         this._SafeStr_531._SafeStr_559(this.sm._SafeStr_190 * 100);
         this._SafeStr_531.addEventListener(Event.CHANGE,this._SafeStr_1091);
         this._SafeStr_485 = new _SafeCls_86(param1.slider_music);
         this._SafeStr_485._SafeStr_559(this.sm.music_volume * 100);
         this._SafeStr_485.addEventListener(Event.CHANGE,this._SafeStr_1074);
         _SafeCls_10._SafeStr_113(param1.leave_arena);
         _SafeCls_10._SafeStr_113(param1.ok);
         _SafeCls_10._SafeStr_113(param1.check_deathmatch);
         _SafeCls_10._SafeStr_113(param1.check_team_deathmatch);
         _SafeCls_10._SafeStr_113(param1.check_overload);
         param1.check_deathmatch.addEventListener(MouseEvent.CLICK,this._SafeStr_1187);
         param1.check_team_deathmatch.addEventListener(MouseEvent.CLICK,this._SafeStr_1039);
         param1.customize_controls.addEventListener(MouseEvent.CLICK,this._SafeStr_1076);
      }
      
      public function _SafeStr_391(param1:MouseEvent) : void
      {
         this.mc.ok.removeEventListener(MouseEvent.CLICK,this._SafeStr_391);
         this.mc.ok2.removeEventListener(MouseEvent.CLICK,this._SafeStr_391);
         this.mc.leave_arena.removeEventListener(MouseEvent.CLICK,this._SafeStr_682);
         this.mc.low_quality.removeEventListener(MouseEvent.CLICK,this._SafeStr_921);
         this.mc.display_names.removeEventListener(MouseEvent.CLICK,this._SafeStr_908);
         this.mc.visible = false;
         dispatchEvent(new _SafeCls_66(_SafeCls_66.CLOSE));
      }
      
      public function _SafeStr_1076(param1:MouseEvent) : void
      {
         this.mc.visible = false;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_403));
      }
      
      public function _SafeStr_682(param1:MouseEvent) : void
      {
         this.mc.visible = false;
         dispatchEvent(new _SafeCls_66(_SafeCls_66._SafeStr_218));
      }
      
      public function _SafeStr_567() : void
      {
         this.mc.check_deathmatch.gotoAndStop(1);
         this.mc.check_team_deathmatch.gotoAndStop(1);
         this.mc.check_overload.gotoAndStop(1);
      }
      
      public function _SafeStr_1187(param1:MouseEvent) : void
      {
         this._SafeStr_567();
         this.gs.preferred_game_mode = _SafeCls_4._SafeStr_144;
         this.bro_so.data.preferred_game_mode = this.gs.preferred_game_mode;
         this.mc.check_deathmatch.gotoAndStop(2);
      }
      
      public function _SafeStr_1039(param1:MouseEvent) : void
      {
         this._SafeStr_567();
         this.gs.preferred_game_mode = _SafeCls_4._SafeStr_213;
         this.bro_so.data.preferred_game_mode = this.gs.preferred_game_mode;
         this.mc.check_team_deathmatch.gotoAndStop(2);
      }
      
      public function _SafeStr_1251(param1:MouseEvent) : void
      {
         this._SafeStr_567();
         this.gs.preferred_game_mode = _SafeCls_4._SafeStr_164;
         this.bro_so.data.preferred_game_mode = this.gs.preferred_game_mode;
         this.mc.check_overload.gotoAndStop(2);
      }
      
      public function _SafeStr_353() : void
      {
         this.mc.ok.addEventListener(MouseEvent.CLICK,this._SafeStr_391);
         this.mc.ok2.addEventListener(MouseEvent.CLICK,this._SafeStr_391);
         this.mc.leave_arena.addEventListener(MouseEvent.CLICK,this._SafeStr_682);
         this.mc.low_quality.addEventListener(MouseEvent.CLICK,this._SafeStr_921);
         this.mc.display_names.addEventListener(MouseEvent.CLICK,this._SafeStr_908);
         this.mc.visible = true;
         this._SafeStr_531._SafeStr_559(this.sm._SafeStr_190 * 100);
         this._SafeStr_485._SafeStr_559(this.sm.music_volume * 100);
         if(this.gs.low_quality)
         {
            this.mc.low_quality.gotoAndStop(2);
         }
         else
         {
            this.mc.low_quality.gotoAndStop(1);
         }
         if(this.gs.show_names)
         {
            this.mc.display_names.gotoAndStop(2);
         }
         else
         {
            this.mc.display_names.gotoAndStop(1);
         }
         this._SafeStr_567();
         if(this.gs.preferred_game_mode == _SafeCls_4._SafeStr_144)
         {
            this.mc.check_deathmatch.gotoAndStop(2);
         }
         else if(this.gs.preferred_game_mode == _SafeCls_4._SafeStr_213)
         {
            this.mc.check_team_deathmatch.gotoAndStop(2);
         }
         else if(this.gs.preferred_game_mode == _SafeCls_4._SafeStr_164)
         {
            this.mc.check_overload.gotoAndStop(2);
         }
      }
      
      public function _SafeStr_1091(param1:Event) : void
      {
         this.sm._SafeStr_190 = this._SafeStr_531.value * 1 / 100;
         this.bro_so.data.sfx_volume = this.sm._SafeStr_190;
      }
      
      public function _SafeStr_1074(param1:Event) : void
      {
         this.sm.music_volume = this._SafeStr_485.value * 1 / 100;
         this.bro_so.data.music_volume = this.sm.music_volume;
      }
      
      public function _SafeStr_921(param1:MouseEvent) : void
      {
         this.gs.low_quality = !this.gs.low_quality;
         if(this.gs.low_quality)
         {
            this.mc.low_quality.gotoAndStop(2);
         }
         else
         {
            this.mc.low_quality.gotoAndStop(1);
         }
         this.bro_so.data.low_quality = this.gs.low_quality;
      }
      
      public function _SafeStr_908(param1:MouseEvent) : void
      {
         this.gs.show_names = !this.gs.show_names;
         if(this.gs.show_names)
         {
            this.mc.display_names.gotoAndStop(2);
         }
         else
         {
            this.mc.display_names.gotoAndStop(1);
         }
         this.bro_so.data.show_names = this.gs.show_names;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_4 = "final"
 * @identifier _SafeCls_6 = "%B"
 * @identifier _SafeCls_10 = "@7"
 * @identifier _SafeCls_66 = "#="
 * @identifier _SafeCls_84 = "%5"
 * @identifier _SafeCls_86 = "-J"
 * @identifier _SafePkg_20 = "??"
 * @identifier _SafeStr_113 = "#-"
 * @identifier _SafeStr_121 = "[8"
 * @identifier _SafeStr_144 = "set "
 * @identifier _SafeStr_164 = "4T"
 * @identifier _SafeStr_190 = " ;"
 * @identifier _SafeStr_213 = "#6"
 * @identifier _SafeStr_218 = "]M"
 * @identifier _SafeStr_353 = "#5"
 * @identifier _SafeStr_391 = "5P"
 * @identifier _SafeStr_403 = "&<"
 * @identifier _SafeStr_485 = "<C"
 * @identifier _SafeStr_531 = "%M"
 * @identifier _SafeStr_559 = "1G"
 * @identifier _SafeStr_567 = ";#"
 * @identifier _SafeStr_682 = "&T"
 * @identifier _SafeStr_908 = "6@"
 * @identifier _SafeStr_921 = "<1"
 * @identifier _SafeStr_1039 = "-N"
 * @identifier _SafeStr_1074 = "\'="
 * @identifier _SafeStr_1076 = "6L"
 * @identifier _SafeStr_1091 = ";%"
 * @identifier _SafeStr_1187 = "@"
 * @identifier _SafeStr_1251 = ",T"
 */
