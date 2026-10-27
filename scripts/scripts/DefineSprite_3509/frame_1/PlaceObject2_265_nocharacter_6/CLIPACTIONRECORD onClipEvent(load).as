onClipEvent(load){
   if(_root.player3.exist)
   {
      this.attachMovie(_root.player3character,"player2",10);
      this._xscale /= 2;
      this._yscale /= 2;
   }
}
