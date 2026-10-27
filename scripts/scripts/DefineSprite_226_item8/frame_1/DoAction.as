pickedup = false;
player = null;
active = false;
wait = 0;
damage = 2;
onground = false;
itemtype = "fan";
uses = 0;
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
   if(!pickedup)
   {
      wait++;
      if(wait > 600)
      {
         this.removeMovieClip();
      }
   }
};
stop();
