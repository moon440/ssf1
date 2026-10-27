onClipEvent(load){
   function addPlayer()
   {
      if(iii == 1)
      {
         this["player" + ii + "character"] = "blade";
      }
      else if(iii == 2)
      {
         this["player" + ii + "character"] = "samus";
      }
      else if(iii == 3)
      {
         this["player" + ii + "character"] = "mario";
      }
      else if(iii == 4)
      {
         this["player" + ii + "character"] = "link";
      }
      else if(iii == 5)
      {
         this["player" + ii + "character"] = "captainfalcon";
      }
      else if(iii == 6)
      {
         this["player" + ii + "character"] = "fox";
      }
      else if(iii == 7)
      {
         this["player" + ii + "character"] = "kirby";
      }
      else if(iii == 8)
      {
         this["player" + ii + "character"] = "knuckles";
      }
      else if(iii == 9)
      {
         this["player" + ii + "character"] = "megaman";
      }
      else if(iii == 10)
      {
         this["player" + ii + "character"] = "pikachu";
      }
      else if(iii == 11)
      {
         this["player" + ii + "character"] = "zelda";
      }
      else if(iii == 12)
      {
         this["player" + ii + "character"] = "sonic";
      }
      else if(iii == 13)
      {
         this["player" + ii + "character"] = "tails";
      }
      else if(iii == 14 and _root.savedata.data.records.blue[0] == true)
      {
         this["player" + ii + "character"] = "blue";
      }
      else if(iii == 15 and _root.savedata.data.records.cloud[0] == true)
      {
         this["player" + ii + "character"] = "cloud";
      }
      else if(iii == 16 and _root.savedata.data.records.crono[0] == true)
      {
         this["player" + ii + "character"] = "crono";
      }
      else if(iii == 17 and _root.savedata.data.records.gameandwatch[0] == true)
      {
         this["player" + ii + "character"] = "gameandwatch";
      }
      else if(iii == 18 and _root.savedata.data.records.inuyasha[0] == true)
      {
         this["player" + ii + "character"] = "inuyasha";
      }
      else if(iii == 19 and _root.savedata.data.records.jigglypuff[0] == true)
      {
         this["player" + ii + "character"] = "jigglypuff";
      }
      else if(iii == 20 and _root.savedata.data.records.lloyd[0] == true)
      {
         this["player" + ii + "character"] = "lloyd";
      }
      else if(iii == 21 and _root.savedata.data.records.luigi[0] == true)
      {
         this["player" + ii + "character"] = "luigi";
      }
      else if(iii == 22 and _root.savedata.data.records.mewtwo[0] == true)
      {
         this["player" + ii + "character"] = "mewtwo";
      }
      else if(iii == 23 and _root.savedata.data.records.incredible[0] == true)
      {
         this["player" + ii + "character"] = "incredible";
      }
      else if(iii == 24 and _root.savedata.data.records.naruto[0] == true)
      {
         this["player" + ii + "character"] = "naruto";
      }
      else if(iii == 25 and _root.savedata.data.records.shadowa[0] == true)
      {
         this["player" + ii + "character"] = "shadowa";
      }
      else if(iii == 26 and _root.savedata.data.records.supersonic[0] == true)
      {
         this["player" + ii + "character"] = "supersonic";
      }
      else if(iii == 27 and _root.savedata.data.records.younglink[0] == true)
      {
         this["player" + ii + "character"] = "younglink";
      }
      else if(iii == 28 and _root.savedata.data.records.zero[0] == true)
      {
         this["player" + ii + "character"] = "zero";
      }
      else
      {
         iii -= 14;
         if(iii < 1)
         {
            iii++;
         }
         addPlayer();
      }
      jumpsound = this["player" + ii + "character"] + "1";
      anormal = this["player" + ii + "character"] + "2";
      shoot = this["player" + ii + "character"] + "3";
      aforward = this["player" + ii + "character"] + "4";
      turn = this["player" + ii + "character"] + "5";
      aup = this["player" + ii + "character"] + "6";
      adown = this["player" + ii + "character"] + "7";
      _parent["player" + ii + "sound"].jumpsound = new Sound();
      _parent["player" + ii + "sound"].jumpsound.attachSound(jumpsound);
      _parent["player" + ii + "sound"].anormal = new Sound();
      _parent["player" + ii + "sound"].anormal.attachSound(anormal);
      _parent["player" + ii + "sound"].shoot = new Sound();
      _parent["player" + ii + "sound"].shoot.attachSound(shoot);
      _parent["player" + ii + "sound"].turn = new Sound();
      _parent["player" + ii + "sound"].turn.attachSound(turn);
      _parent["player" + ii + "sound"].aforward = new Sound();
      _parent["player" + ii + "sound"].aforward.attachSound(aforward);
      _parent["player" + ii + "sound"].aup = new Sound();
      _parent["player" + ii + "sound"].aup.attachSound(aup);
      _parent["player" + ii + "sound"].adown = new Sound();
      _parent["player" + ii + "sound"].adown.attachSound(adown);
      _parent["player" + ii].attachMovie(this["player" + ii + "character"],"player" + ii,10);
      _parent["player" + ii]["player" + ii + "character"] = this["player" + ii + "character"];
      _root["p" + ii + "lives"] = 1;
      _parent["p" + ii + "health"].lifehead.attachMovie(this["player" + ii + "character"] + "life","lifehead",10);
      _parent["player" + ii].dead = false;
   }
   this._visible = false;
}
