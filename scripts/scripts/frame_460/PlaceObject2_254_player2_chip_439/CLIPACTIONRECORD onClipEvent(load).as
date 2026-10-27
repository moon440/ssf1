onClipEvent(load){
   function detect()
   {
      _parent.p2x = this._x;
      _parent.p2y = this._y;
      if(this.center.hitTest(_parent.blade))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("blade","p2pic",0);
         _parent.p2name = "Blade";
         _parent.player2character = "blade";
         _parent.player2.maxmove = 20;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 2;
         _parent.player2.turnaround = 21;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 7;
         _parent.player2.normal = 4;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 8;
         _parent.player2.revspeed = 20;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 2;
         _parent.player2.attackspace = 12;
         _parent.player2.attacklength = 4;
         _parent.player2.slow = 0.5;
         _parent.player2.speedup = 0.7;
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
      else if(this.center.hitTest(_parent.samus))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("samus","p2pic",0);
         _parent.p2name = "Samus";
         _parent.player2character = "samus";
         _parent.player2.maxmove = 15;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 4;
         _parent.player2.turnaround = 20;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 7;
         _parent.player2.normal = 4;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 8;
         _parent.player2.revspeed = 20;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 36;
         _parent.player2.attacklength = 12;
         _parent.player2.slow = 0.2;
         _parent.player2.speedup = 0.5;
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
      else if(this.center.hitTest(_parent.mario))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("mario","p2pic",0);
         _parent.p2name = "Mario";
         _parent.player2character = "mario";
         _parent.player2.maxmove = 17;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 2;
         _parent.player2.turnaround = 18;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 6;
         _parent.player2.normal = 4;
         _parent.player2.air = 7;
         _parent.player2.revdamage = 9;
         _parent.player2.revspeed = 18;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 1;
         _parent.player2.attackspace = 13;
         _parent.player2.attacklength = 15;
         _parent.player2.slow = 0.3;
         _parent.player2.speedup = 0.55;
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
      else if(this.center.hitTest(_parent.link))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("linktwo","p2pic",0);
         _parent.p2name = "Link";
         _parent.player2character = "link";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 3;
         _parent.player2.normal = 3;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 5;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 20;
         _parent.player2.attacklength = 15;
         _parent.player2.slow = 0.3;
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
      else if(this.center.hitTest(_parent.captainfalcon))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("captainfalcon","p2pic",0);
         _parent.p2name = "C. Falcon";
         _parent.player2character = "captainfalcon";
         _parent.player2.maxmove = 20;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 21;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 6;
         _parent.player2.normal = 3;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 7;
         _parent.player2.revspeed = 20;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 14;
         _parent.player2.attacklength = 25;
         _parent.player2.slow = 0.7;
         _parent.player2.speedup = 0.8;
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
      else if(this.center.hitTest(_parent.fox))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("fox","p2pic",0);
         _parent.p2name = "Fox";
         _parent.player2character = "fox";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 16;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 4;
         _parent.player2.normal = 1;
         _parent.player2.air = 5;
         _parent.player2.revdamage = 5;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 15;
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
      else if(this.center.hitTest(_parent.kirby))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("kirby","p2pic",0);
         _parent.p2name = "Kirby";
         _parent.player2character = "kirby";
         _parent.player2.maxmove = 17;
         _parent.player2.maxjump = -14;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 18;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 5;
         _parent.player2.normal = 3;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 6;
         _parent.player2.revspeed = 15;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 14;
         _parent.player2.attacklength = 15;
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
      else if(this.center.hitTest(_parent.knuckles))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("knuckles","p2pic",0);
         _parent.p2name = "Knuckles";
         _parent.player2character = "knuckles";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 2;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 2;
         _parent.player2.normal = 4;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 10;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 1;
         _parent.player2.attackspace = 16;
         _parent.player2.attacklength = 16;
         _parent.player2.slow = 0.5;
         _parent.player2.speedup = 0.6;
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
      else if(this.center.hitTest(_parent.megaman))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("megaman","p2pic",0);
         _parent.p2name = "Megaman";
         _parent.player2character = "megaman";
         _parent.player2.maxmove = 15;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 20;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 4;
         _parent.player2.normal = 2;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 6;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = -1;
         _parent.player2.attackspace = 20;
         _parent.player2.attacklength = 12;
         _parent.player2.slow = 0.3;
         _parent.player2.speedup = 1;
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
      else if(this.center.hitTest(_parent.pikachu))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("pikachu","p2pic",0);
         _parent.p2name = "Pikachu";
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
         _parent.player2.healthdivision = 14;
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
      else if(this.center.hitTest(_parent.zelda))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("zelda","p2pic",0);
         _parent.p2name = "Zelda";
         _parent.player2character = "zelda";
         _parent.player2.maxmove = 16;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 17;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 4;
         _parent.player2.normal = 5;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 5;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 16;
         _parent.player2.attacklength = 23;
         _parent.player2.slow = 0.4;
         _parent.player2.speedup = 0.5;
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
      else if(this.center.hitTest(_parent.sonic))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("sonic","p2pic",0);
         _parent.p2name = "Sonic";
         _parent.player2character = "sonic";
         _parent.player2.maxmove = 21;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 2;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 4;
         _parent.player2.normal = 5;
         _parent.player2.air = 5;
         _parent.player2.revdamage = 8;
         _parent.player2.revspeed = 30;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 1;
         _parent.player2.attackspace = 14;
         _parent.player2.attacklength = 13;
         _parent.player2.slow = 0.4;
         _parent.player2.speedup = 0.8;
         _parent.player2.speeddown = 0.95;
         _parent.player2.jumptimes = 2;
         _parent.jumpsound2 = _parent.player2character + "1";
         _parent.anormal2 = _parent.player2character + "2";
         _parent.shoot2 = _parent.player2character + "3";
         _parent.aforward2 = _parent.player2character + "4";
         _parent.turn2 = _parent.player2character + "5";
         _parent.aup2 = _parent.player2character + "6";
         _parent.adown2 = _parent.player2character + "7";
      }
      else if(this.center.hitTest(_parent.tails))
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("tails","p2pic",0);
         _parent.p2name = "Tails";
         _parent.player2character = "tails";
         _parent.player2.maxmove = 17;
         _parent.player2.maxjump = -14;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 18;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 4;
         _parent.player2.normal = 3;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 6;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 20;
         _parent.player2.attacklength = 19;
         _parent.player2.slow = 0.5;
         _parent.player2.speedup = 0.6;
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
      else if(this.center.hitTest(_parent.blue) and _root.savedata.data.records.blue[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("blue","p2pic",0);
         _parent.p2name = "Blue";
         _parent.player2character = "blue";
         _parent.player2.maxmove = 19;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 3;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 7;
         _parent.player2.normal = 5;
         _parent.player2.air = 7;
         _parent.player2.revdamage = 9;
         _parent.player2.revspeed = 20;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 2;
         _parent.player2.attackspace = 13;
         _parent.player2.attacklength = 15;
         _parent.player2.slow = 0.5;
         _parent.player2.speedup = 0.7;
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
      else if(this.center.hitTest(_parent.cloud) and _root.savedata.data.records.cloud[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("cloud","p2pic",0);
         _parent.p2name = "Cloud";
         _parent.player2character = "cloud";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 5;
         _parent.player2.normal = 6;
         _parent.player2.air = 5;
         _parent.player2.revdamage = 8;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 1;
         _parent.player2.attackspace = 17;
         _parent.player2.attacklength = 16;
         _parent.player2.slow = 0.4;
         _parent.player2.speedup = 0.65;
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
      else if(this.center.hitTest(_parent.crono) and _root.savedata.data.records.crono[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("crono","p2pic",0);
         _parent.p2name = "Crono";
         _parent.player2character = "crono";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 5;
         _parent.player2.normal = 4;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 6;
         _parent.player2.revspeed = 24;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 2;
         _parent.player2.attackspace = 18;
         _parent.player2.attacklength = 17;
         _parent.player2.slow = 0.3;
         _parent.player2.speedup = 0.65;
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
      else if(this.center.hitTest(_parent.gameandwatch) and _root.savedata.data.records.gameandwatch[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("gameandwatch","p2pic",0);
         _parent.p2name = "Mr. G & W";
         _parent.player2character = "gameandwatch";
         _parent.player2.maxmove = 14;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 15;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 5;
         _parent.player2.normal = 3;
         _parent.player2.air = 5;
         _parent.player2.revdamage = 5;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 15;
         _parent.player2.attacklength = 12;
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
      else if(this.center.hitTest(_parent.inuyasha) and _root.savedata.data.records.inuyasha[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("inuyasha","p2pic",0);
         _parent.p2name = "Inuyasha";
         _parent.player2character = "inuyasha";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 6;
         _parent.player2.normal = 7;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 7;
         _parent.player2.revspeed = 15;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 2;
         _parent.player2.attackspace = 14;
         _parent.player2.attacklength = 13;
         _parent.player2.slow = 0.3;
         _parent.player2.speedup = 0.7;
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
      else if(this.center.hitTest(_parent.jigglypuff) and _root.savedata.data.records.jigglypuff[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("jigglypuff","p2pic",0);
         _parent.p2name = "Jigglypuff";
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
         _parent.player2.healthdivision = 14;
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
      else if(this.center.hitTest(_parent.lloyd) and _root.savedata.data.records.lloyd[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("lloyd","p2pic",0);
         _parent.p2name = "Lloyd";
         _parent.player2character = "lloyd";
         _parent.player2.maxmove = 19;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 20;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 2;
         _parent.player2.normal = 3;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 7;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 17;
         _parent.player2.attacklength = 28;
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
      else if(this.center.hitTest(_parent.luigi) and _root.savedata.data.records.luigi[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("luigi","p2pic",0);
         _parent.p2name = "Luigi";
         _parent.player2character = "luigi";
         _parent.player2.maxmove = 17;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 2;
         _parent.player2.turnaround = 18;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 6;
         _parent.player2.normal = 4;
         _parent.player2.air = 7;
         _parent.player2.revdamage = 10;
         _parent.player2.revspeed = 25;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 1;
         _parent.player2.attackspace = 14;
         _parent.player2.attacklength = 16;
         _parent.player2.slow = 0.3;
         _parent.player2.speedup = 0.55;
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
      else if(this.center.hitTest(_parent.mewtwo) and _root.savedata.data.records.mewtwo[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("mewtwo","p2pic",0);
         _parent.p2name = "Mewtwo";
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
         _parent.player2.healthdivision = 14;
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
      else if(this.center.hitTest(_parent.incredible) and _root.savedata.data.records.incredible[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("incredible","p2pic",0);
         _parent.p2name = "Mr. Incred.";
         _parent.player2character = "incredible";
         _parent.player2.maxmove = 17;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 18;
         _parent.player2.recoveryrate = 10;
         _parent.player2.smash = 6;
         _parent.player2.normal = 5;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 10;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 17;
         _parent.player2.attacklength = 24;
         _parent.player2.slow = 0.6;
         _parent.player2.speedup = 0.55;
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
      else if(this.center.hitTest(_parent.naruto) and _root.savedata.data.records.naruto[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("naruto","p2pic",0);
         _parent.p2name = "Naruto";
         _parent.player2character = "naruto";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 3;
         _parent.player2.normal = 4;
         _parent.player2.air = 3;
         _parent.player2.revdamage = 5;
         _parent.player2.revspeed = 15;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 13;
         _parent.player2.attacklength = 12;
         _parent.player2.slow = 0.4;
         _parent.player2.speedup = 0.9;
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
      else if(this.center.hitTest(_parent.shadowa) and _root.savedata.data.records.shadowa[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("shadowa","p2pic",0);
         _parent.p2name = "Shadow";
         _parent.player2character = "shadowa";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 3;
         _parent.player2.normal = 3;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 5;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 20;
         _parent.player2.attacklength = 15;
         _parent.player2.slow = 0.3;
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
      else if(this.center.hitTest(_parent.supersonic) and _root.savedata.data.records.supersonic[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("supersonic","p2pic",0);
         _parent.p2name = "Super Sonic";
         _parent.player2character = "supersonic";
         _parent.player2.maxmove = 22;
         _parent.player2.maxjump = -17;
         _parent.player2.jumpdamage = 3;
         _parent.player2.turnaround = 23;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 5;
         _parent.player2.normal = 6;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 8;
         _parent.player2.revspeed = 28;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 16;
         _parent.player2.attacklength = 20;
         _parent.player2.slow = 0.4;
         _parent.player2.speedup = 0.82;
         _parent.player2.speeddown = 0.95;
         _parent.player2.jumptimes = 2;
         _parent.jumpsound2 = _parent.player2character + "1";
         _parent.anormal2 = _parent.player2character + "2";
         _parent.shoot2 = _parent.player2character + "3";
         _parent.aforward2 = _parent.player2character + "4";
         _parent.turn2 = _parent.player2character + "5";
         _parent.aup2 = _parent.player2character + "6";
         _parent.adown2 = _parent.player2character + "7";
      }
      else if(this.center.hitTest(_parent.younglink) and _root.savedata.data.records.younglink[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("younglink","p2pic",0);
         _parent.p2name = "Young Link";
         _parent.player2character = "younglink";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -15;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 3;
         _parent.player2.normal = 3;
         _parent.player2.air = 4;
         _parent.player2.revdamage = 3;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 15;
         _parent.player2.attacklength = 15;
         _parent.player2.slow = 0.5;
         _parent.player2.speedup = 0.58;
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
      else if(this.center.hitTest(_parent.zero) and _root.savedata.data.records.zero[0] == true)
      {
         _parent.player2.exist = true;
         _parent.p2pic.attachMovie("zero","p2pic",0);
         _parent.p2name = "Zero";
         _parent.player2character = "zero";
         _parent.player2.maxmove = 18;
         _parent.player2.maxjump = -16;
         _parent.player2.jumpdamage = 0;
         _parent.player2.turnaround = 19;
         _parent.player2.recoveryrate = 8;
         _parent.player2.smash = 4;
         _parent.player2.normal = 6;
         _parent.player2.air = 6;
         _parent.player2.revdamage = 7;
         _parent.player2.revspeed = 0;
         _parent.player2.healthdivision = 14;
         _parent.player2.attackboost = 0;
         _parent.player2.attackspace = 16;
         _parent.player2.attacklength = 20;
         _parent.player2.slow = 0.5;
         _parent.player2.speedup = 0.65;
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
      else
      {
         _parent.player2.exist = false;
         _parent.p2pic.attachMovie("blankpic","p2pic",0);
         _parent.p2name = "";
         _parent.player2character = "";
      }
      if(_parent.player2character !== "")
      {
         thissound = "select_" + _parent.player2character;
         sayName = new Sound();
         sayName.attachSound(thissound);
         sayName.start();
      }
   }
   this._x = _parent.p2x;
   this._y = _parent.p2y;
}
