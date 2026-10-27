onClipEvent(load){
   if(_parent._parent.player !== 1)
   {
      if(_parent._parent.facing == "left")
      {
         _parent._parent.speed = -20;
      }
      else
      {
         _parent._parent.speed = 20;
      }
   }
   else if(_parent._parent._parent.ground.facing == "left")
   {
      _parent._parent._parent.ground.speed = -20;
   }
   else
   {
      _parent._parent._parent.ground.speed = 20;
   }
}
