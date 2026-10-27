onClipEvent(enterFrame){
   objectx = this._x;
   this._x = _parent.ground._x + here;
   this._y = _parent.ground._y - here2;
   if(this.hitTest(_parent.player1))
   {
      _parent.startmusic.stop();
      _root.play();
   }
}
