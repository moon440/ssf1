attacking = true;
damage = 15;
onEnterFrame = function()
{
   if(this._y > _parent.ground._y - 400)
   {
      this._y -= 30;
   }
   if(this._x - this._width / 2 > _parent.player1._x)
   {
      this._x -= 15;
   }
   else if(this._x - this._width / 2 <= _parent.player1._x)
   {
      this._x += 15;
   }
};
