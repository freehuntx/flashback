package _SafePkg_31
{
   import flash.utils.Dictionary;
   
   public class _SafeCls_32
   {
      
      private static const _SafeStr_1375:String = ".swf";
      
      private var _SafeStr_2292:String;
      
      private var _SafeStr_1311:String;
      
      private var _SafeStr_2427:String;
      
      private var _SafeStr_1682:String;
      
      private var _SafeStr_454:Dictionary;
      
      private var _SafeStr_1771:Dictionary;
      
      private var _SafeStr_965:String;
      
      private var _SafeStr_445:String;
      
      private var _SafeStr_2592:String;
      
      public function _SafeCls_32(param1:XML)
      {
         super();
         this._SafeStr_454 = new Dictionary();
         this._SafeStr_1771 = new Dictionary();
         this._SafeStr_2292 = param1.resourceLocations.apiResourceLocation.toString();
         this._SafeStr_1311 = param1.resourceLocations.jslResourceLocation.toString();
         this._SafeStr_2427 = param1.resourceLocations.jslResourceLocation.attribute("protocol").toString();
         this._SafeStr_965 = param1.resourceLocations.apiResourceLocation.attribute("core-dir").toString();
         this._SafeStr_1682 = param1.resourceLocations.apiResourceLocation.attribute("services-dir").toString();
         this._SafeStr_445 = param1.distribution.attribute("core-version").toString();
         this._SafeStr_2592 = param1.distribution.attribute("core-name").toString();
         this._SafeStr_2234(param1.core.services..service);
         this._SafeStr_580(param1.core.addons..addon);
      }
      
      public function get coreLocation() : String
      {
         return this._SafeStr_2292 + this._SafeStr_965 + this._SafeStr_2592 + "-" + this._SafeStr_445 + _SafeStr_1375;
      }
      
      public function get _SafeStr_1349() : String
      {
         return this._SafeStr_2292;
      }
      
      public function get _SafeStr_2257() : String
      {
         return this._SafeStr_1311;
      }
      
      public function get _SafeStr_2662() : String
      {
         return this._SafeStr_2427;
      }
      
      public function _SafeStr_1204(param1:String = "") : String
      {
         var _loc2_:String = null;
         if(!param1)
         {
            _loc2_ = this._SafeStr_2292 + this._SafeStr_1682;
         }
         return this._SafeStr_2292 + this._SafeStr_1682 + param1 + "-" + this._SafeStr_371(param1) + _SafeStr_1375;
      }
      
      public function _SafeStr_2611(param1:String = "") : String
      {
         var _loc2_:String = "1.0";
         if(!param1)
         {
            _loc2_ = "1.0";
         }
         var _loc3_:XML = this._SafeStr_454[param1];
         return _loc3_.attribute("rest-version").toString();
      }
      
      public function _SafeStr_371(param1:String = "") : String
      {
         var _loc2_:String = null;
         if(!param1)
         {
            _loc2_ = "1.2";
         }
         var _loc3_:XML = this._SafeStr_454[param1];
         return _loc3_.attribute("service-version").toString();
      }
      
      public function _SafeStr_367(param1:String) : XML
      {
         return this._SafeStr_454[param1];
      }
      
      private function _SafeStr_2234(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            this._SafeStr_454[_loc2_.attribute("name").toString()] = _loc2_;
         }
      }
      
      private function _SafeStr_580(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1)
         {
            this._SafeStr_1771[_loc2_.attribute("name").toString()] = _loc2_;
         }
      }
      
      public function get _SafeStr_657() : Dictionary
      {
         return this._SafeStr_454;
      }
      
      public function get _SafeStr_1299() : Dictionary
      {
         return this._SafeStr_1771;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_32 = "_-ar"
 * @identifier _SafePkg_31 = "_-6z"
 * @identifier _SafeStr_367 = "_-4L"
 * @identifier _SafeStr_371 = "_-Cb"
 * @identifier _SafeStr_445 = "_-kE"
 * @identifier _SafeStr_454 = "_-dT"
 * @identifier _SafeStr_580 = "_-LW"
 * @identifier _SafeStr_657 = "_-kA"
 * @identifier _SafeStr_965 = "_-B6"
 * @identifier _SafeStr_1204 = "_-ZL"
 * @identifier _SafeStr_1299 = "_-iC"
 * @identifier _SafeStr_1311 = "_-Yu"
 * @identifier _SafeStr_1349 = "_-hu"
 * @identifier _SafeStr_1375 = "_-G4"
 * @identifier _SafeStr_1682 = "_-jU"
 * @identifier _SafeStr_1771 = "_-U2"
 * @identifier _SafeStr_2234 = "_-Wx"
 * @identifier _SafeStr_2257 = "_-YJ"
 * @identifier _SafeStr_2292 = "_-bA"
 * @identifier _SafeStr_2427 = "_-JB"
 * @identifier _SafeStr_2592 = "_-j6"
 * @identifier _SafeStr_2611 = "_-iV"
 * @identifier _SafeStr_2662 = "_-9H"
 */
