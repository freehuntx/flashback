package _SafePkg_19
{
   import Box2D.Common.*;
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_20.*;
   import _SafePkg_8.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
      
      private var _SafeStr_1125:Vector.<Vector.<b2ContactRegister>>;
      
      private var _SafeStr_1004:*;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this._SafeStr_1004 = param1;
         this._SafeStr_1256();
      }
      
      b2internal function _SafeStr_2523(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this._SafeStr_1125[param3][param4]._SafeStr_2152 = param1;
         this._SafeStr_1125[param3][param4]._SafeStr_1501 = param2;
         this._SafeStr_1125[param3][param4]._SafeStr_2081 = true;
         if(param3 != param4)
         {
            this._SafeStr_1125[param4][param3]._SafeStr_2152 = param1;
            this._SafeStr_1125[param4][param3]._SafeStr_1501 = param2;
            this._SafeStr_1125[param4][param3]._SafeStr_2081 = false;
         }
      }
      
      b2internal function _SafeStr_1256() : void
      {
         var _loc2_:int = 0;
         this._SafeStr_1125 = new Vector.<Vector.<b2ContactRegister>>(b2Shape._SafeStr_1128);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape._SafeStr_1128)
         {
            this._SafeStr_1125[_loc1_] = new Vector.<b2ContactRegister>(b2Shape._SafeStr_1128);
            _loc2_ = 0;
            while(_loc2_ < b2Shape._SafeStr_1128)
            {
               this._SafeStr_1125[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this._SafeStr_2523(b2CircleContact.Create,b2CircleContact.Destroy,b2Shape._SafeStr_695,b2Shape._SafeStr_695);
         this._SafeStr_2523(b2PolyAndCircleContact.Create,b2PolyAndCircleContact.Destroy,b2Shape._SafeStr_1854,b2Shape._SafeStr_695);
         this._SafeStr_2523(b2PolygonContact.Create,b2PolygonContact.Destroy,b2Shape._SafeStr_1854,b2Shape._SafeStr_1854);
         this._SafeStr_2523(b2EdgeAndCircleContact.Create,b2EdgeAndCircleContact.Destroy,b2Shape._SafeStr_891,b2Shape._SafeStr_695);
         this._SafeStr_2523(b2PolyAndEdgeContact.Create,b2PolyAndEdgeContact.Destroy,b2Shape._SafeStr_1854,b2Shape._SafeStr_891);
      }
      
      public function Create(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1._SafeStr_978();
         var _loc4_:int = param2._SafeStr_978();
         var _loc5_:b2ContactRegister = this._SafeStr_1125[_loc3_][_loc4_];
         if(_loc5_._SafeStr_931)
         {
            _loc6_ = _loc5_._SafeStr_931;
            _loc5_._SafeStr_931 = _loc6_._SafeStr_2195;
            --_loc5_._SafeStr_1232;
            _loc6_._SafeStr_944(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function = _loc5_._SafeStr_2152;
         if(_loc7_ != null)
         {
            if(_loc5_._SafeStr_2081)
            {
               _loc6_ = _loc7_(this._SafeStr_1004);
               _loc6_._SafeStr_944(param1,param2);
               return _loc6_;
            }
            _loc6_ = _loc7_(this._SafeStr_1004);
            _loc6_._SafeStr_944(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function Destroy(param1:b2Contact) : void
      {
         if(param1._SafeStr_1059._SafeStr_848 > 0)
         {
            param1._SafeStr_1281._SafeStr_2654._SafeStr_1589(true);
            param1._SafeStr_384._SafeStr_2654._SafeStr_1589(true);
         }
         var _loc2_:int = param1._SafeStr_1281._SafeStr_978();
         var _loc3_:int = param1._SafeStr_384._SafeStr_978();
         var _loc4_:b2ContactRegister = this._SafeStr_1125[_loc2_][_loc3_];
         ++_loc4_._SafeStr_1232;
         param1._SafeStr_2195 = _loc4_._SafeStr_931;
         _loc4_._SafeStr_931 = param1;
         var _loc5_:Function = _loc4_._SafeStr_1501;
         _loc5_(param1,this._SafeStr_1004);
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
 * @identifier _SafeStr_695 = "_-Dy"
 * @identifier _SafeStr_848 = "_-UK"
 * @identifier _SafeStr_891 = "_-dp"
 * @identifier _SafeStr_931 = "_-U6"
 * @identifier _SafeStr_944 = "_-3"
 * @identifier _SafeStr_978 = "_-5j"
 * @identifier _SafeStr_1004 = "_-3C"
 * @identifier _SafeStr_1059 = "_-c"
 * @identifier _SafeStr_1125 = "_-9a"
 * @identifier _SafeStr_1128 = "_-Fc"
 * @identifier _SafeStr_1232 = "_-OQ"
 * @identifier _SafeStr_1256 = "_-eA"
 * @identifier _SafeStr_1281 = "_-Hn"
 * @identifier _SafeStr_1501 = "_-aJ"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1854 = "_-4p"
 * @identifier _SafeStr_2081 = "_-XN"
 * @identifier _SafeStr_2152 = "_-7y"
 * @identifier _SafeStr_2195 = "_-NE"
 * @identifier _SafeStr_2523 = "_-eO"
 * @identifier _SafeStr_2654 = "_-jK"
 */
