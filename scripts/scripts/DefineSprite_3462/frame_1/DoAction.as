win = false;
intro = new Sound();
intro.attachSound("classicintro");
intro.start();
p1 = new Sound();
p1.attachSound("select_" + _parent.player1character);
p1.start();
p2 = new Sound();
p2.attachSound("select_" + _parent.player2character);
versus = new Sound();
versus.attachSound("Narrator_versus");
p1.onSoundComplete = function()
{
   versus.start();
};
versus.onSoundComplete = function()
{
   p2.start();
};
waitclick.useHandCursor = false;
stop();
