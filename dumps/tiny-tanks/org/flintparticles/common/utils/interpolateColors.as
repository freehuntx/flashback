package org.flintparticles.common.utils
{
   public function interpolateColors(param1:uint, param2:uint, param3:Number) : uint
   {
      var _loc4_:Number = 1 - param3;
      var _loc5_:uint = uint(Math.round((param1 >>> 16 & 0xFF) * param3 + (param2 >>> 16 & 0xFF) * _loc4_));
      var _loc6_:uint = uint(Math.round((param1 >>> 8 & 0xFF) * param3 + (param2 >>> 8 & 0xFF) * _loc4_));
      var _loc7_:uint = uint(Math.round((param1 & 0xFF) * param3 + (param2 & 0xFF) * _loc4_));
      var _loc8_:uint = uint(Math.round((param1 >>> 24 & 0xFF) * param3 + (param2 >>> 24 & 0xFF) * _loc4_));
      return _loc8_ << 24 | _loc5_ << 16 | _loc6_ << 8 | _loc7_;
   }
}

