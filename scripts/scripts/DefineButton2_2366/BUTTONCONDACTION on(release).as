on(release){
   if(!moving)
   {
      ding.start();
      moving = true;
      description = "";
      nextscreen = "";
      _root.gotoAndPlay("VS Mode");
   }
}
