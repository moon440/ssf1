if(player !== 1)
{
   _parent["player" + player].holding = false;
}
else
{
   _parent.ground.holding = false;
}
onEnterFrame = function()
{
   iii = 0;
   ii = 1;
   while(ii <= 20)
   {
      if(!_parent["ground" + ii].hitTest(this))
      {
         iii++;
      }
      ii++;
   }
   ii = 1;
   while(ii <= 30)
   {
      if(!_parent["platform" + ii].hitTest(this))
      {
         iii++;
      }
      ii++;
   }
   if(iii >= 50 and !_parent.ground.hitTest(this))
   {
      onground = false;
   }
   else
   {
      onground = true;
   }
   if(!onground and !pickedup)
   {
      this._y += 5;
   }
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
falling = true;
pickedup = false;
throwitem = new Sound();
throwitem.attachSound("itemthrow");
throwitem.start();
onground = false;
active = true;
