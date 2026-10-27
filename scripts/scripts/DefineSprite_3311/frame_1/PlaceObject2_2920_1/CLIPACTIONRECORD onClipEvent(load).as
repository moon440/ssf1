onClipEvent(load){
   if(_root.targettotal > 0)
   {
      this._visible = false;
      p1p = "";
      p1p += "Targets: " + _root.targettotal + "<br>";
      p1p += "Target Score: " + _root.targettotal * 1000 + "<br>";
      _parent.p1p = p1p;
      _root.totalscore += _root.targettotal * 1000;
      done = true;
   }
}
