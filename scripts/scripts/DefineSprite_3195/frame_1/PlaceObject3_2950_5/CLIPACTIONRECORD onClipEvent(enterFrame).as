onClipEvent(enterFrame){
   if(_parent.player1._x > this._x)
   {
      _parent.ground.speed = -5;
   }
}
