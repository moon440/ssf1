on(release){
   if(!moving)
   {
      back.start();
      moving = true;
      description = "";
      nextscreen = "";
      _root.gotoAndStop("meleerecords");
   }
}
