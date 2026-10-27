onClipEvent(enterFrame){
   if(!dead and _parent.gamestarting == false and _parent.gamepause == false)
   {
      checkhit();
      checkattack();
      goBack();
   }
   if(dead and this._currentframe !== 187)
   {
      this.gotoAndPlay("dead");
   }
}
