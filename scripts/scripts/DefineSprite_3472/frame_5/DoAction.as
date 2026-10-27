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
stop();
this._x = originalx;
this._y = originaly;
rand = Math.random();
if(rand >= 0.5)
{
   endmusic = new Sound();
   endmusic.attachSound("wingame1");
   endmusic.start();
}
else
{
   endmusic = new Sound();
   endmusic.attachSound("wingame2");
   endmusic.start();
}
_root.totalscore += p1points;
