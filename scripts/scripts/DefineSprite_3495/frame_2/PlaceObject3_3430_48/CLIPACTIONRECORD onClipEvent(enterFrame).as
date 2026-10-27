onClipEvent(enterFrame){
   if(_parent.enemy1.dead == false)
   {
      this._visible = true;
   }
   else
   {
      this._visible = false;
   }
}
