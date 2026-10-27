onClipEvent(load){
   i = 2;
   while(i <= 4)
   {
      _parent["player" + i].attackrange = 80;
      _parent["player" + i].jumprange = 80;
      _parent["player" + i].chanceattack = 0.5;
      _parent["player" + i].revchance = 0.18;
      _parent["player" + i].jumpchance = 0.2;
      _parent["player" + i].followchance = 1;
      i++;
   }
}
