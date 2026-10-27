onClipEvent(load){
   _parent.player2.control = "cpu";
   _parent.p2.attachMovie("cpu","p2",0);
   _parent.p2chip.attachMovie("cpu_chip","p2chip",0);
   _parent.p2pic.attachMovie(_parent.player2character,"p2chip",0);
}
