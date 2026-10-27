i = 0;
if(_root.savedata.data.records.blue[0] == true)
{
   i++;
}
if(_root.savedata.data.records.cloud[0] == true)
{
   i++;
}
if(_root.savedata.data.records.crono[0] == true)
{
   i++;
}
if(_root.savedata.data.records.gameandwatch[0] == true)
{
   i++;
}
if(_root.savedata.data.records.inuyasha[0] == true)
{
   i++;
}
if(_root.savedata.data.records.jigglypuff[0] == true)
{
   i++;
}
if(_root.savedata.data.records.lloyd[0] == true)
{
   i++;
}
if(_root.savedata.data.records.luigi[0] == true)
{
   i++;
}
if(_root.savedata.data.records.mewtwo[0] == true)
{
   i++;
}
if(_root.savedata.data.records.incredible[0] == true)
{
   i++;
}
if(_root.savedata.data.records.naruto[0] == true)
{
   i++;
}
if(_root.savedata.data.records.shadowa[0] == true)
{
   i++;
}
if(_root.savedata.data.records.supersonic[0] == true)
{
   i++;
}
if(_root.savedata.data.records.younglink[0] == true)
{
   i++;
}
if(_root.savedata.data.records.zero[0] == true)
{
   i++;
}
if(i == 15 and _root.savedata.data.records.misc[13] == false)
{
   _root.savedata.data.records.misc[13] = true;
   thebox._visible = true;
   thebox.unlocktxt = "Final Destination is unlocked!";
   itemwon = thebox.unlocktxt;
   _root.updateDate();
   surprise = new Sound();
   surprise.attachSound("unlocked");
   surprise.start();
   stop();
}
else
{
   thebox._visible = false;
   play();
}
