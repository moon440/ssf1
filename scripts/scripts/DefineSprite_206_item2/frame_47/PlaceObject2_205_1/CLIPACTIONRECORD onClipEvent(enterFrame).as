onClipEvent(enterFrame){
   player = _parent.player;
   i = 1;
   while(i <= 4)
   {
      if(_parent.onground or this.hitTest(_parent._parent["player" + i]) and i !== _parent.player)
      {
         if(!done)
         {
            this.play();
            if(i !== 1)
            {
               _parent._parent["player" + i].speed = 0;
               _parent._parent["player" + i].jump = 0;
            }
            else
            {
               _parent._parent.ground.speed = 0;
               _parent._parent.ground.jump = 0;
            }
            _parent.stop();
            done = true;
         }
      }
      i++;
   }
}
