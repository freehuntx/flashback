package com.miniclip.loggers
{
   public class _SafeCls_65
   {
      
      public static const nothing:_SafeCls_65 = new _SafeCls_65(0,"nothing");
      
      public static const errors:_SafeCls_65 = new _SafeCls_65(1,"errors");
      
      public static const warnings:_SafeCls_65 = new _SafeCls_65(2,"warnings");
      
      public static const infos:_SafeCls_65 = new _SafeCls_65(3,"infos");
      
      public static const debugging:_SafeCls_65 = new _SafeCls_65(4,"debugging");
      
      public static const everything:_SafeCls_65 = new _SafeCls_65(5,"everything");
      
      private var _value:int;
      
      private var _name:String;
      
      public function _SafeCls_65(param1:int = 0, param2:String = "")
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public function toString() : String
      {
         return this._name;
      }
      
      public function valueOf() : int
      {
         return this._value;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_65 = "_-Pd"
 */
