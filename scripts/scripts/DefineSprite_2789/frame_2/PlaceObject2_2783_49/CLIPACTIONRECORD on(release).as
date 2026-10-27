on(release){
   if(_parent._parent.displaynames)
   {
      _parent.playnum = "Off";
      _parent._parent.displaynames = false;
      this.gotoAndStop("off");
   }
   else if(!_parent._parent.displaynames)
   {
      _parent.playnum = "On";
      _parent._parent.displaynames = true;
      this.gotoAndStop("on");
   }
}
