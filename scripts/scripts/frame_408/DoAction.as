currentlevel = null;
endmusic = new Sound();
endmusic.attachSound("endingmusic");
endmusic.start();
endmusic.onSoundComplete = function()
{
   play();
};
stop();
