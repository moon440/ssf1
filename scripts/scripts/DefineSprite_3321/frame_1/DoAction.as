win = false;
intro = new Sound();
intro.attachSound("adventureintro");
intro.start();
waitclick.useHandCursor = false;
if(_root.savedata.data.records.mewtwo[0] == true)
{
   _parent.player2.exist = true;
   _parent.player2character = "mewtwo";
   _parent.player2.maxmove = 17;
   _parent.player2.maxjump = -16;
   _parent.player2.jumpdamage = 0;
   _parent.player2.turnaround = 18;
   _parent.player2.recoveryrate = 8;
   _parent.player2.smash = 5;
   _parent.player2.normal = 5;
   _parent.player2.air = 6;
   _parent.player2.revdamage = 6;
   _parent.player2.revspeed = 0;
   _parent.player2.attackboost = 0;
   _parent.player2.attackspace = 16;
   _parent.player2.attacklength = 15;
   _parent.player2.slow = 0.5;
   _parent.player2.speedup = 0.6;
   _parent.player2.speeddown = 1;
   _parent.player2.jumptimes = 2;
   _parent.jumpsound2 = _parent.player2character + "1";
   _parent.anormal2 = _parent.player2character + "2";
   _parent.shoot2 = _parent.player2character + "3";
   _parent.aforward2 = _parent.player2character + "4";
   _parent.turn2 = _parent.player2character + "5";
   _parent.aup2 = _parent.player2character + "6";
   _parent.adown2 = _parent.player2character + "7";
}
else if(_root.savedata.data.records.jigglypuff[0] == true)
{
   _parent.player2.exist = true;
   _parent.player2character = "jigglypuff";
   _parent.player2.maxmove = 15;
   _parent.player2.maxjump = -13;
   _parent.player2.jumpdamage = 0;
   _parent.player2.turnaround = 19;
   _parent.player2.recoveryrate = 12;
   _parent.player2.smash = 4;
   _parent.player2.normal = 5;
   _parent.player2.air = 5;
   _parent.player2.revdamage = 6;
   _parent.player2.revspeed = 30;
   _parent.player2.attackboost = 0;
   _parent.player2.attackspace = 17;
   _parent.player2.attacklength = 16;
   _parent.player2.slow = 0.5;
   _parent.player2.speedup = 0.5;
   _parent.player2.speeddown = 1;
   _parent.player2.jumptimes = 5;
   _parent.jumpsound2 = _parent.player2character + "1";
   _parent.anormal2 = _parent.player2character + "2";
   _parent.shoot2 = _parent.player2character + "3";
   _parent.aforward2 = _parent.player2character + "4";
   _parent.turn2 = _parent.player2character + "5";
   _parent.aup2 = _parent.player2character + "6";
   _parent.adown2 = _parent.player2character + "7";
}
else
{
   _parent.player2.exist = true;
   _parent.player2character = "pikachu";
   _parent.player2.maxmove = 18;
   _parent.player2.maxjump = -15;
   _parent.player2.jumpdamage = 0;
   _parent.player2.turnaround = 19;
   _parent.player2.recoveryrate = 8;
   _parent.player2.smash = 4;
   _parent.player2.normal = 6;
   _parent.player2.air = 4;
   _parent.player2.revdamage = 9;
   _parent.player2.revspeed = 0;
   _parent.player2.attackboost = 0;
   _parent.player2.attackspace = 20;
   _parent.player2.attacklength = 18;
   _parent.player2.slow = 0.6;
   _parent.player2.speedup = 0.65;
   _parent.player2.speeddown = 0.9;
   _parent.player2.jumptimes = 2;
   _parent.jumpsound2 = _parent.player2character + "1";
   _parent.anormal2 = _parent.player2character + "2";
   _parent.shoot2 = _parent.player2character + "3";
   _parent.aforward2 = _parent.player2character + "4";
   _parent.turn2 = _parent.player2character + "5";
   _parent.aup2 = _parent.player2character + "6";
   _parent.adown2 = _parent.player2character + "7";
}
_parent.player3.exist = false;
_parent.player4.exist = false;
