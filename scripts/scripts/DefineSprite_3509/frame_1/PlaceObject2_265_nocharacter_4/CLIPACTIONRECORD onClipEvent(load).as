onClipEvent(load){
   if(_root.player2.exist)
   {
      this.attachMovie(_root.player2character,"player2",10);
      this._xscale /= 2;
      this._yscale /= 2;
   }
}
