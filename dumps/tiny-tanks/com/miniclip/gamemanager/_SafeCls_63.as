package com.miniclip.gamemanager
{
   public class _SafeCls_63
   {
      
      private var _id:uint;
      
      private var _title:String;
      
      private var _description:String;
      
      public function _SafeCls_63(param1:Object)
      {
         super();
         this._id = uint(param1.id);
         this._title = String(param1.title);
         this._description = String(param1.description);
      }
      
      public function toString(param1:Boolean = false) : String
      {
         var _loc2_:String = "[AwardData (" + this._id + ") " + this._title + "]";
         if(param1)
         {
            _loc2_ += "\rdescription:\r\"" + this._description + "\"";
         }
         return _loc2_;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get title() : String
      {
         return this._title;
      }
      
      public function get description() : String
      {
         return this._description;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_63 = "_-Y0"
 */
