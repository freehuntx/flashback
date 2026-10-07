package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   
   public class b2DynamicTree
   {
      
      private var _SafeStr_421:b2DynamicTreeNode;
      
      private var m_freeList:b2DynamicTreeNode;
      
      private var m_path:uint;
      
      private var _SafeStr_1758:int;
      
      public function b2DynamicTree()
      {
         super();
         this._SafeStr_421 = null;
         this.m_freeList = null;
         this.m_path = 0;
         this._SafeStr_1758 = 0;
      }
      
      public function _SafeStr_491(param1:b2AABB, param2:*) : b2DynamicTreeNode
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc3_ = this._SafeStr_1449();
         _loc4_ = b2Settings.b2_aabbExtension;
         _loc5_ = b2Settings.b2_aabbExtension;
         _loc3_.aabb.lowerBound.x = param1.lowerBound.x - _loc4_;
         _loc3_.aabb.lowerBound.y = param1.lowerBound.y - _loc5_;
         _loc3_.aabb.upperBound.x = param1.upperBound.x + _loc4_;
         _loc3_.aabb.upperBound.y = param1.upperBound.y + _loc5_;
         _loc3_.userData = param2;
         this._SafeStr_2518(_loc3_);
         return _loc3_;
      }
      
      public function _SafeStr_1535(param1:b2DynamicTreeNode) : void
      {
         this._SafeStr_1482(param1);
         this._SafeStr_590(param1);
      }
      
      public function _SafeStr_602(param1:b2DynamicTreeNode, param2:b2AABB, param3:b2Vec2) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         b2Settings.b2Assert(param1._SafeStr_1420());
         if(param1.aabb._SafeStr_678(param2))
         {
            return false;
         }
         this._SafeStr_1482(param1);
         _loc4_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.x > 0 ? param3.x : -param3.x);
         _loc5_ = b2Settings.b2_aabbExtension + b2Settings.b2_aabbMultiplier * (param3.y > 0 ? param3.y : -param3.y);
         param1.aabb.lowerBound.x = param2.lowerBound.x - _loc4_;
         param1.aabb.lowerBound.y = param2.lowerBound.y - _loc5_;
         param1.aabb.upperBound.x = param2.upperBound.x + _loc4_;
         param1.aabb.upperBound.y = param2.upperBound.y + _loc5_;
         this._SafeStr_2518(param1);
         return true;
      }
      
      public function _SafeStr_328(param1:int) : void
      {
         var _loc3_:b2DynamicTreeNode = null;
         var _loc4_:uint = 0;
         if(this._SafeStr_421 == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = this._SafeStr_421;
            _loc4_ = 0;
            while(_loc3_._SafeStr_1420() == false)
            {
               _loc3_ = this.m_path >> _loc4_ & 1 ? _loc3_.child2 : _loc3_.child1;
               _loc4_ = uint(_loc4_ + 1 & 0x1F);
            }
            ++this.m_path;
            this._SafeStr_1482(_loc3_);
            this._SafeStr_2518(_loc3_);
            _loc2_++;
         }
      }
      
      public function _SafeStr_642(param1:b2DynamicTreeNode) : b2AABB
      {
         return param1.aabb;
      }
      
      public function GetUserData(param1:b2DynamicTreeNode) : *
      {
         return param1.userData;
      }
      
      public function _SafeStr_1231(param1:Function, param2:b2AABB) : void
      {
         var _loc5_:b2DynamicTreeNode = null;
         var _loc6_:Boolean = false;
         if(this._SafeStr_421 == null)
         {
            return;
         }
         var _loc3_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc4_:* = 0;
         var _loc7_:Number;
         _loc3_[_loc7_ = _loc4_++] = this._SafeStr_421;
         while(_loc4_ > 0)
         {
            _loc5_ = _loc3_[--_loc4_];
            if(_loc5_.aabb._SafeStr_444(param2))
            {
               if(_loc5_._SafeStr_1420())
               {
                  _loc6_ = param1(_loc5_);
                  if(!_loc6_)
                  {
                     return;
                  }
               }
               else
               {
                  var _loc8_:Number;
                  _loc3_[_loc8_ = _loc4_++] = _loc5_.child1;
                  var _loc9_:Number;
                  _loc3_[_loc9_ = _loc4_++] = _loc5_.child2;
               }
            }
         }
      }
      
      public function RayCast(param1:Function, param2:b2RayCastInput) : void
      {
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2AABB = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:b2DynamicTreeNode = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:Number = NaN;
         var _loc18_:b2RayCastInput = null;
         if(this._SafeStr_421 == null)
         {
            return;
         }
         _loc3_ = param2.p1;
         var _loc4_:b2Vec2 = param2.p2;
         var _loc5_:b2Vec2 = b2Math._SafeStr_2442(_loc3_,_loc4_);
         _loc5_.Normalize();
         var _loc6_:b2Vec2 = b2Math._SafeStr_429(1,_loc5_);
         var _loc7_:b2Vec2 = b2Math._SafeStr_326(_loc6_);
         var _loc8_:Number = param2._SafeStr_1595;
         _loc9_ = new b2AABB();
         _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
         _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
         _loc9_.lowerBound.x = Math.min(_loc3_.x,_loc10_);
         _loc9_.lowerBound.y = Math.min(_loc3_.y,_loc11_);
         _loc9_.upperBound.x = Math.max(_loc3_.x,_loc10_);
         _loc9_.upperBound.y = Math.max(_loc3_.y,_loc11_);
         var _loc12_:Vector.<b2DynamicTreeNode> = new Vector.<b2DynamicTreeNode>();
         var _loc13_:* = 0;
         var _loc19_:Number;
         _loc12_[_loc19_ = _loc13_++] = this._SafeStr_421;
         while(_loc13_ > 0)
         {
            _loc14_ = _loc12_[--_loc13_];
            if(_loc14_.aabb._SafeStr_444(_loc9_) != false)
            {
               _loc15_ = _loc14_.aabb._SafeStr_2421();
               _loc16_ = _loc14_.aabb._SafeStr_306();
               _loc17_ = Math.abs(_loc6_.x * (_loc3_.x - _loc15_.x) + _loc6_.y * (_loc3_.y - _loc15_.y)) - _loc7_.x * _loc16_.x - _loc7_.y * _loc16_.y;
               if(_loc17_ <= 0)
               {
                  if(_loc14_._SafeStr_1420())
                  {
                     _loc18_ = new b2RayCastInput();
                     _loc18_.p1 = param2.p1;
                     _loc18_.p2 = param2.p2;
                     _loc18_._SafeStr_1595 = param2._SafeStr_1595;
                     _loc8_ = param1(_loc18_,_loc14_);
                     if(_loc8_ == 0)
                     {
                        return;
                     }
                     _loc10_ = _loc3_.x + _loc8_ * (_loc4_.x - _loc3_.x);
                     _loc11_ = _loc3_.y + _loc8_ * (_loc4_.y - _loc3_.y);
                     _loc9_.lowerBound.x = Math.min(_loc3_.x,_loc10_);
                     _loc9_.lowerBound.y = Math.min(_loc3_.y,_loc11_);
                     _loc9_.upperBound.x = Math.max(_loc3_.x,_loc10_);
                     _loc9_.upperBound.y = Math.max(_loc3_.y,_loc11_);
                  }
                  else
                  {
                     var _loc20_:Number;
                     _loc12_[_loc20_ = _loc13_++] = _loc14_.child1;
                     var _loc21_:Number;
                     _loc12_[_loc21_ = _loc13_++] = _loc14_.child2;
                  }
               }
            }
         }
      }
      
      private function _SafeStr_1449() : b2DynamicTreeNode
      {
         var _loc1_:b2DynamicTreeNode = null;
         if(this.m_freeList)
         {
            _loc1_ = this.m_freeList;
            this.m_freeList = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.child1 = null;
            _loc1_.child2 = null;
            return _loc1_;
         }
         return new b2DynamicTreeNode();
      }
      
      private function _SafeStr_590(param1:b2DynamicTreeNode) : void
      {
         param1.parent = this.m_freeList;
         this.m_freeList = param1;
      }
      
      private function _SafeStr_2518(param1:b2DynamicTreeNode) : void
      {
         var _loc6_:b2DynamicTreeNode = null;
         var _loc7_:b2DynamicTreeNode = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         ++this._SafeStr_1758;
         if(this._SafeStr_421 == null)
         {
            this._SafeStr_421 = param1;
            this._SafeStr_421.parent = null;
            return;
         }
         var _loc2_:b2Vec2 = param1.aabb._SafeStr_2421();
         var _loc3_:b2DynamicTreeNode = this._SafeStr_421;
         if(_loc3_._SafeStr_1420() == false)
         {
            do
            {
               _loc6_ = _loc3_.child1;
               _loc7_ = _loc3_.child2;
               _loc8_ = Math.abs((_loc6_.aabb.lowerBound.x + _loc6_.aabb.upperBound.x) / 2 - _loc2_.x) + Math.abs((_loc6_.aabb.lowerBound.y + _loc6_.aabb.upperBound.y) / 2 - _loc2_.y);
               _loc9_ = Math.abs((_loc7_.aabb.lowerBound.x + _loc7_.aabb.upperBound.x) / 2 - _loc2_.x) + Math.abs((_loc7_.aabb.lowerBound.y + _loc7_.aabb.upperBound.y) / 2 - _loc2_.y);
               if(_loc8_ < _loc9_)
               {
                  _loc3_ = _loc6_;
               }
               else
               {
                  _loc3_ = _loc7_;
               }
            }
            while(_loc3_._SafeStr_1420() == false);
         }
         var _loc4_:b2DynamicTreeNode = _loc3_.parent;
         var _loc5_:b2DynamicTreeNode = this._SafeStr_1449();
         _loc5_.parent = _loc4_;
         _loc5_.userData = null;
         _loc5_.aabb._SafeStr_1880(param1.aabb,_loc3_.aabb);
         if(_loc4_)
         {
            if(_loc3_.parent.child1 == _loc3_)
            {
               _loc4_.child1 = _loc5_;
            }
            else
            {
               _loc4_.child2 = _loc5_;
            }
            _loc5_.child1 = _loc3_;
            _loc5_.child2 = param1;
            _loc3_.parent = _loc5_;
            param1.parent = _loc5_;
            while(!_loc4_.aabb._SafeStr_678(_loc5_.aabb))
            {
               _loc4_.aabb._SafeStr_1880(_loc4_.child1.aabb,_loc4_.child2.aabb);
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.parent;
               if(!_loc4_)
               {
                  break;
               }
            }
         }
         else
         {
            _loc5_.child1 = _loc3_;
            _loc5_.child2 = param1;
            _loc3_.parent = _loc5_;
            param1.parent = _loc5_;
            this._SafeStr_421 = _loc5_;
         }
      }
      
      private function _SafeStr_1482(param1:b2DynamicTreeNode) : void
      {
         var _loc4_:b2DynamicTreeNode = null;
         var _loc5_:b2AABB = null;
         if(param1 == this._SafeStr_421)
         {
            this._SafeStr_421 = null;
            return;
         }
         var _loc2_:b2DynamicTreeNode = param1.parent;
         var _loc3_:b2DynamicTreeNode = _loc2_.parent;
         if(_loc2_.child1 == param1)
         {
            _loc4_ = _loc2_.child2;
         }
         else
         {
            _loc4_ = _loc2_.child1;
         }
         if(_loc3_)
         {
            if(_loc3_.child1 == _loc2_)
            {
               _loc3_.child1 = _loc4_;
            }
            else
            {
               _loc3_.child2 = _loc4_;
            }
            _loc4_.parent = _loc3_;
            this._SafeStr_590(_loc2_);
            while(_loc3_)
            {
               _loc5_ = _loc3_.aabb;
               _loc3_.aabb = b2AABB._SafeStr_1880(_loc3_.child1.aabb,_loc3_.child2.aabb);
               if(_loc5_._SafeStr_678(_loc3_.aabb))
               {
                  break;
               }
               _loc3_ = _loc3_.parent;
            }
         }
         else
         {
            this._SafeStr_421 = _loc4_;
            _loc4_.parent = null;
            this._SafeStr_590(_loc2_);
         }
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_306 = "_-Sp"
 * @identifier _SafeStr_326 = "_-Lg"
 * @identifier _SafeStr_328 = "_-Cz"
 * @identifier _SafeStr_421 = "_-RN"
 * @identifier _SafeStr_429 = "_-X4"
 * @identifier _SafeStr_444 = "_-86"
 * @identifier _SafeStr_491 = "_-b4"
 * @identifier _SafeStr_590 = "_-ED"
 * @identifier _SafeStr_602 = "_-3E"
 * @identifier _SafeStr_642 = "_-Bn"
 * @identifier _SafeStr_678 = "_-FG"
 * @identifier _SafeStr_1231 = "_-AQ"
 * @identifier _SafeStr_1420 = "_-4T"
 * @identifier _SafeStr_1449 = "_-K0"
 * @identifier _SafeStr_1482 = "_-Yb"
 * @identifier _SafeStr_1535 = "_-gd"
 * @identifier _SafeStr_1595 = "_-9G"
 * @identifier _SafeStr_1758 = "_-Hh"
 * @identifier _SafeStr_1880 = "_-Rm"
 * @identifier _SafeStr_2421 = "_-1h"
 * @identifier _SafeStr_2442 = "_-Ix"
 * @identifier _SafeStr_2518 = "_-eK"
 */
