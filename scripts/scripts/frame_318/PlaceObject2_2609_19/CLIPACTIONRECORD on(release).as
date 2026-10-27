on(release){
   if(_parent.player4.control == "cpu")
   {
      _parent.player4.control = null;
      _parent.p4.attachMovie("empty","p4",0);
      _parent.p4pic.attachMovie("blankpic","p4pic",0);
      _parent.p4chip._visible = false;
      _parent.p4chip._x = 497;
      _parent.p4chip._y = 224;
      _parent.player4level._visible = false;
      _parent.slide4._visible = false;
      _parent.p4teama._visible = false;
      _parent.p4name = "";
      _parent.player4.exist = false;
   }
   else if(_parent.player4.control == null)
   {
      _parent.player4.control = "cpu";
      _parent.p4.attachMovie("cpu","p4",0);
      _parent.player4level._visible = true;
      _parent.p4chip._x = 497;
      _parent.p4chip._y = 224;
      _parent.slide4._visible = true;
      _parent.p4chip._visible = true;
      _parent.p4teama._visible = true;
   }
}
