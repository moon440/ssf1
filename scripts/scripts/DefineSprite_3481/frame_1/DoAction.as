win = false;
wait = 0;
started = false;
intro = new Sound();
intro.attachSound("classicintro");
intro.start();
waitclick.useHandCursor = false;
onEnterFrame = function()
{
   wait += 0.03333333333333333;
   if(wait > 0.5 and !started)
   {
      race = new Sound();
      race.attachSound("racefinish");
      race.start();
      started = true;
   }
};
stop();
