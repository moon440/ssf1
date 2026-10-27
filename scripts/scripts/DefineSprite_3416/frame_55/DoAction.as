crush = new Sound();
crush.attachSound("mastercrush");
crush.start(0);
damage = 1;
attacking = true;
vulnerable = false;
_parent.ground.disable = true;
onEnterFrame = function()
{
   _parent.player1._alpha = 0;
};
