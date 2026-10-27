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
   done = false;
   originalx = this._x;
   originaly = this._y;
   if(_root.timer == true)
   {
      this.minutes = _root.minutes;
      this.seconds = 0;
      this.millisecs = 0;
      this.timer = "on";
   }
   else
   {
      this.minutes = 0;
      this.seconds = 0;
      this.millisecs = 0;
      this._visible = false;
   }
}
