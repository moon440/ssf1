function subtractmil()
{
   millisecs -= 3.3333333333333335;
   millisecs = Math.round(millisecs);
   if(millisecs < 0)
   {
      millisecs = 0;
   }
   if(millisecs > 20 and millisecs < 24 and seconds < 11 and minutes == 0)
   {
      beep.start();
   }
   if(millisecs == 0 and seconds == 0 and minutes == 0)
   {
      timer = "off";
   }
   else
   {
      timer = "on";
   }
   if(millisecs < 10)
   {
      millishow = "0" + millisecs;
   }
   else
   {
      millishow = millisecs;
   }
}
function subtractsec()
{
   if(millisecs == 0)
   {
      millisecs = 99;
      seconds -= 1;
   }
   if(seconds < 0)
   {
      seconds = 59;
      if(minutes > 0)
      {
         minutes -= 1;
      }
   }
   if(seconds < 10)
   {
      secondshow = "0" + seconds;
   }
   else
   {
      secondshow = seconds;
   }
   if(minutes < 10)
   {
      minuteshow = "0" + minutes;
   }
   else
   {
      minuteshow = minutes;
   }
}
beep = new Sound();
beep.attachSound("timebeep");
onEnterFrame = function()
{
   if(_parent.gamestarting == false)
   {
      if(timer == "on")
      {
         if(_parent.gamepause == false)
         {
            this._visible = true;
            subtractmil();
            subtractsec();
            lastminute = minutes;
            lastsecond = seconds;
         }
      }
      else if(_parent.gamepause == false)
      {
         seconds = 0;
         secondshow = "00";
         minutes = 0;
         minuteshow = "00";
         millisecs = 0;
         millishow = "00";
         if(_root.timer == true and _parent.playgame)
         {
            _parent.playgame = false;
            _parent.win = false;
            _parent.play();
         }
      }
   }
};
