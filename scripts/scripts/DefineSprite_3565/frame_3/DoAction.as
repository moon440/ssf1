stop();
p1defeat.stop();
p2defeat.stop();
cpudefeat.stop();
startmusic.stop();
playgame = false;
player1._visible = false;
player2._visible = false;
player3._visible = false;
player4._visible = false;
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
canwait = false;
_root.backgroundpic._visible = false;
his = _root.player1character;
if(!win)
{
   say = new Sound();
   say.attachSound("failure");
   say.start();
   crowd = new Sound();
   crowd.attachSound("crowd_boo");
   crowd.setVolume(60);
   crowd.start();
}
else if(win)
{
   if(_root.p1kills > _root.savedata.data.records[his][7] or _root.savedata.data.records[his][7] == null)
   {
      say = new Sound();
      say.attachSound("newrecord");
      say.start();
      _root.savedata.data.records[his][7] = _root.p1kills;
      _parent.score = _root.p1kills;
   }
   else
   {
      say = new Sound();
      say.attachSound("complete");
      say.start();
   }
   crowd = new Sound();
   crowd.attachSound("crowd_cheer");
   crowd.setVolume(60);
   crowd.start();
}
playgame = false;
crowd.onSoundComplete = function()
{
   canwait = true;
};
player1._visible = false;
p1attackbox._visible = false;
this._x = originalx;
this._y = originaly;
onEnterFrame = function()
{
   if(canwait)
   {
      _root.gotoAndPlay(_root.currentmenu + " menu");
   }
};
this._x = originalx;
this._y = originaly;
