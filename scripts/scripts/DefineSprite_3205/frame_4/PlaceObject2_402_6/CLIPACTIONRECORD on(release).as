on(release){
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
   if(_root.savedata.data.records.misc[15] == false and i == 15)
   {
      _root.savedata.data.records.misc[15] = true;
      _parent.thebox.unlocktxt = "All-Star Mode is available!";
      _root.itemwon = _parent.thebox.unlocktxt;
      _root.updateDate();
      surprise = new Sound();
      surprise.attachSound("unlocked");
      surprise.start();
   }
   else if(_root.savedata.data.records.misc[13] == false)
   {
      _root.savedata.data.records.misc[13] = true;
      _parent.thebox.unlocktxt = "Final Destination is Unlocked!";
      _root.itemwon = _parent.thebox.unlocktxt;
      _root.updateDate();
      surprise = new Sound();
      surprise.attachSound("unlocked");
      surprise.start();
   }
   else
   {
      _root.ding.start();
      _root.gotoAndPlay("Target Menu");
   }
}
