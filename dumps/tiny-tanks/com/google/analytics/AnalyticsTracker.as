package com.google.analytics
{
   import com.google.analytics.debug.DebugConfiguration;
   import com.google.analytics.v4.Configuration;
   import com.google.analytics.v4.GoogleAnalyticsAPI;
   import flash.events.IEventDispatcher;
   
   public interface AnalyticsTracker extends GoogleAnalyticsAPI, IEventDispatcher
   {
      
      function set account(param1:String) : void;
      
      function get config() : Configuration;
      
      function get mode() : String;
      
      function set config(param1:Configuration) : void;
      
      function set mode(param1:String) : void;
      
      function set debug(param1:DebugConfiguration) : void;
      
      function get visualDebug() : Boolean;
      
      function get account() : String;
      
      function set visualDebug(param1:Boolean) : void;
      
      function isReady() : Boolean;
      
      function get debug() : DebugConfiguration;
   }
}

