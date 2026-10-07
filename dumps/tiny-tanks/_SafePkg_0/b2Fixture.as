package _SafePkg_0
{
   import Box2D.Common.Math.b2Math;
   import Box2D.Common.Math.b2Transform;
   import Box2D.Common.Math.b2Vec2;
   import Box2D.Common.b2internal;
   import _SafePkg_20._SafeCls_21;
   import _SafePkg_20.b2AABB;
   import _SafePkg_20.b2RayCastInput;
   import _SafePkg_20.b2RayCastOutput;
   import _SafePkg_8.b2MassData;
   import _SafePkg_8.b2Shape;
   import _SafePkg_19.b2Contact;
   import _SafePkg_19.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
      
      private var _SafeStr_2367:b2MassData;
      
      b2internal var _SafeStr_930:b2AABB;
      
      b2internal var _SafeStr_1754:Number;
      
      b2internal var _SafeStr_2195:b2Fixture;
      
      b2internal var _SafeStr_2654:b2Body;
      
      b2internal var _SafeStr_1674:b2Shape;
      
      b2internal var _SafeStr_1361:Number;
      
      b2internal var _SafeStr_2128:Number;
      
      b2internal var _SafeStr_1343:*;
      
      b2internal var _SafeStr_2251:b2FilterData = new b2FilterData();
      
      b2internal var _SafeStr_415:Boolean;
      
      b2internal var _SafeStr_961:*;
      
      public function b2Fixture()
      {
         super();
         this._SafeStr_930 = new b2AABB();
         this._SafeStr_961 = null;
         this._SafeStr_2654 = null;
         this._SafeStr_2195 = null;
         this._SafeStr_1674 = null;
         this._SafeStr_1754 = 0;
         this._SafeStr_1361 = 0;
         this._SafeStr_2128 = 0;
      }
      
      public function _SafeStr_978() : int
      {
         return this._SafeStr_1674._SafeStr_978();
      }
      
      public function _SafeStr_745() : b2Shape
      {
         return this._SafeStr_1674;
      }
      
      public function _SafeStr_1673(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this._SafeStr_415 == param1)
         {
            return;
         }
         this._SafeStr_415 = param1;
         if(this._SafeStr_2654 == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this._SafeStr_2654.GetContactList();
         while(_loc2_)
         {
            _loc3_ = _loc2_._SafeStr_919;
            _loc4_ = _loc3_._SafeStr_665();
            _loc5_ = _loc3_._SafeStr_2320();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_._SafeStr_1673(_loc4_._SafeStr_1563() || _loc5_._SafeStr_1563());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function _SafeStr_1563() : Boolean
      {
         return this._SafeStr_415;
      }
      
      public function _SafeStr_2403(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this._SafeStr_2251 = param1._SafeStr_2396();
         if(this._SafeStr_2654)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this._SafeStr_2654.GetContactList();
         while(_loc2_)
         {
            _loc3_ = _loc2_._SafeStr_919;
            _loc4_ = _loc3_._SafeStr_665();
            _loc5_ = _loc3_._SafeStr_2320();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.FlagForFiltering();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function _SafeStr_1423() : b2FilterData
      {
         return this._SafeStr_2251._SafeStr_2396();
      }
      
      public function GetBody() : b2Body
      {
         return this._SafeStr_2654;
      }
      
      public function _SafeStr_1023() : b2Fixture
      {
         return this._SafeStr_2195;
      }
      
      public function GetUserData() : *
      {
         return this._SafeStr_961;
      }
      
      public function SetUserData(param1:*) : void
      {
         this._SafeStr_961 = param1;
      }
      
      public function _SafeStr_1865(param1:b2Vec2) : Boolean
      {
         return this._SafeStr_1674._SafeStr_1865(this._SafeStr_2654.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this._SafeStr_1674.RayCast(param1,param2,this._SafeStr_2654.GetTransform());
      }
      
      public function _SafeStr_760(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this._SafeStr_1674._SafeStr_1244(param1,this._SafeStr_1754);
         return param1;
      }
      
      public function _SafeStr_685(param1:Number) : void
      {
         this._SafeStr_1754 = param1;
      }
      
      public function _SafeStr_1580() : Number
      {
         return this._SafeStr_1754;
      }
      
      public function _SafeStr_1833() : Number
      {
         return this._SafeStr_1361;
      }
      
      public function _SafeStr_554(param1:Number) : void
      {
         this._SafeStr_1361 = param1;
      }
      
      public function _SafeStr_1829() : Number
      {
         return this._SafeStr_2128;
      }
      
      public function _SafeStr_1790(param1:Number) : void
      {
         this._SafeStr_2128 = param1;
      }
      
      public function _SafeStr_1180() : b2AABB
      {
         return this._SafeStr_930;
      }
      
      b2internal function Create(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this._SafeStr_961 = param3.userData;
         this._SafeStr_1361 = param3.friction;
         this._SafeStr_2128 = param3.restitution;
         this._SafeStr_2654 = param1;
         this._SafeStr_2195 = null;
         this._SafeStr_2251 = param3.filter._SafeStr_2396();
         this._SafeStr_415 = param3._SafeStr_385;
         this._SafeStr_1674 = param3.shape._SafeStr_2396();
         this._SafeStr_1754 = param3.density;
      }
      
      b2internal function Destroy() : void
      {
         this._SafeStr_1674 = null;
      }
      
      b2internal function _SafeStr_491(param1:_SafeCls_21, param2:b2Transform) : void
      {
         this._SafeStr_1674._SafeStr_2297(this._SafeStr_930,param2);
         this._SafeStr_1343 = param1._SafeStr_491(this._SafeStr_930,this);
      }
      
      b2internal function _SafeStr_1535(param1:_SafeCls_21) : void
      {
         if(this._SafeStr_1343 == null)
         {
            return;
         }
         param1._SafeStr_1535(this._SafeStr_1343);
         this._SafeStr_1343 = null;
      }
      
      b2internal function _SafeStr_839(param1:_SafeCls_21, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this._SafeStr_1343)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this._SafeStr_1674._SafeStr_2297(_loc4_,param2);
         this._SafeStr_1674._SafeStr_2297(_loc5_,param3);
         this._SafeStr_930._SafeStr_1880(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math._SafeStr_2442(param3.position,param2.position);
         param1._SafeStr_602(this._SafeStr_1343,this._SafeStr_930,_loc6_);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_21 = "_-Ah"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_385 = "_-SC"
 * @identifier _SafeStr_415 = "_-5U"
 * @identifier _SafeStr_491 = "_-b4"
 * @identifier _SafeStr_554 = "_-4"
 * @identifier _SafeStr_602 = "_-3E"
 * @identifier _SafeStr_665 = "_-DF"
 * @identifier _SafeStr_685 = "_-Rv"
 * @identifier _SafeStr_745 = "_-KP"
 * @identifier _SafeStr_760 = "_-5Q"
 * @identifier _SafeStr_839 = "_-PU"
 * @identifier _SafeStr_919 = "_-bD"
 * @identifier _SafeStr_930 = "_-Hj"
 * @identifier _SafeStr_961 = "_-8N"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1180 = "_-k2"
 * @identifier _SafeStr_1244 = "_-cm"
 * @identifier _SafeStr_1343 = "_-WS"
 * @identifier _SafeStr_1361 = "_-2X"
 * @identifier _SafeStr_1423 = "_-4v"
 * @identifier _SafeStr_1535 = "_-gd"
 * @identifier _SafeStr_1563 = "_-XH"
 * @identifier _SafeStr_1580 = "_-ed"
 * @identifier _SafeStr_1673 = "_-eD"
 * @identifier _SafeStr_1674 = "_-SR"
 * @identifier _SafeStr_1754 = "_-98"
 * @identifier _SafeStr_1790 = "_-Ek"
 * @identifier _SafeStr_1829 = "_-9u"
 * @identifier _SafeStr_1833 = "_-f"
 * @identifier _SafeStr_1865 = "_-aW"
 * @identifier _SafeStr_1880 = "_-Rm"
 * @identifier _SafeStr_2128 = "_-JM"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2251 = "_-Uc"
 * @identifier _SafeStr_2297 = "_-5a"
 * @identifier _SafeStr_2320 = "_-ga"
 * @identifier _SafeStr_2367 = "_-39"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2403 = "_-K"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2654 = "_-jK"
 */
