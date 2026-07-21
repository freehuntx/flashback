class com.meychi.ascrypt.MD5
{
   function MD5()
   {
   }
   static function calculate(_loc1_)
   {
      return com.meychi.ascrypt.MD5.hex_md5(_loc1_);
   }
   static function hex_md5(_loc1_)
   {
      return com.meychi.ascrypt.MD5.binl2hex(com.meychi.ascrypt.MD5.core_md5(com.meychi.ascrypt.MD5.str2binl(_loc1_),_loc1_.length * 8));
   }
   static function core_md5(_loc6_, _loc11_)
   {
      _loc6_[_loc11_ >> 5] |= 128 << _loc11_ % 32;
      _loc6_[(_loc11_ + 64 >>> 9 << 4) + 14] = _loc11_;
      var _loc4_ = 1732584193;
      var _loc3_ = -271733879;
      var _loc2_ = -1732584194;
      var _loc1_ = 271733878;
      var _loc5_ = 0;
      var _loc10_;
      var _loc9_;
      var _loc8_;
      var _loc7_;
      while(_loc5_ < _loc6_.length)
      {
         _loc10_ = _loc4_;
         _loc9_ = _loc3_;
         _loc8_ = _loc2_;
         _loc7_ = _loc1_;
         _loc4_ = com.meychi.ascrypt.MD5.md5_ff(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 0],7,-680876936);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ff(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 1],12,-389564586);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ff(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 2],17,606105819);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ff(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 3],22,-1044525330);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ff(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 4],7,-176418897);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ff(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 5],12,1200080426);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ff(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 6],17,-1473231341);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ff(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 7],22,-45705983);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ff(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 8],7,1770035416);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ff(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 9],12,-1958414417);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ff(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 10],17,-42063);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ff(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 11],22,-1990404162);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ff(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 12],7,1804603682);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ff(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 13],12,-40341101);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ff(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 14],17,-1502002290);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ff(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 15],22,1236535329);
         _loc4_ = com.meychi.ascrypt.MD5.md5_gg(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 1],5,-165796510);
         _loc1_ = com.meychi.ascrypt.MD5.md5_gg(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 6],9,-1069501632);
         _loc2_ = com.meychi.ascrypt.MD5.md5_gg(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 11],14,643717713);
         _loc3_ = com.meychi.ascrypt.MD5.md5_gg(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 0],20,-373897302);
         _loc4_ = com.meychi.ascrypt.MD5.md5_gg(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 5],5,-701558691);
         _loc1_ = com.meychi.ascrypt.MD5.md5_gg(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 10],9,38016083);
         _loc2_ = com.meychi.ascrypt.MD5.md5_gg(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 15],14,-660478335);
         _loc3_ = com.meychi.ascrypt.MD5.md5_gg(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 4],20,-405537848);
         _loc4_ = com.meychi.ascrypt.MD5.md5_gg(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 9],5,568446438);
         _loc1_ = com.meychi.ascrypt.MD5.md5_gg(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 14],9,-1019803690);
         _loc2_ = com.meychi.ascrypt.MD5.md5_gg(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 3],14,-187363961);
         _loc3_ = com.meychi.ascrypt.MD5.md5_gg(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 8],20,1163531501);
         _loc4_ = com.meychi.ascrypt.MD5.md5_gg(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 13],5,-1444681467);
         _loc1_ = com.meychi.ascrypt.MD5.md5_gg(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 2],9,-51403784);
         _loc2_ = com.meychi.ascrypt.MD5.md5_gg(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 7],14,1735328473);
         _loc3_ = com.meychi.ascrypt.MD5.md5_gg(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 12],20,-1926607734);
         _loc4_ = com.meychi.ascrypt.MD5.md5_hh(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 5],4,-378558);
         _loc1_ = com.meychi.ascrypt.MD5.md5_hh(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 8],11,-2022574463);
         _loc2_ = com.meychi.ascrypt.MD5.md5_hh(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 11],16,1839030562);
         _loc3_ = com.meychi.ascrypt.MD5.md5_hh(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 14],23,-35309556);
         _loc4_ = com.meychi.ascrypt.MD5.md5_hh(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 1],4,-1530992060);
         _loc1_ = com.meychi.ascrypt.MD5.md5_hh(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 4],11,1272893353);
         _loc2_ = com.meychi.ascrypt.MD5.md5_hh(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 7],16,-155497632);
         _loc3_ = com.meychi.ascrypt.MD5.md5_hh(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 10],23,-1094730640);
         _loc4_ = com.meychi.ascrypt.MD5.md5_hh(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 13],4,681279174);
         _loc1_ = com.meychi.ascrypt.MD5.md5_hh(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 0],11,-358537222);
         _loc2_ = com.meychi.ascrypt.MD5.md5_hh(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 3],16,-722521979);
         _loc3_ = com.meychi.ascrypt.MD5.md5_hh(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 6],23,76029189);
         _loc4_ = com.meychi.ascrypt.MD5.md5_hh(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 9],4,-640364487);
         _loc1_ = com.meychi.ascrypt.MD5.md5_hh(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 12],11,-421815835);
         _loc2_ = com.meychi.ascrypt.MD5.md5_hh(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 15],16,530742520);
         _loc3_ = com.meychi.ascrypt.MD5.md5_hh(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 2],23,-995338651);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ii(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 0],6,-198630844);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ii(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 7],10,1126891415);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ii(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 14],15,-1416354905);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ii(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 5],21,-57434055);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ii(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 12],6,1700485571);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ii(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 3],10,-1894986606);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ii(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 10],15,-1051523);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ii(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 1],21,-2054922799);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ii(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 8],6,1873313359);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ii(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 15],10,-30611744);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ii(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 6],15,-1560198380);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ii(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 13],21,1309151649);
         _loc4_ = com.meychi.ascrypt.MD5.md5_ii(_loc4_,_loc3_,_loc2_,_loc1_,_loc6_[_loc5_ + 4],6,-145523070);
         _loc1_ = com.meychi.ascrypt.MD5.md5_ii(_loc1_,_loc4_,_loc3_,_loc2_,_loc6_[_loc5_ + 11],10,-1120210379);
         _loc2_ = com.meychi.ascrypt.MD5.md5_ii(_loc2_,_loc1_,_loc4_,_loc3_,_loc6_[_loc5_ + 2],15,718787259);
         _loc3_ = com.meychi.ascrypt.MD5.md5_ii(_loc3_,_loc2_,_loc1_,_loc4_,_loc6_[_loc5_ + 9],21,-343485551);
         _loc4_ = com.meychi.ascrypt.MD5.safe_add(_loc4_,_loc10_);
         _loc3_ = com.meychi.ascrypt.MD5.safe_add(_loc3_,_loc9_);
         _loc2_ = com.meychi.ascrypt.MD5.safe_add(_loc2_,_loc8_);
         _loc1_ = com.meychi.ascrypt.MD5.safe_add(_loc1_,_loc7_);
         _loc5_ += 16;
      }
      return new Array(_loc4_,_loc3_,_loc2_,_loc1_);
   }
   static function md5_cmn(_loc5_, _loc4_, _loc2_, _loc6_, _loc3_, _loc1_)
   {
      return com.meychi.ascrypt.MD5.safe_add(com.meychi.ascrypt.MD5.bit_rol(com.meychi.ascrypt.MD5.safe_add(com.meychi.ascrypt.MD5.safe_add(_loc4_,_loc5_),com.meychi.ascrypt.MD5.safe_add(_loc6_,_loc1_)),_loc3_),_loc2_);
   }
   static function md5_ff(_loc6_, _loc1_, _loc3_, _loc2_, _loc7_, _loc5_, _loc4_)
   {
      return com.meychi.ascrypt.MD5.md5_cmn(_loc1_ & _loc3_ | (~_loc1_) & _loc2_,_loc6_,_loc1_,_loc7_,_loc5_,_loc4_);
   }
   static function md5_gg(_loc6_, _loc2_, _loc3_, _loc1_, _loc7_, _loc5_, _loc4_)
   {
      return com.meychi.ascrypt.MD5.md5_cmn(_loc2_ & _loc1_ | _loc3_ & (~_loc1_),_loc6_,_loc2_,_loc7_,_loc5_,_loc4_);
   }
   static function md5_hh(_loc6_, _loc1_, _loc3_, _loc2_, _loc7_, _loc5_, _loc4_)
   {
      return com.meychi.ascrypt.MD5.md5_cmn(_loc1_ ^ _loc3_ ^ _loc2_,_loc6_,_loc1_,_loc7_,_loc5_,_loc4_);
   }
   static function md5_ii(_loc6_, _loc1_, _loc3_, _loc2_, _loc7_, _loc5_, _loc4_)
   {
      return com.meychi.ascrypt.MD5.md5_cmn(_loc3_ ^ (_loc1_ | ~_loc2_),_loc6_,_loc1_,_loc7_,_loc5_,_loc4_);
   }
   static function bit_rol(_loc1_, _loc2_)
   {
      return _loc1_ << _loc2_ | _loc1_ >>> 32 - _loc2_;
   }
   static function safe_add(_loc4_, _loc3_)
   {
      var _loc1_ = (_loc4_ & 0xFFFF) + (_loc3_ & 0xFFFF);
      var _loc2_ = (_loc4_ >> 16) + (_loc3_ >> 16) + (_loc1_ >> 16);
      return _loc2_ << 16 | _loc1_ & 0xFFFF;
   }
   static function str2binl(_loc2_)
   {
      var _loc3_ = new Array();
      var _loc4_ = 255;
      var _loc1_ = 0;
      while(_loc1_ < _loc2_.length * 8)
      {
         _loc3_[_loc1_ >> 5] |= (_loc2_.charCodeAt(_loc1_ / 8) & _loc4_) << _loc1_ % 32;
         _loc1_ += 8;
      }
      return _loc3_;
   }
   static function binl2hex(_loc2_)
   {
      var _loc4_ = new String("");
      var _loc3_ = new String("0123456789abcdef");
      var _loc1_ = 0;
      while(_loc1_ < _loc2_.length * 4)
      {
         _loc4_ += _loc3_.charAt(_loc2_[_loc1_ >> 2] >> _loc1_ % 4 * 8 + 4 & 0x0F) + _loc3_.charAt(_loc2_[_loc1_ >> 2] >> _loc1_ % 4 * 8 & 0x0F);
         _loc1_ = _loc1_ + 1;
      }
      return _loc4_;
   }
}
