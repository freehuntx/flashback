package flashx.textLayout.conversion
{
   import flash.utils.Dictionary;
   
   internal class CustomFormatImporter implements IFormatImporter
   {
      
      private var _rslt:Dictionary = null;
      
      public function CustomFormatImporter()
      {
         super();
      }
      
      public function reset() : void
      {
         this._rslt = null;
      }
      
      public function get result() : Object
      {
         return this._rslt;
      }
      
      public function importOneFormat(param1:String, param2:String) : Boolean
      {
         if(this._rslt == null)
         {
            this._rslt = new Dictionary();
         }
         this._rslt[param1] = param2;
         return true;
      }
   }
}

