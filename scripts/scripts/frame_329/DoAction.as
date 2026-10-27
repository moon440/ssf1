if(!music)
{
   music = true;
   bgmusic.start(0,999);
}
_root.gamePercent();
choosechar = new Sound();
choosechar.attachSound("Narrator_choosecharacter");
choosechar.start();
stop();
