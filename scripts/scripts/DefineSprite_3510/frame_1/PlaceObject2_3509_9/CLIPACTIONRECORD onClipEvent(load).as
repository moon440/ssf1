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
   if(_root.levelnum != 14)
   {
      remaining = 28 - _root.arrnum + _root.btype;
   }
   else
   {
      remaining = 1;
   }
   originalx = this._x;
   originaly = this._y;
}
