stop();
p1lives = 1;
timer = false;
setgameto = "1v31";
waiting = true;
stage.startmusic1 = "allstarmusic";
stage.setgameto = setgameto;
currentlevel = "allstarlev";
if(levelnum < 14)
{
   p2lives = 1;
   p3lives = 1;
   p4lives = 1;
   if(levelnum < 5)
   {
      btype = 1;
      player2.exist = true;
      player3.exist = false;
      player4.exist = false;
   }
   else if(levelnum >= 5 and levelnum < 9)
   {
      btype = 2;
      player2.exist = true;
      player3.exist = true;
      player4.exist = false;
   }
   else if(levelnum >= 9 and levelnum < 14)
   {
      btype = 3;
      player2.exist = true;
      player3.exist = true;
      player4.exist = true;
   }
}
else
{
   btype = 3;
   p2lives = 8;
   p3lives = 8;
   p4lives = 8;
   player2.exist = true;
   player3.exist = true;
   player4.exist = true;
}
if(levelnum < 14)
{
   if(btype == 1)
   {
      randChar(2,enemies[arrnum]);
      arrnum++;
   }
   else if(btype == 2)
   {
      randChar(2,enemies[arrnum]);
      arrnum++;
      randChar(3,enemies[arrnum]);
      arrnum++;
   }
   else if(btype == 3)
   {
      randChar(2,enemies[arrnum]);
      arrnum++;
      randChar(3,enemies[arrnum]);
      arrnum++;
      randChar(4,enemies[arrnum]);
      arrnum++;
   }
}
else
{
   randChar(2,enemies[arrnum]);
   randChar(3,enemies[arrnum]);
   randChar(4,enemies[arrnum]);
}
