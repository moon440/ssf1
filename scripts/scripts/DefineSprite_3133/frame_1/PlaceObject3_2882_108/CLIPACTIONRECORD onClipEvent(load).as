onClipEvent(load){
   function checkChar()
   {
      if(_parent.player3.player3.sheik == true and zelda)
      {
         zelda = false;
         this.lifehead.attachMovie("sheiklife","lifehead",10);
      }
      else if(_parent.player3.player3.sheik == false and !zelda)
      {
         zelda = true;
         this.lifehead.attachMovie("zeldalife","lifehead",10);
      }
   }
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
   originalx = this._x;
   originaly = this._y;
   player3character = _parent._parent.player3character;
   zelda = true;
   if(_root.player3.exist)
   {
      this.lifehead.attachMovie(_root.player3character + "life","lifehead",10);
   }
   if(!_root.usinglives)
   {
      this.life._visible = false;
   }
}
