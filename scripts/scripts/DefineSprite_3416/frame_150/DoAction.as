stop();
damage = 1;
attacking = true;
wait = 0;
onEnterFrame = function()
{
   if(this._x > _parent.player1._x)
   {
      this._x -= 4;
   }
   else if(this._x <= _parent.player1._x)
   {
      this._x += 4;
   }
   if(this._y > _parent.player1._y + _parent.player._height)
   {
      this._y -= 3;
   }
   else if(this._y <= _parent.player1._y)
   {
      this._y += 3;
   }
   wait += 0.03333333333333333;
   if(wait >= 0.75)
   {
      play();
   }
};
