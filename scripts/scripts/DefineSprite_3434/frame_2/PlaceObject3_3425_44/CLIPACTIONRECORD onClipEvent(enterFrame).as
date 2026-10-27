onClipEvent(enterFrame){
   if(_parent.enemy2.exist and !there and !_parent.enemy2.dead)
   {
      there = true;
      this._visible = true;
   }
   if(_parent.enemy2.dead)
   {
      this._visible = false;
   }
}
