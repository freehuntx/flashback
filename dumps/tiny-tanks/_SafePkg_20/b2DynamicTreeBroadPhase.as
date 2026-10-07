package _SafePkg_20
{
   import Box2D.Common.Math.*;
   
   public class b2DynamicTreeBroadPhase implements _SafeCls_21
   {
      
      private var _SafeStr_279:b2DynamicTree = new b2DynamicTree();
      
      private var _SafeStr_2395:int;
      
      private var _SafeStr_521:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
      
      private var m_pairBuffer:Vector.<b2DynamicTreePair> = new Vector.<b2DynamicTreePair>();
      
      private var m_pairCount:int = 0;
      
      public function b2DynamicTreeBroadPhase()
      {
         super();
      }
      
      public function _SafeStr_491(param1:b2AABB, param2:*) : *
      {
         var _loc3_:b2DynamicTreeNode = this._SafeStr_279._SafeStr_491(param1,param2);
         ++this._SafeStr_2395;
         this._SafeStr_2408(_loc3_);
         return _loc3_;
      }
      
      public function _SafeStr_1535(param1:*) : void
      {
         this._SafeStr_2410(param1);
         --this._SafeStr_2395;
         this._SafeStr_279._SafeStr_1535(param1);
      }
      
      public function _SafeStr_602(param1:*, param2:b2AABB, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = this._SafeStr_279._SafeStr_602(param1,param2,param3);
         if(_loc4_)
         {
            this._SafeStr_2408(param1);
         }
      }
      
      public function _SafeStr_444(param1:*, param2:*) : Boolean
      {
         var _loc3_:b2AABB = this._SafeStr_279._SafeStr_642(param1);
         var _loc4_:b2AABB = this._SafeStr_279._SafeStr_642(param2);
         return _loc3_._SafeStr_444(_loc4_);
      }
      
      public function GetUserData(param1:*) : *
      {
         return this._SafeStr_279.GetUserData(param1);
      }
      
      public function _SafeStr_642(param1:*) : b2AABB
      {
         return this._SafeStr_279._SafeStr_642(param1);
      }
      
      public function _SafeStr_518() : int
      {
         return this._SafeStr_2395;
      }
      
      public function _SafeStr_1268(param1:Function) : void
      {
         var QueryCallback:Function;
         var queryProxy:b2DynamicTreeNode = null;
         var i:int = 0;
         var fatAABB:b2AABB = null;
         var primaryPair:b2DynamicTreePair = null;
         var userDataA:* = undefined;
         var userDataB:* = undefined;
         var pair:b2DynamicTreePair = null;
         var callback:Function = param1;
         this.m_pairCount = 0;
         for each(queryProxy in this._SafeStr_521)
         {
            QueryCallback = function(param1:b2DynamicTreeNode):Boolean
            {
               if(param1 == queryProxy)
               {
                  return true;
               }
               if(m_pairCount == m_pairBuffer.length)
               {
                  m_pairBuffer[m_pairCount] = new b2DynamicTreePair();
               }
               var _loc2_:b2DynamicTreePair = m_pairBuffer[m_pairCount];
               _loc2_._SafeStr_1619 = param1 < queryProxy ? param1 : queryProxy;
               _loc2_._SafeStr_1814 = param1 >= queryProxy ? param1 : queryProxy;
               ++m_pairCount;
               return true;
            };
            fatAABB = this._SafeStr_279._SafeStr_642(queryProxy);
            this._SafeStr_279._SafeStr_1231(QueryCallback,fatAABB);
         }
         this._SafeStr_521.length = 0;
         i = 0;
         while(i < this.m_pairCount)
         {
            primaryPair = this.m_pairBuffer[i];
            userDataA = this._SafeStr_279.GetUserData(primaryPair._SafeStr_1619);
            userDataB = this._SafeStr_279.GetUserData(primaryPair._SafeStr_1814);
            callback(userDataA,userDataB);
            i++;
            while(i < this.m_pairCount)
            {
               pair = this.m_pairBuffer[i];
               if(pair._SafeStr_1619 != primaryPair._SafeStr_1619 || pair._SafeStr_1814 != primaryPair._SafeStr_1814)
               {
                  break;
               }
               i++;
            }
         }
      }
      
      public function _SafeStr_1231(param1:Function, param2:b2AABB) : void
      {
         this._SafeStr_279._SafeStr_1231(param1,param2);
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         this._SafeStr_279.RayCast(param1,param2);
      }
      
      public function _SafeStr_1182() : void
      {
      }
      
      public function _SafeStr_328(param1:int) : void
      {
         this._SafeStr_279._SafeStr_328(param1);
      }
      
      private function _SafeStr_2408(param1:b2DynamicTreeNode) : void
      {
         this._SafeStr_521[this._SafeStr_521.length] = param1;
      }
      
      private function _SafeStr_2410(param1:b2DynamicTreeNode) : void
      {
         var _loc2_:int = int(this._SafeStr_521.indexOf(param1));
         this._SafeStr_521.splice(_loc2_,1);
      }
      
      private function _SafeStr_619(param1:b2DynamicTreePair, param2:b2DynamicTreePair) : int
      {
         return 0;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_21 = "_-Ah"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_279 = "_-XB"
 * @identifier _SafeStr_328 = "_-Cz"
 * @identifier _SafeStr_444 = "_-86"
 * @identifier _SafeStr_491 = "_-b4"
 * @identifier _SafeStr_518 = "_-hR"
 * @identifier _SafeStr_521 = "_-O3"
 * @identifier _SafeStr_602 = "_-3E"
 * @identifier _SafeStr_619 = "_-fQ"
 * @identifier _SafeStr_642 = "_-Bn"
 * @identifier _SafeStr_1182 = "_-H8"
 * @identifier _SafeStr_1231 = "_-AQ"
 * @identifier _SafeStr_1268 = "_-HF"
 * @identifier _SafeStr_1535 = "_-gd"
 * @identifier _SafeStr_1619 = "_-4F"
 * @identifier _SafeStr_1814 = "_-FJ"
 * @identifier _SafeStr_2395 = "_-hI"
 * @identifier _SafeStr_2408 = "_-Q"
 * @identifier _SafeStr_2410 = "_-J3"
 */
