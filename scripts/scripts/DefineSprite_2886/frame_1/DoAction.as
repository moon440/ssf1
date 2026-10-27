onEnterFrame = function()
{
   if(_root.currentmode == "VS")
   {
      lives = "x " + _parent.player4.lives;
   }
   else
   {
      lives = "x " + _root.p4lives;
   }
};
stop();
