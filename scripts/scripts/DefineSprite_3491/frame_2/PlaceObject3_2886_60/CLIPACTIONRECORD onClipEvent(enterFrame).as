onClipEvent(enterFrame){
   if(_root.player4.exist)
   {
      if(_parent.player4.dead != false)
      {
         this._visible = false;
      }
   }
   else
   {
      this._visible = false;
   }
   if(player4character == "zelda")
   {
      checkChar();
   }
}
