onEnterFrame = function()
{
   if(_root.currentmode == "VS")
   {
      lives = "x " + _parent.player3.lives;
   }
   else
   {
      lives = "x " + _root.p3lives;
   }
};
stop();
