var §\x01§ = 652;
var §\x0f§ = 1;
class Timer
{
   var runTime;
   var startTime;
   var tSec;
   var tMin;
   var timeSec;
   var started = false;
   var timeLeft = 0;
   function Timer()
   {
   }
   function update()
   {
      if(this.started)
      {
         this.timeLeft = this.runTime + (this.startTime - getTimer());
         if(this.timeLeft < 0)
         {
            InfoPanel.inst.time.text = "0:00";
            return undefined;
         }
         this.tSec = Math.floor(this.timeLeft / 1000);
         this.tMin = Math.floor(this.tSec / 60);
         this.tSec %= 60;
         if(this.tSec < 10)
         {
            this.timeSec = "0" + this.tSec;
         }
         else
         {
            this.timeSec = String(this.tSec);
         }
         InfoPanel.inst.time.text = this.tMin + ":" + this.timeSec;
      }
      else
      {
         InfoPanel.inst.time.text = "0:00";
      }
   }
   function startTimer(rt)
   {
      Game.debugMsg("startTimer:" + rt);
      this.runTime = rt;
      this.startTime = getTimer();
      this.started = true;
   }
   function stopTimer()
   {
      this.started = false;
   }
}
