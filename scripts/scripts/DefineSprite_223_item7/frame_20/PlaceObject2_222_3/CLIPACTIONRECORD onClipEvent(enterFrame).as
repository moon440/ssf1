onClipEvent(enterFrame){
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent._parent["player" + i]) and _parent._parent["player" + i] !== _parent.player)
      {
         bat = new Sound();
         bat.attachSound("bathit");
         bat.start();
         if(_parent._parent["player" + i] !== 1)
         {
            _parent._parent["player" + i].speed *= 25;
            _parent._parent["player" + i].speed *= 25;
         }
         else
         {
            _parent._parent.ground.speed *= 25;
         }
      }
      i++;
   }
}
