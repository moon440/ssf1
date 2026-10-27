stop();
wait = 0;
onEnterFrame = function()
{
   if(this._x > _parent.player1._x)
   {
      this._x -= 15;
   }
   else if(this._x <= _parent.player1._x)
   {
      this._x += 15;
   }
   wait += 0.03333333333333333;
   if(wait >= 1)
   {
      play();
   }
};
