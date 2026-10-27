onClipEvent(load){
   if(_root.player4.exist)
   {
      this.attachMovie(_parent._parent.player4character,"temp",this.getNextHighestDepth());
      this._xscale *= -4;
      this._yscale *= 4;
   }
}
