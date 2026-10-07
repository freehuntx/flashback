package _SafePkg_0
{
   import Box2D.Common.b2internal;
   import _SafePkg_20._SafeCls_21;
   import _SafePkg_20.b2ContactPoint;
   import _SafePkg_20.b2DynamicTreeBroadPhase;
   import _SafePkg_19.b2Contact;
   import _SafePkg_19.b2ContactEdge;
   import _SafePkg_19.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const _SafeStr_2426:b2ContactPoint = new b2ContactPoint();
      
      b2internal var _SafeStr_729:b2World;
      
      b2internal var _SafeStr_450:_SafeCls_21;
      
      b2internal var m_contactList:b2Contact;
      
      b2internal var _SafeStr_493:int;
      
      b2internal var _SafeStr_1246:b2ContactFilter;
      
      b2internal var _SafeStr_1999:b2ContactListener;
      
      b2internal var _SafeStr_1821:b2ContactFactory;
      
      b2internal var _SafeStr_1004:*;
      
      public function b2ContactManager()
      {
         super();
         this._SafeStr_729 = null;
         this._SafeStr_493 = 0;
         this._SafeStr_1246 = b2ContactFilter.b2_defaultFilter;
         this._SafeStr_1999 = b2ContactListener.b2_defaultListener;
         this._SafeStr_1821 = new b2ContactFactory(this._SafeStr_1004);
         this._SafeStr_450 = new b2DynamicTreeBroadPhase();
      }
      
      public function _SafeStr_2358(param1:*, param2:*) : void
      {
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc5_ == _loc6_)
         {
            return;
         }
         var _loc7_:b2ContactEdge = _loc6_.GetContactList();
         while(_loc7_)
         {
            if(_loc7_.other == _loc5_)
            {
               _loc9_ = _loc7_._SafeStr_919._SafeStr_665();
               _loc10_ = _loc7_._SafeStr_919._SafeStr_2320();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc6_._SafeStr_2094(_loc5_) == false)
         {
            return;
         }
         if(this._SafeStr_1246._SafeStr_2094(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact = this._SafeStr_1821.Create(_loc3_,_loc4_);
         _loc3_ = _loc8_._SafeStr_665();
         _loc4_ = _loc8_._SafeStr_2320();
         _loc5_ = _loc3_._SafeStr_2654;
         _loc6_ = _loc4_._SafeStr_2654;
         _loc8_._SafeStr_2380 = null;
         _loc8_._SafeStr_2195 = this._SafeStr_729.m_contactList;
         if(this._SafeStr_729.m_contactList != null)
         {
            this._SafeStr_729.m_contactList._SafeStr_2380 = _loc8_;
         }
         this._SafeStr_729.m_contactList = _loc8_;
         _loc8_._SafeStr_2382._SafeStr_919 = _loc8_;
         _loc8_._SafeStr_2382.other = _loc6_;
         _loc8_._SafeStr_2382._SafeStr_2150 = null;
         _loc8_._SafeStr_2382.next = _loc5_.m_contactList;
         if(_loc5_.m_contactList != null)
         {
            _loc5_.m_contactList._SafeStr_2150 = _loc8_._SafeStr_2382;
         }
         _loc5_.m_contactList = _loc8_._SafeStr_2382;
         _loc8_._SafeStr_2085._SafeStr_919 = _loc8_;
         _loc8_._SafeStr_2085.other = _loc5_;
         _loc8_._SafeStr_2085._SafeStr_2150 = null;
         _loc8_._SafeStr_2085.next = _loc6_.m_contactList;
         if(_loc6_.m_contactList != null)
         {
            _loc6_.m_contactList._SafeStr_2150 = _loc8_._SafeStr_2085;
         }
         _loc6_.m_contactList = _loc8_._SafeStr_2085;
         ++this._SafeStr_729._SafeStr_493;
      }
      
      public function _SafeStr_2390() : void
      {
         this._SafeStr_450._SafeStr_1268(this._SafeStr_2358);
      }
      
      public function Destroy(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1._SafeStr_665();
         var _loc3_:b2Fixture = param1._SafeStr_2320();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.IsTouching())
         {
            this._SafeStr_1999._SafeStr_586(param1);
         }
         if(param1._SafeStr_2380)
         {
            param1._SafeStr_2380._SafeStr_2195 = param1._SafeStr_2195;
         }
         if(param1._SafeStr_2195)
         {
            param1._SafeStr_2195._SafeStr_2380 = param1._SafeStr_2380;
         }
         if(param1 == this._SafeStr_729.m_contactList)
         {
            this._SafeStr_729.m_contactList = param1._SafeStr_2195;
         }
         if(param1._SafeStr_2382._SafeStr_2150)
         {
            param1._SafeStr_2382._SafeStr_2150.next = param1._SafeStr_2382.next;
         }
         if(param1._SafeStr_2382.next)
         {
            param1._SafeStr_2382.next._SafeStr_2150 = param1._SafeStr_2382._SafeStr_2150;
         }
         if(param1._SafeStr_2382 == _loc4_.m_contactList)
         {
            _loc4_.m_contactList = param1._SafeStr_2382.next;
         }
         if(param1._SafeStr_2085._SafeStr_2150)
         {
            param1._SafeStr_2085._SafeStr_2150.next = param1._SafeStr_2085.next;
         }
         if(param1._SafeStr_2085.next)
         {
            param1._SafeStr_2085.next._SafeStr_2150 = param1._SafeStr_2085._SafeStr_2150;
         }
         if(param1._SafeStr_2085 == _loc5_.m_contactList)
         {
            _loc5_.m_contactList = param1._SafeStr_2085.next;
         }
         this._SafeStr_1821.Destroy(param1);
         --this._SafeStr_493;
      }
      
      public function _SafeStr_1798() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this._SafeStr_729.m_contactList;
         while(_loc1_)
         {
            _loc2_ = _loc1_._SafeStr_665();
            _loc3_ = _loc1_._SafeStr_2320();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_._SafeStr_2035() == false && _loc5_._SafeStr_2035() == false)
            {
               _loc1_ = _loc1_._SafeStr_1023();
            }
            else
            {
               if(_loc1_._SafeStr_1043 & b2Contact._SafeStr_307)
               {
                  if(_loc5_._SafeStr_2094(_loc4_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_._SafeStr_1023();
                     this.Destroy(_loc9_);
                     continue;
                  }
                  if(this._SafeStr_1246._SafeStr_2094(_loc2_,_loc3_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_._SafeStr_1023();
                     this.Destroy(_loc9_);
                     continue;
                  }
                  _loc1_._SafeStr_1043 &= ~b2Contact._SafeStr_307;
               }
               _loc6_ = _loc2_._SafeStr_1343;
               _loc7_ = _loc3_._SafeStr_1343;
               _loc8_ = this._SafeStr_450._SafeStr_444(_loc6_,_loc7_);
               if(_loc8_ == false)
               {
                  _loc9_ = _loc1_;
                  _loc1_ = _loc9_._SafeStr_1023();
                  this.Destroy(_loc9_);
               }
               else
               {
                  _loc1_._SafeStr_2614(this._SafeStr_1999);
                  _loc1_ = _loc1_._SafeStr_1023();
               }
            }
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_21 = "_-Ah"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_307 = "_-D5"
 * @identifier _SafeStr_444 = "_-86"
 * @identifier _SafeStr_450 = "_-9U"
 * @identifier _SafeStr_493 = "_-Xy"
 * @identifier _SafeStr_586 = "_-SL"
 * @identifier _SafeStr_665 = "_-DF"
 * @identifier _SafeStr_729 = "_-MM"
 * @identifier _SafeStr_919 = "_-bD"
 * @identifier _SafeStr_1004 = "_-3C"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1043 = "_-iv"
 * @identifier _SafeStr_1246 = "_-Ky"
 * @identifier _SafeStr_1268 = "_-HF"
 * @identifier _SafeStr_1343 = "_-WS"
 * @identifier _SafeStr_1798 = "_-Vz"
 * @identifier _SafeStr_1821 = "_-LV"
 * @identifier _SafeStr_1999 = "_-fO"
 * @identifier _SafeStr_2035 = "_-ZE"
 * @identifier _SafeStr_2085 = "_-7N"
 * @identifier _SafeStr_2094 = "_-5Z"
 * @identifier _SafeStr_2150 = "_-1O"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2320 = "_-ga"
 * @identifier _SafeStr_2358 = "_-i5"
 * @identifier _SafeStr_2380 = "_-36"
 * @identifier _SafeStr_2382 = "_-ge"
 * @identifier _SafeStr_2390 = "_-bd"
 * @identifier _SafeStr_2426 = "_-Lo"
 * @identifier _SafeStr_2614 = "_-Yf"
 * @identifier _SafeStr_2654 = "_-jK"
 */
