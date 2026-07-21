class XML2Object
{
   var _result;
   var _xml;
   static var xml2object;
   function XML2Object()
   {
      this._result = new Object();
   }
   static function deserialize(_loc1_)
   {
      XML2Object.xml2object = new XML2Object();
      XML2Object.xml2object.xml = _loc1_;
      return XML2Object.xml2object.nodesToProperties();
   }
   function get xml()
   {
      return this._xml;
   }
   function set xml(_loc2_)
   {
      this._xml = _loc2_;
   }
   function nodesToProperties(_loc9_, _loc3_, _loc8_, _loc5_)
   {
      var _loc7_;
      var _loc2_;
      _loc3_ != undefined ? (_loc3_ = _loc3_[_loc8_]) : (_loc3_ = this._result);
      if(_loc9_ == undefined)
      {
         _loc9_ = XMLNode(this._xml);
      }
      var _loc4_;
      var _loc6_;
      if(_loc9_.hasChildNodes())
      {
         _loc7_ = _loc9_.childNodes;
         if(_loc5_ != undefined)
         {
            _loc3_ = _loc3_[_loc5_];
         }
         while(_loc7_.length > 0)
         {
            _loc2_ = XMLNode(_loc7_.shift());
            if(_loc2_.nodeName != undefined)
            {
               _loc4_ = new Object();
               _loc4_.attributes = _loc2_.attributes;
               _loc4_.data = this.sanitizeLineBreaks(_loc2_.firstChild.nodeValue);
               if(_loc3_[_loc2_.nodeName] != undefined)
               {
                  if(_loc3_[_loc2_.nodeName].__proto__ == Array.prototype)
                  {
                     _loc3_[_loc2_.nodeName].push(_loc4_);
                  }
                  else
                  {
                     _loc6_ = _loc3_[_loc2_.nodeName];
                     delete _loc3_[_loc2_.nodeName];
                     _loc3_[_loc2_.nodeName] = new Array();
                     _loc3_[_loc2_.nodeName].push(_loc6_);
                     _loc3_[_loc2_.nodeName].push(_loc4_);
                  }
                  _loc5_ = _loc3_[_loc2_.nodeName].length - 1;
               }
               else
               {
                  _loc3_[_loc2_.nodeName] = _loc4_;
                  _loc5_;
               }
               _loc8_ = _loc2_.nodeName;
            }
            if(_loc2_.hasChildNodes())
            {
               this.nodesToProperties(_loc2_,_loc3_,_loc8_,_loc5_);
            }
         }
      }
      return this._result;
   }
   function sanitizeLineBreaks(_loc1_)
   {
      if(_loc1_.indexOf("\r\n") > -1)
      {
         return _loc1_.split("\r\n").join("\n");
      }
      return _loc1_;
   }
}
