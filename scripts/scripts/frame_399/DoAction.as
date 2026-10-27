stage.startmusic1 = "emeraldhill";
stage.setgameto = setgameto;
displaynames = false;
p2lives = 1;
p3lives = 0;
p4lives = 0;
itemchance = 0.25;
currentlevel = "classic1";
minutes = 5;
player2.exist = true;
player3.exist = false;
player4.exist = false;
randchar = Math.round(Math.random() * 4) + 1;
if(randchar == 1)
{
   player2character = "tails";
   player2.maxmove = 17;
   player2.maxjump = -14;
   player2.jumpdamage = 0;
   player2.turnaround = 18;
   player2.recoveryrate = 8;
   player2.smash = 4;
   player2.normal = 3;
   player2.air = 4;
   player2.revdamage = 6;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 20;
   player2.attacklength = 19;
   player2.slow = 0.5;
   player2.speedup = 0.6;
   player2.speeddown = 1;
   player2.jumptimes = 5;
   jumpsound2 = player2character + "1";
   anormal2 = player2character + "2";
   shoot2 = player2character + "3";
   aforward2 = player2character + "4";
   turn2 = player2character + "5";
   aup2 = player2character + "6";
   adown2 = player2character + "7";
}
else if(randchar == 2)
{
   player2character = "sonic";
   player2.maxmove = 21;
   player2.maxjump = -15;
   player2.jumpdamage = 2;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 4;
   player2.normal = 5;
   player2.air = 5;
   player2.revdamage = 8;
   player2.revspeed = 30;
   player2.attackboost = 1;
   player2.attackspace = 14;
   player2.attacklength = 13;
   player2.slow = 0.4;
   player2.speedup = 0.8;
   player2.speeddown = 0.95;
   player2.jumptimes = 2;
   jumpsound2 = player2character + "1";
   anormal2 = player2character + "2";
   shoot2 = player2character + "3";
   aforward2 = player2character + "4";
   turn2 = player2character + "5";
   aup2 = player2character + "6";
   adown2 = player2character + "7";
}
else if(randchar == 3)
{
   player2character = "knuckles";
   player2.maxmove = 18;
   player2.maxjump = -15;
   player2.jumpdamage = 2;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 2;
   player2.normal = 4;
   player2.air = 6;
   player2.revdamage = 10;
   player2.revspeed = 0;
   player2.attackboost = 1;
   player2.attackspace = 16;
   player2.attacklength = 16;
   player2.slow = 0.5;
   player2.speedup = 0.6;
   player2.speeddown = 0.9;
   player2.jumptimes = 2;
   jumpsound2 = player2character + "1";
   anormal2 = player2character + "2";
   shoot2 = player2character + "3";
   aforward2 = player2character + "4";
   turn2 = player2character + "5";
   aup2 = player2character + "6";
   adown2 = player2character + "7";
}
else if(randchar == 4 and _root.savedata.data.records.shadowa[0] == true)
{
   player2character = "shadowa";
   player2.maxmove = 18;
   player2.maxjump = -15;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 3;
   player2.normal = 3;
   player2.air = 4;
   player2.revdamage = 5;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 20;
   player2.attacklength = 15;
   player2.slow = 0.3;
   player2.speedup = 0.6;
   player2.speeddown = 1;
   player2.jumptimes = 2;
   jumpsound2 = player2character + "1";
   anormal2 = player2character + "2";
   shoot2 = player2character + "3";
   aforward2 = player2character + "4";
   turn2 = player2character + "5";
   aup2 = player2character + "6";
   adown2 = player2character + "7";
}
else if(randchar == 5 and _root.savedata.data.records.supersonic[0] == true)
{
   player2character = "supersonic";
   player2.maxmove = 22;
   player2.maxjump = -17;
   player2.jumpdamage = 3;
   player2.turnaround = 23;
   player2.recoveryrate = 8;
   player2.smash = 5;
   player2.normal = 6;
   player2.air = 6;
   player2.revdamage = 8;
   player2.revspeed = 28;
   player2.attackboost = 0;
   player2.attackspace = 16;
   player2.attacklength = 20;
   player2.slow = 0.4;
   player2.speedup = 0.82;
   player2.speeddown = 0.95;
   player2.jumptimes = 2;
   jumpsound2 = player2character + "1";
   anormal2 = player2character + "2";
   shoot2 = player2character + "3";
   aforward2 = player2character + "4";
   turn2 = player2character + "5";
   aup2 = player2character + "6";
   adown2 = player2character + "7";
}
else
{
   player2character = "sonic";
   player2.maxmove = 21;
   player2.maxjump = -15;
   player2.jumpdamage = 2;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 4;
   player2.normal = 5;
   player2.air = 5;
   player2.revdamage = 8;
   player2.revspeed = 30;
   player2.attackboost = 1;
   player2.attackspace = 14;
   player2.attacklength = 13;
   player2.slow = 0.4;
   player2.speedup = 0.8;
   player2.speeddown = 0.95;
   player2.jumptimes = 2;
   jumpsound2 = player2character + "1";
   anormal2 = player2character + "2";
   shoot2 = player2character + "3";
   aforward2 = player2character + "4";
   turn2 = player2character + "5";
   aup2 = player2character + "6";
   adown2 = player2character + "7";
}
stop();
