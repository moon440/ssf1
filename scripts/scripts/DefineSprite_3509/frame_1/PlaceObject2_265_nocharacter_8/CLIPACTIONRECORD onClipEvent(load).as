onClipEvent(load){
   if(_root.player4.exist)
   {
      this.attachMovie(_root.player4character,"player4",10);
      this._xscale /= 2;
      this._yscale /= 2;
   }
}
