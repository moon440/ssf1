if(uses >= 5)
{
   if(player !== 1)
   {
      _parent["player" + player].holding = false;
      this.removeMovieClip();
   }
   else
   {
      _parent.ground.holding = false;
      this.removeMovieClip();
   }
}
else
{
   this.gotoAndStop("inactive");
}
