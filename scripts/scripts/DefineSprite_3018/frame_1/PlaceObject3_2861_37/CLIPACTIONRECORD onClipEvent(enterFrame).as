onClipEvent(enterFrame){
   if(_root.displaynames)
   {
      if(_parent.player4.facing == "right")
      {
         a = 0;
      }
      else if(_parent.player4.facing == "left")
      {
         a = 50;
      }
      if(!_parent.player4.dead)
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
}
