package _SafePkg_3
{
   import flash.display.*;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class _SafeCls_2
   {
      
      private static var _SafeStr_2142:MovieClip;
      
      private static var _currentTime:Number;
      
      private static var _SafeStr_1146:Number;
      
      private static var _tweenList:Array;
      
      private static var _transitionList:Object;
      
      private static var _specialPropertyList:Object;
      
      private static var _specialPropertyModifierList:Object;
      
      private static var _specialPropertySplitterList:Object;
      
      private static var _SafeStr_2516:Boolean = false;
      
      private static var _SafeStr_1132:Boolean = false;
      
      private static var _SafeStr_2549:Number = 1;
      
      public static var _SafeStr_1027:Boolean = true;
      
      public function _SafeCls_2()
      {
         super();
         trace("Tweener is a static class and should not be instantiated.");
      }
      
      public static function _SafeStr_923(param1:Object = null, param2:Object = null) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc13_:Function = null;
         var _loc14_:Object = null;
         var _loc15_:_SafeCls_22 = null;
         var _loc16_:Number = NaN;
         var _loc17_:Array = null;
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc20_:String = null;
         if(!Boolean(param1))
         {
            return false;
         }
         if(param1 is Array)
         {
            _loc6_ = param1.concat();
         }
         else
         {
            _loc6_ = [param1];
         }
         var _loc7_:Object = _SafeCls_22._SafeStr_1403(param2);
         if(!_SafeStr_1132)
         {
            init();
         }
         if(!_SafeStr_2516 || !Boolean(_SafeStr_2142))
         {
            startEngine();
         }
         var _loc8_:Number = isNaN(_loc7_.time) ? 0 : Number(_loc7_.time);
         var _loc9_:Number = isNaN(_loc7_.delay) ? 0 : Number(_loc7_.delay);
         var _loc10_:Array = new Array();
         var _loc11_:Object = {
            "overwrite":true,
            "time":true,
            "delay":true,
            "useFrames":true,
            "skipUpdates":true,
            "transition":true,
            "transitionParams":true,
            "onStart":true,
            "onUpdate":true,
            "onComplete":true,
            "onOverwrite":true,
            "onError":true,
            "rounded":true,
            "onStartParams":true,
            "onUpdateParams":true,
            "onCompleteParams":true,
            "onOverwriteParams":true,
            "onStartScope":true,
            "onUpdateScope":true,
            "onCompleteScope":true,
            "onOverwriteScope":true,
            "onErrorScope":true
         };
         var _loc12_:Object = new Object();
         for(_loc5_ in _loc7_)
         {
            if(!_loc11_[_loc5_])
            {
               if(_specialPropertySplitterList[_loc5_])
               {
                  _loc17_ = _specialPropertySplitterList[_loc5_].splitValues(_loc7_[_loc5_],_specialPropertySplitterList[_loc5_].parameters);
                  _loc3_ = 0;
                  while(_loc3_ < _loc17_.length)
                  {
                     if(_specialPropertySplitterList[_loc17_[_loc3_].name])
                     {
                        _loc18_ = _specialPropertySplitterList[_loc17_[_loc3_].name].splitValues(_loc17_[_loc3_].value,_specialPropertySplitterList[_loc17_[_loc3_].name].parameters);
                        _loc4_ = 0;
                        while(_loc4_ < _loc18_.length)
                        {
                           _loc10_[_loc18_[_loc4_].name] = {
                              "valueStart":undefined,
                              "valueComplete":_loc18_[_loc4_].value,
                              "arrayIndex":_loc18_[_loc4_].arrayIndex,
                              "isSpecialProperty":false
                           };
                           _loc4_++;
                        }
                     }
                     else
                     {
                        _loc10_[_loc17_[_loc3_].name] = {
                           "valueStart":undefined,
                           "valueComplete":_loc17_[_loc3_].value,
                           "arrayIndex":_loc17_[_loc3_].arrayIndex,
                           "isSpecialProperty":false
                        };
                     }
                     _loc3_++;
                  }
               }
               else if(_specialPropertyModifierList[_loc5_] != undefined)
               {
                  _loc19_ = _specialPropertyModifierList[_loc5_].modifyValues(_loc7_[_loc5_]);
                  _loc3_ = 0;
                  while(_loc3_ < _loc19_.length)
                  {
                     _loc12_[_loc19_[_loc3_].name] = {
                        "modifierParameters":_loc19_[_loc3_].parameters,
                        "modifierFunction":_specialPropertyModifierList[_loc5_].getValue
                     };
                     _loc3_++;
                  }
               }
               else
               {
                  _loc10_[_loc5_] = {
                     "valueStart":undefined,
                     "valueComplete":_loc7_[_loc5_]
                  };
               }
            }
         }
         for(_loc5_ in _loc10_)
         {
            if(_specialPropertyList[_loc5_] != undefined)
            {
               _loc10_[_loc5_].isSpecialProperty = true;
            }
            else if(_loc6_[0][_loc5_] == undefined)
            {
               _SafeStr_566("The property \'" + _loc5_ + "\' doesn\'t seem to be a normal object property of " + String(_loc6_[0]) + " or a registered special property.");
            }
         }
         for(_loc5_ in _loc12_)
         {
            if(_loc10_[_loc5_] != undefined)
            {
               _loc10_[_loc5_].modifierParameters = _loc12_[_loc5_].modifierParameters;
               _loc10_[_loc5_].modifierFunction = _loc12_[_loc5_].modifierFunction;
            }
         }
         if(typeof _loc7_.transition == "string")
         {
            _loc20_ = _loc7_.transition.toLowerCase();
            _loc13_ = _transitionList[_loc20_];
         }
         else
         {
            _loc13_ = _loc7_.transition;
         }
         if(!Boolean(_loc13_))
         {
            _loc13_ = _transitionList["easeoutexpo"];
         }
         _loc3_ = 0;
         while(_loc3_ < _loc6_.length)
         {
            _loc14_ = new Object();
            for(_loc5_ in _loc10_)
            {
               _loc14_[_loc5_] = new PropertyInfoObj(_loc10_[_loc5_].valueStart,_loc10_[_loc5_].valueComplete,_loc10_[_loc5_].valueComplete,_loc10_[_loc5_].arrayIndex,{},_loc10_[_loc5_].isSpecialProperty,_loc10_[_loc5_].modifierFunction,_loc10_[_loc5_].modifierParameters);
            }
            if(_loc7_.useFrames == true)
            {
               _loc15_ = new _SafeCls_22(_loc6_[_loc3_],_SafeStr_1146 + _loc9_ / _SafeStr_2549,_SafeStr_1146 + (_loc9_ + _loc8_) / _SafeStr_2549,true,_loc13_,_loc7_.transitionParams);
            }
            else
            {
               _loc15_ = new _SafeCls_22(_loc6_[_loc3_],_currentTime + _loc9_ * 1000 / _SafeStr_2549,_currentTime + (_loc9_ * 1000 + _loc8_ * 1000) / _SafeStr_2549,false,_loc13_,_loc7_.transitionParams);
            }
            _loc15_.properties = _loc14_;
            _loc15_.onStart = _loc7_.onStart;
            _loc15_.onUpdate = _loc7_.onUpdate;
            _loc15_.onComplete = _loc7_.onComplete;
            _loc15_.onOverwrite = _loc7_.onOverwrite;
            _loc15_.onError = _loc7_.onError;
            _loc15_.onStartParams = _loc7_.onStartParams;
            _loc15_.onUpdateParams = _loc7_.onUpdateParams;
            _loc15_.onCompleteParams = _loc7_.onCompleteParams;
            _loc15_.onOverwriteParams = _loc7_.onOverwriteParams;
            _loc15_.onStartScope = _loc7_.onStartScope;
            _loc15_.onUpdateScope = _loc7_.onUpdateScope;
            _loc15_.onCompleteScope = _loc7_.onCompleteScope;
            _loc15_.onOverwriteScope = _loc7_.onOverwriteScope;
            _loc15_.onErrorScope = _loc7_.onErrorScope;
            _loc15_.rounded = _loc7_.rounded;
            _loc15_.skipUpdates = _loc7_.skipUpdates;
            if(_loc7_.overwrite == undefined ? _SafeStr_1027 : Boolean(_loc7_.overwrite))
            {
               _SafeStr_1142(_loc15_.scope,_loc15_.properties,_loc15_.timeStart,_loc15_.timeComplete);
            }
            _tweenList.push(_loc15_);
            if(_loc8_ == 0 && _loc9_ == 0)
            {
               _loc16_ = _tweenList.length - 1;
               _SafeStr_1549(_loc16_);
               _SafeStr_1962(_loc16_);
            }
            _loc3_++;
         }
         return true;
      }
      
      public static function _SafeStr_471(param1:Object = null, param2:Object = null) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Array = null;
         var _loc8_:Function = null;
         var _loc9_:_SafeCls_22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         if(!Boolean(param1))
         {
            return false;
         }
         if(param1 is Array)
         {
            _loc4_ = param1.concat();
         }
         else
         {
            _loc4_ = [param1];
         }
         var _loc5_:Object = param2;
         if(!_SafeStr_1132)
         {
            init();
         }
         if(!_SafeStr_2516 || !Boolean(_SafeStr_2142))
         {
            startEngine();
         }
         var _loc6_:Number = isNaN(_loc5_.time) ? 0 : Number(_loc5_.time);
         var _loc7_:Number = isNaN(_loc5_.delay) ? 0 : Number(_loc5_.delay);
         if(typeof _loc5_.transition == "string")
         {
            _loc11_ = _loc5_.transition.toLowerCase();
            _loc8_ = _transitionList[_loc11_];
         }
         else
         {
            _loc8_ = _loc5_.transition;
         }
         if(!Boolean(_loc8_))
         {
            _loc8_ = _transitionList["easeoutexpo"];
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(_loc5_.useFrames == true)
            {
               _loc9_ = new _SafeCls_22(_loc4_[_loc3_],_SafeStr_1146 + _loc7_ / _SafeStr_2549,_SafeStr_1146 + (_loc7_ + _loc6_) / _SafeStr_2549,true,_loc8_,_loc5_.transitionParams);
            }
            else
            {
               _loc9_ = new _SafeCls_22(_loc4_[_loc3_],_currentTime + _loc7_ * 1000 / _SafeStr_2549,_currentTime + (_loc7_ * 1000 + _loc6_ * 1000) / _SafeStr_2549,false,_loc8_,_loc5_.transitionParams);
            }
            _loc9_.properties = null;
            _loc9_.onStart = _loc5_.onStart;
            _loc9_.onUpdate = _loc5_.onUpdate;
            _loc9_.onComplete = _loc5_.onComplete;
            _loc9_.onOverwrite = _loc5_.onOverwrite;
            _loc9_.onStartParams = _loc5_.onStartParams;
            _loc9_.onUpdateParams = _loc5_.onUpdateParams;
            _loc9_.onCompleteParams = _loc5_.onCompleteParams;
            _loc9_.onOverwriteParams = _loc5_.onOverwriteParams;
            _loc9_.onStartScope = _loc5_.onStartScope;
            _loc9_.onUpdateScope = _loc5_.onUpdateScope;
            _loc9_.onCompleteScope = _loc5_.onCompleteScope;
            _loc9_.onOverwriteScope = _loc5_.onOverwriteScope;
            _loc9_.onErrorScope = _loc5_.onErrorScope;
            _loc9_._SafeStr_526 = true;
            _loc9_.count = _loc5_.count;
            _loc9_.waitFrames = _loc5_.waitFrames;
            _tweenList.push(_loc9_);
            if(_loc6_ == 0 && _loc7_ == 0)
            {
               _loc10_ = _tweenList.length - 1;
               _SafeStr_1549(_loc10_);
               _SafeStr_1962(_loc10_);
            }
            _loc3_++;
         }
         return true;
      }
      
      public static function _SafeStr_1142(param1:Object, param2:Object, param3:Number, param4:Number) : Boolean
      {
         var removedLocally:Boolean = false;
         var i:uint = 0;
         var pName:String = null;
         var eventScope:Object = null;
         var p_scope:Object = param1;
         var p_properties:Object = param2;
         var p_timeStart:Number = param3;
         var p_timeComplete:Number = param4;
         var removed:Boolean = false;
         var tl:uint = uint(_tweenList.length);
         i = 0;
         while(i < tl)
         {
            if(Boolean(Boolean(_tweenList[i])) && p_scope == _tweenList[i].scope)
            {
               if(p_timeComplete > _tweenList[i].timeStart && p_timeStart < _tweenList[i].timeComplete)
               {
                  removedLocally = false;
                  for(pName in _tweenList[i].properties)
                  {
                     if(Boolean(p_properties[pName]))
                     {
                        if(Boolean(_tweenList[i].onOverwrite))
                        {
                           eventScope = Boolean(_tweenList[i].onOverwriteScope) ? _tweenList[i].onOverwriteScope : _tweenList[i].scope;
                           try
                           {
                              _tweenList[i].onOverwrite.apply(eventScope,_tweenList[i].onOverwriteParams);
                           }
                           catch(e:Error)
                           {
                              _SafeStr_898(_tweenList[i],e,"onOverwrite");
                           }
                        }
                        _tweenList[i].properties[pName] = undefined;
                        delete _tweenList[i].properties[pName];
                        removedLocally = true;
                        removed = true;
                     }
                  }
                  if(removedLocally)
                  {
                     if(_SafeCls_38.getObjectLength(_tweenList[i].properties) == 0)
                     {
                        _SafeStr_1962(i);
                     }
                  }
               }
            }
            i++;
         }
         return removed;
      }
      
      public static function _SafeStr_464(param1:Object, ... rest) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc5_:_SafeCls_35 = null;
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc3_:Array = new Array();
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            if(typeof rest[_loc4_] == "string" && _loc3_.indexOf(rest[_loc4_]) == -1)
            {
               if(_specialPropertySplitterList[rest[_loc4_]])
               {
                  _loc5_ = _specialPropertySplitterList[rest[_loc4_]];
                  _loc6_ = _loc5_.splitValues(param1,null);
                  _loc7_ = 0;
                  while(_loc7_ < _loc6_.length)
                  {
                     _loc3_.push(_loc6_[_loc7_].name);
                     _loc7_++;
                  }
               }
               else
               {
                  _loc3_.push(rest[_loc4_]);
               }
            }
            _loc4_++;
         }
         return _SafeStr_2070(_SafeStr_1962,param1,_loc3_);
      }
      
      public static function _SafeStr_2232() : Boolean
      {
         var _loc2_:uint = 0;
         if(!Boolean(_tweenList))
         {
            return false;
         }
         var _loc1_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < _tweenList.length)
         {
            _SafeStr_1962(_loc2_);
            _loc1_ = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function _SafeStr_816(param1:Object, ... rest) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc3_:Array = new Array();
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            if(typeof rest[_loc4_] == "string" && _loc3_.indexOf(rest[_loc4_]) == -1)
            {
               _loc3_.push(rest[_loc4_]);
            }
            _loc4_++;
         }
         return _SafeStr_2070(_SafeStr_442,param1,_loc3_);
      }
      
      public static function _SafeStr_2587() : Boolean
      {
         var _loc2_:uint = 0;
         if(!Boolean(_tweenList))
         {
            return false;
         }
         var _loc1_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < _tweenList.length)
         {
            _SafeStr_442(_loc2_);
            _loc1_ = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public static function _SafeStr_1746(param1:Object, ... rest) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc3_:Array = new Array();
         _loc4_ = 0;
         while(_loc4_ < rest.length)
         {
            if(typeof rest[_loc4_] == "string" && _loc3_.indexOf(rest[_loc4_]) == -1)
            {
               _loc3_.push(rest[_loc4_]);
            }
            _loc4_++;
         }
         return _SafeStr_2070(_SafeStr_1416,param1,_loc3_);
      }
      
      public static function _SafeStr_2230() : Boolean
      {
         var _loc2_:uint = 0;
         if(!Boolean(_tweenList))
         {
            return false;
         }
         var _loc1_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < _tweenList.length)
         {
            _SafeStr_1416(_loc2_);
            _loc1_ = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      private static function _SafeStr_2070(param1:Function, param2:Object, param3:Array) : Boolean
      {
         var _loc5_:uint = 0;
         var _loc6_:Array = null;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc4_:Boolean = false;
         if(!Boolean(_tweenList))
         {
            return false;
         }
         _loc5_ = 0;
         while(_loc5_ < _tweenList.length)
         {
            if(Boolean(_tweenList[_loc5_]) && _tweenList[_loc5_].scope == param2)
            {
               if(param3.length == 0)
               {
                  param1(_loc5_);
                  _loc4_ = true;
               }
               else
               {
                  _loc6_ = new Array();
                  _loc7_ = 0;
                  while(_loc7_ < param3.length)
                  {
                     if(Boolean(_tweenList[_loc5_].properties[param3[_loc7_]]))
                     {
                        _loc6_.push(param3[_loc7_]);
                     }
                     _loc7_++;
                  }
                  if(_loc6_.length > 0)
                  {
                     _loc8_ = _SafeCls_38.getObjectLength(_tweenList[_loc5_].properties);
                     if(_loc8_ == _loc6_.length)
                     {
                        param1(_loc5_);
                        _loc4_ = true;
                     }
                     else
                     {
                        _loc9_ = _SafeStr_2221(_loc5_,_loc6_);
                        param1(_loc9_);
                        _loc4_ = true;
                     }
                  }
               }
            }
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function _SafeStr_2221(param1:Number, param2:Array) : uint
      {
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         var _loc7_:Boolean = false;
         var _loc3_:_SafeCls_22 = _tweenList[param1];
         var _loc4_:_SafeCls_22 = _loc3_.clone(false);
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            _loc6_ = param2[_loc5_];
            if(Boolean(_loc3_.properties[_loc6_]))
            {
               _loc3_.properties[_loc6_] = undefined;
               delete _loc3_.properties[_loc6_];
            }
            _loc5_++;
         }
         for(_loc6_ in _loc4_.properties)
         {
            _loc7_ = false;
            _loc5_ = 0;
            while(_loc5_ < param2.length)
            {
               if(param2[_loc5_] == _loc6_)
               {
                  _loc7_ = true;
                  break;
               }
               _loc5_++;
            }
            if(!_loc7_)
            {
               _loc4_.properties[_loc6_] = undefined;
               delete _loc4_.properties[_loc6_];
            }
         }
         _tweenList.push(_loc4_);
         return _tweenList.length - 1;
      }
      
      private static function _SafeStr_1732() : Boolean
      {
         var _loc1_:* = 0;
         if(_tweenList.length == 0)
         {
            return false;
         }
         _loc1_ = 0;
         while(_loc1_ < _tweenList.length)
         {
            if(_tweenList[_loc1_] == undefined || !_tweenList[_loc1_].isPaused)
            {
               if(!_SafeStr_1549(_loc1_))
               {
                  _SafeStr_1962(_loc1_);
               }
               if(_tweenList[_loc1_] == null)
               {
                  _SafeStr_1962(_loc1_,true);
                  _loc1_--;
               }
            }
            _loc1_++;
         }
         return true;
      }
      
      public static function _SafeStr_1962(param1:Number, param2:Boolean = false) : Boolean
      {
         _tweenList[param1] = null;
         if(param2)
         {
            _tweenList.splice(param1,1);
         }
         return true;
      }
      
      public static function _SafeStr_442(param1:Number) : Boolean
      {
         var _loc2_:_SafeCls_22 = _tweenList[param1];
         if(_loc2_ == null || _loc2_.isPaused)
         {
            return false;
         }
         _loc2_.timePaused = _SafeStr_1140(_loc2_);
         _loc2_.isPaused = true;
         return true;
      }
      
      public static function _SafeStr_1416(param1:Number) : Boolean
      {
         var _loc2_:_SafeCls_22 = _tweenList[param1];
         if(_loc2_ == null || !_loc2_.isPaused)
         {
            return false;
         }
         var _loc3_:Number = _SafeStr_1140(_loc2_);
         _loc2_.timeStart += _loc3_ - _loc2_.timePaused;
         _loc2_.timeComplete += _loc3_ - _loc2_.timePaused;
         _loc2_.timePaused = undefined;
         _loc2_.isPaused = false;
         return true;
      }
      
      private static function _SafeStr_1549(param1:Number) : Boolean
      {
         var isOver:Boolean;
         var cTime:Number;
         var tTweening:_SafeCls_22 = null;
         var mustUpdate:Boolean = false;
         var nv:Number = NaN;
         var t:Number = NaN;
         var b:Number = NaN;
         var c:Number = NaN;
         var d:Number = NaN;
         var pName:String = null;
         var eventScope:Object = null;
         var tScope:Object = null;
         var tProperty:Object = null;
         var pv:Number = NaN;
         var i:Number = param1;
         tTweening = _tweenList[i];
         if(tTweening == null || !Boolean(tTweening.scope))
         {
            return false;
         }
         isOver = false;
         cTime = _SafeStr_1140(tTweening);
         if(cTime >= tTweening.timeStart)
         {
            tScope = tTweening.scope;
            if(tTweening._SafeStr_526)
            {
               do
               {
                  t = (tTweening.timeComplete - tTweening.timeStart) / tTweening.count * (tTweening._SafeStr_1243 + 1);
                  b = tTweening.timeStart;
                  c = tTweening.timeComplete - tTweening.timeStart;
                  d = tTweening.timeComplete - tTweening.timeStart;
                  nv = tTweening.transition(t,b,c,d);
                  if(cTime >= nv)
                  {
                     if(Boolean(tTweening.onUpdate))
                     {
                        eventScope = Boolean(tTweening.onUpdateScope) ? tTweening.onUpdateScope : tScope;
                        try
                        {
                           tTweening.onUpdate.apply(eventScope,tTweening.onUpdateParams);
                        }
                        catch(e1:Error)
                        {
                           _SafeStr_898(tTweening,e1,"onUpdate");
                        }
                     }
                     ++tTweening._SafeStr_1243;
                     if(tTweening._SafeStr_1243 >= tTweening.count)
                     {
                        isOver = true;
                        break;
                     }
                     if(tTweening.waitFrames)
                     {
                        break;
                     }
                  }
               }
               while(cTime >= nv);
            }
            else
            {
               mustUpdate = tTweening.skipUpdates < 1 || !tTweening.skipUpdates || tTweening._SafeStr_720 >= tTweening.skipUpdates;
               if(cTime >= tTweening.timeComplete)
               {
                  isOver = true;
                  mustUpdate = true;
               }
               if(!tTweening._SafeStr_953)
               {
                  if(Boolean(tTweening.onStart))
                  {
                     eventScope = Boolean(tTweening.onStartScope) ? tTweening.onStartScope : tScope;
                     try
                     {
                        tTweening.onStart.apply(eventScope,tTweening.onStartParams);
                     }
                     catch(e2:Error)
                     {
                        _SafeStr_898(tTweening,e2,"onStart");
                     }
                  }
                  for(pName in tTweening.properties)
                  {
                     if(tTweening.properties[pName].isSpecialProperty)
                     {
                        if(Boolean(_specialPropertyList[pName].preProcess))
                        {
                           tTweening.properties[pName].valueComplete = _specialPropertyList[pName].preProcess(tScope,_specialPropertyList[pName].parameters,tTweening.properties[pName].originalValueComplete,tTweening.properties[pName].extra);
                        }
                        pv = Number(_specialPropertyList[pName].getValue(tScope,_specialPropertyList[pName].parameters,tTweening.properties[pName].extra));
                     }
                     else
                     {
                        pv = Number(tScope[pName]);
                     }
                     tTweening.properties[pName].valueStart = isNaN(pv) ? tTweening.properties[pName].valueComplete : pv;
                  }
                  mustUpdate = true;
                  tTweening._SafeStr_953 = true;
               }
               if(mustUpdate)
               {
                  for(pName in tTweening.properties)
                  {
                     tProperty = tTweening.properties[pName];
                     if(isOver)
                     {
                        nv = Number(tProperty.valueComplete);
                     }
                     else if(tProperty.hasModifier)
                     {
                        t = cTime - tTweening.timeStart;
                        d = tTweening.timeComplete - tTweening.timeStart;
                        nv = tTweening.transition(t,0,1,d,tTweening.transitionParams);
                        nv = Number(tProperty.modifierFunction(tProperty.valueStart,tProperty.valueComplete,nv,tProperty.modifierParameters));
                     }
                     else
                     {
                        t = cTime - tTweening.timeStart;
                        b = Number(tProperty.valueStart);
                        c = tProperty.valueComplete - tProperty.valueStart;
                        d = tTweening.timeComplete - tTweening.timeStart;
                        nv = tTweening.transition(t,b,c,d,tTweening.transitionParams);
                     }
                     if(tTweening.rounded)
                     {
                        nv = Number(Math.round(nv));
                     }
                     if(tProperty.isSpecialProperty)
                     {
                        _specialPropertyList[pName].setValue(tScope,nv,_specialPropertyList[pName].parameters,tTweening.properties[pName].extra);
                     }
                     else
                     {
                        tScope[pName] = nv;
                     }
                  }
                  tTweening._SafeStr_720 = 0;
                  if(Boolean(tTweening.onUpdate))
                  {
                     eventScope = Boolean(tTweening.onUpdateScope) ? tTweening.onUpdateScope : tScope;
                     try
                     {
                        tTweening.onUpdate.apply(eventScope,tTweening.onUpdateParams);
                     }
                     catch(e3:Error)
                     {
                        _SafeStr_898(tTweening,e3,"onUpdate");
                     }
                  }
               }
               else
               {
                  ++tTweening._SafeStr_720;
               }
            }
            if(isOver && Boolean(Boolean(tTweening.onComplete)))
            {
               eventScope = Boolean(tTweening.onCompleteScope) ? tTweening.onCompleteScope : tScope;
               try
               {
                  tTweening.onComplete.apply(eventScope,tTweening.onCompleteParams);
               }
               catch(e4:Error)
               {
                  _SafeStr_898(tTweening,e4,"onComplete");
               }
            }
            return !isOver;
         }
         return true;
      }
      
      public static function init(... rest) : void
      {
         _SafeStr_1132 = true;
         _transitionList = new Object();
         _SafeCls_39.init();
         _specialPropertyList = new Object();
         _specialPropertyModifierList = new Object();
         _specialPropertySplitterList = new Object();
      }
      
      public static function _SafeStr_402(param1:String, param2:Function) : void
      {
         if(!_SafeStr_1132)
         {
            init();
         }
         _transitionList[param1] = param2;
      }
      
      public static function _SafeStr_409(param1:String, param2:Function, param3:Function, param4:Array = null, param5:Function = null) : void
      {
         if(!_SafeStr_1132)
         {
            init();
         }
         var _loc6_:_SafeCls_36 = new _SafeCls_36(param2,param3,param4,param5);
         _specialPropertyList[param1] = _loc6_;
      }
      
      public static function _SafeStr_422(param1:String, param2:Function, param3:Function) : void
      {
         if(!_SafeStr_1132)
         {
            init();
         }
         var _loc4_:_SafeCls_34 = new _SafeCls_34(param2,param3);
         _specialPropertyModifierList[param1] = _loc4_;
      }
      
      public static function _SafeStr_1259(param1:String, param2:Function, param3:Array = null) : void
      {
         if(!_SafeStr_1132)
         {
            init();
         }
         var _loc4_:_SafeCls_35 = new _SafeCls_35(param2,param3);
         _specialPropertySplitterList[param1] = _loc4_;
      }
      
      private static function startEngine() : void
      {
         _SafeStr_2516 = true;
         _tweenList = new Array();
         _SafeStr_2142 = new MovieClip();
         _SafeStr_2142.addEventListener(Event.ENTER_FRAME,_SafeCls_2._SafeStr_941);
         _SafeStr_1146 = 0;
         _SafeStr_1936();
      }
      
      private static function stopEngine() : void
      {
         _SafeStr_2516 = false;
         _tweenList = null;
         _currentTime = 0;
         _SafeStr_1146 = 0;
         _SafeStr_2142.removeEventListener(Event.ENTER_FRAME,_SafeCls_2._SafeStr_941);
         _SafeStr_2142 = null;
      }
      
      public static function _SafeStr_1936() : void
      {
         _currentTime = getTimer();
      }
      
      public static function _SafeStr_840() : void
      {
         ++_SafeStr_1146;
      }
      
      public static function _SafeStr_941(param1:Event) : void
      {
         _SafeStr_1936();
         _SafeStr_840();
         var _loc2_:Boolean = false;
         _loc2_ = _SafeStr_1732();
         if(!_loc2_)
         {
            stopEngine();
         }
      }
      
      public static function _SafeStr_1161(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(isNaN(param1))
         {
            param1 = 1;
         }
         if(param1 < 0.00001)
         {
            param1 = 0.00001;
         }
         if(param1 != _SafeStr_2549)
         {
            if(_tweenList != null)
            {
               _loc2_ = 0;
               while(_loc2_ < _tweenList.length)
               {
                  _loc3_ = _SafeStr_1140(_tweenList[_loc2_]);
                  _tweenList[_loc2_].timeStart = _loc3_ - (_loc3_ - _tweenList[_loc2_].timeStart) * _SafeStr_2549 / param1;
                  _tweenList[_loc2_].timeComplete = _loc3_ - (_loc3_ - _tweenList[_loc2_].timeComplete) * _SafeStr_2549 / param1;
                  if(_tweenList[_loc2_].timePaused != undefined)
                  {
                     _tweenList[_loc2_].timePaused = _loc3_ - (_loc3_ - _tweenList[_loc2_].timePaused) * _SafeStr_2549 / param1;
                  }
                  _loc2_++;
               }
            }
            _SafeStr_2549 = param1;
         }
      }
      
      public static function isTweening(param1:Object) : Boolean
      {
         var _loc2_:uint = 0;
         if(!Boolean(_tweenList))
         {
            return false;
         }
         _loc2_ = 0;
         while(_loc2_ < _tweenList.length)
         {
            if(Boolean(Boolean(_tweenList[_loc2_])) && _tweenList[_loc2_].scope == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public static function _SafeStr_2227(param1:Object) : Array
      {
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         if(!Boolean(_tweenList))
         {
            return [];
         }
         var _loc4_:Array = new Array();
         _loc2_ = 0;
         while(_loc2_ < _tweenList.length)
         {
            if(Boolean(Boolean(_tweenList[_loc2_])) && _tweenList[_loc2_].scope == param1)
            {
               for(_loc3_ in _tweenList[_loc2_].properties)
               {
                  _loc4_.push(_loc3_);
               }
            }
            _loc2_++;
         }
         return _loc4_;
      }
      
      public static function _SafeStr_1753(param1:Object) : Number
      {
         var _loc2_:uint = 0;
         if(!Boolean(_tweenList))
         {
            return 0;
         }
         var _loc3_:Number = 0;
         _loc2_ = 0;
         while(_loc2_ < _tweenList.length)
         {
            if(Boolean(Boolean(_tweenList[_loc2_])) && _tweenList[_loc2_].scope == param1)
            {
               _loc3_ += _SafeCls_38.getObjectLength(_tweenList[_loc2_].properties);
            }
            _loc2_++;
         }
         return _loc3_;
      }
      
      private static function _SafeStr_898(param1:_SafeCls_22, param2:Error, param3:String) : void
      {
         var eventScope:Object = null;
         var pTweening:_SafeCls_22 = param1;
         var pError:Error = param2;
         var pCallBackName:String = param3;
         if(Boolean(Boolean(pTweening.onError)) && pTweening.onError is Function)
         {
            eventScope = Boolean(pTweening.onErrorScope) ? pTweening.onErrorScope : pTweening.scope;
            try
            {
               pTweening.onError.apply(eventScope,[pTweening.scope,pError]);
            }
            catch(metaError:Error)
            {
               _SafeStr_566(String(pTweening.scope) + " raised an error while executing the \'onError\' handler. Original error:\n " + pError.getStackTrace() + "\nonError error: " + metaError.getStackTrace());
            }
         }
         else if(!Boolean(pTweening.onError))
         {
            _SafeStr_566(String(pTweening.scope) + " raised an error while executing the \'" + pCallBackName + "\'handler. \n" + pError.getStackTrace());
         }
      }
      
      public static function _SafeStr_1140(param1:Object) : Number
      {
         return param1.useFrames ? _SafeStr_1146 : _currentTime;
      }
      
      public static function getVersion() : String
      {
         return "AS3 1.33.74";
      }
      
      public static function _SafeStr_566(param1:String) : void
      {
         trace("## [Tweener] Error: " + param1);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-Tk"
 * @identifier _SafeCls_22 = "_-KX"
 * @identifier _SafeCls_34 = "_-PA"
 * @identifier _SafeCls_35 = "_-JS"
 * @identifier _SafeCls_36 = "_-DC"
 * @identifier _SafeCls_38 = "_-jH"
 * @identifier _SafeCls_39 = "_-G6"
 * @identifier _SafePkg_3 = "_-7L"
 * @identifier _SafeStr_402 = "_-3G"
 * @identifier _SafeStr_409 = "_-WY"
 * @identifier _SafeStr_422 = "_-HB"
 * @identifier _SafeStr_442 = "_-JJ"
 * @identifier _SafeStr_464 = "_-gS"
 * @identifier _SafeStr_471 = "_-jG"
 * @identifier _SafeStr_526 = "_-QA"
 * @identifier _SafeStr_566 = "_-4w"
 * @identifier _SafeStr_720 = "_-c5"
 * @identifier _SafeStr_816 = "_-RE"
 * @identifier _SafeStr_840 = "_-87"
 * @identifier _SafeStr_898 = "_-XI"
 * @identifier _SafeStr_923 = "_-LE"
 * @identifier _SafeStr_941 = "_-GF"
 * @identifier _SafeStr_953 = "_-NX"
 * @identifier _SafeStr_1027 = "_-aT"
 * @identifier _SafeStr_1132 = "_-Od"
 * @identifier _SafeStr_1140 = "_-5P"
 * @identifier _SafeStr_1142 = "_-KL"
 * @identifier _SafeStr_1146 = "_-21"
 * @identifier _SafeStr_1161 = "_-9O"
 * @identifier _SafeStr_1243 = "_-dM"
 * @identifier _SafeStr_1259 = "_-j"
 * @identifier _SafeStr_1403 = "_-Wv"
 * @identifier _SafeStr_1416 = "_-7r"
 * @identifier _SafeStr_1549 = "_-CE"
 * @identifier _SafeStr_1732 = "_-AC"
 * @identifier _SafeStr_1746 = "_-77"
 * @identifier _SafeStr_1753 = "_-3F"
 * @identifier _SafeStr_1936 = "_-GV"
 * @identifier _SafeStr_1962 = "_-am"
 * @identifier _SafeStr_2070 = "_-OS"
 * @identifier _SafeStr_2142 = "_-G"
 * @identifier _SafeStr_2221 = "_-aS"
 * @identifier _SafeStr_2227 = "_-R5"
 * @identifier _SafeStr_2230 = "_-gB"
 * @identifier _SafeStr_2232 = "_-5n"
 * @identifier _SafeStr_2516 = "_-Zh"
 * @identifier _SafeStr_2549 = "_-Ls"
 * @identifier _SafeStr_2587 = "_-y"
 */
