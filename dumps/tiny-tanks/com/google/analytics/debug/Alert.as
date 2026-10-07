package com.google.analytics.debug
{
   import flash.events.TextEvent;
   
   public class Alert extends Label
   {
      
      public var autoClose:Boolean = true;
      
      public var actionOnNextLine:Boolean = true;
      
      private var _actions:Array;
      
      public function Alert(param1:String, param2:Array, param3:String = "uiAlert", param4:uint = 0, param5:Align = null, param6:Boolean = false, param7:Boolean = true)
      {
         if(param4 == 0)
         {
            param4 = uint(Style.alertColor);
         }
         if(param5 == null)
         {
            param5 = Align.center;
         }
         super(param1,param3,param4,param5,param6);
         this.selectable = true;
         super.mouseChildren = true;
         this.buttonMode = true;
         this.mouseEnabled = true;
         this.useHandCursor = true;
         this.actionOnNextLine = param7;
         _actions = [];
         var _loc8_:int = 0;
         while(_loc8_ < param2.length)
         {
            param2[_loc8_].container = this;
            _actions.push(param2[_loc8_]);
            _loc8_++;
         }
      }
      
      private function _defineActions() : void
      {
         var _loc3_:AlertAction = null;
         var _loc1_:String = "";
         if(actionOnNextLine)
         {
            _loc1_ += "\n";
         }
         else
         {
            _loc1_ += " |";
         }
         _loc1_ += " ";
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < _actions.length)
         {
            _loc3_ = _actions[_loc4_];
            _loc2_.push("<a href=\"event:" + _loc3_.activator + "\">" + _loc3_.name + "</a>");
            _loc4_++;
         }
         _loc1_ += _loc2_.join(" | ");
         appendText(_loc1_,"uiAlertAction");
      }
      
      protected function isValidAction(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < _actions.length)
         {
            if(param1 == _actions[_loc2_].activator)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      override protected function layout() : void
      {
         super.layout();
         _defineActions();
      }
      
      protected function getAction(param1:String) : AlertAction
      {
         var _loc2_:int = 0;
         while(_loc2_ < _actions.length)
         {
            if(param1 == _actions[_loc2_].activator)
            {
               return _actions[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      protected function spaces(param1:int) : String
      {
         var _loc2_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param1 + 1)
         {
            _loc2_ += "          ";
            _loc4_++;
         }
         return _loc2_;
      }
      
      override public function onLink(param1:TextEvent) : void
      {
         var _loc2_:AlertAction = null;
         if(isValidAction(param1.text))
         {
            _loc2_ = getAction(param1.text);
            if(_loc2_)
            {
               _loc2_.execute();
            }
         }
         if(autoClose)
         {
            close();
         }
      }
      
      public function close() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
   }
}

