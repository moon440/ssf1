onClipEvent(enterFrame){
   if(_root.player3.exist)
   {
      if(_parent.player3.dead != false)
      {
         this._visible = false;
      }
   }
   else
   {
      this._visible = false;
   }
   if(player3character == "zelda")
   {
      checkChar();
   }
}
