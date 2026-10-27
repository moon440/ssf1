onClipEvent(enterFrame){
   objectx = this._x;
   this._x = _parent.ground._x - here;
   this._y = _parent.ground._y - here2;
}
