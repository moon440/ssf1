onEnterFrame = function()
{
   if(itemnum == 1)
   {
      tbox._y = 8.5;
      itemname = "Shell";
   }
   else if(itemnum == 2)
   {
      tbox._y = 8.5;
      itemname = "Bob-omb";
   }
   else if(itemnum == 3)
   {
      tbox._y = 1.2;
      itemname = "Heart Container";
   }
   else if(itemnum == 4)
   {
      tbox._y = 1.2;
      itemname = "Maximum Tomato";
   }
   else if(itemnum == 5)
   {
      itemname = "Motion- Sensor Bomb";
      tbox._y = 1.2;
   }
   else if(itemnum == 6)
   {
      tbox._y = 8.5;
      itemname = "Saber";
   }
   else if(itemnum == 7)
   {
      tbox._y = 1.2;
      itemname = "Home-run Bat";
   }
   else if(itemnum == 8)
   {
      tbox._y = 8.5;
      itemname = "Fan";
   }
   else if(itemnum == 9)
   {
      tbox._y = 8.5;
      itemname = "Flipper";
   }
   else if(itemnum == 10)
   {
      tbox._y = 8.5;
      itemname = "Fire Flower";
   }
   if(cpuattack == true)
   {
      _parent.player2.attackrange = 50;
      _parent.player2.jumprange = 150;
      _parent.player2.chanceattack = 1;
      _parent.player2.revchance = 0.25;
      _parent.player2.jumpchance = 0.35;
      _parent.player2.followchance = 1;
      onoroff = "On";
   }
   else
   {
      _parent.player2.attackrange = 50;
      _parent.player2.jumprange = 150;
      _parent.player2.chanceattack = 0;
      _parent.player2.revchance = 0;
      _parent.player2.jumpchance = 0;
      _parent.player2.followchance = 0;
      onoroff = "Off";
   }
};
