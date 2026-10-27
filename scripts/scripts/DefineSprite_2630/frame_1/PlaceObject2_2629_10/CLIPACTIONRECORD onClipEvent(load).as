onClipEvent(load){
   function moveBar()
   {
      distance = Math.round((56.9 - this._x) / 6);
      if(distance == 0)
      {
         distance = 1;
      }
      else if(distance == 10)
      {
         distance = 9;
      }
      if(_parent.guy == 1)
      {
         _root.p1level = distance;
         _root.ball1x = this._x;
      }
      if(_parent.guy == 2)
      {
         _root.p2level = distance;
         _root.ball2x = this._x;
      }
      else if(_parent.guy == 3)
      {
         _root.p3level = distance;
         _root.ball3x = this._x;
      }
      else if(_parent.guy == 4)
      {
         _root.p4level = distance;
         _root.ball4x = this._x;
      }
   }
   total = 56.9;
}
