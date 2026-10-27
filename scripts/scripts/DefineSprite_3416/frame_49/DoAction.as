onEnterFrame = function()
{
   if(this._x > _parent.player1._x)
   {
      this._x -= 6;
   }
   else if(this._x <= _parent.player1._x)
   {
      this._x += 6;
   }
   if(this._y > _parent.player1._y + _parent.player._height)
   {
      this._y -= 2;
   }
   else if(this._y <= _parent.player1._y)
   {
      this._y += 2;
   }
   wait += 0.03333333333333333;
   if(this.hitTest(_parent.player1) and _parent.ground.disable == false)
   {
      this.gotoAndPlay("grab");
   }
   else if(wait >= 0.75)
   {
      this.gotoAndPlay("miss");
   }
};
stop();
