win = false;
intro = new Sound();
intro.attachSound("classicintro");
intro.start();
p1 = new Sound();
p1.attachSound("select_" + _parent.player1character);
p1.start();
versus = new Sound();
versus.attachSound("Narrator_versus");
p3 = new Sound();
p3.attachSound("select_" + _parent.player3character);
if(_parent.player4.exist)
{
   p4 = new Sound();
   p4.attachSound("select_" + _parent.player4character);
}
p1.onSoundComplete = function()
{
   versus.start();
};
versus.onSoundComplete = function()
{
   p3.start();
};
p3.onSoundComplete = function()
{
   if(_parent.player4.exist)
   {
      p4.start();
   }
};
waitclick.useHandCursor = false;
stop();
