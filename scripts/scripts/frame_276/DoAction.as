currentlevel = null;
currentmenu = null;
if(music)
{
   bgmusic.stop();
}
_root.gamePercent();
bgmusic = new Sound();
if(savedata.data.records.misc[11] >= 100)
{
   rand = Math.random();
   if(rand >= 0.5)
   {
      bgmusic.attachSound("menu1");
   }
   else if(rand < 0.5)
   {
      bgmusic.attachSound("menu2");
   }
}
else
{
   bgmusic.attachSound("menu1");
}
music = false;
_root.gamePercent();
var website = new ContextMenu();
website.hideBuiltInItems();
hidemenu.menu = website;
hidemenu.useHandCursor = false;
stop();
