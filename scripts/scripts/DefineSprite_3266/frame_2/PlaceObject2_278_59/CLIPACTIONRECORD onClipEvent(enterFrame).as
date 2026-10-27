onClipEvent(enterFrame){
   objecty = this._y;
   if(Math.sqrt(Math.pow(this._y - _parent.ground._y,2)) !== here)
   {
      this._y = _parent.ground._y - here;
   }
   if(this.hitTest(_parent.player1) and _parent.ground.onground and !gotlife)
   {
      seconds += 0.03333333333333333;
      if(seconds >= 5)
      {
         gotlife = true;
         _root.p1lives++;
         life = new Sound();
         life.attachSound("lifeget");
         life.start();
      }
   }
   else
   {
      seconds = 0;
   }
}
