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
   if(iii < 1)
   {
      iii++;
   }
   _parent["player" + ii + "character"] = _root.player2character;
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
starting(0,2);
starting(1,3);
starting(2,4);
i = 3;
