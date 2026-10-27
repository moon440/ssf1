stop();
i = 1;
while(i <= 8)
{
   this.removeMovieClip(["target" + i]);
   i++;
}
name1._visible = false;
startmusic.stop();
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
   if(totalseconds < _root.savedata.data.records[his][1] or _root.savedata.data.records[his][1] == null)
   {
      say = new Sound();
      say.attachSound("newrecord");
      say.start();
      _root.savedata.data.records[his][1] = totalseconds;
      _parent.score = totalseconds;
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
      _root.targettotal = targets;
      if(_root.currentmode == "Targets")
      {
         _root.music = true;
         _root.bgmusic.start(0,999);
         _root.gotoAndStop("Target Check");
      }
      else if(_root.currentmode == "Adventure")
      {
         _root.gotoAndPlay("targetcalc1");
      }
      else if(_root.currentmode == "Classic")
      {
         _root.gotoAndPlay("targetcalc2");
      }
   }
};
