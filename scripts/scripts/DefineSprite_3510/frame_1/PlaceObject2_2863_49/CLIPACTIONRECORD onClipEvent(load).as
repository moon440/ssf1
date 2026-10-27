onClipEvent(load){
   function itemWait()
   {
      if(_root.hearts == 3)
      {
         x1 = 20;
         _parent.createEmptyMovieClip("item" + i,i);
         _parent.attachMovie("item3","item" + i,i);
         _parent["item" + i]._x = x1 + _parent.ground._x;
         _parent["item" + i]._y = _parent.ground._y - 200;
         i++;
         x1 = 100;
         _parent.createEmptyMovieClip("item" + i,i);
         _parent.attachMovie("item3","item" + i,i);
         _parent["item" + i]._x = x1 + _parent.ground._x;
         _parent["item" + i]._y = _parent.ground._y - 200;
         i++;
         x1 = 180;
         _parent.createEmptyMovieClip("item" + i,i);
         _parent.attachMovie("item3","item" + i,i);
         _parent["item" + i]._x = x1 + _parent.ground._x;
         _parent["item" + i]._y = _parent.ground._y - 200;
         i++;
      }
      else if(_root.hearts == 2)
      {
         x1 = 20;
         _parent.createEmptyMovieClip("item" + i,i);
         _parent.attachMovie("item3","item" + i,i);
         _parent["item" + i]._x = x1 + _parent.ground._x;
         _parent["item" + i]._y = _parent.ground._y - 200;
         i++;
         x1 = 100;
         _parent.createEmptyMovieClip("item" + i,i);
         _parent.attachMovie("item3","item" + i,i);
         _parent["item" + i]._x = x1 + _parent.ground._x;
         _parent["item" + i]._y = _parent.ground._y - 200;
         i++;
      }
      if(_root.hearts == 1)
      {
         x1 = 20;
         _parent.createEmptyMovieClip("item" + i,i);
         _parent.attachMovie("item3","item" + i,i);
         _parent["item" + i]._x = x1 + _parent.ground._x;
         _parent["item" + i]._y = _parent.ground._y - 200;
         i++;
      }
   }
   i = 1;
   this._visible = false;
   itemWait();
}
