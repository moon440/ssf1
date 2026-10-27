congrats.stop();
p1lives = templives;
player2character = null;
if(totalscore > _root.savedata.data.records[player1character][3])
{
   _root.savedata.data.records[player1character][3] = totalscore;
}
i = 0;
if(_root.savedata.data.records.blade[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.captainfalcon[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.fox[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.kirby[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.knuckles[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.link[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.mario[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.megaman[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.pikachu[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.samus[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.sonic[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.tails[3] > 0)
{
   i++;
}
if(_root.savedata.data.records.zelda[3] > 0)
{
   i++;
}
ii = 0;
if(_root.savedata.data.records.blade[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.captainfalcon[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.fox[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.kirby[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.knuckles[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.link[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.mario[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.megaman[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.pikachu[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.samus[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.sonic[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.tails[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.zelda[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.blue[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.cloud[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.crono[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.inuyasha[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.jigglypuff[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.lloyd[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.luigi[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.mewtwo[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.incredible[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.naruto[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.shadowa[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.supersonic[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.younglink[1] > 0)
{
   ii++;
}
if(_root.savedata.data.records.zero[1] > 0)
{
   ii++;
}
if(i == 13 and _root.savedata.data.records.incredible[0] == false)
{
   player2character = "incredible";
   _root.gotoAndStop("challenger_class");
}
else if(_root.savedata.data.records.younglink[0] == false and player1character == "link")
{
   player2character = "younglink";
   _root.gotoAndStop("challenger_class");
}
else if(!lost and _root.savedata.data.records.supersonic[0] == false and player1character == "sonic")
{
   player2character = "supersonic";
   _root.gotoAndStop("challenger_class");
}
else if(ii == 27 and _root.savedata.data.records.gameandwatch[0] == false)
{
   player2character = "gameandwatch";
   _root.gotoAndStop("challenger_class");
}
if(player2character == null)
{
   _root.gotoAndPlay("checkearnings2");
}
