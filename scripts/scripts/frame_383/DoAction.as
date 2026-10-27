congrats.stop();
p1lives = templives;
player2character = null;
if(totalscore > _root.savedata.data.records[player1character][2])
{
   _root.savedata.data.records[player1character][2] = totalscore;
}
i = 0;
if(_root.savedata.data.records.blade[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.captainfalcon[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.fox[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.kirby[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.knuckles[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.link[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.mario[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.megaman[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.pikachu[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.samus[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.sonic[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.tails[2] > 0)
{
   i++;
}
if(_root.savedata.data.records.zelda[2] > 0)
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
if(_root.savedata.data.records.jigglypuff[0] == false)
{
   player2character = "jigglypuff";
   _root.gotoAndStop("challenger_adv");
}
else if(i == 13 and _root.savedata.data.records.naruto[0] == false)
{
   player2character = "naruto";
   _root.gotoAndStop("challenger_adv");
}
else if(ii == 27 and _root.savedata.data.records.gameandwatch[0] == false)
{
   player2character = "gameandwatch";
   _root.gotoAndStop("challenger_adv");
}
else if(p1lives == initiallives and !lost and _root.savedata.data.records.inuyasha[0] == false)
{
   player2character = "inuyasha";
   _root.gotoAndStop("challenger_adv");
}
else if(_root.savedata.data.records.knuckles[2] > 0 and _root.savedata.data.records.sonic[2] > 0 and _root.savedata.data.records.tails[2] > 0 and _root.savedata.data.records.shadowa[0] == false)
{
   player2character = "shadowa";
   _root.gotoAndStop("challenger_adv");
}
else if(_root.savedata.data.records.misc[2] >= 3600 and _root.savedata.data.records.lloyd[0] == false)
{
   player2character = "lloyd";
   _root.gotoAndStop("challenger_adv");
}
else if(_root.savedata.data.records.pikachu[2] > 0 and _root.savedata.data.records.jigglypuff[2] > 0 and _root.savedata.data.records.mewtwo[0] == false)
{
   player2character = "mewtwo";
   _root.gotoAndStop("challenger_adv");
}
else if(difficulty == "Normal" or difficulty == "Hard" or difficulty == "Very Hard")
{
   if(player1character == "mario" and _root.savedata.data.records.luigi[0] == false)
   {
      player2character = "luigi";
      _root.gotoAndStop("challenger_adv");
   }
   if(player1character == "blade" and _root.savedata.data.records.blue[0] == false)
   {
      player2character = "blue";
      _root.gotoAndStop("challenger_adv");
   }
   if(player1character == "megaman" and _root.savedata.data.records.zero[0] == false and !lost)
   {
      player2character = "zero";
      _root.gotoAndStop("challenger_adv");
   }
}
if(player2character == null)
{
   _root.gotoAndPlay("checkearnings");
}
