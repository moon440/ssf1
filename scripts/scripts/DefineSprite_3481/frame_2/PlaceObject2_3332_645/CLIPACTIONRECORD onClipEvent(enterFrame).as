onClipEvent(enterFrame){
   if(Math.sqrt(Math.pow(this._x - _parent.player1._x,2) + Math.pow(this._y - _parent.player1._y,2)) < sightrange and _parent.gamepause == false and _parent.gamestarting == false)
   {
      enemymove();
      checkhit();
      setSpeed();
      watchGround();
      checkground();
      checkface();
   }
   checkhit();
}
