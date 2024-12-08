var §\x01§ = 61;
var §\x0f§ = 1;
class ChallengeAllButton extends MovieClip
{
   function ChallengeAllButton()
   {
      super();
      this.stop();
   }
   function onPress()
   {
      var _loc5_ = false;
      var _loc3_ = 0;
      while(_loc3_ < Connector.players.length)
      {
         if(Connector.players[_loc3_].pStatus == "1")
         {
            _root.playerRoom.playerList.setPropertiesAt(_loc3_,{icon:"Playing"});
            Connector.updatePlayer2(Connector.players[_loc3_].pName,"3");
            Connector.sendStartGame(Connector.players[_loc3_].pName);
            this.gotoAndStop(2);
            _loc5_ = true;
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
      if(!_loc5_)
      {
         if(Connector.challengedAll)
         {
            Connector.challengedAll = false;
            Connector.sendRemChallengeAll();
            this.gotoAndStop(1);
            _loc3_ = 0;
            while(_loc3_ < Connector.players.length)
            {
               if(Connector.players[_loc3_].pStatus == "2")
               {
                  Connector.updatePlayer2(Connector.players[_loc3_].pName,"0");
               }
               else if(Connector.players[_loc3_].pStatus == "23")
               {
                  Connector.updatePlayer2(Connector.players[_loc3_].pName,"3");
               }
               _loc3_ = _loc3_ + 1;
            }
         }
         else
         {
            Connector.challengedAll = true;
            Connector.sendChallengeAll();
            this.gotoAndStop(2);
            _loc3_ = 0;
            while(_loc3_ < Connector.players.length)
            {
               if(Connector.players[_loc3_].pStatus == "0")
               {
                  Connector.updatePlayer2(Connector.players[_loc3_].pName,"2");
               }
               else if(Connector.players[_loc3_].pStatus == "3")
               {
                  Connector.updatePlayer2(Connector.players[_loc3_].pName,"23");
               }
               _loc3_ = _loc3_ + 1;
            }
         }
      }
   }
}
