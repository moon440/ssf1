on(release){
   if(!moving)
   {
      ding.start();
      moving = true;
      description = "";
      nextscreen = "";
      gotoAndStop("Training Mode");
      play();
   }
}
