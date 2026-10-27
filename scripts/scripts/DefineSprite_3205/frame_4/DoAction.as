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
thebox.unlocktxt = "Mr. G & W has been unlocked!";
_root.itemwon = thebox.unlocktxt;
_root.updateDate();
