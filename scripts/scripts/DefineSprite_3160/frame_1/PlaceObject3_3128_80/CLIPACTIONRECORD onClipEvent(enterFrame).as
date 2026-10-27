onClipEvent(enterFrame){
   if(!hita)
   {
      if(this.hitTest(_parent.player1.player1.attackbox) or this.hitTest(_parent.p1attackbox))
      {
         hita = true;
         hit = new Sound();
         hit.attachSound("targethit");
         hit.start();
         this.stop();
         target.play();
         if(_parent.targets >= 8)
         {
            _parent.win = true;
            _parent.play();
         }
      }
   }
}
