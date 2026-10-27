onClipEvent(load){
   _parent._parent._alpha = 80;
   if(_parent._parent.player > 1)
   {
      _parent._parent.fading = true;
   }
   else
   {
      _parent._parent._parent.ground.fading = true;
   }
}
