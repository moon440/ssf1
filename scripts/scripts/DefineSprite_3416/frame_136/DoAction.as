stop();
speed = 4;
onEnterFrame = function()
{
   if(speed < 20)
   {
      speed++;
   }
   if(this._y > _parent.ground._y - 800)
   {
      this._y -= speed;
   }
   else
   {
      play();
   }
};
