package com.google.analytics.core
{
   import com.google.analytics.external.AdSenseGlobals;
   import com.google.analytics.utils.Environment;
   import com.google.analytics.utils.Variables;
   import com.google.analytics.v4.Configuration;
   
   public class DocumentInfo
   {
      
      private var _pageURL:String;
      
      private var _utmr:String;
      
      private var _config:Configuration;
      
      private var _adSense:AdSenseGlobals;
      
      private var _info:Environment;
      
      public function DocumentInfo(param1:Configuration, param2:Environment, param3:String, param4:String = null, param5:AdSenseGlobals = null)
      {
         super();
         _config = param1;
         _info = param2;
         _utmr = param3;
         _pageURL = param4;
         _adSense = param5;
      }
      
      public function get utmr() : String
      {
         if(!_utmr)
         {
            return "-";
         }
         return _utmr;
      }
      
      public function toURLString() : String
      {
         var _loc1_:Variables = toVariables();
         return _loc1_.toString();
      }
      
      private function _renderPageURL(param1:String = "") : String
      {
         var _loc2_:String = _info.locationPath;
         var _loc3_:String = _info.locationSearch;
         if(!param1 || param1 == "")
         {
            param1 = _loc2_ + unescape(_loc3_);
         }
         return param1;
      }
      
      public function get utmp() : String
      {
         return _renderPageURL(_pageURL);
      }
      
      public function get utmhid() : String
      {
         return String(_generateHitId());
      }
      
      private function _generateHitId() : Number
      {
         var _loc1_:Number = NaN;
         if(Boolean(_adSense.hid) && _adSense.hid != "")
         {
            _loc1_ = Number(Number(_adSense.hid));
         }
         else
         {
            _loc1_ = Number(Math.round(Math.random() * 2147483647));
            _adSense.hid = String(_loc1_);
         }
         return _loc1_;
      }
      
      public function toVariables() : Variables
      {
         var _loc1_:Variables = new Variables();
         _loc1_.URIencode = true;
         if(_config.detectTitle && utmdt != "")
         {
            _loc1_.utmdt = utmdt;
         }
         _loc1_.utmhid = utmhid;
         _loc1_.utmr = utmr;
         _loc1_.utmp = utmp;
         return _loc1_;
      }
      
      public function get utmdt() : String
      {
         return _info.documentTitle;
      }
   }
}

