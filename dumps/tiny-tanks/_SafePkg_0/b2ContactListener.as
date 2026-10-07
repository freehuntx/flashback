package _SafePkg_0
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_20.*;
   import _SafePkg_8.*;
   import _SafePkg_19.*;
   
   use namespace b2internal;
   
   public class b2ContactListener
   {
      
      b2internal static var b2_defaultListener:b2ContactListener = new b2ContactListener();
      
      public function b2ContactListener()
      {
         super();
      }
      
      public function _SafeStr_2319(param1:b2Contact) : void
      {
         var _loc2_:Object = new Object();
         if(Boolean(param1._SafeStr_1281.GetBody().GetUserData()) && Boolean(param1._SafeStr_384.GetBody().GetUserData()))
         {
            if(param1._SafeStr_1281.GetBody().GetUserData().type == "bullet" && param1._SafeStr_384.GetBody().GetUserData().type == "tank")
            {
               _loc2_ = param1._SafeStr_1281.GetBody().GetUserData();
               _loc2_.removeme = true;
               param1._SafeStr_1281.GetBody().SetUserData(_loc2_);
               _loc2_ = new Object();
               _loc2_.type = param1._SafeStr_384.GetBody().GetUserData().type;
               _loc2_.tankid = param1._SafeStr_384.GetBody().GetUserData().tankid;
               _loc2_.tankhit = true;
               _loc2_.tankhitbulletid = param1._SafeStr_1281.GetBody().GetUserData().bulletID;
               _loc2_.attackingtankid = param1._SafeStr_1281.GetBody().GetUserData().tankID;
               param1._SafeStr_384.GetBody().SetUserData(_loc2_);
            }
            if(param1._SafeStr_1281.GetBody().GetUserData().type == "tank" && param1._SafeStr_384.GetBody().GetUserData().type == "bullet")
            {
               _loc2_ = param1._SafeStr_384.GetBody().GetUserData();
               _loc2_.removeme = true;
               param1._SafeStr_384.GetBody().SetUserData(_loc2_);
               _loc2_ = new Object();
               _loc2_.type = param1._SafeStr_1281.GetBody().GetUserData().type;
               _loc2_.tankid = param1._SafeStr_1281.GetBody().GetUserData().tankid;
               _loc2_.tankhit = true;
               _loc2_.tankhitbulletid = param1._SafeStr_384.GetBody().GetUserData().bulletID;
               _loc2_.attackingtankid = param1._SafeStr_384.GetBody().GetUserData().tankID;
               param1._SafeStr_1281.GetBody().SetUserData(_loc2_);
            }
            if(param1._SafeStr_1281.GetBody().GetUserData().type == "wall" && param1._SafeStr_384.GetBody().GetUserData().type == "bullet")
            {
               _loc2_ = param1._SafeStr_384.GetBody().GetUserData();
               _loc2_.bulletcollidedwithwall = true;
               ++_loc2_.bouncecount;
               param1._SafeStr_384.GetBody().SetUserData(_loc2_);
            }
            if(param1._SafeStr_1281.GetBody().GetUserData().type == "bullet" && param1._SafeStr_384.GetBody().GetUserData().type == "wall")
            {
               _loc2_ = param1._SafeStr_1281.GetBody().GetUserData();
               _loc2_.bulletcollidedwithwall = true;
               ++_loc2_.bouncecount;
               param1._SafeStr_1281.GetBody().SetUserData(_loc2_);
            }
         }
      }
      
      public function _SafeStr_586(param1:b2Contact) : void
      {
      }
      
      public function _SafeStr_1328(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      public function _SafeStr_2433(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_384 = "_-Wi"
 * @identifier _SafeStr_586 = "_-SL"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1328 = "_-5A"
 * @identifier _SafeStr_2319 = "_-Z5"
 * @identifier _SafeStr_2433 = "_-EL"
 */
