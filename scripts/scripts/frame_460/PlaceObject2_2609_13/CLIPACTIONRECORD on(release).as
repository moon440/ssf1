on(release){
   if(_parent.player1.control == "human")
   {
      _parent.player1.control = "cpu";
      _parent.p1.attachMovie("cpu","p1",0);
      _parent.p1chip.attachMovie("cpu_chip","p1chip",0);
      _parent.player1level._visible = true;
      _parent.slide1._visible = true;
   }
   else if(_parent.player1.control == "cpu")
   {
      _parent.player1.control = null;
      _parent.p1.attachMovie("empty","p1",0);
      _parent.p1pic.attachMovie("blankpic","p1pic",0);
      _parent.p1chip.attachMovie("player1_chip","p1chip",0);
      _parent.p1chip._visible = false;
      _parent.player1level._visible = false;
      _parent.p1chip._x = 172;
      _parent.p1chip._y = 224;
      _parent.p1teama._visible = false;
      _parent.p1name = "";
      _parent.player1level._visible = false;
      _parent.slide1._visible = false;
      _parent.player1.exist = false;
   }
   else if(_parent.player1.control == null)
   {
      _parent.player1.control = "human";
      _parent.p1.attachMovie("player1card","p1",0);
      _parent.p1chip._visible = true;
      _parent.p1teama._visible = true;
   }
}
