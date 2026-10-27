on(release){
   if(!moving)
   {
      ding.start();
      moving = true;
      description = "";
      nextscreen = "";
      gotoAndStop("miscrecords");
      play();
   }
}
