onClipEvent(enterFrame){
   _parent.timer++;
   if(_parent.timer >= 300)
   {
      _parent.gotoAndStop("finished");
   }
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent._parent["player" + i]))
      {
         flip = new Sound();
         flip.attachSound("flipper");
         flip.start();
      }
      i++;
   }
}
