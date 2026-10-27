stop();
minutes = 2;
challenge = new Sound();
challenge.attachSound("challenger");
challenge.start();
templives = p1lives;
p1lives = 1;
p2lives = 1;
player2.exist = true;
if(player2character == "blue")
{
   player2.exist = true;
   player2character = "blue";
   player2.maxmove = 19;
   player2.maxjump = -15;
   player2.jumpdamage = 3;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 7;
   player2.normal = 5;
   player2.air = 7;
   player2.revdamage = 9;
   player2.revspeed = 20;
   player2.attackboost = 2;
   player2.attackspace = 13;
   player2.attacklength = 15;
   player2.slow = 0.5;
   player2.speedup = 0.7;
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
else if(player2character == "cloud")
{
   player2.exist = true;
   player2character = "cloud";
   player2.maxmove = 18;
   player2.maxjump = -16;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 5;
   player2.normal = 6;
   player2.air = 5;
   player2.revdamage = 8;
   player2.revspeed = 0;
   player2.attackboost = 1;
   player2.attackspace = 17;
   player2.attacklength = 16;
   player2.slow = 0.4;
   player2.speedup = 0.65;
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
else if(player2character == "crono")
{
   player2.exist = true;
   player2character = "crono";
   player2.maxmove = 18;
   player2.maxjump = -15;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 5;
   player2.normal = 4;
   player2.air = 6;
   player2.revdamage = 6;
   player2.revspeed = 24;
   player2.attackboost = 2;
   player2.attackspace = 18;
   player2.attacklength = 17;
   player2.slow = 0.3;
   player2.speedup = 0.65;
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
else if(player2character == "gameandwatch")
{
   player2.exist = true;
   player2character = "gameandwatch";
   player2.maxmove = 14;
   player2.maxjump = -14;
   player2.jumpdamage = 0;
   player2.turnaround = 15;
   player2.recoveryrate = 8;
   player2.smash = 5;
   player2.normal = 3;
   player2.air = 5;
   player2.revdamage = 5;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 15;
   player2.attacklength = 12;
   player2.slow = 0.5;
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
else if(player2character == "inuyasha")
{
   player2.exist = true;
   player2character = "inuyasha";
   player2.maxmove = 18;
   player2.maxjump = -16;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 6;
   player2.normal = 7;
   player2.air = 6;
   player2.revdamage = 7;
   player2.revspeed = 15;
   player2.attackboost = 2;
   player2.attackspace = 14;
   player2.attacklength = 13;
   player2.slow = 0.3;
   player2.speedup = 0.7;
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
else if(player2character == "jigglypuff")
{
   player2.exist = true;
   player2character = "jigglypuff";
   player2.maxmove = 15;
   player2.maxjump = -13;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 12;
   player2.smash = 4;
   player2.normal = 5;
   player2.air = 5;
   player2.revdamage = 6;
   player2.revspeed = 30;
   player2.attackboost = 0;
   player2.attackspace = 17;
   player2.attacklength = 16;
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
}
else if(player2character == "lloyd")
{
   player2.exist = true;
   player2character = "lloyd";
   player2.maxmove = 19;
   player2.maxjump = -16;
   player2.jumpdamage = 0;
   player2.turnaround = 20;
   player2.recoveryrate = 8;
   player2.smash = 2;
   player2.normal = 3;
   player2.air = 4;
   player2.revdamage = 7;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 17;
   player2.attacklength = 28;
   player2.slow = 0.5;
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
else if(player2character == "luigi")
{
   player2.exist = true;
   player2character = "luigi";
   player2.maxmove = 17;
   player2.maxjump = -14;
   player2.jumpdamage = 2;
   player2.turnaround = 18;
   player2.recoveryrate = 8;
   player2.smash = 6;
   player2.normal = 4;
   player2.air = 7;
   player2.revdamage = 10;
   player2.revspeed = 25;
   player2.attackboost = 1;
   player2.attackspace = 14;
   player2.attacklength = 16;
   player2.slow = 0.3;
   player2.speedup = 0.55;
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
else if(player2character == "mewtwo")
{
   player2.exist = true;
   player2character = "mewtwo";
   player2.maxmove = 17;
   player2.maxjump = -16;
   player2.jumpdamage = 0;
   player2.turnaround = 18;
   player2.recoveryrate = 8;
   player2.smash = 5;
   player2.normal = 5;
   player2.air = 6;
   player2.revdamage = 6;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 16;
   player2.attacklength = 15;
   player2.slow = 0.5;
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
else if(player2character == "incredible")
{
   player2.exist = true;
   player2character = "incredible";
   player2.maxmove = 17;
   player2.maxjump = -15;
   player2.jumpdamage = 0;
   player2.turnaround = 18;
   player2.recoveryrate = 10;
   player2.smash = 6;
   player2.normal = 5;
   player2.air = 6;
   player2.revdamage = 10;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 17;
   player2.attacklength = 24;
   player2.slow = 0.6;
   player2.speedup = 0.55;
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
else if(player2character == "naruto")
{
   player2.exist = true;
   player2character = "naruto";
   player2.maxmove = 18;
   player2.maxjump = -16;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 3;
   player2.normal = 4;
   player2.air = 3;
   player2.revdamage = 5;
   player2.revspeed = 15;
   player2.attackboost = 0;
   player2.attackspace = 13;
   player2.attacklength = 12;
   player2.slow = 0.4;
   player2.speedup = 0.9;
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
else if(player2character == "shadowa")
{
   player2.exist = true;
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
else if(player2character == "supersonic")
{
   player2.exist = true;
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
else if(player2character == "younglink")
{
   player2.exist = true;
   player2character = "younglink";
   player2.maxmove = 18;
   player2.maxjump = -15;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 3;
   player2.normal = 3;
   player2.air = 4;
   player2.revdamage = 3;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 15;
   player2.attacklength = 15;
   player2.slow = 0.5;
   player2.speedup = 0.58;
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
else if(player2character == "zero")
{
   player2.exist = true;
   player2character = "zero";
   player2.maxmove = 18;
   player2.maxjump = -16;
   player2.jumpdamage = 0;
   player2.turnaround = 19;
   player2.recoveryrate = 8;
   player2.smash = 4;
   player2.normal = 6;
   player2.air = 6;
   player2.revdamage = 7;
   player2.revspeed = 0;
   player2.attackboost = 0;
   player2.attackspace = 16;
   player2.attacklength = 20;
   player2.slow = 0.5;
   player2.speedup = 0.65;
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
