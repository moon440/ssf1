onEnterFrame = function()
{
   if(_root.currentmode == "VS")
   {
      lives = "x " + _parent.player2.lives;
   }
   else
   {
      lives = "x " + _root.p2lives;
   }
};
stop();
