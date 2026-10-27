onClipEvent(enterFrame){
   num = 2;
   while(num <= 4)
   {
      if(_parent["player" + num].dead == true and _parent.i <= 99)
      {
         ii = num;
         iii = _root.enemies[_parent.i];
         addPlayer();
         _parent.i++;
      }
      num++;
   }
}
