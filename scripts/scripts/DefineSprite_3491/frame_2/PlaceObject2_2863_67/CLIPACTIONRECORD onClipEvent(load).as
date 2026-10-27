onClipEvent(load){
   function itemWait()
   {
      wait++;
      if(wait >= 210)
      {
         rand = Math.random();
         if(rand <= _root.itemchance)
         {
            x1 = Math.random() * _parent.ground._width;
            _parent.createEmptyMovieClip("item" + i,i);
            ii = Math.round(Math.random() * 9) + 1;
            _parent.attachMovie("item" + ii,"item" + i,i);
            _parent["item" + i]._x = x1 + _parent.ground._x;
            _parent["item" + i]._y = parent.ground._y - 300;
            i++;
            if(i > 30)
            {
               i = 1;
            }
            appear = new Sound();
            appear.attachSound("itemappear");
            appear.start();
         }
         wait = 0;
      }
   }
   this._visible = false;
   wait = 0;
   i = 1;
}
