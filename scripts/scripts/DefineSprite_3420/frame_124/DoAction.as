onEnterFrame = function()
{
   if(!this.hitTest(_parent.ground))
   {
      this._y += 6;
   }
   if(this._x < _parent.ground._x + _parent.ground._width - 10)
   {
      this._x += 8;
   }
   else
   {
      play();
   }
};
stop();
