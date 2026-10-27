on(release){
   if(!moving)
   {
      ding.start();
      moving = true;
      description = "";
      nextscreen = "";
      special = savedata.data.special;
      nextlabel = "special";
      play();
   }
}
