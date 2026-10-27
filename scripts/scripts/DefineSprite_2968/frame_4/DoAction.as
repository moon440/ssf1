p1attackbox._visible = false;
p2attackbox._visible = false;
p3attackbox._visible = false;
p4attackbox._visible = false;
i = 1;
while(i <= 30)
{
   this["item" + i]._visible = false;
   i++;
}
onEnterFrame = function()
{
   if(_root.p1points == -10000)
   {
      p1box._visible = false;
      p1box2._visible = false;
   }
   if(_root.p2points == -10000)
   {
      p2box._visible = false;
      p2box2._visible = false;
   }
   if(_root.p3points == -10000)
   {
      p3box._visible = false;
      p3box2._visible = false;
   }
   if(_root.p4points == -10000)
   {
      p4box._visible = false;
      p4box2._visible = false;
   }
};
stop();
_root.backgroundpic._visible = false;
this._x = originalx;
this._y = originaly;
if(winner !== "No Contest" and winner !== "Draw")
{
   if(winner == "Player 1")
   {
      tempname = _parent.player1character;
      _root.savedata.data.records[tempname][19]++;
      say = "select_" + _parent.player1character;
   }
   else if(winner == "Player 2")
   {
      tempname = _parent.player2character;
      _root.savedata.data.records[tempname][19]++;
      say = "select_" + _parent.player2character;
   }
   else if(winner == "Player 3")
   {
      tempname = _parent.player3character;
      _root.savedata.data.records[tempname][19]++;
      say = "select_" + _parent.player3character;
   }
   else if(winner == "Player 4")
   {
      tempname = _parent.player4character;
      _root.savedata.data.records[tempname][19]++;
      say = "select_" + _parent.player4character;
   }
   else if(winner == "Players 1 and 2")
   {
      if(_parent.player1.exist)
      {
         tempname = _parent.player1character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player2.exist)
      {
         tempname = _parent.player2character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team1";
   }
   else if(winner == "Players 3 and 4" and setgameto == "2v21")
   {
      if(_parent.player3.exist)
      {
         tempname = _parent.player3character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player4.exist)
      {
         tempname = _parent.player4character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team2";
   }
   else if(winner == "Players 3 and 4" and setgameto == "2v1v1")
   {
      if(_parent.player3.exist)
      {
         tempname = _parent.player3character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player4.exist)
      {
         tempname = _parent.player4character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team1";
   }
   else if(winner == "Players 1 and 3")
   {
      if(_parent.player1.exist)
      {
         tempname = _parent.player1character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player3.exist)
      {
         tempname = _parent.player3character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team1";
   }
   else if(winner == "Players 2 and 4")
   {
      if(_parent.player2.exist)
      {
         tempname = _parent.player2character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player4.exist)
      {
         tempname = _parent.player4character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team2";
   }
   else if(winner == "Players 2, 3, and 4")
   {
      if(_parent.player2.exist)
      {
         tempname = _parent.player2character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player3.exist)
      {
         tempname = _parent.player3character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player4.exist)
      {
         tempname = _parent.player4character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team2";
   }
   else if(winner == "Players 1, 3, and 4")
   {
      if(_parent.player1.exist)
      {
         tempname = _parent.player1character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player3.exist)
      {
         tempname = _parent.player3character;
         _root.savedata.data.records[tempname][19]++;
      }
      if(_parent.player4.exist)
      {
         tempname = _parent.player4character;
         _root.savedata.data.records[tempname][19]++;
      }
      say = "team2";
   }
   cheer = new Sound();
   cheer.attachSound("crowd_cheer");
   cheer.setVolume(50);
   cheer.start();
   announce = new Sound();
   announce.attachSound("winneris");
   announce.start();
   announce.onSoundComplete = function()
   {
      saywinner = new Sound();
      saywinner.attachSound(say);
      saywinner.start();
   };
}
else
{
   if(winner !== "Draw")
   {
      announce = new Sound();
      announce.attachSound("nocontest");
      announce.start();
   }
   boo = new Sound();
   boo.attachSound("crowd_boo");
   boo.start();
}
