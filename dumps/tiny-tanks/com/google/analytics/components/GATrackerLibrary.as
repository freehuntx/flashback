package com.google.analytics.components
{
   import com.google.analytics.API;
   import com.google.analytics.utils.Version;
   import flash.display.MovieClip;
   
   public class GATrackerLibrary extends MovieClip
   {
      
      public static var version:Version = API.version;
      
      public function GATrackerLibrary()
      {
         super();
      }
   }
}

