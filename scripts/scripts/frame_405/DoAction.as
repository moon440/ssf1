stage.startmusic1 = "emeraldhill";
setgameto = "ffa";
stage.setgameto = setgameto;
player2.exist = false;
player3.exist = false;
player4.exist = false;
p2lives = 0;
p3lives = 0;
p4lives = 0;
itemchance = 0;
currentlevel = "racetofinish2";
minutes = 1;
if(difficulty == "Very Easy")
{
   player1.healthdivision = 18;
   player2.healthdivision = 10;
   player3.healthdivision = 10;
   player4.healthdivision = 10;
}
else if(difficulty == "Easy")
{
   player1.healthdivision = 16;
   player2.healthdivision = 12;
   player3.healthdivision = 12;
   player4.healthdivision = 12;
}
else if(difficulty == "Normal")
{
   player1.healthdivision = 14;
   player2.healthdivision = 14;
   player3.healthdivision = 14;
   player4.healthdivision = 14;
}
else if(difficulty == "Hard")
{
   player1.healthdivision = 12;
   player2.healthdivision = 16;
   player3.healthdivision = 16;
   player4.healthdivision = 16;
}
else if(difficulty == "Very Hard")
{
   player1.healthdivision = 18;
   player2.healthdivision = 18;
   player3.healthdivision = 18;
   player4.healthdivision = 18;
}
stop();
