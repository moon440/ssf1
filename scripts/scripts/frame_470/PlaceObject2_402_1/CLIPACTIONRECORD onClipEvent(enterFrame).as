onClipEvent(enterFrame){
   if(Key.isDown(32))
   {
      space = true;
   }
   else
   {
      space = false;
   }
   if(ff and !_parent.ended and !space)
   {
      _parent.gotoAndPlay(_parent._currentframe + 8);
      _parent.thing.gotoAndPlay(_parent.thing._currentframe + 8);
   }
   else if(space and !_parent.ended)
   {
      _parent.stop();
      _parent.thing.stop();
   }
   else if(!_parent.ended)
   {
      _parent.play();
      _parent.thing.play();
   }
   if(_parent.ended)
   {
      _parent.play();
   }
}
