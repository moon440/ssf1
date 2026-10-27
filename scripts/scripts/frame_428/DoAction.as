if(totalscore > _root.savedata.data.records[player1character][4])
{
   _root.savedata.data.records[player1character][4] = totalscore;
}
if(_root.savedata.data.records.misc[12] == false)
{
   _root.savedata.data.records.misc[12] = true;
   thebox._visible = true;
   thebox.unlocktxt = "Battlefield is unlocked!";
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
