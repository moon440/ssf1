minute = _parent.minutes;
minute += ":00";
knocka = _parent.knockup;
if(Math.round(knocka) == knocka)
{
   knocka += ".0";
}
box.useHandCursor = false;
if(_root.usinglives)
{
   stockbut.switcher.play();
}
if(_root.timer)
{
   timebut.switcher.play();
}
if(_parent.displaynames)
{
   playnum = "On";
}
else
{
   playnum = "Off";
   playnumbut.switcher.play();
}
stop();
