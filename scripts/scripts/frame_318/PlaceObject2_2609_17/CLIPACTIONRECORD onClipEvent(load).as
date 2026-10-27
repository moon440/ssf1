onClipEvent(load){
   if(_parent.player3.control == null)
   {
      _parent.player3.control = null;
      _parent.p3.attachMovie("empty","p3",0);
      _parent.p3pic.attachMovie("blankpic","p3pic",0);
      _parent.p3chip.attachMovie("player3_chip","p3chip",0);
      _parent.p3chip._visible = false;
      _parent.player3level._visible = false;
      _parent.p3chip._x = 391;
      _parent.p3chip._y = 224;
      _parent.p3teama._visible = false;
      _parent.p3name = "";
      _parent.player3level._visible = false;
      _parent.slide3._visible = false;
      _parent.player3.exist = false;
   }
   else if(_parent.player3.control == "cpu")
   {
      _parent.player3.control = "cpu";
      _parent.p3.attachMovie("cpu","p3",0);
      _parent.p3chip.attachMovie("cpu_chip","p3chip",0);
      _parent.player3level._visible = true;
      _parent.slide3._visible = true;
      _parent.p3pic.attachMovie(_parent.player3character,"p3chip",0);
   }
}
