onClipEvent(enterFrame){
   i = 1;
   while(i <= 4)
   {
      if(this.hitTest(_parent._parent._parent["player" + i]) and i !== _parent._parent.player)
      {
         if(_parent._parent.player !== 1)
         {
            if(_parent._parent.jump > 0)
            {
               _parent._parent.jump = -8;
            }
         }
         else if(_parent._parent._parent.ground.jump > 0)
         {
            _parent._parent._parent.ground.jump = -6;
         }
      }
      i++;
   }
}
