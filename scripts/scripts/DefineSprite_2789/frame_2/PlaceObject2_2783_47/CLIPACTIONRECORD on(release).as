on(release){
   if(_parent._parent.usinglives and _parent._parent.timer)
   {
      _parent._parent.usinglives = false;
      this.gotoAndStop("off");
   }
   else if(!_parent._parent.usinglives and _parent._parent.timer)
   {
      _parent._parent.usinglives = true;
      this.gotoAndStop("on");
   }
   else if(_parent._parent.usinglives and !_parent._parent.timer)
   {
      _parent._parent.timer = true;
      _parent.timebut.gotoAndStop("on");
      _parent._parent.usinglives = false;
      this.gotoAndStop("off");
   }
}
