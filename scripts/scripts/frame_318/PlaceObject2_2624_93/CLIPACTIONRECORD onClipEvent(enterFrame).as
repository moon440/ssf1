onClipEvent(enterFrame){
   _parent.p1text = "Lvl: " + _parent.p1level;
   if(_parent.p1level == 1)
   {
      _parent.player1.attackrange = 150;
      _parent.player1.jumprange = 10;
      _parent.player1.chanceattack = 0.05;
      _parent.player1.revchance = 0.02;
      _parent.player1.jumpchance = 0.02;
      _parent.player1.followchance = 0.25;
   }
   else if(_parent.p1level == 2)
   {
      _parent.player1.attackrange = 120;
      _parent.player1.jumprange = 20;
      _parent.player1.chanceattack = 0.1;
      _parent.player1.revchance = 0.05;
      _parent.player1.jumpchance = 0.05;
      _parent.player1.followchance = 0.5;
   }
   else if(_parent.p1level == 3)
   {
      _parent.player1.attackrange = 110;
      _parent.player1.jumprange = 30;
      _parent.player1.chanceattack = 0.2;
      _parent.player1.revchance = 0.08;
      _parent.player1.jumpchance = 0.1;
      _parent.player1.followchance = 0.8;
   }
   else if(_parent.p1level == 4)
   {
      _parent.player1.attackrange = 100;
      _parent.player1.jumprange = 50;
      _parent.player1.chanceattack = 0.3;
      _parent.player1.revchance = 0.1;
      _parent.player1.jumpchance = 0.15;
      _parent.player1.followchance = 0.9;
   }
   else if(_parent.p1level == 5)
   {
      _parent.player1.attackrange = 90;
      _parent.player1.jumprange = 70;
      _parent.player1.chanceattack = 0.4;
      _parent.player1.revchance = 0.15;
      _parent.player1.jumpchance = 0.25;
      _parent.player1.followchance = 1;
   }
   else if(_parent.p1level == 6)
   {
      _parent.player1.attackrange = 80;
      _parent.player1.jumprange = 80;
      _parent.player1.chanceattack = 0.5;
      _parent.player1.revchance = 0.18;
      _parent.player1.jumpchance = 0.2;
      _parent.player1.followchance = 1;
   }
   else if(_parent.p1level == 7)
   {
      _parent.player1.attackrange = 70;
      _parent.player1.jumprange = 100;
      _parent.player1.chanceattack = 0.6;
      _parent.player1.revchance = 0.2;
      _parent.player1.jumpchance = 0.25;
      _parent.player1.followchance = 1;
   }
   else if(_parent.p1level == 8)
   {
      _parent.player1.attackrange = 60;
      _parent.player1.jumprange = 125;
      _parent.player1.chanceattack = 0.8;
      _parent.player1.revchance = 0.23;
      _parent.player1.jumpchance = 0.3;
      _parent.player1.followchance = 1;
   }
   else if(_parent.p1level == 9)
   {
      _parent.player1.attackrange = 50;
      _parent.player1.jumprange = 150;
      _parent.player1.chanceattack = 1;
      _parent.player1.revchance = 0.25;
      _parent.player1.jumpchance = 0.35;
      _parent.player1.followchance = 1;
   }
}
