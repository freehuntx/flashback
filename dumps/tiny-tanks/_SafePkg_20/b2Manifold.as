package _SafePkg_20
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const _SafeStr_1804:int = 1;
      
      public static const _SafeStr_1593:int = 2;
      
      public static const _SafeStr_2313:int = 4;
      
      public var _SafeStr_2110:Vector.<b2ManifoldPoint>;
      
      public var m_localPlaneNormal:b2Vec2;
      
      public var _SafeStr_2485:b2Vec2;
      
      public var _SafeStr_972:int;
      
      public var _SafeStr_848:int = 0;
      
      public function b2Manifold()
      {
         super();
         this._SafeStr_2110 = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            this._SafeStr_2110[_loc1_] = new b2ManifoldPoint();
            _loc1_++;
         }
         this.m_localPlaneNormal = new b2Vec2();
         this._SafeStr_2485 = new b2Vec2();
      }
      
      public function _SafeStr_944() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < b2Settings.b2_maxManifoldPoints)
         {
            (this._SafeStr_2110[_loc1_] as b2ManifoldPoint)._SafeStr_944();
            _loc1_++;
         }
         this.m_localPlaneNormal._SafeStr_1807();
         this._SafeStr_2485._SafeStr_1807();
         this._SafeStr_972 = 0;
         this._SafeStr_848 = 0;
      }
      
      public function Set(param1:b2Manifold) : void
      {
         this._SafeStr_848 = param1._SafeStr_848;
         var _loc2_:int = 0;
         while(_loc2_ < b2Settings.b2_maxManifoldPoints)
         {
            (this._SafeStr_2110[_loc2_] as b2ManifoldPoint).Set(param1._SafeStr_2110[_loc2_]);
            _loc2_++;
         }
         this.m_localPlaneNormal._SafeStr_1679(param1.m_localPlaneNormal);
         this._SafeStr_2485._SafeStr_1679(param1._SafeStr_2485);
         this._SafeStr_972 = param1._SafeStr_972;
      }
      
      public function _SafeStr_2396() : b2Manifold
      {
         var _loc1_:b2Manifold = new b2Manifold();
         _loc1_.Set(this);
         return _loc1_;
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafeStr_848 = "_-UK"
 * @identifier _SafeStr_944 = "_-3"
 * @identifier _SafeStr_972 = "_-hV"
 * @identifier _SafeStr_1593 = "_-FT"
 * @identifier _SafeStr_1679 = "_-MI"
 * @identifier _SafeStr_1804 = "_-DD"
 * @identifier _SafeStr_1807 = "_-O0"
 * @identifier _SafeStr_2110 = "_-Zp"
 * @identifier _SafeStr_2313 = "_-LY"
 * @identifier _SafeStr_2396 = "_-2N"
 * @identifier _SafeStr_2485 = "_-Ab"
 */
