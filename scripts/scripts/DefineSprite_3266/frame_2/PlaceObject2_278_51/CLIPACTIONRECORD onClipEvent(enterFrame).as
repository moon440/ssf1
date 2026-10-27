onClipEvent(enterFrame){
   if(this.hitTest(_parent.player1))
   {
      _parent.win = true;
      _parent.playgame = false;
      _parent.play();
   }
   objecty = this._y;
   if(Math.sqrt(Math.pow(this._y - _parent.ground._y,2)) !== here)
   {
      this._y = _parent.ground._y - here;
   }
}
