moving = false;
currentmenu = null;
if(!music)
{
   bgmusic.start(0,999);
   music = true;
}
if(_root.savedata.data.records.crono[0] == false)
{
   bbmelee._visible = false;
}
stop();
