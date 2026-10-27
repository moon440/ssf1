onClipEvent(load){
   if(_parent._parent.player !== 1)
   {
      _parent._parent.jump = 15;
   }
   else
   {
      _parent._parent._parent.ground.jump = 15;
   }
}
