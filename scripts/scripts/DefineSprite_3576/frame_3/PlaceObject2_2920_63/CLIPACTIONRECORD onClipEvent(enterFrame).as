onClipEvent(enterFrame){
   if(!done)
   {
      _parent.stop();
   }
   else
   {
      if(_parent.nocontest == true)
      {
         _parent.winner = "No Contest";
      }
      _parent.gotoAndStop("done");
   }
}
