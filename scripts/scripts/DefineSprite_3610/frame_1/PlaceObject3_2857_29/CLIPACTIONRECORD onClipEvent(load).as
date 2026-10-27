onClipEvent(load){
   function follow()
   {
      if(this._x > 5 and this._x < 645)
      {
         this._x = _parent.player2._x - a;
      }
      if(this._y > 5 and this._y < 380)
      {
         this._y = _parent.player2._y - 40;
      }
      this._x = Math.round(this._x);
      this._y = Math.round(this._y);
      if(this._x <= 5)
      {
         this._x = 6;
      }
      else if(this._x >= 645)
      {
         this._x = 644;
      }
      if(this._y <= 5)
      {
         this._y = 6;
      }
      else if(this._y >= 380)
      {
         this._y = 379;
      }
   }
   this._x = _parent.player2._x;
   this._y = _parent.player2._y - 25;
   a = 0;
   if(_parent._parent.player2.exist == false)
   {
      this._visible = false;
   }
}
