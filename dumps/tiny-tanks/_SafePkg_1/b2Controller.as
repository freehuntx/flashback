package _SafePkg_1
{
   import Box2D.Common.b2internal;
   import _SafePkg_0.b2Body;
   import _SafePkg_0.b2DebugDraw;
   import _SafePkg_0.b2TimeStep;
   import _SafePkg_0.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
      
      b2internal var _SafeStr_2195:b2Controller;
      
      b2internal var _SafeStr_2380:b2Controller;
      
      protected var m_bodyList:b2ControllerEdge;
      
      protected var _SafeStr_498:int;
      
      b2internal var _SafeStr_729:b2World;
      
      public function b2Controller()
      {
         super();
      }
      
      public function _SafeStr_276(param1:b2TimeStep) : void
      {
      }
      
      public function _SafeStr_1283(param1:b2DebugDraw) : void
      {
      }
      
      public function AddBody(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         _loc2_.controller = this;
         _loc2_.body = param1;
         _loc2_.nextBody = this.m_bodyList;
         _loc2_.prevBody = null;
         this.m_bodyList = _loc2_;
         if(_loc2_.nextBody)
         {
            _loc2_.nextBody.prevBody = _loc2_;
         }
         ++this._SafeStr_498;
         _loc2_._SafeStr_1440 = param1.m_controllerList;
         _loc2_._SafeStr_2438 = null;
         param1.m_controllerList = _loc2_;
         if(_loc2_._SafeStr_1440)
         {
            _loc2_._SafeStr_1440._SafeStr_2438 = _loc2_;
         }
         ++param1._SafeStr_1193;
      }
      
      public function RemoveBody(param1:b2Body) : void
      {
         var _loc2_:b2ControllerEdge = param1.m_controllerList;
         while(Boolean(_loc2_) && _loc2_.controller != this)
         {
            _loc2_ = _loc2_._SafeStr_1440;
         }
         if(_loc2_.prevBody)
         {
            _loc2_.prevBody.nextBody = _loc2_.nextBody;
         }
         if(_loc2_.nextBody)
         {
            _loc2_.nextBody.prevBody = _loc2_.prevBody;
         }
         if(_loc2_._SafeStr_1440)
         {
            _loc2_._SafeStr_1440._SafeStr_2438 = _loc2_._SafeStr_2438;
         }
         if(_loc2_._SafeStr_2438)
         {
            _loc2_._SafeStr_2438._SafeStr_1440 = _loc2_._SafeStr_1440;
         }
         if(this.m_bodyList == _loc2_)
         {
            this.m_bodyList = _loc2_.nextBody;
         }
         if(param1.m_controllerList == _loc2_)
         {
            param1.m_controllerList = _loc2_._SafeStr_1440;
         }
         --param1._SafeStr_1193;
         --this._SafeStr_498;
      }
      
      public function _SafeStr_1836() : void
      {
         while(this.m_bodyList)
         {
            this.RemoveBody(this.m_bodyList.body);
         }
      }
      
      public function _SafeStr_1023() : b2Controller
      {
         return this._SafeStr_2195;
      }
      
      public function _SafeStr_1668() : b2World
      {
         return this._SafeStr_729;
      }
      
      public function GetBodyList() : b2ControllerEdge
      {
         return this.m_bodyList;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_1 = "_-8Z"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_276 = "_-Vq"
 * @identifier _SafeStr_498 = "_-Xn"
 * @identifier _SafeStr_729 = "_-MM"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1193 = "_-6p"
 * @identifier _SafeStr_1283 = "_-RI"
 * @identifier _SafeStr_1440 = "_-Gr"
 * @identifier _SafeStr_1668 = "_-J5"
 * @identifier _SafeStr_1836 = "_-AX"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2380 = "_-36"
 * @identifier _SafeStr_2438 = "_-Gi"
 */
