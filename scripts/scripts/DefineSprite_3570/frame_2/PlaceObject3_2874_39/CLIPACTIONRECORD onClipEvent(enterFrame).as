onClipEvent(enterFrame){
   if(_root.player1.exist)
   {
      if(_parent.ground.dead != false)
      {
         this._visible = false;
      }
   }
   else
   {
      this._visible = false;
   }
   if(_root.usinglives)
   {
      checkGame();
   }
   if(player1character == "zelda")
   {
      checkChar();
   }
}
