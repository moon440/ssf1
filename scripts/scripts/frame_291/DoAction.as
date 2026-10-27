if(_root.savedata.data.records.misc[14] == false)
{
   classic._visible = false;
}
if(_root.savedata.data.records.misc[15] == false)
{
   allstar._visible = false;
}
moving = false;
if(!music)
{
   bgmusic.start(0,999);
   music = true;
}
stop();
