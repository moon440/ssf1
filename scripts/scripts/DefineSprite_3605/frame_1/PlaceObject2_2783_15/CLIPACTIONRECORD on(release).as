on(release){
   if(_parent.cpuattack == true)
   {
      this.gotoAndStop("off");
      _parent.cpuattack = false;
   }
   else
   {
      _parent.cpuattack = true;
      this.gotoAndStop("on");
   }
}
