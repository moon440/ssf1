contmusic = new Sound();
contmusic.attachSound("continuemusic");
contmusic.start();
saycont = new Sound();
saycont.attachSound("Narrator_continue");
saycont.start();
gamelost = new Sound();
gamelost.attachSound("Narrator_gameover");
themusic = new Sound();
themusic.attachSound("gameovermusic");
gamelost.onSoundComplete = function()
{
   themusic.start();
};
themusic.onSoundComplete = function()
{
   _root.gotoAndStop("titlescreen");
};
ding.onSoundComplete = function()
{
   _root.gotoAndStop(currentlevel);
};
stop();
