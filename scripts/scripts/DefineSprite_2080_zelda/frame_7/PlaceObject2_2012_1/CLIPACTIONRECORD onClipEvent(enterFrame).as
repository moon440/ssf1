onClipEvent(enterFrame){
   if(wait < 11)
   {
      wait++;
   }
   if(wait > 10 and !done)
   {
      loadNew();
   }
}
