onClipEvent(enterFrame){
   if(_root.displaynames)
   {
      if(_parent.player2.facing == "right")
      {
         a = 0;
      }
      else if(_parent.player2.facing == "left")
      {
         a = 50;
      }
      if(!_parent.player2.dead)
      {
         follow();
      }
      else
      {
         this._visible = false;
      }
   }
   else
   {
      this._visible = false;
   }
   if(_parent.playgame == false and _parent.gamestarting == false)
   {
      this._visible = false;
   }
}
