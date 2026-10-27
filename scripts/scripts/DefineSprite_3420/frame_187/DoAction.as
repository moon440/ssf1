stop();
dead = true;
death = new Sound();
death.attachSound("masterdead");
death.start();
if(dead and _parent.enemy1.dead)
{
   _parent.ground.bottombounds *= 1000;
   _parent.ground.topbounds *= 1000;
   _parent.ground.leftbounds *= 1000;
   _parent.ground.rightbounds *= 1000;
}
_parent.ground.disable = false;
death.onSoundComplete = function()
{
   if(_parent.enemy1.dead == true)
   {
      _parent.win = true;
      _parent.play();
   }
};
