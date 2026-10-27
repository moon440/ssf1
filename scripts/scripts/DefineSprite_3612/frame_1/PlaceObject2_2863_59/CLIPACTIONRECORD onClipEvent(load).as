onClipEvent(load){
   function makeItem(ii)
   {
      _parent.createEmptyMovieClip("item" + i,i);
      _parent.attachMovie("item" + ii,"item" + i,i);
      _parent["item" + i]._x = _parent.player1._x;
      _parent["item" + i]._y = _parent.ground._y - 300;
      i++;
      if(i > 30)
      {
         i = 1;
      }
      appear = new Sound();
      appear.attachSound("itemappear");
      appear.start();
   }
   this._visible = false;
   i = 1;
}
