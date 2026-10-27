i = player;
magic = new Sound();
magic.attachSound("healthgain");
magic.start();
if(player !== 1)
{
   _parent["player" + player].holding = false;
}
else
{
   _parent.ground.holding = false;
}
active = true;
pickedup = false;
restore = 100;
if(_root.currentmode == "AllStar")
{
   _root.hearts--;
}
if(i == 1)
{
   tempname = _root.player1character;
}
else if(i == 2)
{
   tempname = _root.player2character;
}
else if(i == 3)
{
   tempname = _root.player3character;
}
else if(i == 4)
{
   tempname = _root.player4character;
}
onEnterFrame = function()
{
   if(i !== 1 and restore > 0 and _parent["player" + i].health > 0)
   {
      if(_parent.gamepause == false)
      {
         _parent["player" + i].health -= 1;
         restore--;
         _root.savedata.data.records[tempname][16]++;
      }
   }
   else if(i == 1 and restore > 0 and _parent.ground.health > 0)
   {
      if(_parent.gamepause == false)
      {
         _parent.ground.health -= 1;
         restore--;
         _root.savedata.data.records[tempname][16]++;
      }
   }
   else
   {
      this.removeMovieClip();
   }
};
stop();
