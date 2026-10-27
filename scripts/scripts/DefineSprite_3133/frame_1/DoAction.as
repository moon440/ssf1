targets = 0;
totalseconds = 0;
startmusic = new Sound();
startmusic.attachSound(startmusic1);
startmusic.start(0,999);
if(_parent.player1.exist)
{
   p1char.attachMovie(_parent.player1character,"player1",0);
   player1sound.jumpsound = new Sound();
   player1sound.jumpsound.attachSound(_parent.jumpsound1);
   player1sound.anormal = new Sound();
   player1sound.anormal.attachSound(_parent.anormal1);
   player1sound.shoot = new Sound();
   player1sound.shoot.attachSound(_parent.shoot1);
   player1sound.turn = new Sound();
   player1sound.turn.attachSound(_parent.turn1);
   player1sound.aforward = new Sound();
   player1sound.aforward.attachSound(_parent.aforward1);
   player1sound.aup = new Sound();
   player1sound.aup.attachSound(_parent.aup1);
   player1sound.adown = new Sound();
   player1sound.adown.attachSound(_parent.adown1);
}
playgame = true;
p1hitamount = 0;
gamestarting = true;
ground.topbounds = 99999999;
ground.bottombounds = 99999999;
ground.leftbounds = 99999999;
ground.rightbounds = 99999999;
player2.topbounds = 99999999;
player2.bottombounds = 99999999;
player2.leftbounds = 99999999;
player2.rightbounds = 99999999;
player3.topbounds = 99999999;
player3.bottombounds = 99999999;
player3.leftbounds = 99999999;
player3.rightbounds = 99999999;
player4.topbounds = 99999999;
player4.bottombounds = 99999999;
player4.leftbounds = 99999999;
player4.rightbounds = 99999999;
nocontest = false;
onEnterFrame = function()
{
   if(targets >= 8)
   {
      win = true;
      play();
   }
};
stop();
