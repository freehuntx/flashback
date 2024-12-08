var §\x01§ = 262;
var §\x0f§ = 1;
class BaseObject extends MovieClip
{
   static var game;
   function BaseObject()
   {
      super();
   }
   function registerToParent(myParent)
   {
      myParent.objectArray.push(this);
   }
   function hitByBall(ball)
   {
      trace("BaseObject hitByBall:" + ball);
   }
}
