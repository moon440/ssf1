onClipEvent(load){
   function centerit()
   {
      if(_parent._x > _parent.originalx)
      {
         this._x = originalx - _parent.centerdistance;
      }
      else if(_parent._x < _parent.originalx)
      {
         this._x = originalx + _parent.centerdistance;
      }
      if(_parent._y > _parent.originaly)
      {
         this._y = originaly - _parent.middledistance;
      }
      else if(_parent._y < _parent.originaly)
      {
         this._y = originaly + _parent.middledistance;
      }
   }
   function resync()
   {
      i = _parent.i;
      guysleft = 12 - i;
      if(!_parent.player2.dead)
      {
         guysleft++;
      }
      if(!_parent.player3.dead)
      {
         guysleft++;
      }
      if(!_parent.player4.dead)
      {
         guysleft++;
      }
      remaining = guysleft;
   }
   remaining = null;
   originalx = this._x;
   originaly = this._y;
}
