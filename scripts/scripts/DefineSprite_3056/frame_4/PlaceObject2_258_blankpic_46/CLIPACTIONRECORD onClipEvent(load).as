onClipEvent(load){
   i = 1;
   if(_root["player" + i].exist == true)
   {
      this.attachMovie(_root["player" + i + "character"],"p" + i + "pic",this.getNextHighestDepth());
      this._xscale *= 0.75;
      this._yscale *= 0.75;
   }
}
