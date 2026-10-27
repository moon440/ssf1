on(release){
   if(_parent.cpucontrol == "Human")
   {
      _root.player2.control = "cpu";
      _parent.cpucontrol = "CPU";
   }
   else
   {
      _parent.cpucontrol = "Human";
      _root.player2.control = "human";
   }
}
