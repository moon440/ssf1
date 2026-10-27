onClipEvent(load){
   function detect()
   {
      _parent.p4x = this._x;
      _parent.p4y = this._y;
      if(this.center.hitTest(_parent.blade))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("blade","p4pic",0);
         _parent.p4name = "Blade";
         _parent.player4character = "blade";
         _parent.player4.maxmove = 20;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 2;
         _parent.player4.turnaround = 21;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 7;
         _parent.player4.normal = 4;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 8;
         _parent.player4.revspeed = 20;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 2;
         _parent.player4.attackspace = 12;
         _parent.player4.attacklength = 4;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.7;
         _parent.player4.speeddown = 0.9;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.samus))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("samus","p4pic",0);
         _parent.p4name = "Samus";
         _parent.player4character = "samus";
         _parent.player4.maxmove = 15;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 4;
         _parent.player4.turnaround = 20;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 7;
         _parent.player4.normal = 4;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 8;
         _parent.player4.revspeed = 20;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 36;
         _parent.player4.attacklength = 12;
         _parent.player4.slow = 0.2;
         _parent.player4.speedup = 0.5;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.mario))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("mario","p4pic",0);
         _parent.p4name = "Mario";
         _parent.player4character = "mario";
         _parent.player4.maxmove = 17;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 2;
         _parent.player4.turnaround = 18;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 6;
         _parent.player4.normal = 4;
         _parent.player4.air = 7;
         _parent.player4.revdamage = 9;
         _parent.player4.revspeed = 18;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 1;
         _parent.player4.attackspace = 13;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 0.55;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.link))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("linktwo","p4pic",0);
         _parent.p4name = "Link";
         _parent.player4character = "link";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 3;
         _parent.player4.normal = 3;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 5;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 20;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.captainfalcon))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("captainfalcon","p4pic",0);
         _parent.p4name = "C. Falcon";
         _parent.player4character = "captainfalcon";
         _parent.player4.maxmove = 20;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 21;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 6;
         _parent.player4.normal = 3;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 7;
         _parent.player4.revspeed = 20;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 14;
         _parent.player4.attacklength = 25;
         _parent.player4.slow = 0.7;
         _parent.player4.speedup = 0.8;
         _parent.player4.speeddown = 0.9;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.fox))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("fox","p4pic",0);
         _parent.p4name = "Fox";
         _parent.player4character = "fox";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 16;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 1;
         _parent.player4.air = 5;
         _parent.player4.revdamage = 5;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 15;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.kirby))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("kirby","p4pic",0);
         _parent.p4name = "Kirby";
         _parent.player4character = "kirby";
         _parent.player4.maxmove = 17;
         _parent.player4.maxjump = -14;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 18;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 5;
         _parent.player4.normal = 3;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 6;
         _parent.player4.revspeed = 15;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 14;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.5;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 5;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.knuckles))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("knuckles","p4pic",0);
         _parent.p4name = "Knuckles";
         _parent.player4character = "knuckles";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 2;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 2;
         _parent.player4.normal = 4;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 10;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 1;
         _parent.player4.attackspace = 16;
         _parent.player4.attacklength = 16;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 0.9;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.megaman))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("megaman","p4pic",0);
         _parent.p4name = "Megaman";
         _parent.player4character = "megaman";
         _parent.player4.maxmove = 15;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 20;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 2;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 6;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = -1;
         _parent.player4.attackspace = 20;
         _parent.player4.attacklength = 12;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 1;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.pikachu))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("pikachu","p4pic",0);
         _parent.p4name = "Pikachu";
         _parent.player4character = "pikachu";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 6;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 9;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 20;
         _parent.player4.attacklength = 18;
         _parent.player4.slow = 0.6;
         _parent.player4.speedup = 0.65;
         _parent.player4.speeddown = 0.9;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.zelda))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("zelda","p4pic",0);
         _parent.p4name = "Zelda";
         _parent.player4character = "zelda";
         _parent.player4.maxmove = 16;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 17;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 5;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 5;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 16;
         _parent.player4.attacklength = 23;
         _parent.player4.slow = 0.4;
         _parent.player4.speedup = 0.5;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.sonic))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("sonic","p4pic",0);
         _parent.p4name = "Sonic";
         _parent.player4character = "sonic";
         _parent.player4.maxmove = 21;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 2;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 5;
         _parent.player4.air = 5;
         _parent.player4.revdamage = 8;
         _parent.player4.revspeed = 30;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 1;
         _parent.player4.attackspace = 14;
         _parent.player4.attacklength = 13;
         _parent.player4.slow = 0.4;
         _parent.player4.speedup = 0.8;
         _parent.player4.speeddown = 0.95;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.tails))
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("tails","p4pic",0);
         _parent.p4name = "Tails";
         _parent.player4character = "tails";
         _parent.player4.maxmove = 17;
         _parent.player4.maxjump = -14;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 18;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 3;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 6;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 20;
         _parent.player4.attacklength = 19;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 5;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.blue) and _root.savedata.data.records.blue[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("blue","p4pic",0);
         _parent.p4name = "Blue";
         _parent.player4character = "blue";
         _parent.player4.maxmove = 19;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 3;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 7;
         _parent.player4.normal = 5;
         _parent.player4.air = 7;
         _parent.player4.revdamage = 9;
         _parent.player4.revspeed = 20;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 2;
         _parent.player4.attackspace = 13;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.7;
         _parent.player4.speeddown = 0.9;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.cloud) and _root.savedata.data.records.cloud[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("cloud","p4pic",0);
         _parent.p4name = "Cloud";
         _parent.player4character = "cloud";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 5;
         _parent.player4.normal = 6;
         _parent.player4.air = 5;
         _parent.player4.revdamage = 8;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 1;
         _parent.player4.attackspace = 17;
         _parent.player4.attacklength = 16;
         _parent.player4.slow = 0.4;
         _parent.player4.speedup = 0.65;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.crono) and _root.savedata.data.records.crono[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("crono","p4pic",0);
         _parent.p4name = "Crono";
         _parent.player4character = "crono";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 5;
         _parent.player4.normal = 4;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 6;
         _parent.player4.revspeed = 24;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 2;
         _parent.player4.attackspace = 18;
         _parent.player4.attacklength = 17;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 0.65;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.gameandwatch) and _root.savedata.data.records.gameandwatch[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("gameandwatch","p4pic",0);
         _parent.p4name = "Mr. G & W";
         _parent.player4character = "gameandwatch";
         _parent.player4.maxmove = 14;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 15;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 5;
         _parent.player4.normal = 3;
         _parent.player4.air = 5;
         _parent.player4.revdamage = 5;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 15;
         _parent.player4.attacklength = 12;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.inuyasha) and _root.savedata.data.records.inuyasha[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("inuyasha","p4pic",0);
         _parent.p4name = "Inuyasha";
         _parent.player4character = "inuyasha";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 6;
         _parent.player4.normal = 7;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 7;
         _parent.player4.revspeed = 15;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 2;
         _parent.player4.attackspace = 14;
         _parent.player4.attacklength = 13;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 0.7;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.jigglypuff) and _root.savedata.data.records.jigglypuff[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("jigglypuff","p4pic",0);
         _parent.p4name = "Jigglypuff";
         _parent.player4character = "jigglypuff";
         _parent.player4.maxmove = 15;
         _parent.player4.maxjump = -13;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 12;
         _parent.player4.smash = 4;
         _parent.player4.normal = 5;
         _parent.player4.air = 5;
         _parent.player4.revdamage = 6;
         _parent.player4.revspeed = 30;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 17;
         _parent.player4.attacklength = 16;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.5;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 5;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.lloyd) and _root.savedata.data.records.lloyd[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("lloyd","p4pic",0);
         _parent.p4name = "Lloyd";
         _parent.player4character = "lloyd";
         _parent.player4.maxmove = 19;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 20;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 2;
         _parent.player4.normal = 3;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 7;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 17;
         _parent.player4.attacklength = 28;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.luigi) and _root.savedata.data.records.luigi[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("luigi","p4pic",0);
         _parent.p4name = "Luigi";
         _parent.player4character = "luigi";
         _parent.player4.maxmove = 17;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 2;
         _parent.player4.turnaround = 18;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 6;
         _parent.player4.normal = 4;
         _parent.player4.air = 7;
         _parent.player4.revdamage = 10;
         _parent.player4.revspeed = 25;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 1;
         _parent.player4.attackspace = 14;
         _parent.player4.attacklength = 16;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 0.55;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.mewtwo) and _root.savedata.data.records.mewtwo[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("mewtwo","p4pic",0);
         _parent.p4name = "Mewtwo";
         _parent.player4character = "mewtwo";
         _parent.player4.maxmove = 17;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 18;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 5;
         _parent.player4.normal = 5;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 6;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 16;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.incredible) and _root.savedata.data.records.incredible[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("incredible","p4pic",0);
         _parent.p4name = "Mr. Incred.";
         _parent.player4character = "incredible";
         _parent.player4.maxmove = 17;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 18;
         _parent.player4.recoveryrate = 10;
         _parent.player4.smash = 6;
         _parent.player4.normal = 5;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 10;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 17;
         _parent.player4.attacklength = 24;
         _parent.player4.slow = 0.6;
         _parent.player4.speedup = 0.55;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.naruto) and _root.savedata.data.records.naruto[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("naruto","p4pic",0);
         _parent.p4name = "Naruto";
         _parent.player4character = "naruto";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 3;
         _parent.player4.normal = 4;
         _parent.player4.air = 3;
         _parent.player4.revdamage = 5;
         _parent.player4.revspeed = 15;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 13;
         _parent.player4.attacklength = 12;
         _parent.player4.slow = 0.4;
         _parent.player4.speedup = 0.9;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.shadowa) and _root.savedata.data.records.shadowa[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("shadowa","p4pic",0);
         _parent.p4name = "Shadow";
         _parent.player4character = "shadowa";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 3;
         _parent.player4.normal = 3;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 5;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 20;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.3;
         _parent.player4.speedup = 0.6;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.supersonic) and _root.savedata.data.records.supersonic[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("supersonic","p4pic",0);
         _parent.p4name = "Super Sonic";
         _parent.player4character = "supersonic";
         _parent.player4.maxmove = 22;
         _parent.player4.maxjump = -17;
         _parent.player4.jumpdamage = 3;
         _parent.player4.turnaround = 23;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 5;
         _parent.player4.normal = 6;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 8;
         _parent.player4.revspeed = 28;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 16;
         _parent.player4.attacklength = 20;
         _parent.player4.slow = 0.4;
         _parent.player4.speedup = 0.82;
         _parent.player4.speeddown = 0.95;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.younglink) and _root.savedata.data.records.younglink[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("younglink","p4pic",0);
         _parent.p4name = "Young Link";
         _parent.player4character = "younglink";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -15;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 3;
         _parent.player4.normal = 3;
         _parent.player4.air = 4;
         _parent.player4.revdamage = 3;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 15;
         _parent.player4.attacklength = 15;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.58;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else if(this.center.hitTest(_parent.zero) and _root.savedata.data.records.zero[0] == true)
      {
         _parent.player4.exist = true;
         _parent.p4pic.attachMovie("zero","p4pic",0);
         _parent.p4name = "Zero";
         _parent.player4character = "zero";
         _parent.player4.maxmove = 18;
         _parent.player4.maxjump = -16;
         _parent.player4.jumpdamage = 0;
         _parent.player4.turnaround = 19;
         _parent.player4.recoveryrate = 8;
         _parent.player4.smash = 4;
         _parent.player4.normal = 6;
         _parent.player4.air = 6;
         _parent.player4.revdamage = 7;
         _parent.player4.revspeed = 0;
         _parent.player4.healthdivision = 14;
         _parent.player4.attackboost = 0;
         _parent.player4.attackspace = 16;
         _parent.player4.attacklength = 20;
         _parent.player4.slow = 0.5;
         _parent.player4.speedup = 0.65;
         _parent.player4.speeddown = 1;
         _parent.player4.jumptimes = 2;
         _parent.jumpsound4 = _parent.player4character + "1";
         _parent.anormal4 = _parent.player4character + "2";
         _parent.shoot4 = _parent.player4character + "3";
         _parent.aforward4 = _parent.player4character + "4";
         _parent.turn4 = _parent.player4character + "5";
         _parent.aup4 = _parent.player4character + "6";
         _parent.adown4 = _parent.player4character + "7";
      }
      else
      {
         _parent.player4.exist = false;
         _parent.p4pic.attachMovie("blankpic","p4pic",0);
         _parent.p4name = "";
         _parent.player4character = "";
      }
      if(_parent.player4character !== "")
      {
         thissound = "select_" + _parent.player4character;
         sayName = new Sound();
         sayName.attachSound(thissound);
         sayName.start();
      }
   }
   this._x = _parent.p4x;
   this._y = _parent.p4y;
}
