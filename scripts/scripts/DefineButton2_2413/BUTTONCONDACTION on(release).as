on(release){
   if(!moving)
   {
      ding.start();
      moving = true;
      description = "";
      nextscreen = "";
      _root.music = false;
      _root.bgmusic.stop();
      gotoAndStop("howtoplay");
      play();
   }
}
