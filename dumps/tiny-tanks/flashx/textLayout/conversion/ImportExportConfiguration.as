package flashx.textLayout.conversion
{
   import flashx.textLayout.tlf_internal;
   
   use namespace tlf_internal;
   
   public class ImportExportConfiguration
   {
      
      tlf_internal var flowElementInfoList:Object = {};
      
      tlf_internal var flowElementClassList:Object = {};
      
      tlf_internal var classToNameMap:Object = {};
      
      public function ImportExportConfiguration()
      {
         super();
      }
      
      public function addIEInfo(param1:String, param2:Class, param3:Function, param4:Function) : void
      {
         var _loc5_:FlowElementInfo = new FlowElementInfo(param2,param3,param4);
         if(param1)
         {
            this.flowElementInfoList[param1] = _loc5_;
         }
         if(param2)
         {
            this.flowElementClassList[_loc5_.flowClassName] = _loc5_;
         }
         if(Boolean(param1) && Boolean(param2))
         {
            this.classToNameMap[_loc5_.flowClassName] = param1;
         }
      }
      
      public function lookup(param1:String) : FlowElementInfo
      {
         return this.flowElementInfoList[param1];
      }
      
      public function lookupName(param1:String) : String
      {
         return this.classToNameMap[param1];
      }
      
      public function lookupByClass(param1:String) : FlowElementInfo
      {
         return this.flowElementClassList[param1];
      }
   }
}

