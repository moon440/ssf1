function randChar(pnum, player)
{
   if(player == 1)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Blade";
      this["player" + pnum + "character"] = "blade";
      this["player" + pnum].maxmove = 20;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 2;
      this["player" + pnum].turnaround = 21;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 7;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 8;
      this["player" + pnum].revspeed = 20;
      this["player" + pnum].attackboost = 2;
      this["player" + pnum].attackspace = 12;
      this["player" + pnum].attacklength = 4;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.7;
      this["player" + pnum].speeddown = 0.9;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 2)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Samus";
      this["player" + pnum + "character"] = "samus";
      this["player" + pnum].maxmove = 15;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 4;
      this["player" + pnum].turnaround = 20;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 7;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 8;
      this["player" + pnum].revspeed = 20;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 36;
      this["player" + pnum].attacklength = 12;
      this["player" + pnum].slow = 0.2;
      this["player" + pnum].speedup = 0.5;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 3)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Mario";
      this["player" + pnum + "character"] = "mario";
      this["player" + pnum].maxmove = 17;
      this["player" + pnum].maxjump = -14;
      this["player" + pnum].jumpdamage = 2;
      this["player" + pnum].turnaround = 18;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 6;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 7;
      this["player" + pnum].revdamage = 9;
      this["player" + pnum].revspeed = 18;
      this["player" + pnum].attackboost = 1;
      this["player" + pnum].attackspace = 13;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 0.55;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 4)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Link";
      this["player" + pnum + "character"] = "link";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 3;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 5;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 20;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 5)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "C. Falcon";
      this["player" + pnum + "character"] = "captainfalcon";
      this["player" + pnum].maxmove = 20;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 21;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 6;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 7;
      this["player" + pnum].revspeed = 20;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 14;
      this["player" + pnum].attacklength = 25;
      this["player" + pnum].slow = 0.7;
      this["player" + pnum].speedup = 0.8;
      this["player" + pnum].speeddown = 0.9;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 6)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Fox";
      this["player" + pnum + "character"] = "fox";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 16;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 1;
      this["player" + pnum].air = 5;
      this["player" + pnum].revdamage = 5;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 15;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 7)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Kirby";
      this["player" + pnum + "character"] = "kirby";
      this["player" + pnum].maxmove = 17;
      this["player" + pnum].maxjump = -14;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 18;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 5;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 6;
      this["player" + pnum].revspeed = 15;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 14;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.5;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 5;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 8)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Knuckles";
      this["player" + pnum + "character"] = "knuckles";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 2;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 2;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 10;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 1;
      this["player" + pnum].attackspace = 16;
      this["player" + pnum].attacklength = 16;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 0.9;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 9)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Megaman";
      this["player" + pnum + "character"] = "megaman";
      this["player" + pnum].maxmove = 15;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 20;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 2;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 6;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = -1;
      this["player" + pnum].attackspace = 20;
      this["player" + pnum].attacklength = 12;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 1;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 10)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Pikachu";
      this["player" + pnum + "character"] = "pikachu";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 6;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 9;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 20;
      this["player" + pnum].attacklength = 18;
      this["player" + pnum].slow = 0.6;
      this["player" + pnum].speedup = 0.65;
      this["player" + pnum].speeddown = 0.9;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 11)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Zelda";
      this["player" + pnum + "character"] = "zelda";
      this["player" + pnum].maxmove = 16;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 17;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 5;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 5;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 16;
      this["player" + pnum].attacklength = 23;
      this["player" + pnum].slow = 0.4;
      this["player" + pnum].speedup = 0.5;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 12)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Sonic";
      this["player" + pnum + "character"] = "sonic";
      this["player" + pnum].maxmove = 21;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 2;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 5;
      this["player" + pnum].air = 5;
      this["player" + pnum].revdamage = 8;
      this["player" + pnum].revspeed = 30;
      this["player" + pnum].attackboost = 1;
      this["player" + pnum].attackspace = 14;
      this["player" + pnum].attacklength = 13;
      this["player" + pnum].slow = 0.4;
      this["player" + pnum].speedup = 0.8;
      this["player" + pnum].speeddown = 0.95;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 13)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Tails";
      this["player" + pnum + "character"] = "tails";
      this["player" + pnum].maxmove = 17;
      this["player" + pnum].maxjump = -14;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 18;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 6;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 20;
      this["player" + pnum].attacklength = 19;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 5;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 14)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Blue";
      this["player" + pnum + "character"] = "blue";
      this["player" + pnum].maxmove = 19;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 3;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 7;
      this["player" + pnum].normal = 5;
      this["player" + pnum].air = 7;
      this["player" + pnum].revdamage = 9;
      this["player" + pnum].revspeed = 20;
      this["player" + pnum].attackboost = 2;
      this["player" + pnum].attackspace = 13;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.7;
      this["player" + pnum].speeddown = 0.9;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 15)
   {
      this["player" + pnum].exist = true;
      p1pic.attachMovie("cloud","p1pic",0);
      this["p" + pnum + "name"] = "Cloud";
      this["player" + pnum + "character"] = "cloud";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 5;
      this["player" + pnum].normal = 6;
      this["player" + pnum].air = 5;
      this["player" + pnum].revdamage = 8;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 1;
      this["player" + pnum].attackspace = 17;
      this["player" + pnum].attacklength = 16;
      this["player" + pnum].slow = 0.4;
      this["player" + pnum].speedup = 0.65;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 16)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Crono";
      this["player" + pnum + "character"] = "crono";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 5;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 6;
      this["player" + pnum].revspeed = 24;
      this["player" + pnum].attackboost = 2;
      this["player" + pnum].attackspace = 18;
      this["player" + pnum].attacklength = 17;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 0.65;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 17)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Mr. G & W";
      this["player" + pnum + "character"] = "gameandwatch";
      this["player" + pnum].maxmove = 14;
      this["player" + pnum].maxjump = -14;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 15;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 5;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 5;
      this["player" + pnum].revdamage = 5;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 15;
      this["player" + pnum].attacklength = 12;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 18)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Inuyasha";
      this["player" + pnum + "character"] = "inuyasha";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 6;
      this["player" + pnum].normal = 7;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 7;
      this["player" + pnum].revspeed = 15;
      this["player" + pnum].attackboost = 2;
      this["player" + pnum].attackspace = 14;
      this["player" + pnum].attacklength = 13;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 0.7;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 19)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Jigglypuff";
      this["player" + pnum + "character"] = "jigglypuff";
      this["player" + pnum].maxmove = 15;
      this["player" + pnum].maxjump = -13;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 12;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 5;
      this["player" + pnum].air = 5;
      this["player" + pnum].revdamage = 6;
      this["player" + pnum].revspeed = 30;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 17;
      this["player" + pnum].attacklength = 16;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.5;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 5;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 20)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Lloyd";
      this["player" + pnum + "character"] = "lloyd";
      this["player" + pnum].maxmove = 19;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 20;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 2;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 7;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 17;
      this["player" + pnum].attacklength = 28;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 21)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Luigi";
      this["player" + pnum + "character"] = "luigi";
      this["player" + pnum].maxmove = 17;
      this["player" + pnum].maxjump = -14;
      this["player" + pnum].jumpdamage = 2;
      this["player" + pnum].turnaround = 18;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 6;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 7;
      this["player" + pnum].revdamage = 10;
      this["player" + pnum].revspeed = 25;
      this["player" + pnum].attackboost = 1;
      this["player" + pnum].attackspace = 14;
      this["player" + pnum].attacklength = 16;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 0.55;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 22)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Mewtwo";
      this["player" + pnum + "character"] = "mewtwo";
      this["player" + pnum].maxmove = 17;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 18;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 5;
      this["player" + pnum].normal = 5;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 6;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 16;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 23)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Mr. Incred.";
      this["player" + pnum + "character"] = "incredible";
      this["player" + pnum].maxmove = 17;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 18;
      this["player" + pnum].recoveryrate = 10;
      this["player" + pnum].smash = 6;
      this["player" + pnum].normal = 5;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 10;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 17;
      this["player" + pnum].attacklength = 24;
      this["player" + pnum].slow = 0.6;
      this["player" + pnum].speedup = 0.55;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 24)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Naruto";
      this["player" + pnum + "character"] = "naruto";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 3;
      this["player" + pnum].normal = 4;
      this["player" + pnum].air = 3;
      this["player" + pnum].revdamage = 5;
      this["player" + pnum].revspeed = 15;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 13;
      this["player" + pnum].attacklength = 12;
      this["player" + pnum].slow = 0.4;
      this["player" + pnum].speedup = 0.9;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 25)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Shadow";
      this["player" + pnum + "character"] = "shadowa";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 3;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 5;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 20;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.3;
      this["player" + pnum].speedup = 0.6;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 26)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Super Sonic";
      this["player" + pnum + "character"] = "supersonic";
      this["player" + pnum].maxmove = 22;
      this["player" + pnum].maxjump = -17;
      this["player" + pnum].jumpdamage = 3;
      this["player" + pnum].turnaround = 23;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 5;
      this["player" + pnum].normal = 6;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 8;
      this["player" + pnum].revspeed = 28;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 16;
      this["player" + pnum].attacklength = 20;
      this["player" + pnum].slow = 0.4;
      this["player" + pnum].speedup = 0.82;
      this["player" + pnum].speeddown = 0.95;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 27)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Young Link";
      this["player" + pnum + "character"] = "younglink";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -15;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 3;
      this["player" + pnum].normal = 3;
      this["player" + pnum].air = 4;
      this["player" + pnum].revdamage = 3;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 15;
      this["player" + pnum].attacklength = 15;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.58;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   else if(player == 28)
   {
      this["player" + pnum].exist = true;
      this["p" + pnum + "name"] = "Zero";
      this["player" + pnum + "character"] = "zero";
      this["player" + pnum].maxmove = 18;
      this["player" + pnum].maxjump = -16;
      this["player" + pnum].jumpdamage = 0;
      this["player" + pnum].turnaround = 19;
      this["player" + pnum].recoveryrate = 8;
      this["player" + pnum].smash = 4;
      this["player" + pnum].normal = 6;
      this["player" + pnum].air = 6;
      this["player" + pnum].revdamage = 7;
      this["player" + pnum].revspeed = 0;
      this["player" + pnum].attackboost = 0;
      this["player" + pnum].attackspace = 16;
      this["player" + pnum].attacklength = 20;
      this["player" + pnum].slow = 0.5;
      this["player" + pnum].speedup = 0.65;
      this["player" + pnum].speeddown = 1;
      this["player" + pnum].jumptimes = 2;
      this["jumpsound" + pnum] = this["player" + pnum + "character"] + "1";
      this["anormal" + pnum] = this["player" + pnum + "character"] + "2";
      this["shoot" + pnum] = this["player" + pnum + "character"] + "3";
      this["aforward" + pnum] = this["player" + pnum + "character"] + "4";
      this["turn" + pnum] = this["player" + pnum + "character"] + "5";
      this["aup" + pnum] = this["player" + pnum + "character"] + "6";
      this["adown" + pnum] = this["player" + pnum + "character"] + "7";
   }
   nextup = "";
   if(levelnum !== 14)
   {
      if(_parent.player4.exist == true)
      {
         nextup = p2name + "<br>" + p3name + "<br>" + p4name;
      }
      else if(_parent.player3.exist == true)
      {
         nextup = p2name + "<br>" + p3name;
         gamean;
      }
      else
      {
         nextup = p2name;
      }
   }
   else
   {
      nextup = p2name;
   }
}
_root.gamePercent();
currentlevel == null;
p1airamount = 0;
p1smashamount = 0;
p1attackamount = 0;
p1normalamount = 0;
p1dashamount = 0;
p1maxdamage = 0;
p1directionamount = 0;
p1crouchamount = 0;
p1jumpamount = 0;
p1crowdamount = 0;
p1hurtamount = 0;
p2airamount = 0;
p2smashamount = 0;
p2attackamount = 0;
p2normalamount = 0;
p2dashamount = 0;
p2maxdamage = 0;
p2directionamount = 0;
p2crouchamount = 0;
p2jumpamount = 0;
p2crowdamount = 0;
p2hurtamount = 0;
p3airamount = 0;
p3smashamount = 0;
p3attackamount = 0;
p3normalamount = 0;
p3dashamount = 0;
p3maxdamage = 0;
p3directionamount = 0;
p3crouchamount = 0;
p3jumpamount = 0;
p3crowdamount = 0;
p3hurtamount = 0;
p4airamount = 0;
p4smashamount = 0;
p4attackamount = 0;
p4normalamount = 0;
p4dashamount = 0;
p4maxdamage = 0;
p4directionamount = 0;
p4crouchamount = 0;
p4jumpamount = 0;
p4crowdamount = 0;
p4hurtamount = 0;
choosechar = new Sound();
choosechar.attachSound("Narrator_choosecharacter");
choosechar.start();
currentmode = "multiman";
if(!music)
{
   music = true;
   bgmusic.start(0,999);
}
currentmenu = "burlybrawl";
stop();
