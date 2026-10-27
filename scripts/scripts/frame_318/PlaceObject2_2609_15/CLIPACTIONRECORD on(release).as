on(release){
   if(_parent.player2.control == "human")
   {
      _parent.player2.control = "cpu";
      _parent.p2.attachMovie("cpu","p2",0);
      _parent.p2chip.attachMovie("cpu_chip","p2chip",0);
      _parent.player2level._visible = true;
      _parent.slide2._visible = true;
   }
   else if(_parent.player2.control == "cpu")
   {
      _parent.player2.control = null;
      _parent.p2.attachMovie("empty","p2",0);
      _parent.p2pic.attachMovie("blankpic","p2pic",0);
      _parent.p2chip.attachMovie("player2_chip","p2chip",0);
      _parent.p2chip._visible = false;
      _parent.player2level._visible = false;
      _parent.slide2._visible = false;
      _parent.p2chip._x = 274;
      _parent.p2chip._y = 224;
      _parent.p2teama._visible = false;
      _parent.p2name = "";
      _parent.player2.exist = false;
   }
   else if(_parent.player2.control == null)
   {
      _parent.player2.control = "human";
      _parent.p2.attachMovie("player2card","p2",0);
      _parent.p2chip._visible = true;
      _parent.player2level._visible = false;
      _parent.slide2._visible = false;
      _parent.p2teama._visible = true;
   }
}
