onClipEvent(enterFrame){
   if(_parent.player1._x < this._x + this._width)
   {
      _parent.ground.speed = 5;
   }
}
