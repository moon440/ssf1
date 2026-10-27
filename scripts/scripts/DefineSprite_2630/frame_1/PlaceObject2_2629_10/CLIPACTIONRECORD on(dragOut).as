on(dragOut){
   if(Math.sqrt(Math.pow(_xmouse - this._x,2) + Math.pow(_ymouse - this._y,2)) > 50)
   {
      this.stopDrag();
   }
}
