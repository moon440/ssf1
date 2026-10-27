onClipEvent(enterFrame){
   if(_root.displaynames)
   {
      if(_parent.ground.facing == "right")
      {
         a = 0;
      }
      else if(_parent.ground.facing == "left")
      {
         a = 50;
      }
      if(!_parent.ground.dead)
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
