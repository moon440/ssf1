stop();
p1defeat.stop();
p2defeat.stop();
cpudefeat.stop();
startmusic.stop();
game = new Sound();
game.attachSound("narratorgame");
game.start();
playgame = false;
game.onSoundComplete = function()
{
   if(win)
   {
      play();
   }
   else
   {
      _root.gotoAndStop("Target Menu");
   }
};
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
this._x = originalx;
this._y = originaly;
