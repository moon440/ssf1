p1attackbox._visible = false;
p2attackbox._visible = false;
p3attackbox._visible = false;
p4attackbox._visible = false;
i = 1;
while(i <= 30)
{
   this["item" + i]._visible = false;
   i++;
}
onEnterFrame = function()
{
   if(_root.p1points == -10000)
   {
      p1box._visible = false;
      p1box2._visible = false;
   }
   if(_root.p2points == -10000)
   {
      p2box._visible = false;
      p2box2._visible = false;
   }
   if(_root.p3points == -10000)
   {
      p3box._visible = false;
      p3box2._visible = false;
   }
   if(_root.p4points == -10000)
   {
      p4box._visible = false;
      p4box2._visible = false;
   }
};
_parent.backgroundpic._visible = false;
stop();
this._x = originalx;
this._y = originaly;
endmusic = new Sound();
endmusic.attachSound("unlocked");
endmusic.start();
_root.savedata.data.records[_parent.player2character][0] = true;
_root.savedata.flush();
if(_parent.player2character == "blue")
{
   thebox.unlocktxt = "Blue has been unlocked!";
}
else if(_parent.player2character == "cloud")
{
   thebox.unlocktxt = "Cloud has been unlocked!";
}
else if(_parent.player2character == "crono")
{
   thebox.unlocktxt = "Crono has been unlocked!";
}
else if(_parent.player2character == "gameandwatch")
{
   thebox.unlocktxt = "Mr. Game and Watch has been unlocked!";
}
else if(_parent.player2character == "inuyasha")
{
   thebox.unlocktxt = "Inuyasha has been unlocked!";
}
else if(_parent.player2character == "jigglypuff")
{
   thebox.unlocktxt = "Jigglypuff has been unlocked!";
}
else if(_parent.player2character == "lloyd")
{
   thebox.unlocktxt = "Lloyd has been unlocked!";
}
else if(_parent.player2character == "luigi")
{
   thebox.unlocktxt = "Luigi has been unlocked!";
}
else if(_parent.player2character == "mewtwo")
{
   thebox.unlocktxt = "Mewtwo has been unlocked!";
}
else if(_parent.player2character == "incredible")
{
   thebox.unlocktxt = "Mr. Incredible has been unlocked!";
}
else if(_parent.player2character == "naruto")
{
   thebox.unlocktxt = "Naruto has been unlocked!";
}
else if(_parent.player2character == "shadowa")
{
   thebox.unlocktxt = "Shadow has been unlocked!";
}
else if(_parent.player2character == "supersonic")
{
   thebox.unlocktxt = "Super Sonic has been unlocked!";
}
else if(_parent.player2character == "younglink")
{
   thebox.unlocktxt = "Young Link has been unlocked!";
}
else if(_parent.player2character == "zero")
{
   thebox.unlocktxt = "Zero has been unlocked!";
}
_root.itemwon = thebox.unlocktxt;
_root.updateDate();
