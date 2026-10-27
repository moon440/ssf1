stop();
dead = true;
death = new Sound();
death.attachSound("masterdead");
death.start();
_parent.ground.disable = false;
if(dead and _parent.enemy2.dead)
{
   _parent.ground.bottombounds *= 1000;
   _parent.ground.topbounds *= 1000;
   _parent.ground.leftbounds *= 1000;
   _parent.ground.rightbounds *= 1000;
}
else if(dead and _root.currentlevel == "masterhand")
{
   _parent.ground.bottombounds *= 1000;
   _parent.ground.topbounds *= 1000;
   _parent.ground.leftbounds *= 1000;
   _parent.ground.rightbounds *= 1000;
}
death.onSoundComplete = function()
{
   if(_root.currentmode == "Classic")
   {
      _parent.win = true;
      _parent.play();
   }
   else if(_parent.enemy2.dead == true)
   {
      _parent.win = true;
      _parent.play();
   }
};
