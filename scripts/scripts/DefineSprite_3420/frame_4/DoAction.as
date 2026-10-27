stop();
wait = 0;
onEnterFrame = function()
{
   if(this._x < _parent.ground._x - this._width - 50)
   {
      this._x -= 5;
   }
   if(this._y > _parent.player1._y + _parent.player1._height)
   {
      this._y -= 4;
   }
   else if(this._y < _parent.player1._y)
   {
      this._y += 4;
   }
   wait += 0.03333333333333333;
   if(wait >= 2.5)
   {
      play();
   }
};
