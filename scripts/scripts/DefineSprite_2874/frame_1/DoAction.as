onEnterFrame = function()
{
   if(_root.currentmode == "VS")
   {
      lives = "x " + _parent.ground.lives;
   }
   else
   {
      lives = "x " + _root.p1lives;
   }
};
stop();
