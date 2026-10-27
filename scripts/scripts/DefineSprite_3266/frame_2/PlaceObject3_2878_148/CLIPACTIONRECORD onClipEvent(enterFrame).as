onClipEvent(enterFrame){
   if(_root.player2.exist)
   {
      if(_parent.player2.dead != false)
      {
         this._visible = false;
      }
   }
   else
   {
      this._visible = false;
   }
   if(player2character == "zelda")
   {
      checkChar();
   }
}
