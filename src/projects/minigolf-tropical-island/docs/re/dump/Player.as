var §\x01§ = 265;
var §\x0f§ = 1;
class Player
{
   var pName;
   var pStatus;
   var pSkill;
   var won;
   var lost;
   var drawn;
   var levels;
   var swings;
   var total;
   var winP;
   var swingsPerLevel;
   function Player(newName, newSkill, newStatus)
   {
      this.pName = newName;
      this.pStatus = newStatus;
      this.pSkill = newSkill;
      this.update();
      this.recalc();
   }
   function update()
   {
      this.won = Number(this.pSkill.split("/")[0]);
      this.lost = Number(this.pSkill.split("/")[1]);
      this.drawn = Number(this.pSkill.split("/")[2]);
      this.levels = Number(this.pSkill.split("/")[3]);
      this.swings = Number(this.pSkill.split("/")[4]);
      this.recalc();
   }
   function recalc()
   {
      trace("!");
      this.total = this.won + this.lost + this.drawn;
      if(this.total != 0)
      {
         this.winP = Math.round(this.won / this.total * 100);
      }
      else
      {
         this.winP = 0;
      }
      if(this.levels != 0)
      {
         this.swingsPerLevel = Math.round(this.swings / this.levels * 100) / 100;
      }
      else
      {
         this.swingsPerLevel = 0;
      }
   }
}
