onClipEvent(enterFrame){
   objectx = this._x;
   if(Math.sqrt(Math.pow(this._x - _parent.ground._x,2)) !== here)
   {
      this._x = _parent.ground._x + here;
   }
}
