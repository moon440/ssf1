on(release){
   if(!moving)
   {
      savedata.data.records = {};
      savedata.data.records.misc = Array(0,0,0,0,0,0,0,0,0,13,6,0,false,false,false,false);
      savedata.data.records.blade = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.blue = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.captainfalcon = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.cloud = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.crono = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.fox = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.gameandwatch = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.inuyasha = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.jigglypuff = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.kirby = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.knuckles = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.link = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.lloyd = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.luigi = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.mario = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.megaman = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.mewtwo = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.incredible = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.naruto = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.pikachu = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.samus = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.shadowa = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.sonic = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.supersonic = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.tails = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.younglink = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.zelda = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.records.zero = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0);
      savedata.data.special = "";
      savedata.clear();
      music = false;
      bgmusic.stop();
      gotoAndStop("preloader");
      play();
   }
}
