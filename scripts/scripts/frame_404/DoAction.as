stop();
setgameto = "1v31";
stage.startmusic1 = "kirbysong";
stage.setgameto = setgameto;
displaynames = false;
p2lives = 5;
p3lives = 5;
p4lives = 5;
itemchance = 0.25;
currentlevel = "classic5";
minutes = 5;
player2.exist = true;
player3.exist = true;
player4.exist = true;
player2character = "kirby";
player2.maxmove = 17;
player2.maxjump = -14;
player2.jumpdamage = 0;
player2.turnaround = 18;
player2.recoveryrate = 8;
player2.smash = 5;
player2.normal = 3;
player2.air = 6;
player2.revdamage = 6;
player2.revspeed = 15;
player2.attackboost = 0;
player2.attackspace = 14;
player2.attacklength = 15;
player2.slow = 0.5;
player2.speedup = 0.5;
player2.speeddown = 1;
player2.jumptimes = 5;
jumpsound2 = player2character + "1";
anormal2 = player2character + "2";
shoot2 = player2character + "3";
aforward2 = player2character + "4";
turn2 = player2character + "5";
aup2 = player2character + "6";
adown2 = player2character + "7";
player3character = "kirby";
player3.maxmove = 17;
player3.maxjump = -14;
player3.jumpdamage = 0;
player3.turnaround = 18;
player3.recoveryrate = 8;
player3.smash = 5;
player3.normal = 3;
player3.air = 6;
player3.revdamage = 6;
player3.revspeed = 15;
player3.attackboost = 0;
player3.attackspace = 14;
player3.attacklength = 15;
player3.slow = 0.5;
player3.speedup = 0.5;
player3.speeddown = 1;
player3.jumptimes = 5;
jumpsound3 = player3character + "1";
anormal3 = player3character + "2";
shoot3 = player3character + "3";
aforward3 = player3character + "4";
turn3 = player3character + "5";
aup3 = player3character + "6";
adown3 = player3character + "7";
player4character = "kirby";
player4.maxmove = 17;
player4.maxjump = -14;
player4.jumpdamage = 0;
player4.turnaround = 18;
player4.recoveryrate = 8;
player4.smash = 5;
player4.normal = 3;
player4.air = 6;
player4.revdamage = 6;
player4.revspeed = 15;
player4.attackboost = 0;
player4.attackspace = 14;
player4.attacklength = 15;
player4.slow = 0.5;
player4.speedup = 0.5;
player4.speeddown = 1;
player4.jumptimes = 5;
jumpsound4 = player4character + "1";
anormal4 = player4character + "2";
shoot4 = player4character + "3";
aforward4 = player4character + "4";
turn4 = player4character + "5";
aup4 = player4character + "6";
adown4 = player4character + "7";
if(difficulty == "Very Easy")
{
   player2.healthdivision = 2;
   player3.healthdivision = 2;
   player4.healthdivision = 2;
}
else if(difficulty == "Easy")
{
   player2.healthdivision = 3;
   player3.healthdivision = 3;
   player4.healthdivision = 3;
}
else if(difficulty == "Normal")
{
   player2.healthdivision = 4;
   player3.healthdivision = 4;
   player4.healthdivision = 4;
}
else if(difficulty == "Hard")
{
   player2.healthdivision = 5;
   player3.healthdivision = 5;
   player4.healthdivision = 5;
}
else if(difficulty == "Very Hard")
{
   player2.healthdivision = 6;
   player3.healthdivision = 6;
   player4.healthdivision = 6;
}
