if(_parent._parent.player == 1)
{
   _parent._parent._parent.createEmptyMovieClip("p1attackbox",10);
   _parent._parent._parent.p1attackbox.attachMovie("rock","p1attackbox",10);
}
else if(_parent._parent.player == 2)
{
   _parent._parent._parent.createEmptyMovieClip("p2attackbox",10);
   _parent._parent._parent.p2attackbox.attachMovie("rock","p2attackbox",10);
}
else if(_parent._parent.player == 3)
{
   _parent._parent._parent.createEmptyMovieClip("p3attackbox",10);
   _parent._parent._parent.p3attackbox.attachMovie("rock","p3attackbox",10);
}
else if(_parent._parent.player == 4)
{
   _parent._parent._parent.createEmptyMovieClip("p4attackbox",10);
   _parent._parent._parent.p4attackbox.attachMovie("rock","p4attackbox",10);
}
if(_parent._parent.player == 1)
{
   _parent._parent._parent.p1attackbox._x = _parent._parent._parent.player1._x + _parent._parent._parent.player1._width;
   _parent._parent._parent.p1attackbox._y = _parent._parent._parent.player1._y + _parent._parent._parent.player1._height / 2 - 30;
   if(_parent._parent._parent.ground.facing == "left")
   {
      _parent._parent._parent.p1attackbox._xscale *= -1;
      _parent._parent._parent.p1attackbox._x -= _parent._parent._parent.player1._width * 2;
   }
}
else if(_parent._parent.player == 2)
{
   _parent._parent._parent.p2attackbox._x = _parent._parent._parent.player2._x + _parent._parent._parent.player2._width;
   _parent._parent._parent.p2attackbox._y = _parent._parent._parent.player2._y + _parent._parent._parent.player2._height / 2 - 30;
   if(_parent._parent._parent.player2.facing == "left")
   {
      _parent._parent._parent.p2attackbox._xscale *= -1;
      _parent._parent._parent.p2attackbox._x -= _parent._parent._parent.player2._width * 2;
   }
}
else if(_parent._parent.player == 3)
{
   _parent._parent._parent.p3attackbox._x = _parent._parent._parent.player3._x + _parent._parent._parent.player3._width;
   _parent._parent._parent.p3attackbox._y = _parent._parent._parent.player3._y + _parent._parent._parent.player3._height / 2 - 30;
   if(_parent._parent._parent.player3.facing == "left")
   {
      _parent._parent._parent.p3attackbox._xscale *= -1;
      _parent._parent._parent.p3attackbox._x -= _parent._parent._parent.player3._width * 2;
   }
}
else if(_parent._parent.player == 4)
{
   _parent._parent._parent.p4attackbox._x = _parent._parent._parent.player4._x + _parent._parent._parent.player4._width;
   _parent._parent._parent.p4attackbox._y = _parent._parent._parent.player4._y + _parent._parent._parent.player4._height / 2 - 30;
   if(_parent._parent._parent.player4.facing == "left")
   {
      _parent._parent._parent.p4attackbox._xscale *= -1;
      _parent._parent._parent.p4attackbox._x -= _parent._parent._parent.player4._width * 2;
   }
}
