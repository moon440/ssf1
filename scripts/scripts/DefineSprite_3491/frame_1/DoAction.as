function starting(i, ii)
{
   iii = _root.enemies[i];
   if(iii > 13)
   {
      iii -= 15;
   }
   if(iii < 1)
   {
      iii++;
   }
   if(iii == 1)
   {
      _parent["player" + ii + "character"] = "blade";
   }
   else if(iii == 2)
   {
      _parent["player" + ii + "character"] = "samus";
   }
   else if(iii == 3)
   {
      _parent["player" + ii + "character"] = "mario";
   }
   else if(iii == 4)
   {
      _parent["player" + ii + "character"] = "link";
   }
   else if(iii == 5)
   {
      _parent["player" + ii + "character"] = "captainfalcon";
   }
   else if(iii == 6)
   {
      _parent["player" + ii + "character"] = "fox";
   }
   else if(iii == 7)
   {
      _parent["player" + ii + "character"] = "kirby";
   }
   else if(iii == 8)
   {
      _parent["player" + ii + "character"] = "knuckles";
   }
   else if(iii == 9)
   {
      _parent["player" + ii + "character"] = "megaman";
   }
   else if(iii == 10)
   {
      _parent["player" + ii + "character"] = "pikachu";
   }
   else if(iii == 11)
   {
      _parent["player" + ii + "character"] = "zelda";
   }
   else if(iii == 12)
   {
      _parent["player" + ii + "character"] = "sonic";
   }
   else if(iii == 13)
   {
      _parent["player" + ii + "character"] = "tails";
   }
   _parent["jumpsound" + ii] = _parent["player" + ii + "character"] + "1";
   _parent["anormal" + ii] = _parent["player" + ii + "character"] + "2";
   _parent["shoot" + ii] = _parent["player" + ii + "character"] + "3";
   _parent["aforward" + ii] = _parent["player" + ii + "character"] + "4";
   _parent["turn" + ii] = _parent["player" + ii + "character"] + "5";
   _parent["aup" + ii] = _parent["player" + ii + "character"] + "6";
   _parent["adown" + ii] = _parent["player" + ii + "character"] + "7";
}
win = false;
intro = new Sound();
intro.attachSound("classicintro");
intro.start();
p1 = new Sound();
p1.attachSound("Narrator_melee");
p1.start();
holdon = 0;
did = false;
waitclick.useHandCursor = false;
stop();
starting(0,2);
starting(1,3);
starting(2,4);
i = 3;
