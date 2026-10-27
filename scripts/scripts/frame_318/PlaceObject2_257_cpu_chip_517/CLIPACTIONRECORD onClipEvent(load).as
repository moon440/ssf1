onClipEvent(load){
   function detect()
   {
      _parent.p3x = this._x;
      _parent.p3y = this._y;
      if(this.center.hitTest(_parent.blade))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("blade","p3pic",0);
         _parent.p3name = "Blade";
         _parent.player3character = "blade";
         _parent.player3.maxmove = 20;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 2;
         _parent.player3.turnaround = 21;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 7;
         _parent.player3.normal = 4;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 8;
         _parent.player3.revspeed = 20;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 2;
         _parent.player3.attackspace = 12;
         _parent.player3.attacklength = 4;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.7;
         _parent.player3.speeddown = 0.9;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.samus))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("samus","p3pic",0);
         _parent.p3name = "Samus";
         _parent.player3character = "samus";
         _parent.player3.maxmove = 15;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 4;
         _parent.player3.turnaround = 20;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 7;
         _parent.player3.normal = 4;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 8;
         _parent.player3.revspeed = 20;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 36;
         _parent.player3.attacklength = 12;
         _parent.player3.slow = 0.2;
         _parent.player3.speedup = 0.5;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.mario))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("mario","p3pic",0);
         _parent.p3name = "Mario";
         _parent.player3character = "mario";
         _parent.player3.maxmove = 17;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 2;
         _parent.player3.turnaround = 18;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 6;
         _parent.player3.normal = 4;
         _parent.player3.air = 7;
         _parent.player3.revdamage = 9;
         _parent.player3.revspeed = 18;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 1;
         _parent.player3.attackspace = 13;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 0.55;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.link))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("linktwo","p3pic",0);
         _parent.p3name = "Link";
         _parent.player3character = "link";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 3;
         _parent.player3.normal = 3;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 5;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 20;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.captainfalcon))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("captainfalcon","p3pic",0);
         _parent.p3name = "C. Falcon";
         _parent.player3character = "captainfalcon";
         _parent.player3.maxmove = 20;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 21;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 6;
         _parent.player3.normal = 3;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 7;
         _parent.player3.revspeed = 20;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 14;
         _parent.player3.attacklength = 25;
         _parent.player3.slow = 0.7;
         _parent.player3.speedup = 0.8;
         _parent.player3.speeddown = 0.9;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.fox))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("fox","p3pic",0);
         _parent.p3name = "Fox";
         _parent.player3character = "fox";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 16;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 1;
         _parent.player3.air = 5;
         _parent.player3.revdamage = 5;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 15;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.kirby))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("kirby","p3pic",0);
         _parent.p3name = "Kirby";
         _parent.player3character = "kirby";
         _parent.player3.maxmove = 17;
         _parent.player3.maxjump = -14;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 18;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 5;
         _parent.player3.normal = 3;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 6;
         _parent.player3.revspeed = 15;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 14;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.5;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 5;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.knuckles))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("knuckles","p3pic",0);
         _parent.p3name = "Knuckles";
         _parent.player3character = "knuckles";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 2;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 2;
         _parent.player3.normal = 4;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 10;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 1;
         _parent.player3.attackspace = 16;
         _parent.player3.attacklength = 16;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 0.9;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.megaman))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("megaman","p3pic",0);
         _parent.p3name = "Megaman";
         _parent.player3character = "megaman";
         _parent.player3.maxmove = 15;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 20;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 2;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 6;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = -1;
         _parent.player3.attackspace = 20;
         _parent.player3.attacklength = 12;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 1;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.pikachu))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("pikachu","p3pic",0);
         _parent.p3name = "Pikachu";
         _parent.player3character = "pikachu";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 6;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 9;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 20;
         _parent.player3.attacklength = 18;
         _parent.player3.slow = 0.6;
         _parent.player3.speedup = 0.65;
         _parent.player3.speeddown = 0.9;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.zelda))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("zelda","p3pic",0);
         _parent.p3name = "Zelda";
         _parent.player3character = "zelda";
         _parent.player3.maxmove = 16;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 17;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 5;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 5;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 16;
         _parent.player3.attacklength = 23;
         _parent.player3.slow = 0.4;
         _parent.player3.speedup = 0.5;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.sonic))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("sonic","p3pic",0);
         _parent.p3name = "Sonic";
         _parent.player3character = "sonic";
         _parent.player3.maxmove = 21;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 2;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 5;
         _parent.player3.air = 5;
         _parent.player3.revdamage = 8;
         _parent.player3.revspeed = 30;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 1;
         _parent.player3.attackspace = 14;
         _parent.player3.attacklength = 13;
         _parent.player3.slow = 0.4;
         _parent.player3.speedup = 0.8;
         _parent.player3.speeddown = 0.95;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.tails))
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("tails","p3pic",0);
         _parent.p3name = "Tails";
         _parent.player3character = "tails";
         _parent.player3.maxmove = 17;
         _parent.player3.maxjump = -14;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 18;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 3;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 6;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 20;
         _parent.player3.attacklength = 19;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 5;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.blue) and _root.savedata.data.records.blue[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("blue","p3pic",0);
         _parent.p3name = "Blue";
         _parent.player3character = "blue";
         _parent.player3.maxmove = 19;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 3;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 7;
         _parent.player3.normal = 5;
         _parent.player3.air = 7;
         _parent.player3.revdamage = 9;
         _parent.player3.revspeed = 20;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 2;
         _parent.player3.attackspace = 13;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.7;
         _parent.player3.speeddown = 0.9;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.cloud) and _root.savedata.data.records.cloud[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("cloud","p3pic",0);
         _parent.p3name = "Cloud";
         _parent.player3character = "cloud";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 5;
         _parent.player3.normal = 6;
         _parent.player3.air = 5;
         _parent.player3.revdamage = 8;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 1;
         _parent.player3.attackspace = 17;
         _parent.player3.attacklength = 16;
         _parent.player3.slow = 0.4;
         _parent.player3.speedup = 0.65;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.crono) and _root.savedata.data.records.crono[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("crono","p3pic",0);
         _parent.p3name = "Crono";
         _parent.player3character = "crono";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 5;
         _parent.player3.normal = 4;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 6;
         _parent.player3.revspeed = 24;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 2;
         _parent.player3.attackspace = 18;
         _parent.player3.attacklength = 17;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 0.65;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.gameandwatch) and _root.savedata.data.records.gameandwatch[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("gameandwatch","p3pic",0);
         _parent.p3name = "Mr. G & W";
         _parent.player3character = "gameandwatch";
         _parent.player3.maxmove = 14;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 15;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 5;
         _parent.player3.normal = 3;
         _parent.player3.air = 5;
         _parent.player3.revdamage = 5;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 15;
         _parent.player3.attacklength = 12;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.inuyasha) and _root.savedata.data.records.inuyasha[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("inuyasha","p3pic",0);
         _parent.p3name = "Inuyasha";
         _parent.player3character = "inuyasha";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 6;
         _parent.player3.normal = 7;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 7;
         _parent.player3.revspeed = 15;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 2;
         _parent.player3.attackspace = 14;
         _parent.player3.attacklength = 13;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 0.7;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.jigglypuff) and _root.savedata.data.records.jigglypuff[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("jigglypuff","p3pic",0);
         _parent.p3name = "Jigglypuff";
         _parent.player3character = "jigglypuff";
         _parent.player3.maxmove = 15;
         _parent.player3.maxjump = -13;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 12;
         _parent.player3.smash = 4;
         _parent.player3.normal = 5;
         _parent.player3.air = 5;
         _parent.player3.revdamage = 6;
         _parent.player3.revspeed = 30;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 17;
         _parent.player3.attacklength = 16;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.5;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 5;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.lloyd) and _root.savedata.data.records.lloyd[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("lloyd","p3pic",0);
         _parent.p3name = "Lloyd";
         _parent.player3character = "lloyd";
         _parent.player3.maxmove = 19;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 20;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 2;
         _parent.player3.normal = 3;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 7;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 17;
         _parent.player3.attacklength = 28;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.luigi) and _root.savedata.data.records.luigi[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("luigi","p3pic",0);
         _parent.p3name = "Luigi";
         _parent.player3character = "luigi";
         _parent.player3.maxmove = 17;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 2;
         _parent.player3.turnaround = 18;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 6;
         _parent.player3.normal = 4;
         _parent.player3.air = 7;
         _parent.player3.revdamage = 10;
         _parent.player3.revspeed = 25;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 1;
         _parent.player3.attackspace = 14;
         _parent.player3.attacklength = 16;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 0.55;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.mewtwo) and _root.savedata.data.records.mewtwo[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("mewtwo","p3pic",0);
         _parent.p3name = "Mewtwo";
         _parent.player3character = "mewtwo";
         _parent.player3.maxmove = 17;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 18;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 5;
         _parent.player3.normal = 5;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 6;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 16;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.incredible) and _root.savedata.data.records.incredible[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("incredible","p3pic",0);
         _parent.p3name = "Mr. Incred.";
         _parent.player3character = "incredible";
         _parent.player3.maxmove = 17;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 18;
         _parent.player3.recoveryrate = 10;
         _parent.player3.smash = 6;
         _parent.player3.normal = 5;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 10;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 17;
         _parent.player3.attacklength = 24;
         _parent.player3.slow = 0.6;
         _parent.player3.speedup = 0.55;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.naruto) and _root.savedata.data.records.naruto[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("naruto","p3pic",0);
         _parent.p3name = "Naruto";
         _parent.player3character = "naruto";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 3;
         _parent.player3.normal = 4;
         _parent.player3.air = 3;
         _parent.player3.revdamage = 5;
         _parent.player3.revspeed = 15;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 13;
         _parent.player3.attacklength = 12;
         _parent.player3.slow = 0.4;
         _parent.player3.speedup = 0.9;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.shadowa) and _root.savedata.data.records.shadowa[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("shadowa","p3pic",0);
         _parent.p3name = "Shadow";
         _parent.player3character = "shadowa";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 3;
         _parent.player3.normal = 3;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 5;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 20;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.3;
         _parent.player3.speedup = 0.6;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.supersonic) and _root.savedata.data.records.supersonic[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("supersonic","p3pic",0);
         _parent.p3name = "Super Sonic";
         _parent.player3character = "supersonic";
         _parent.player3.maxmove = 22;
         _parent.player3.maxjump = -17;
         _parent.player3.jumpdamage = 3;
         _parent.player3.turnaround = 23;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 5;
         _parent.player3.normal = 6;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 8;
         _parent.player3.revspeed = 28;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 16;
         _parent.player3.attacklength = 20;
         _parent.player3.slow = 0.4;
         _parent.player3.speedup = 0.82;
         _parent.player3.speeddown = 0.95;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.younglink) and _root.savedata.data.records.younglink[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("younglink","p3pic",0);
         _parent.p3name = "Young Link";
         _parent.player3character = "younglink";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -15;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 3;
         _parent.player3.normal = 3;
         _parent.player3.air = 4;
         _parent.player3.revdamage = 3;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 15;
         _parent.player3.attacklength = 15;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.58;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else if(this.center.hitTest(_parent.zero) and _root.savedata.data.records.zero[0] == true)
      {
         _parent.player3.exist = true;
         _parent.p3pic.attachMovie("zero","p3pic",0);
         _parent.p3name = "Zero";
         _parent.player3character = "zero";
         _parent.player3.maxmove = 18;
         _parent.player3.maxjump = -16;
         _parent.player3.jumpdamage = 0;
         _parent.player3.turnaround = 19;
         _parent.player3.recoveryrate = 8;
         _parent.player3.smash = 4;
         _parent.player3.normal = 6;
         _parent.player3.air = 6;
         _parent.player3.revdamage = 7;
         _parent.player3.revspeed = 0;
         _parent.player3.healthdivision = 14;
         _parent.player3.attackboost = 0;
         _parent.player3.attackspace = 16;
         _parent.player3.attacklength = 20;
         _parent.player3.slow = 0.5;
         _parent.player3.speedup = 0.65;
         _parent.player3.speeddown = 1;
         _parent.player3.jumptimes = 2;
         _parent.jumpsound3 = _parent.player3character + "1";
         _parent.anormal3 = _parent.player3character + "2";
         _parent.shoot3 = _parent.player3character + "3";
         _parent.aforward3 = _parent.player3character + "4";
         _parent.turn3 = _parent.player3character + "5";
         _parent.aup3 = _parent.player3character + "6";
         _parent.adown3 = _parent.player3character + "7";
      }
      else
      {
         _parent.player3.exist = false;
         _parent.p3pic.attachMovie("blankpic","p3pic",0);
         _parent.p3name = "";
         _parent.player3character = "";
      }
      if(_parent.player3character !== "")
      {
         thissound = "select_" + _parent.player3character;
         sayName = new Sound();
         sayName.attachSound(thissound);
         sayName.start();
      }
   }
   this._x = _parent.p3x;
   this._y = _parent.p3y;
}
