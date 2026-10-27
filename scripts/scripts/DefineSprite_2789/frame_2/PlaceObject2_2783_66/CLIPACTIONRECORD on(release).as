on(release){
   if(_parent._parent.usinglives and _parent._parent.timer)
   {
      _parent._parent.timer = false;
      this.gotoAndStop("off");
   }
   else if(_parent._parent.usinglives and !_parent._parent.timer)
   {
      _parent._parent.timer = true;
      this.gotoAndStop("on");
   }
   else if(!_parent._parent.usinglives and _parent._parent.timer)
   {
      _parent._parent.timer = false;
      this.gotoAndStop("off");
      _parent.stockbut.gotoAndStop("on");
      _parent._parent.usinglives = true;
   }
}
