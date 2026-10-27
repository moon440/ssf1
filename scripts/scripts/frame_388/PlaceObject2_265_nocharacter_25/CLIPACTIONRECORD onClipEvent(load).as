onClipEvent(load){
   this.attachMovie(_parent.player1character,"temp",this.getNextHighestDepth());
   this._xscale *= 4;
   this._yscale *= 4;
   this.temp.gotoAndStop("hurt");
}
