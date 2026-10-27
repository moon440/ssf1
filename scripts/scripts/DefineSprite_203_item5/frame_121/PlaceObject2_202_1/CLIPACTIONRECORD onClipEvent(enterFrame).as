onClipEvent(enterFrame){
   player = _parent.player;
   i = 1;
   while(i <= 4)
   {
      if(_parent.bombset and this.hitTest(_parent._parent["player" + i]))
      {
         if(!done)
         {
            if(i == player)
            {
               _parent.player = 0;
            }
            this.gotoAndPlay("explode");
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
            done = true;
         }
      }
      i++;
   }
}
