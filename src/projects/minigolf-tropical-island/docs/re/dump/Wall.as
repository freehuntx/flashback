var §\x01§ = 233;
var §\x0f§ = 1;
class Wall extends BaseObject
{
   var hitZone;
   function Wall()
   {
      super();
      if(this.hitZone == undefined)
      {
         this.hitZone = this;
      }
   }
   function testHit(ball)
   {
   }
   function registerToParent(myParent)
   {
      myParent.wallArray.push(this);
   }
}
