stop();
bam = false;
onEnterFrame = function()
{
   if(!this.hitTest(_parent.ground))
   {
      this._y += 40;
   }
   else
   {
      if(!bam)
      {
         boom = new Sound();
         boom.attachSound("bombexplode");
         boom.start();
         bam = true;
      }
      play();
   }
};
