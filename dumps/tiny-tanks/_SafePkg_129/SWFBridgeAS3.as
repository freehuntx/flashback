package _SafePkg_129
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.LocalConnection;
   
   public class SWFBridgeAS3 extends EventDispatcher
   {
      
      private var baseID:String;
      
      private var myID:String;
      
      private var extID:String;
      
      private var _SafeStr_2391:LocalConnection;
      
      private var _SafeStr_2318:Boolean = false;
      
      private var host:Boolean = true;
      
      private var _SafeStr_1817:Object;
      
      public function SWFBridgeAS3(param1:String, param2:Object)
      {
         var p_id:String = param1;
         var p_clientObj:Object = param2;
         super();
         this.baseID = p_id.split(":").join("");
         this._SafeStr_2391 = new LocalConnection();
         this._SafeStr_2391.client = this;
         this._SafeStr_1817 = p_clientObj;
         try
         {
            this._SafeStr_2391.connect(this.baseID + "_host");
         }
         catch(e:ArgumentError)
         {
            host = false;
         }
         this.myID = this.baseID + (this.host ? "_host" : "_guest");
         this.extID = this.baseID + (this.host ? "_guest" : "_host");
         if(!this.host)
         {
            this._SafeStr_2391.connect(this.myID);
            this._SafeStr_2391.send(this.extID,"com_gskinner_utils_SWFBridge_init");
         }
      }
      
      public function send(param1:String, ... rest) : void
      {
         if(!this._SafeStr_2318)
         {
            throw new ArgumentError("Send failed because the object is not connected.");
         }
         rest.unshift(param1);
         rest.unshift("com_gskinner_utils_SWFBridge_receive");
         rest.unshift(this.extID);
         this._SafeStr_2391.send.apply(this._SafeStr_2391,rest);
      }
      
      public function close() : void
      {
         try
         {
            this._SafeStr_2391.close();
         }
         catch(e:*)
         {
         }
         this._SafeStr_2391 = null;
         this._SafeStr_1817 = null;
         if(!this._SafeStr_2318)
         {
            throw new ArgumentError("Close failed because the object is not connected.");
         }
         this._SafeStr_2318 = false;
      }
      
      public function get id() : String
      {
         return this.baseID;
      }
      
      public function get _SafeStr_1041() : Boolean
      {
         return this._SafeStr_2318;
      }
      
      public function com_gskinner_utils_SWFBridge_receive(param1:String, ... rest) : void
      {
         var p_method:String = param1;
         var p_args:Array = rest;
         try
         {
            this._SafeStr_1817[p_method].apply(this._SafeStr_1817,p_args);
         }
         catch(e:*)
         {
            trace("SWFBridge ERROR:  " + e);
         }
      }
      
      public function com_gskinner_utils_SWFBridge_init() : void
      {
         trace("SWFBridge (AS3) connected: " + (this.host ? "host" : "client"));
         if(this.host)
         {
            this._SafeStr_2391.send(this.extID,"com_gskinner_utils_SWFBridge_init");
         }
         this._SafeStr_2318 = true;
         dispatchEvent(new Event(Event.CONNECT));
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_129 = "_-L6"
 * @identifier _SafeStr_1041 = "_-SH"
 * @identifier _SafeStr_1817 = "_-Wt"
 * @identifier _SafeStr_2318 = "_-cc"
 * @identifier _SafeStr_2391 = "_-gW"
 */
