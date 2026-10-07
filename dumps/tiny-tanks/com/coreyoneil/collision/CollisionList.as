package com.coreyoneil.collision
{
   import flash.display.DisplayObject;
   
   public class CollisionList extends CDK
   {
      
      public function CollisionList(param1:*, ... rest)
      {
         super();
         addItem(param1);
         var _loc3_:uint = 0;
         while(_loc3_ < rest.length)
         {
            addItem(rest[_loc3_]);
            _loc3_++;
         }
      }
      
      public function _SafeStr_900() : Array
      {
         var _loc3_:DisplayObject = null;
         _SafeStr_550();
         var _loc1_:uint = uint(_SafeStr_716.length);
         var _loc2_:* = DisplayObject(_SafeStr_716[0]);
         var _loc4_:uint = 1;
         while(_loc4_ < _loc1_)
         {
            _loc3_ = DisplayObject(_SafeStr_716[_loc4_]);
            if(_loc2_.hitTestObject(_loc3_))
            {
               if(_loc3_.width * _loc3_.height > _loc2_.width * _loc2_.height)
               {
                  _SafeStr_2400.push([_loc2_,_loc3_]);
               }
               else
               {
                  _SafeStr_2400.push([_loc3_,_loc2_]);
               }
            }
            _loc4_++;
         }
         _loc1_ = uint(_SafeStr_2400.length);
         _loc4_ = 0;
         while(_loc4_ < _loc1_)
         {
            _SafeStr_293(DisplayObject(_SafeStr_2400[_loc4_][0]),DisplayObject(_SafeStr_2400[_loc4_][1]));
            _loc4_++;
         }
         return _SafeStr_1582;
      }
      
      public function _SafeStr_500(param1:*) : void
      {
         if(param1 is DisplayObject)
         {
            _SafeStr_716[0] = param1;
            return;
         }
         throw new Error("Cannot swap target: " + param1 + " - item must be a Display Object.");
      }
      
      override public function removeItem(param1:*) : void
      {
         var _loc2_:int = int(_SafeStr_716.indexOf(param1));
         if(_loc2_ > 0)
         {
            _SafeStr_716.splice(_loc2_,1);
            return;
         }
         if(_loc2_ == 0)
         {
            throw new Error("You cannot remove the target from CollisionList.  Use swapTarget to change the target.");
         }
         throw new Error(param1 + " could not be removed - object not found in item list.");
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_293 = "_-DE"
 * @identifier _SafeStr_500 = "_-KN"
 * @identifier _SafeStr_550 = "_-j9"
 * @identifier _SafeStr_716 = "_-XA"
 * @identifier _SafeStr_900 = "_-Ju"
 * @identifier _SafeStr_1582 = "_-F1"
 * @identifier _SafeStr_2400 = "_-P1"
 */
