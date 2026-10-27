onClipEvent(load){
   if(_parent.player4.control == null)
   {
      _parent.player4.control = null;
      _parent.p4.attachMovie("empty","p4",0);
      _parent.p4pic.attachMovie("blankpic","p4pic",0);
      _parent.p4chip.attachMovie("player4_chip","p4chip",0);
      _parent.p4chip._visible = false;
      _parent.player4level._visible = false;
      _parent.p4chip._x = 497;
      _parent.p4chip._y = 224;
      _parent.p4teama._visible = false;
      _parent.p4name = "";
      _parent.player4level._visible = false;
      _parent.slide4._visible = false;
      _parent.player4.exist = false;
   }
   else if(_parent.player4.control == "cpu")
   {
      _parent.player4.control = "cpu";
      _parent.p4.attachMovie("cpu","p4",0);
      _parent.p4chip.attachMovie("cpu_chip","p4chip",0);
      _parent.player4level._visible = true;
      _parent.slide4._visible = true;
      _parent.p4pic.attachMovie(_parent.player4character,"p4chip",0);
   }
}
