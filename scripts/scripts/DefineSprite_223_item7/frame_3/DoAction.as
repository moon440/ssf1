if(player !== 1)
{
   if(_parent["player" + player].onground == false)
   {
      gotoAndStop("normal2");
      play();
   }
}
else if(_parent.ground.onground == false)
{
   gotoAndStop("normal2");
   play();
}
