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
if(_parent.player2.exist)
{
   p2char.attachMovie(_parent.player2character,"player2",0);
   player2sound.jumpsound = new Sound();
   player2sound.jumpsound.attachSound(_parent.jumpsound2);
   player2sound.anormal = new Sound();
   player2sound.anormal.attachSound(_parent.anormal2);
   player2sound.shoot = new Sound();
   player2sound.shoot.attachSound(_parent.shoot2);
   player2sound.turn = new Sound();
   player2sound.turn.attachSound(_parent.turn2);
   player2sound.aforward = new Sound();
   player2sound.aforward.attachSound(_parent.aforward2);
   player2sound.aup = new Sound();
   player2sound.aup.attachSound(_parent.aup2);
   player2sound.adown = new Sound();
   player2sound.adown.attachSound(_parent.adown2);
}
if(_parent.player3.exist)
{
   player3sound.jumpsound = new Sound();
   player3sound.jumpsound.attachSound(_parent.jumpsound3);
   player3sound.anormal = new Sound();
   player3sound.anormal.attachSound(_parent.anormal3);
   player3sound.shoot = new Sound();
   player3sound.shoot.attachSound(_parent.shoot3);
   player3sound.turn = new Sound();
   player3sound.turn.attachSound(_parent.turn3);
   player3sound.aforward = new Sound();
   player3sound.aforward.attachSound(_parent.aforward3);
   player3sound.aup = new Sound();
   player3sound.aup.attachSound(_parent.aup3);
   player3sound.adown = new Sound();
   player3sound.adown.attachSound(_parent.adown3);
}
if(_parent.player4.exist)
{
   player4sound.jumpsound = new Sound();
   player4sound.jumpsound.attachSound(_parent.jumpsound4);
   player4sound.anormal = new Sound();
   player4sound.anormal.attachSound(_parent.anormal4);
   player4sound.shoot = new Sound();
   player4sound.shoot.attachSound(_parent.shoot4);
   player4sound.turn = new Sound();
   player4sound.turn.attachSound(_parent.turn4);
   player4sound.aforward = new Sound();
   player4sound.aforward.attachSound(_parent.aforward4);
   player4sound.aup = new Sound();
   player4sound.aup.attachSound(_parent.aup4);
   player4sound.adown = new Sound();
   player4sound.adown.attachSound(_parent.adown4);
}
crowd = new Sound();
crowd.attachSound("crowd_risky");
p1defeat = new Sound();
p1defeat.attachSound("p1defeated");
p2defeat = new Sound();
p2defeat.attachSound("p2defeated");
cpudefeat = new Sound();
cpudefeat.attachSound("compdefeat");
playgame = true;
p1hitamount = 0;
p2hitamount = 0;
p3hitamount = 0;
p4hitamount = 0;
_root.p1points = 0;
_root.p2points = 0;
_root.p3points = 0;
_root.p4points = 0;
gamestarting = false;
ground.topbounds = 600;
ground.bottombounds = 600;
ground.leftbounds = 600;
ground.rightbounds = 600;
nocontest = false;
contestants = 0;
stop();
