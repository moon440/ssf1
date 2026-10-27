onClipEvent(enterFrame){
   if(_parent.playgame == false)
   {
      this._visible = false;
      if(!done)
      {
         _parent.timecheck = this.millisecs + this.seconds + this.minutes;
         done = true;
      }
      this.timer = "off";
   }
}
