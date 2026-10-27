onEnterFrame = function()
{
   i = 1;
   while(i <= 30)
   {
      if(attackbox.hitTest(_parent["item" + i]) and _parent["item" + i].itemtype == "bomb" and _parent["item" + i].active == false)
      {
         _parent["item" + i].player = player;
         _parent["item" + i].play();
         _parent["item" + i].attackbox.play();
      }
      i++;
   }
};
uses++;
active = true;
pickedup = true;
if(player !== 1)
{
   _parent["player" + player].holding = false;
}
else
{
   _parent.ground.holding = false;
}
