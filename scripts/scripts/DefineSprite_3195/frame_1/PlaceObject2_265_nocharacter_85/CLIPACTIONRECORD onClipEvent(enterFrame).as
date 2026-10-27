onClipEvent(enterFrame){
   tempx = Math.sqrt(Math.pow(this._x - 350,2));
   if(tempx > 50)
   {
      this._x = 350;
   }
}
