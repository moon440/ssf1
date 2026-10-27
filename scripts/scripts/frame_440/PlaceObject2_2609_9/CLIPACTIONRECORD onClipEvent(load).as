onClipEvent(load){
   _parent.player1.control = "human";
   if(_parent.player1.exist)
   {
      _parent.player1.control = "human";
      _parent.p1pic.attachMovie(_parent.player1character,"p1pic",0);
      _parent.p1chip._visible = true;
   }
}
