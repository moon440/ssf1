onClipEvent(enterFrame){
   loadeda = _parent.getBytesLoaded();
   totala = _parent.getBytesTotal();
   _parent.percent = Math.round(loadeda / totala * 100);
   if(_parent.percent >= 100)
   {
      _parent.play();
   }
}
