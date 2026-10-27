stop();
wait = 0;
hit = false;
onEnterFrame = function()
{
   if(this._y + this._height - 20 < _parent.ground._y)
   {
      this._y += 25;
   }
   if(!hit and this.hitTest(_parent.ground))
   {
      hit = true;
      boom = new Sound();
      boom.attachSound("bombexplode");
      boom.start();
   }
   if(this.hitTest(_parent.player1))
   {
      _parent.ground.disable = true;
   }
   wait += 0.03333333333333333;
   if(wait >= 2.5)
   {
      play();
   }
};
