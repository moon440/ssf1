onClipEvent(load){
   if(_parent._parent.player !== 1)
   {
      if(_parent._parent.facing == "left")
      {
         _parent._parent.speed = -25;
      }
      else
      {
         _parent._parent.speed = 25;
      }
   }
   else if(_parent._parent._parent.ground.facing == "left")
   {
      _parent._parent._parent.ground.speed = -25;
   }
   else
   {
      _parent._parent._parent.ground.speed = 25;
   }
}
