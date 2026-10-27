onClipEvent(enterFrame){
   i = 2;
   while(i <= 4)
   {
      if(_parent.difficulty == "Very Easy")
      {
         _parent["player" + i].attackrange = 150;
         _parent["player" + i].jumprange = 10;
         _parent["player" + i].chanceattack = 0.05;
         _parent["player" + i].revchance = 0.02;
         _parent["player" + i].jumpchance = 0.02;
         _parent["player" + i].followchance = 0.25;
      }
      else if(_parent.difficulty == "Easy")
      {
         _parent["player" + i].attackrange = 100;
         _parent["player" + i].jumprange = 50;
         _parent["player" + i].chanceattack = 0.3;
         _parent["player" + i].revchance = 0.1;
         _parent["player" + i].jumpchance = 0.15;
         _parent["player" + i].followchance = 0.9;
      }
      else if(_parent.difficulty == "Normal")
      {
         _parent["player" + i].attackrange = 80;
         _parent["player" + i].jumprange = 80;
         _parent["player" + i].chanceattack = 0.5;
         _parent["player" + i].revchance = 0.18;
         _parent["player" + i].jumpchance = 0.2;
         _parent["player" + i].followchance = 1;
      }
      else if(_parent.difficulty == "Hard")
      {
         _parent["player" + i].attackrange = 70;
         _parent["player" + i].jumprange = 100;
         _parent["player" + i].chanceattack = 0.6;
         _parent["player" + i].revchance = 0.2;
         _parent["player" + i].jumpchance = 0.25;
         _parent["player" + i].followchance = 1;
      }
      else if(_parent.difficulty == "Very Hard")
      {
         _parent["player" + i].attackrange = 50;
         _parent["player" + i].jumprange = 150;
         _parent["player" + i].chanceattack = 1;
         _parent["player" + i].revchance = 0.25;
         _parent["player" + i].jumpchance = 0.35;
         _parent["player" + i].followchance = 1;
      }
      i++;
   }
}
