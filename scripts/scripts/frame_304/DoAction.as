moving = false;
if(!music)
{
   bgmusic.start(0,999);
   music = true;
}
onEnterFrame = function()
{
   displayname = savedata.data.yourname;
};
stop();
