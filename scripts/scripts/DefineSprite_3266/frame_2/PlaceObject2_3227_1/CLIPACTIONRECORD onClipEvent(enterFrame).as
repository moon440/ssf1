onClipEvent(enterFrame){
   objectx = this._x;
   objecty = this._y;
   if(Math.sqrt(Math.pow(this._y - _parent.ground._y,2)) !== here)
   {
      this._y = _parent.ground._y - here;
   }
   if(objectx !== _parent.ground.groundx)
   {
      this._x = _parent.ground.groundx;
   }
}
