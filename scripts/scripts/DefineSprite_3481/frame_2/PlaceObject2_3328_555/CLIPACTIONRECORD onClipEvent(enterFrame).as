onClipEvent(enterFrame){
   objectx = this._x;
   if(this._x < _parent.ground._x)
   {
      this._x = _parent.ground._x - here;
   }
   else if(this._x > _parent.ground._x)
   {
      this._x = _parent.ground._x + here;
   }
   this._y = _parent.ground._y - here2;
   if(this.hitTest(_parent.player1.player1.feet) and _parent.ground.onground)
   {
      _parent.win = true;
      _parent.playgame = false;
      _parent.play();
   }
}
