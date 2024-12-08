var §\x01§ = 394;
var §\x0f§ = 1;
class MyBall extends Ball
{
   var pointer;
   var rot;
   var power;
   var aiming = false;
   function MyBall()
   {
      super();
      trace("MyBall() " + this);
      Mouse.addListener(this);
      this.pointer._visible = false;
   }
   function updateAim()
   {
      var _loc3_ = Math.round(Util.calcAbstand(_root._xmouse,_root._ymouse,this._x,this._y));
      this.rot = Util.calcRot(_root._xmouse - this._x,_root._ymouse - this._y);
      this.pointer._rotation = this.rot - this._rotation;
      if(_loc3_ <= 150)
      {
         this.power = _loc3_ / 1.5;
      }
      else
      {
         this.power = 100;
         _loc3_ = 150;
      }
      this.pointer._yscale = _loc3_;
      this.pointer._visible = true;
   }
   function shoot(p, r)
   {
      Game.debugMsg("MyBall.shoot()");
      var _loc5_ = MyMath.randomMinMax(0,2000) / 1000 - 1;
      Game.debugMsg("rand: " + _loc5_);
      r += _loc5_;
      this.aiming = false;
      this.pointer._visible = false;
      Game.inst.shoot();
      this._x = Math.round(this._x);
      this._y = Math.round(this._y);
      var _loc4_ = "<turn x=\"" + this._x + "\" y=\"" + this._y + "\" p=\"" + p + "\" r=\"" + r + "\" fp=\"" + Ball.bahn.frame + "\">";
      var _loc3_ = 1;
      while(_loc3_ < 100)
      {
         if(Game.inst.bahn["flip_" + _loc3_] != undefined)
         {
            Game.debugMsg("test " + Game.inst.bahn["flip_" + _loc3_] + " f:" + Game.inst.bahn["flip_" + _loc3_]._currentframe);
            _loc4_ += "<flip n=\"" + _loc3_ + "\" f=\"" + Game.inst.bahn["flip_" + _loc3_]._currentframe + "\"/>";
         }
         _loc3_ = _loc3_ + 1;
      }
      _loc4_ += "</turn>\n";
      Connector.sendGameMsg(_loc4_);
      Game.inst.hitCountMyBall++;
      Game.inst.hitCountTotalMyBall++;
      Game.inst.updateInfoPanel();
      super.shoot(p,r);
   }
   function onMouseDown()
   {
      if(this.aiming && Game.inst.hitZoneGame.hitTest(_root._xmouse,_root._ymouse,true) && !_root.surrenderAck._visible && !_root.chatExit._visible)
      {
         this.shoot(this.power,this.rot);
      }
   }
   function onMouseMove()
   {
      if(this.aiming)
      {
         InfoPanel.inst.yourTurn._visible = false;
         InfoPanel.inst.othersTurn._visible = false;
      }
   }
}
