onClipEvent(load){
   function detect()
   {
      _parent.p1x = this._x;
      _parent.p1y = this._y;
      if(this.center.hitTest(_parent.blade))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("blade","p1pic",0);
         _parent.p1name = "Blade";
         _parent.player1character = "blade";
         _parent.player1.maxmove = 20;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 2;
         _parent.player1.turnaround = 21;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 7;
         _parent.player1.normal = 4;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 8;
         _parent.player1.revspeed = 20;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 2;
         _parent.player1.attackspace = 12;
         _parent.player1.attacklength = 4;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.7;
         _parent.player1.speeddown = 0.9;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.blade[5];
      }
      else if(this.center.hitTest(_parent.samus))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("samus","p1pic",0);
         _parent.p1name = "Samus";
         _parent.player1character = "samus";
         _parent.player1.maxmove = 15;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 4;
         _parent.player1.turnaround = 20;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 7;
         _parent.player1.normal = 4;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 8;
         _parent.player1.revspeed = 20;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 36;
         _parent.player1.attacklength = 12;
         _parent.player1.slow = 0.2;
         _parent.player1.speedup = 0.5;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.samus[5];
      }
      else if(this.center.hitTest(_parent.mario))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("mario","p1pic",0);
         _parent.p1name = "Mario";
         _parent.player1character = "mario";
         _parent.player1.maxmove = 17;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 2;
         _parent.player1.turnaround = 18;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 6;
         _parent.player1.normal = 4;
         _parent.player1.air = 7;
         _parent.player1.revdamage = 9;
         _parent.player1.revspeed = 18;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 1;
         _parent.player1.attackspace = 13;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 0.55;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.mario[5];
      }
      else if(this.center.hitTest(_parent.link))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("linktwo","p1pic",0);
         _parent.p1name = "Link";
         _parent.player1character = "link";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 3;
         _parent.player1.normal = 3;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 5;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 20;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.link[5];
      }
      else if(this.center.hitTest(_parent.captainfalcon))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("captainfalcon","p1pic",0);
         _parent.p1name = "C. Falcon";
         _parent.player1character = "captainfalcon";
         _parent.player1.maxmove = 20;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 21;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 6;
         _parent.player1.normal = 3;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 7;
         _parent.player1.revspeed = 20;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 14;
         _parent.player1.attacklength = 25;
         _parent.player1.slow = 0.7;
         _parent.player1.speedup = 0.8;
         _parent.player1.speeddown = 0.9;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.captainfalcon[5];
      }
      else if(this.center.hitTest(_parent.fox))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("fox","p1pic",0);
         _parent.p1name = "Fox";
         _parent.player1character = "fox";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 16;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 1;
         _parent.player1.air = 5;
         _parent.player1.revdamage = 5;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 15;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.fox[5];
      }
      else if(this.center.hitTest(_parent.kirby))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("kirby","p1pic",0);
         _parent.p1name = "Kirby";
         _parent.player1character = "kirby";
         _parent.player1.maxmove = 17;
         _parent.player1.maxjump = -14;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 18;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 5;
         _parent.player1.normal = 3;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 6;
         _parent.player1.revspeed = 15;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 14;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.5;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 5;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.kirby[5];
      }
      else if(this.center.hitTest(_parent.knuckles))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("knuckles","p1pic",0);
         _parent.p1name = "Knuckles";
         _parent.player1character = "knuckles";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 2;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 2;
         _parent.player1.normal = 4;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 10;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 1;
         _parent.player1.attackspace = 16;
         _parent.player1.attacklength = 16;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 0.9;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.knuckles[5];
      }
      else if(this.center.hitTest(_parent.megaman))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("megaman","p1pic",0);
         _parent.p1name = "Megaman";
         _parent.player1character = "megaman";
         _parent.player1.maxmove = 15;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 20;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 2;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 6;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = -1;
         _parent.player1.attackspace = 20;
         _parent.player1.attacklength = 12;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 1;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.megaman[5];
      }
      else if(this.center.hitTest(_parent.pikachu))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("pikachu","p1pic",0);
         _parent.p1name = "Pikachu";
         _parent.player1character = "pikachu";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 6;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 9;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 20;
         _parent.player1.attacklength = 18;
         _parent.player1.slow = 0.6;
         _parent.player1.speedup = 0.65;
         _parent.player1.speeddown = 0.9;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.pikachu[5];
      }
      else if(this.center.hitTest(_parent.zelda))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("zelda","p1pic",0);
         _parent.p1name = "Zelda";
         _parent.player1character = "zelda";
         _parent.player1.maxmove = 16;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 17;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 5;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 5;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 16;
         _parent.player1.attacklength = 23;
         _parent.player1.slow = 0.4;
         _parent.player1.speedup = 0.5;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.zelda[5];
      }
      else if(this.center.hitTest(_parent.sonic))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("sonic","p1pic",0);
         _parent.p1name = "Sonic";
         _parent.player1character = "sonic";
         _parent.player1.maxmove = 21;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 2;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 5;
         _parent.player1.air = 5;
         _parent.player1.revdamage = 8;
         _parent.player1.revspeed = 30;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 1;
         _parent.player1.attackspace = 14;
         _parent.player1.attacklength = 13;
         _parent.player1.slow = 0.4;
         _parent.player1.speedup = 0.8;
         _parent.player1.speeddown = 0.95;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.sonic[5];
      }
      else if(this.center.hitTest(_parent.tails))
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("tails","p1pic",0);
         _parent.p1name = "Tails";
         _parent.player1character = "tails";
         _parent.player1.maxmove = 17;
         _parent.player1.maxjump = -14;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 18;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 3;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 6;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 20;
         _parent.player1.attacklength = 19;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 5;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.tails[5];
      }
      else if(this.center.hitTest(_parent.blue) and _root.savedata.data.records.blue[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("blue","p1pic",0);
         _parent.p1name = "Blue";
         _parent.player1character = "blue";
         _parent.player1.maxmove = 19;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 3;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 7;
         _parent.player1.normal = 5;
         _parent.player1.air = 7;
         _parent.player1.revdamage = 9;
         _parent.player1.revspeed = 20;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 2;
         _parent.player1.attackspace = 13;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.7;
         _parent.player1.speeddown = 0.9;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.blue[5];
      }
      else if(this.center.hitTest(_parent.cloud) and _root.savedata.data.records.cloud[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("cloud","p1pic",0);
         _parent.p1name = "Cloud";
         _parent.player1character = "cloud";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 5;
         _parent.player1.normal = 6;
         _parent.player1.air = 5;
         _parent.player1.revdamage = 8;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 1;
         _parent.player1.attackspace = 17;
         _parent.player1.attacklength = 16;
         _parent.player1.slow = 0.4;
         _parent.player1.speedup = 0.65;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.cloud[5];
      }
      else if(this.center.hitTest(_parent.crono) and _root.savedata.data.records.crono[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("crono","p1pic",0);
         _parent.p1name = "Crono";
         _parent.player1character = "crono";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 5;
         _parent.player1.normal = 4;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 6;
         _parent.player1.revspeed = 24;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 2;
         _parent.player1.attackspace = 18;
         _parent.player1.attacklength = 17;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 0.65;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.crono[5];
      }
      else if(this.center.hitTest(_parent.gameandwatch) and _root.savedata.data.records.gameandwatch[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("gameandwatch","p1pic",0);
         _parent.p1name = "Mr. G & W";
         _parent.player1character = "gameandwatch";
         _parent.player1.maxmove = 14;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 15;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 5;
         _parent.player1.normal = 3;
         _parent.player1.air = 5;
         _parent.player1.revdamage = 5;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 15;
         _parent.player1.attacklength = 12;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.gameandwatch[5];
      }
      else if(this.center.hitTest(_parent.inuyasha) and _root.savedata.data.records.inuyasha[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("inuyasha","p1pic",0);
         _parent.p1name = "Inuyasha";
         _parent.player1character = "inuyasha";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 6;
         _parent.player1.normal = 7;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 7;
         _parent.player1.revspeed = 15;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 2;
         _parent.player1.attackspace = 14;
         _parent.player1.attacklength = 13;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 0.7;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.inuyasha[5];
      }
      else if(this.center.hitTest(_parent.jigglypuff) and _root.savedata.data.records.jigglypuff[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("jigglypuff","p1pic",0);
         _parent.p1name = "Jigglypuff";
         _parent.player1character = "jigglypuff";
         _parent.player1.maxmove = 15;
         _parent.player1.maxjump = -13;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 12;
         _parent.player1.smash = 4;
         _parent.player1.normal = 5;
         _parent.player1.air = 5;
         _parent.player1.revdamage = 6;
         _parent.player1.revspeed = 30;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 17;
         _parent.player1.attacklength = 16;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.5;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 5;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.jigglypuff[5];
      }
      else if(this.center.hitTest(_parent.lloyd) and _root.savedata.data.records.lloyd[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("lloyd","p1pic",0);
         _parent.p1name = "Lloyd";
         _parent.player1character = "lloyd";
         _parent.player1.maxmove = 19;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 20;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 2;
         _parent.player1.normal = 3;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 7;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 17;
         _parent.player1.attacklength = 28;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.lloyd[5];
      }
      else if(this.center.hitTest(_parent.luigi) and _root.savedata.data.records.luigi[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("luigi","p1pic",0);
         _parent.p1name = "Luigi";
         _parent.player1character = "luigi";
         _parent.player1.maxmove = 17;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 2;
         _parent.player1.turnaround = 18;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 6;
         _parent.player1.normal = 4;
         _parent.player1.air = 7;
         _parent.player1.revdamage = 10;
         _parent.player1.revspeed = 25;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 1;
         _parent.player1.attackspace = 14;
         _parent.player1.attacklength = 16;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 0.55;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.luigi[5];
      }
      else if(this.center.hitTest(_parent.mewtwo) and _root.savedata.data.records.mewtwo[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("mewtwo","p1pic",0);
         _parent.p1name = "Mewtwo";
         _parent.player1character = "mewtwo";
         _parent.player1.maxmove = 17;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 18;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 5;
         _parent.player1.normal = 5;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 6;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 16;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.mewtwo[5];
      }
      else if(this.center.hitTest(_parent.incredible) and _root.savedata.data.records.incredible[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("incredible","p1pic",0);
         _parent.p1name = "Mr. Incred.";
         _parent.player1character = "incredible";
         _parent.player1.maxmove = 17;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 18;
         _parent.player1.recoveryrate = 10;
         _parent.player1.smash = 6;
         _parent.player1.normal = 5;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 10;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 17;
         _parent.player1.attacklength = 24;
         _parent.player1.slow = 0.6;
         _parent.player1.speedup = 0.55;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.incredible[5];
      }
      else if(this.center.hitTest(_parent.naruto) and _root.savedata.data.records.naruto[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("naruto","p1pic",0);
         _parent.p1name = "Naruto";
         _parent.player1character = "naruto";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 3;
         _parent.player1.normal = 4;
         _parent.player1.air = 3;
         _parent.player1.revdamage = 5;
         _parent.player1.revspeed = 15;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 13;
         _parent.player1.attacklength = 12;
         _parent.player1.slow = 0.4;
         _parent.player1.speedup = 0.9;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.naruto[5];
      }
      else if(this.center.hitTest(_parent.shadowa) and _root.savedata.data.records.shadowa[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("shadowa","p1pic",0);
         _parent.p1name = "Shadow";
         _parent.player1character = "shadowa";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 3;
         _parent.player1.normal = 3;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 5;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 20;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.3;
         _parent.player1.speedup = 0.6;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.shadowa[5];
      }
      else if(this.center.hitTest(_parent.supersonic) and _root.savedata.data.records.supersonic[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("supersonic","p1pic",0);
         _parent.p1name = "Super Sonic";
         _parent.player1character = "supersonic";
         _parent.player1.maxmove = 22;
         _parent.player1.maxjump = -17;
         _parent.player1.jumpdamage = 3;
         _parent.player1.turnaround = 23;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 5;
         _parent.player1.normal = 6;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 8;
         _parent.player1.revspeed = 28;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 16;
         _parent.player1.attacklength = 20;
         _parent.player1.slow = 0.4;
         _parent.player1.speedup = 0.82;
         _parent.player1.speeddown = 0.95;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.supersonic[5];
      }
      else if(this.center.hitTest(_parent.younglink) and _root.savedata.data.records.younglink[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("younglink","p1pic",0);
         _parent.p1name = "Young Link";
         _parent.player1character = "younglink";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -15;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 3;
         _parent.player1.normal = 3;
         _parent.player1.air = 4;
         _parent.player1.revdamage = 3;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 15;
         _parent.player1.attacklength = 15;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.58;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.younglink[5];
      }
      else if(this.center.hitTest(_parent.zero) and _root.savedata.data.records.zero[0] == true)
      {
         _parent.player1.exist = true;
         _parent.p1pic.attachMovie("zero","p1pic",0);
         _parent.p1name = "Zero";
         _parent.player1character = "zero";
         _parent.player1.maxmove = 18;
         _parent.player1.maxjump = -16;
         _parent.player1.jumpdamage = 0;
         _parent.player1.turnaround = 19;
         _parent.player1.recoveryrate = 8;
         _parent.player1.smash = 4;
         _parent.player1.normal = 6;
         _parent.player1.air = 6;
         _parent.player1.revdamage = 7;
         _parent.player1.revspeed = 0;
         _parent.player1.healthdivision = 18;
         _parent.player1.attackboost = 0;
         _parent.player1.attackspace = 16;
         _parent.player1.attacklength = 20;
         _parent.player1.slow = 0.5;
         _parent.player1.speedup = 0.65;
         _parent.player1.speeddown = 1;
         _parent.player1.jumptimes = 2;
         _parent.jumpsound1 = _parent.player1character + "1";
         _parent.anormal1 = _parent.player1character + "2";
         _parent.shoot1 = _parent.player1character + "3";
         _parent.aforward1 = _parent.player1character + "4";
         _parent.turn1 = _parent.player1character + "5";
         _parent.aup1 = _parent.player1character + "6";
         _parent.adown1 = _parent.player1character + "7";
         _parent.score = _root.savedata.data.records.zero[5];
      }
      else
      {
         _parent.player1.exist = false;
         _parent.p1pic.attachMovie("blankpic","p1pic",0);
         _parent.p1name = "";
         _parent.player1character = "";
         _parent.score = null;
      }
      if(_parent.player1character !== "")
      {
         thissound = "select_" + _parent.player1character;
         sayName = new Sound();
         sayName.attachSound(thissound);
         sayName.start();
      }
   }
   this._x = _parent.p1x;
   this._y = _parent.p1y;
}
