package _SafePkg_0
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_1.b2Controller;
   import _SafePkg_1.b2ControllerEdge;
   import _SafePkg_20.*;
   import _SafePkg_9.*;
   import _SafePkg_8.*;
   import _SafePkg_19.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var m_warmStarting:Boolean;
      
      private static var _SafeStr_2020:Boolean;
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      private static var _SafeStr_1923:b2Transform = new b2Transform();
      
      private static var _SafeStr_1521:b2Sweep = new b2Sweep();
      
      private static var _SafeStr_1915:b2Sweep = new b2Sweep();
      
      private static var _SafeStr_2401:b2TimeStep = new b2TimeStep();
      
      private static var _SafeStr_1843:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var _SafeStr_2073:b2Color = new b2Color(0.5,0.8,0.8);
      
      public static const _SafeStr_1556:int = 1;
      
      public static const _SafeStr_1812:int = 2;
      
      private var _SafeStr_859:Vector.<b2Body> = new Vector.<b2Body>();
      
      b2internal var _SafeStr_1043:int;
      
      b2internal var _SafeStr_1215:b2ContactManager = new b2ContactManager();
      
      private var _SafeStr_1693:b2ContactSolver = new b2ContactSolver();
      
      private var m_island:b2Island = new b2Island();
      
      b2internal var m_bodyList:b2Body;
      
      private var m_jointList:b2Joint;
      
      b2internal var m_contactList:b2Contact;
      
      private var _SafeStr_498:int;
      
      b2internal var _SafeStr_493:int;
      
      private var _SafeStr_659:int;
      
      private var m_controllerList:b2Controller;
      
      private var _SafeStr_1193:int;
      
      private var _SafeStr_1308:b2Vec2;
      
      private var _SafeStr_1547:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var _SafeStr_890:b2DestructionListener;
      
      private var _SafeStr_1648:b2DebugDraw;
      
      private var m_inv_dt0:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
      {
         super();
         this._SafeStr_890 = null;
         this._SafeStr_1648 = null;
         this.m_bodyList = null;
         this.m_contactList = null;
         this.m_jointList = null;
         this.m_controllerList = null;
         this._SafeStr_498 = 0;
         this._SafeStr_493 = 0;
         this._SafeStr_659 = 0;
         this._SafeStr_1193 = 0;
         m_warmStarting = true;
         _SafeStr_2020 = true;
         this._SafeStr_1547 = param2;
         this._SafeStr_1308 = param1;
         this.m_inv_dt0 = 0;
         this._SafeStr_1215._SafeStr_729 = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function _SafeStr_739(param1:b2DestructionListener) : void
      {
         this._SafeStr_890 = param1;
      }
      
      public function _SafeStr_506(param1:b2ContactFilter) : void
      {
         this._SafeStr_1215._SafeStr_1246 = param1;
      }
      
      public function _SafeStr_2076(param1:b2ContactListener) : void
      {
         this._SafeStr_1215._SafeStr_1999 = param1;
      }
      
      public function _SafeStr_2265(param1:b2DebugDraw) : void
      {
         this._SafeStr_1648 = param1;
      }
      
      public function _SafeStr_1941(param1:_SafeCls_21) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:_SafeCls_21 = this._SafeStr_1215._SafeStr_450;
         this._SafeStr_1215._SafeStr_450 = param1;
         var _loc3_:b2Body = this.m_bodyList;
         while(_loc3_)
         {
            _loc4_ = _loc3_.m_fixtureList;
            while(_loc4_)
            {
               _loc4_._SafeStr_1343 = param1._SafeStr_491(_loc2_._SafeStr_642(_loc4_._SafeStr_1343),_loc4_);
               _loc4_ = _loc4_._SafeStr_2195;
            }
            _loc3_ = _loc3_._SafeStr_2195;
         }
      }
      
      public function _SafeStr_1182() : void
      {
         this._SafeStr_1215._SafeStr_450._SafeStr_1182();
      }
      
      public function _SafeStr_518() : int
      {
         return this._SafeStr_1215._SafeStr_450._SafeStr_518();
      }
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this._SafeStr_321() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_._SafeStr_2380 = null;
         _loc2_._SafeStr_2195 = this.m_bodyList;
         if(this.m_bodyList)
         {
            this.m_bodyList._SafeStr_2380 = _loc2_;
         }
         this.m_bodyList = _loc2_;
         ++this._SafeStr_498;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this._SafeStr_321() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.m_jointList;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this._SafeStr_890)
            {
               this._SafeStr_890._SafeStr_1150(_loc6_._SafeStr_2512);
            }
            this._SafeStr_2657(_loc6_._SafeStr_2512);
         }
         var _loc3_:b2ControllerEdge = param1.m_controllerList;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_._SafeStr_1440;
            _loc7_.controller.RemoveBody(param1);
         }
         var _loc4_:b2ContactEdge = param1.m_contactList;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this._SafeStr_1215.Destroy(_loc8_._SafeStr_919);
         }
         param1.m_contactList = null;
         var _loc5_:b2Fixture = param1.m_fixtureList;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_._SafeStr_2195;
            if(this._SafeStr_890)
            {
               this._SafeStr_890._SafeStr_2272(_loc9_);
            }
            _loc9_._SafeStr_1535(this._SafeStr_1215._SafeStr_450);
            _loc9_.Destroy();
         }
         param1.m_fixtureList = null;
         param1._SafeStr_564 = 0;
         if(param1._SafeStr_2380)
         {
            param1._SafeStr_2380._SafeStr_2195 = param1._SafeStr_2195;
         }
         if(param1._SafeStr_2195)
         {
            param1._SafeStr_2195._SafeStr_2380 = param1._SafeStr_2380;
         }
         if(param1 == this.m_bodyList)
         {
            this.m_bodyList = param1._SafeStr_2195;
         }
         --this._SafeStr_498;
      }
      
      public function _SafeStr_2528(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.Create(param1,null);
         _loc2_._SafeStr_2380 = null;
         _loc2_._SafeStr_2195 = this.m_jointList;
         if(this.m_jointList)
         {
            this.m_jointList._SafeStr_2380 = _loc2_;
         }
         this.m_jointList = _loc2_;
         ++this._SafeStr_659;
         _loc2_._SafeStr_864._SafeStr_2512 = _loc2_;
         _loc2_._SafeStr_864.other = _loc2_._SafeStr_907;
         _loc2_._SafeStr_864._SafeStr_2150 = null;
         _loc2_._SafeStr_864.next = _loc2_._SafeStr_496.m_jointList;
         if(_loc2_._SafeStr_496.m_jointList)
         {
            _loc2_._SafeStr_496.m_jointList._SafeStr_2150 = _loc2_._SafeStr_864;
         }
         _loc2_._SafeStr_496.m_jointList = _loc2_._SafeStr_864;
         _loc2_._SafeStr_2349._SafeStr_2512 = _loc2_;
         _loc2_._SafeStr_2349.other = _loc2_._SafeStr_496;
         _loc2_._SafeStr_2349._SafeStr_2150 = null;
         _loc2_._SafeStr_2349.next = _loc2_._SafeStr_907.m_jointList;
         if(_loc2_._SafeStr_907.m_jointList)
         {
            _loc2_._SafeStr_907.m_jointList._SafeStr_2150 = _loc2_._SafeStr_2349;
         }
         _loc2_._SafeStr_907.m_jointList = _loc2_._SafeStr_2349;
         var _loc3_:b2Body = param1._SafeStr_1255;
         var _loc4_:b2Body = param1._SafeStr_1005;
         if(param1._SafeStr_627 == false)
         {
            _loc5_ = _loc4_.GetContactList();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_._SafeStr_919.FlagForFiltering();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function _SafeStr_2657(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1._SafeStr_643;
         if(param1._SafeStr_2380)
         {
            param1._SafeStr_2380._SafeStr_2195 = param1._SafeStr_2195;
         }
         if(param1._SafeStr_2195)
         {
            param1._SafeStr_2195._SafeStr_2380 = param1._SafeStr_2380;
         }
         if(param1 == this.m_jointList)
         {
            this.m_jointList = param1._SafeStr_2195;
         }
         var _loc3_:b2Body = param1._SafeStr_496;
         var _loc4_:b2Body = param1._SafeStr_907;
         _loc3_._SafeStr_1589(true);
         _loc4_._SafeStr_1589(true);
         if(param1._SafeStr_864._SafeStr_2150)
         {
            param1._SafeStr_864._SafeStr_2150.next = param1._SafeStr_864.next;
         }
         if(param1._SafeStr_864.next)
         {
            param1._SafeStr_864.next._SafeStr_2150 = param1._SafeStr_864._SafeStr_2150;
         }
         if(param1._SafeStr_864 == _loc3_.m_jointList)
         {
            _loc3_.m_jointList = param1._SafeStr_864.next;
         }
         param1._SafeStr_864._SafeStr_2150 = null;
         param1._SafeStr_864.next = null;
         if(param1._SafeStr_2349._SafeStr_2150)
         {
            param1._SafeStr_2349._SafeStr_2150.next = param1._SafeStr_2349.next;
         }
         if(param1._SafeStr_2349.next)
         {
            param1._SafeStr_2349.next._SafeStr_2150 = param1._SafeStr_2349._SafeStr_2150;
         }
         if(param1._SafeStr_2349 == _loc4_.m_jointList)
         {
            _loc4_.m_jointList = param1._SafeStr_2349.next;
         }
         param1._SafeStr_2349._SafeStr_2150 = null;
         param1._SafeStr_2349.next = null;
         b2Joint.Destroy(param1,null);
         --this._SafeStr_659;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.GetContactList();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_._SafeStr_919.FlagForFiltering();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function _SafeStr_628(param1:b2Controller) : b2Controller
      {
         param1._SafeStr_2195 = this.m_controllerList;
         param1._SafeStr_2380 = null;
         this.m_controllerList = param1;
         param1._SafeStr_729 = this;
         ++this._SafeStr_1193;
         return param1;
      }
      
      public function _SafeStr_1044(param1:b2Controller) : void
      {
         if(param1._SafeStr_2380)
         {
            param1._SafeStr_2380._SafeStr_2195 = param1._SafeStr_2195;
         }
         if(param1._SafeStr_2195)
         {
            param1._SafeStr_2195._SafeStr_2380 = param1._SafeStr_2380;
         }
         if(this.m_controllerList == param1)
         {
            this.m_controllerList = param1._SafeStr_2195;
         }
         --this._SafeStr_1193;
      }
      
      public function _SafeStr_1610(param1:b2Controller) : b2Controller
      {
         if(param1._SafeStr_729 != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1._SafeStr_2195 = this.m_controllerList;
         param1._SafeStr_2380 = null;
         if(this.m_controllerList)
         {
            this.m_controllerList._SafeStr_2380 = param1;
         }
         this.m_controllerList = param1;
         ++this._SafeStr_1193;
         param1._SafeStr_729 = this;
         return param1;
      }
      
      public function _SafeStr_2216(param1:b2Controller) : void
      {
         param1._SafeStr_1836();
         if(param1._SafeStr_2195)
         {
            param1._SafeStr_2195._SafeStr_2380 = param1._SafeStr_2380;
         }
         if(param1._SafeStr_2380)
         {
            param1._SafeStr_2380._SafeStr_2195 = param1._SafeStr_2195;
         }
         if(param1 == this.m_controllerList)
         {
            this.m_controllerList = param1._SafeStr_2195;
         }
         --this._SafeStr_1193;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         m_warmStarting = param1;
      }
      
      public function _SafeStr_2577(param1:Boolean) : void
      {
         _SafeStr_2020 = param1;
      }
      
      public function _SafeStr_2039() : int
      {
         return this._SafeStr_498;
      }
      
      public function _SafeStr_1989() : int
      {
         return this._SafeStr_659;
      }
      
      public function _SafeStr_472() : int
      {
         return this._SafeStr_493;
      }
      
      public function _SafeStr_1813(param1:b2Vec2) : void
      {
         this._SafeStr_1308 = param1;
      }
      
      public function _SafeStr_2348() : b2Vec2
      {
         return this._SafeStr_1308;
      }
      
      public function GetGroundBody() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function _SafeStr_276(param1:Number, param2:int, param3:int) : void
      {
         if(this._SafeStr_1043 & _SafeStr_1556)
         {
            this._SafeStr_1215._SafeStr_2390();
            this._SafeStr_1043 &= ~_SafeStr_1556;
         }
         this._SafeStr_1043 |= _SafeStr_1812;
         var _loc4_:b2TimeStep = s_timestep2;
         _loc4_._SafeStr_1607 = param1;
         _loc4_._SafeStr_1064 = param2;
         _loc4_._SafeStr_1492 = param3;
         if(param1 > 0)
         {
            _loc4_._SafeStr_2148 = 1 / param1;
         }
         else
         {
            _loc4_._SafeStr_2148 = 0;
         }
         _loc4_._SafeStr_889 = this.m_inv_dt0 * param1;
         _loc4_.warmStarting = m_warmStarting;
         this._SafeStr_1215._SafeStr_1798();
         if(_loc4_._SafeStr_1607 > 0)
         {
            this._SafeStr_761(_loc4_);
         }
         if(_SafeStr_2020 && _loc4_._SafeStr_1607 > 0)
         {
            this._SafeStr_1386(_loc4_);
         }
         if(_loc4_._SafeStr_1607 > 0)
         {
            this.m_inv_dt0 = _loc4_._SafeStr_2148;
         }
         this._SafeStr_1043 &= ~_SafeStr_1812;
      }
      
      public function _SafeStr_817() : void
      {
         var _loc1_:b2Body = this.m_bodyList;
         while(_loc1_)
         {
            _loc1_._SafeStr_616._SafeStr_1807();
            _loc1_._SafeStr_1515 = 0;
            _loc1_ = _loc1_._SafeStr_2195;
         }
      }
      
      public function _SafeStr_2471() : void
      {
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:_SafeCls_21 = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this._SafeStr_1648 == null)
         {
            return;
         }
         this._SafeStr_1648._SafeStr_2106.graphics.clear();
         var _loc1_:uint = this._SafeStr_1648._SafeStr_815();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw._SafeStr_343)
         {
            _loc3_ = this.m_bodyList;
            while(_loc3_)
            {
               _loc11_ = _loc3_._SafeStr_1473;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_._SafeStr_745();
                  if(_loc3_._SafeStr_1861() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this._SafeStr_2274(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_._SafeStr_978() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this._SafeStr_2274(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_._SafeStr_978() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this._SafeStr_2274(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_._SafeStr_2035() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this._SafeStr_2274(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this._SafeStr_2274(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_._SafeStr_2195;
               }
               _loc3_ = _loc3_._SafeStr_2195;
            }
         }
         if(_loc1_ & b2DebugDraw._SafeStr_1856)
         {
            _loc6_ = this.m_jointList;
            while(_loc6_)
            {
               this._SafeStr_432(_loc6_);
               _loc6_ = _loc6_._SafeStr_2195;
            }
         }
         if(_loc1_ & b2DebugDraw._SafeStr_1587)
         {
            _loc16_ = this.m_controllerList;
            while(_loc16_)
            {
               _loc16_._SafeStr_1283(this._SafeStr_1648);
               _loc16_ = _loc16_._SafeStr_2195;
            }
         }
         if(_loc1_ & b2DebugDraw._SafeStr_425)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this._SafeStr_1215.m_contactList;
            while(_loc17_)
            {
               _loc18_ = _loc17_._SafeStr_665();
               _loc19_ = _loc17_._SafeStr_2320();
               _loc20_ = _loc18_._SafeStr_1180()._SafeStr_2421();
               _loc21_ = _loc19_._SafeStr_1180()._SafeStr_2421();
               this._SafeStr_1648._SafeStr_1956(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_._SafeStr_1023();
            }
         }
         if(_loc1_ & b2DebugDraw._SafeStr_841)
         {
            _loc7_ = this._SafeStr_1215._SafeStr_450;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.m_bodyList;
            while(_loc3_)
            {
               if(_loc3_._SafeStr_1861() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_._SafeStr_642(_loc4_._SafeStr_1343);
                     _loc14_[0].Set(_loc22_.lowerBound.x,_loc22_.lowerBound.y);
                     _loc14_[1].Set(_loc22_.upperBound.x,_loc22_.lowerBound.y);
                     _loc14_[2].Set(_loc22_.upperBound.x,_loc22_.upperBound.y);
                     _loc14_[3].Set(_loc22_.lowerBound.x,_loc22_.upperBound.y);
                     this._SafeStr_1648._SafeStr_2311(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_._SafeStr_1023();
                  }
               }
               _loc3_ = _loc3_._SafeStr_1023();
            }
         }
         if(_loc1_ & b2DebugDraw._SafeStr_2304)
         {
            _loc3_ = this.m_bodyList;
            while(_loc3_)
            {
               _loc11_ = _SafeStr_1923;
               _loc11_._SafeStr_945 = _loc3_._SafeStr_1473._SafeStr_945;
               _loc11_.position = _loc3_.GetWorldCenter();
               this._SafeStr_1648._SafeStr_1373(_loc11_);
               _loc3_ = _loc3_._SafeStr_2195;
            }
         }
      }
      
      public function _SafeStr_897(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:_SafeCls_21 = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this._SafeStr_1215._SafeStr_450;
         broadPhase._SafeStr_1231(WorldQueryWrapper,aabb);
      }
      
      public function _SafeStr_1628(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var aabb:b2AABB;
         var broadPhase:_SafeCls_21 = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape._SafeStr_444(shape,transform,_loc2_._SafeStr_745(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform._SafeStr_988();
         }
         broadPhase = this._SafeStr_1215._SafeStr_450;
         aabb = new b2AABB();
         shape._SafeStr_2297(aabb,transform);
         broadPhase._SafeStr_1231(WorldQueryWrapper,aabb);
      }
      
      public function _SafeStr_942(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:_SafeCls_21 = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var p:b2Vec2 = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(_loc2_._SafeStr_1865(p))
            {
               return callback(_loc2_);
            }
            return true;
         };
         broadPhase = this._SafeStr_1215._SafeStr_450;
         var aabb:b2AABB = new b2AABB();
         aabb.lowerBound.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.upperBound.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase._SafeStr_1231(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:_SafeCls_21 = null;
         var output:b2RayCastOutput = null;
         var RayCastWrapper:Function = null;
         var callback:Function = param1;
         var point1:b2Vec2 = param2;
         var point2:b2Vec2 = param3;
         RayCastWrapper = function(param1:b2RayCastInput, param2:*):Number
         {
            var _loc6_:Number = NaN;
            var _loc7_:b2Vec2 = null;
            var _loc3_:* = broadPhase.GetUserData(param2);
            var _loc4_:b2Fixture = _loc3_ as b2Fixture;
            var _loc5_:Boolean = _loc4_.RayCast(output,param1);
            if(_loc5_)
            {
               _loc6_ = output._SafeStr_2571;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1._SafeStr_1595;
         };
         broadPhase = this._SafeStr_1215._SafeStr_450;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function _SafeStr_1167(param1:b2Vec2, param2:b2Vec2) : Array
      {
         var result:b2Fixture = null;
         var best:Number = NaN;
         var bestNormal:b2Vec2 = null;
         var RayCastOneWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastOneWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            if(param4 <= best)
            {
               best = param4;
               result = param1;
               bestNormal = param3;
            }
            return best;
         };
         best = 1;
         var returnArray:Array = new Array(3);
         this.RayCast(RayCastOneWrapper,point1,point2);
         returnArray[0] = result;
         returnArray[1] = best;
         returnArray[2] = new b2Vec2((1 - best) * point1.x + best * point2.x,(1 - best) * point1.y + best * point2.y);
         returnArray[3] = bestNormal;
         return returnArray;
      }
      
      public function _SafeStr_2029(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var result:Vector.<b2Fixture> = null;
         var RayCastAllWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastAllWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result[result.length] = param1;
            return 1;
         };
         result = new Vector.<b2Fixture>();
         this.RayCast(RayCastAllWrapper,point1,point2);
         return result;
      }
      
      public function GetBodyList() : b2Body
      {
         return this.m_bodyList;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.m_jointList;
      }
      
      public function GetContactList() : b2Contact
      {
         return this.m_contactList;
      }
      
      public function _SafeStr_321() : Boolean
      {
         return (this._SafeStr_1043 & _SafeStr_1812) > 0;
      }
      
      b2internal function _SafeStr_761(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.m_controllerList;
         while(_loc3_)
         {
            _loc3_._SafeStr_276(param1);
            _loc3_ = _loc3_._SafeStr_2195;
         }
         var _loc4_:b2Island = this.m_island;
         _loc4_._SafeStr_2347(this._SafeStr_498,this._SafeStr_493,this._SafeStr_659,null,this._SafeStr_1215._SafeStr_1999,this._SafeStr_1693);
         _loc2_ = this.m_bodyList;
         while(_loc2_)
         {
            _loc2_._SafeStr_1043 &= ~b2Body._SafeStr_2131;
            _loc2_ = _loc2_._SafeStr_2195;
         }
         var _loc5_:b2Contact = this.m_contactList;
         while(_loc5_)
         {
            _loc5_._SafeStr_1043 &= ~b2Contact._SafeStr_2131;
            _loc5_ = _loc5_._SafeStr_2195;
         }
         var _loc6_:b2Joint = this.m_jointList;
         while(_loc6_)
         {
            _loc6_._SafeStr_2407 = false;
            _loc6_ = _loc6_._SafeStr_2195;
         }
         var _loc7_:int = this._SafeStr_498;
         var _loc8_:Vector.<b2Body> = this._SafeStr_859;
         var _loc9_:b2Body = this.m_bodyList;
         while(_loc9_)
         {
            if(!(_loc9_._SafeStr_1043 & b2Body._SafeStr_2131))
            {
               if(!(_loc9_._SafeStr_2035() == false || _loc9_._SafeStr_1861() == false))
               {
                  if(_loc9_._SafeStr_978() != b2Body.b2_staticBody)
                  {
                     _loc4_._SafeStr_1836();
                     _loc10_ = 0;
                     var _loc15_:Number;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_._SafeStr_1043 |= b2Body._SafeStr_2131;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.AddBody(_loc2_);
                        if(_loc2_._SafeStr_2035() == false)
                        {
                           _loc2_._SafeStr_1589(true);
                        }
                        if(_loc2_._SafeStr_978() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.m_contactList;
                           while(_loc13_)
                           {
                              if(!(_loc13_._SafeStr_919._SafeStr_1043 & b2Contact._SafeStr_2131))
                              {
                                 if(!(_loc13_._SafeStr_919._SafeStr_1563() == true || _loc13_._SafeStr_919._SafeStr_1618() == false || _loc13_._SafeStr_919.IsTouching() == false))
                                 {
                                    _loc4_._SafeStr_698(_loc13_._SafeStr_919);
                                    _loc13_._SafeStr_919._SafeStr_1043 |= b2Contact._SafeStr_2131;
                                    _loc12_ = _loc13_.other;
                                    if(!(_loc12_._SafeStr_1043 & b2Body._SafeStr_2131))
                                    {
                                       var _loc16_:Number;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_._SafeStr_1043 |= b2Body._SafeStr_2131;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.m_jointList;
                           while(_loc14_)
                           {
                              if(_loc14_._SafeStr_2512._SafeStr_2407 != true)
                              {
                                 _loc12_ = _loc14_.other;
                                 if(_loc12_._SafeStr_1861() != false)
                                 {
                                    _loc4_._SafeStr_466(_loc14_._SafeStr_2512);
                                    _loc14_._SafeStr_2512._SafeStr_2407 = true;
                                    if(!(_loc12_._SafeStr_1043 & b2Body._SafeStr_2131))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_._SafeStr_1043 |= b2Body._SafeStr_2131;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_._SafeStr_761(param1,this._SafeStr_1308,this._SafeStr_1547);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_._SafeStr_498)
                     {
                        _loc2_ = _loc4_._SafeStr_940[_loc11_];
                        if(_loc2_._SafeStr_978() == b2Body.b2_staticBody)
                        {
                           _loc2_._SafeStr_1043 &= ~b2Body._SafeStr_2131;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_._SafeStr_2195;
         }
         _loc11_ = 0;
         while(_loc11_ < _loc8_.length)
         {
            if(!_loc8_[_loc11_])
            {
               break;
            }
            _loc8_[_loc11_] = null;
            _loc11_++;
         }
         _loc2_ = this.m_bodyList;
         while(_loc2_)
         {
            if(!(_loc2_._SafeStr_2035() == false || _loc2_._SafeStr_1861() == false))
            {
               if(_loc2_._SafeStr_978() != b2Body.b2_staticBody)
               {
                  _loc2_._SafeStr_539();
               }
            }
            _loc2_ = _loc2_._SafeStr_2195;
         }
         this._SafeStr_1215._SafeStr_2390();
      }
      
      b2internal function _SafeStr_1386(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2ContactEdge = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:Number = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island = this.m_island;
         _loc9_._SafeStr_2347(this._SafeStr_498,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this._SafeStr_1215._SafeStr_1999,this._SafeStr_1693);
         var _loc10_:Vector.<b2Body> = _SafeStr_1843;
         _loc2_ = this.m_bodyList;
         while(_loc2_)
         {
            _loc2_._SafeStr_1043 &= ~b2Body._SafeStr_2131;
            _loc2_._SafeStr_2025.t0 = 0;
            _loc2_ = _loc2_._SafeStr_2195;
         }
         _loc11_ = this.m_contactList;
         while(_loc11_)
         {
            _loc11_._SafeStr_1043 &= ~(b2Contact._SafeStr_1729 | b2Contact._SafeStr_2131);
            _loc11_ = _loc11_._SafeStr_2195;
         }
         _loc8_ = this.m_jointList;
         while(_loc8_)
         {
            _loc8_._SafeStr_2407 = false;
            _loc8_ = _loc8_._SafeStr_2195;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.m_contactList;
            for(; _loc11_; _loc11_ = _loc11_._SafeStr_2195)
            {
               if(!(_loc11_._SafeStr_1563() == true || _loc11_._SafeStr_1618() == false || _loc11_._SafeStr_2373() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_._SafeStr_1043 & b2Contact._SafeStr_1729)
                  {
                     _loc19_ = _loc11_._SafeStr_1108;
                  }
                  else
                  {
                     _loc3_ = _loc11_._SafeStr_1281;
                     _loc4_ = _loc11_._SafeStr_384;
                     _loc5_ = _loc3_._SafeStr_2654;
                     _loc6_ = _loc4_._SafeStr_2654;
                     if((_loc5_._SafeStr_978() != b2Body.b2_dynamicBody || _loc5_._SafeStr_2035() == false) && (_loc6_._SafeStr_978() != b2Body.b2_dynamicBody || _loc6_._SafeStr_2035() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_._SafeStr_2025.t0;
                     if(_loc5_._SafeStr_2025.t0 < _loc6_._SafeStr_2025.t0)
                     {
                        _loc20_ = _loc6_._SafeStr_2025.t0;
                        _loc5_._SafeStr_2025._SafeStr_1022(_loc20_);
                     }
                     else if(_loc6_._SafeStr_2025.t0 < _loc5_._SafeStr_2025.t0)
                     {
                        _loc20_ = _loc5_._SafeStr_2025.t0;
                        _loc6_._SafeStr_2025._SafeStr_1022(_loc20_);
                     }
                     _loc19_ = _loc11_._SafeStr_1412(_loc5_._SafeStr_2025,_loc6_._SafeStr_2025);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        _loc19_ = (1 - _loc19_) * _loc20_ + _loc19_;
                        if(_loc19_ > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_._SafeStr_1108 = _loc19_;
                     _loc11_._SafeStr_1043 |= b2Contact._SafeStr_1729;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_._SafeStr_1281;
            _loc4_ = _loc12_._SafeStr_384;
            _loc5_ = _loc3_._SafeStr_2654;
            _loc6_ = _loc4_._SafeStr_2654;
            _SafeStr_1521.Set(_loc5_._SafeStr_2025);
            _SafeStr_1915.Set(_loc6_._SafeStr_2025);
            _loc5_._SafeStr_1022(_loc13_);
            _loc6_._SafeStr_1022(_loc13_);
            _loc12_._SafeStr_2614(this._SafeStr_1215._SafeStr_1999);
            _loc12_._SafeStr_1043 &= ~b2Contact._SafeStr_1729;
            if(_loc12_._SafeStr_1563() == true || _loc12_._SafeStr_1618() == false)
            {
               _loc5_._SafeStr_2025.Set(_SafeStr_1521);
               _loc6_._SafeStr_2025.Set(_SafeStr_1915);
               _loc5_._SafeStr_2018();
               _loc6_._SafeStr_2018();
            }
            else if(_loc12_.IsTouching() != false)
            {
               _loc14_ = _loc5_;
               if(_loc14_._SafeStr_978() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_._SafeStr_1836();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_._SafeStr_1043 |= b2Body._SafeStr_2131;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.AddBody(_loc2_);
                  if(_loc2_._SafeStr_2035() == false)
                  {
                     _loc2_._SafeStr_1589(true);
                  }
                  if(_loc2_._SafeStr_978() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.m_contactList;
                     while(_loc7_)
                     {
                        if(_loc9_._SafeStr_493 == _loc9_._SafeStr_1799)
                        {
                           break;
                        }
                        if(!(_loc7_._SafeStr_919._SafeStr_1043 & b2Contact._SafeStr_2131))
                        {
                           if(!(_loc7_._SafeStr_919._SafeStr_1563() == true || _loc7_._SafeStr_919._SafeStr_1618() == false || _loc7_._SafeStr_919.IsTouching() == false))
                           {
                              _loc9_._SafeStr_698(_loc7_._SafeStr_919);
                              _loc7_._SafeStr_919._SafeStr_1043 |= b2Contact._SafeStr_2131;
                              _loc22_ = _loc7_.other;
                              if(!(_loc22_._SafeStr_1043 & b2Body._SafeStr_2131))
                              {
                                 if(_loc22_._SafeStr_978() != b2Body.b2_staticBody)
                                 {
                                    _loc22_._SafeStr_1022(_loc13_);
                                    _loc22_._SafeStr_1589(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_._SafeStr_1043 |= b2Body._SafeStr_2131;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.m_jointList;
                     while(_loc21_)
                     {
                        if(_loc9_._SafeStr_659 != _loc9_._SafeStr_1417)
                        {
                           if(_loc21_._SafeStr_2512._SafeStr_2407 != true)
                           {
                              _loc22_ = _loc21_.other;
                              if(_loc22_._SafeStr_1861() != false)
                              {
                                 _loc9_._SafeStr_466(_loc21_._SafeStr_2512);
                                 _loc21_._SafeStr_2512._SafeStr_2407 = true;
                                 if(!(_loc22_._SafeStr_1043 & b2Body._SafeStr_2131))
                                 {
                                    if(_loc22_._SafeStr_978() != b2Body.b2_staticBody)
                                    {
                                       _loc22_._SafeStr_1022(_loc13_);
                                       _loc22_._SafeStr_1589(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_._SafeStr_1043 |= b2Body._SafeStr_2131;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               _loc17_ = _SafeStr_2401;
               _loc17_.warmStarting = false;
               _loc17_._SafeStr_1607 = (1 - _loc13_) * param1._SafeStr_1607;
               _loc17_._SafeStr_2148 = 1 / _loc17_._SafeStr_1607;
               _loc17_._SafeStr_889 = 0;
               _loc17_._SafeStr_1064 = param1._SafeStr_1064;
               _loc17_._SafeStr_1492 = param1._SafeStr_1492;
               _loc9_._SafeStr_1386(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_._SafeStr_498)
               {
                  _loc2_ = _loc9_._SafeStr_940[_loc18_];
                  _loc2_._SafeStr_1043 &= ~b2Body._SafeStr_2131;
                  if(_loc2_._SafeStr_2035() != false)
                  {
                     if(_loc2_._SafeStr_978() == b2Body.b2_dynamicBody)
                     {
                        _loc2_._SafeStr_539();
                        _loc7_ = _loc2_.m_contactList;
                        while(_loc7_)
                        {
                           _loc7_._SafeStr_919._SafeStr_1043 &= ~b2Contact._SafeStr_1729;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_._SafeStr_493)
               {
                  _loc11_ = _loc9_._SafeStr_1396[_loc18_];
                  _loc11_._SafeStr_1043 &= ~(b2Contact._SafeStr_1729 | b2Contact._SafeStr_2131);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_._SafeStr_659)
               {
                  _loc8_ = _loc9_._SafeStr_1786[_loc18_];
                  _loc8_._SafeStr_2407 = false;
                  _loc18_++;
               }
               this._SafeStr_1215._SafeStr_2390();
            }
         }
      }
      
      b2internal function _SafeStr_432(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1._SafeStr_1576();
         var _loc3_:b2Body = param1._SafeStr_1887();
         var _loc4_:b2Transform = _loc2_._SafeStr_1473;
         var _loc5_:b2Transform = _loc3_._SafeStr_1473;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1._SafeStr_2153();
         var _loc9_:b2Vec2 = param1._SafeStr_2506();
         var _loc10_:b2Color = _SafeStr_2073;
         switch(param1._SafeStr_972)
         {
            case b2Joint._SafeStr_1330:
               this._SafeStr_1648._SafeStr_1956(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint._SafeStr_803:
               _loc11_ = param1 as b2PulleyJoint;
               _loc12_ = _loc11_._SafeStr_1298();
               _loc13_ = _loc11_._SafeStr_960();
               this._SafeStr_1648._SafeStr_1956(_loc12_,_loc8_,_loc10_);
               this._SafeStr_1648._SafeStr_1956(_loc13_,_loc9_,_loc10_);
               this._SafeStr_1648._SafeStr_1956(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint._SafeStr_2040:
               this._SafeStr_1648._SafeStr_1956(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this._SafeStr_1648._SafeStr_1956(_loc6_,_loc8_,_loc10_);
               }
               this._SafeStr_1648._SafeStr_1956(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this._SafeStr_1648._SafeStr_1956(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function _SafeStr_2274(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:int = 0;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:int = 0;
         var _loc11_:Vector.<b2Vec2> = null;
         var _loc12_:Vector.<b2Vec2> = null;
         var _loc13_:b2EdgeShape = null;
         switch(param1._SafeStr_972)
         {
            case b2Shape._SafeStr_695:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math._SafeStr_457(param2,_loc4_._SafeStr_2560);
               _loc6_ = _loc4_._SafeStr_874;
               _loc7_ = param2._SafeStr_945.col1;
               this._SafeStr_1648._SafeStr_1377(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape._SafeStr_1854:
               _loc9_ = param1 as b2PolygonShape;
               _loc10_ = _loc9_._SafeStr_1485();
               _loc11_ = _loc9_._SafeStr_1388();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math._SafeStr_457(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this._SafeStr_1648._SafeStr_1463(_loc12_,_loc10_,param3);
               break;
            case b2Shape._SafeStr_891:
               _loc13_ = param1 as b2EdgeShape;
               this._SafeStr_1648._SafeStr_1956(b2Math._SafeStr_457(param2,_loc13_.GetVertex1()),b2Math._SafeStr_457(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_21 = "_-Ah"
 * @identifier _SafePkg_1 = "_-8Z"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_276 = "_-Vq"
 * @identifier _SafeStr_321 = "_-QU"
 * @identifier _SafeStr_343 = "_-Qu"
 * @identifier _SafeStr_384 = "_-Wi"
 * @identifier _SafeStr_425 = "_-Hl"
 * @identifier _SafeStr_432 = "_-9b"
 * @identifier _SafeStr_444 = "_-86"
 * @identifier _SafeStr_450 = "_-9U"
 * @identifier _SafeStr_457 = "_-YF"
 * @identifier _SafeStr_466 = "_-OH"
 * @identifier _SafeStr_472 = "_-Fz"
 * @identifier _SafeStr_491 = "_-b4"
 * @identifier _SafeStr_493 = "_-Xy"
 * @identifier _SafeStr_496 = "_-g0"
 * @identifier _SafeStr_498 = "_-Xn"
 * @identifier _SafeStr_506 = "_-S6"
 * @identifier _SafeStr_518 = "_-hR"
 * @identifier _SafeStr_539 = "_-JK"
 * @identifier _SafeStr_564 = "_-2S"
 * @identifier _SafeStr_616 = "_-3y"
 * @identifier _SafeStr_627 = "_-7M"
 * @identifier _SafeStr_628 = "_-dF"
 * @identifier _SafeStr_642 = "_-Bn"
 * @identifier _SafeStr_643 = "_-52"
 * @identifier _SafeStr_659 = "_-dZ"
 * @identifier _SafeStr_665 = "_-DF"
 * @identifier _SafeStr_695 = "_-Dy"
 * @identifier _SafeStr_698 = "_-aL"
 * @identifier _SafeStr_729 = "_-MM"
 * @identifier _SafeStr_739 = "_-Ub"
 * @identifier _SafeStr_745 = "_-KP"
 * @identifier _SafeStr_761 = "_-EF"
 * @identifier _SafeStr_803 = "_-X3"
 * @identifier _SafeStr_815 = "_-Rg"
 * @identifier _SafeStr_817 = "_-Lj"
 * @identifier _SafeStr_841 = "_-8E"
 * @identifier _SafeStr_859 = "_-Zf"
 * @identifier _SafeStr_864 = "_-7e"
 * @identifier _SafeStr_874 = "_-UX"
 * @identifier _SafeStr_889 = "_-XV"
 * @identifier _SafeStr_890 = "_-Wq"
 * @identifier _SafeStr_891 = "_-dp"
 * @identifier _SafeStr_897 = "_-4r"
 * @identifier _SafeStr_907 = "_-FI"
 * @identifier _SafeStr_919 = "_-bD"
 * @identifier _SafeStr_940 = "_-7U"
 * @identifier _SafeStr_942 = "_-Bm"
 * @identifier _SafeStr_945 = "_-WL"
 * @identifier _SafeStr_960 = "_-EB"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_988 = "_-3l"
 * @identifier _SafeStr_1005 = "_-Xx"
 * @identifier _SafeStr_1022 = "_-V6"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1043 = "_-iv"
 * @identifier _SafeStr_1044 = "_-5V"
 * @identifier _SafeStr_1064 = "_-CY"
 * @identifier _SafeStr_1108 = "_-a8"
 * @identifier _SafeStr_1150 = "_-SS"
 * @identifier _SafeStr_1167 = "_-ev"
 * @identifier _SafeStr_1180 = "_-k2"
 * @identifier _SafeStr_1182 = "_-H8"
 * @identifier _SafeStr_1193 = "_-6p"
 * @identifier _SafeStr_1215 = "_-7n"
 * @identifier _SafeStr_1231 = "_-AQ"
 * @identifier _SafeStr_1246 = "_-Ky"
 * @identifier _SafeStr_1255 = "_-d9"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1283 = "_-RI"
 * @identifier _SafeStr_1298 = "_-9F"
 * @identifier _SafeStr_1308 = "_-S5"
 * @identifier _SafeStr_1330 = "_-TX"
 * @identifier _SafeStr_1343 = "_-WS"
 * @identifier _SafeStr_1373 = "_-A4"
 * @identifier _SafeStr_1377 = "_-gw"
 * @identifier _SafeStr_1386 = "_-Ni"
 * @identifier _SafeStr_1388 = "_-bG"
 * @identifier _SafeStr_1396 = "_-BZ"
 * @identifier _SafeStr_1412 = "_-cX"
 * @identifier _SafeStr_1417 = "_-gl"
 * @identifier _SafeStr_1440 = "_-Gr"
 * @identifier _SafeStr_1463 = "_-Gh"
 * @identifier _SafeStr_1473 = "_-YT"
 * @identifier _SafeStr_1485 = "_-S9"
 * @identifier _SafeStr_1492 = "_-RC"
 * @identifier _SafeStr_1515 = "_-U4"
 * @identifier _SafeStr_1521 = "_-JQ"
 * @identifier _SafeStr_1535 = "_-gd"
 * @identifier _SafeStr_1547 = "_-di"
 * @identifier _SafeStr_1556 = "_-9f"
 * @identifier _SafeStr_1563 = "_-XH"
 * @identifier _SafeStr_1576 = "_-dP"
 * @identifier _SafeStr_1587 = "_-3Q"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1595 = "_-9G"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1610 = "_-G1"
 * @identifier _SafeStr_1618 = "_-1N"
 * @identifier _SafeStr_1628 = "_-HE"
 * @identifier _SafeStr_1648 = "_-3k"
 * @identifier _SafeStr_1693 = "_-A2"
 * @identifier _SafeStr_1729 = "_-BQ"
 * @identifier _SafeStr_1786 = "_-Jx"
 * @identifier _SafeStr_1798 = "_-Vz"
 * @identifier _SafeStr_1799 = "_-3D"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_1812 = "_-bT"
 * @identifier _SafeStr_1813 = "_-Fr"
 * @identifier _SafeStr_1836 = "_-AX"
 * @identifier _SafeStr_1843 = "_-h"
 * @identifier _SafeStr_1854 = "_-4p"
 * @identifier _SafeStr_1856 = "_-fk"
 * @identifier _SafeStr_1861 = "_-Mb"
 * @identifier _SafeStr_1865 = "_-aW"
 * @identifier _SafeStr_1887 = "_-WI"
 * @identifier _SafeStr_1915 = "_-GJ"
 * @identifier _SafeStr_1923 = "_-Zw"
 * @identifier _SafeStr_1941 = "_-VQ"
 * @identifier _SafeStr_1956 = "_-NH"
 * @identifier _SafeStr_1989 = "_-Ea"
 * @identifier _SafeStr_1999 = "_-fO"
 * @identifier _SafeStr_2018 = "_-Gp"
 * @identifier _SafeStr_2020 = "_-G2"
 * @identifier _SafeStr_2025 = "_-BR"
 * @identifier _SafeStr_2029 = "_-Yh"
 * @identifier _SafeStr_2035 = "_-ZE"
 * @identifier _SafeStr_2039 = "_-BG"
 * @identifier _SafeStr_2040 = "_-fn"
 * @identifier _SafeStr_2073 = "_-FR"
 * @identifier _SafeStr_2076 = "_-3Y"
 * @identifier _SafeStr_2106 = "_-UE"
 * @identifier _SafeStr_2131 = "_-5R"
 * @identifier _SafeStr_2148 = "_-G8"
 * @identifier _SafeStr_2150 = "_-1O"
 * @identifier _SafeStr_2153 = "_-aF"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2216 = "_-Vk"
 * @identifier _SafeStr_2265 = "_-76"
 * @identifier _SafeStr_2272 = "_-VE"
 * @identifier _SafeStr_2274 = "_-B0"
 * @identifier _SafeStr_2297 = "_-5a"
 * @identifier _SafeStr_2304 = "_-hO"
 * @identifier _SafeStr_2311 = "_-U0"
 * @identifier _SafeStr_2320 = "_-ga"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2348 = "_-2H"
 * @identifier _SafeStr_2349 = "_-Jp"
 * @identifier _SafeStr_2373 = "_-Ru"
 * @identifier _SafeStr_2380 = "_-36"
 * @identifier _SafeStr_2390 = "_-bd"
 * @identifier _SafeStr_2401 = "_-Vu"
 * @identifier _SafeStr_2407 = "_-IV"
 * @identifier _SafeStr_2421 = "_-1h"
 * @identifier _SafeStr_2471 = "_-W5"
 * @identifier _SafeStr_2506 = "_-Gj"
 * @identifier _SafeStr_2512 = "_-Kj"
 * @identifier _SafeStr_2528 = "_-DV"
 * @identifier _SafeStr_2560 = "_-7x"
 * @identifier _SafeStr_2571 = "_-Eb"
 * @identifier _SafeStr_2577 = "_-YE"
 * @identifier _SafeStr_2614 = "_-Yf"
 * @identifier _SafeStr_2654 = "_-jK"
 * @identifier _SafeStr_2657 = "_-2k"
 */
