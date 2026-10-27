crush = new Sound();
crush.attachSound("mastercrush");
crush.start(0);
onEnterFrame = function()
{
   _parent.player1._alpha = 0;
};
