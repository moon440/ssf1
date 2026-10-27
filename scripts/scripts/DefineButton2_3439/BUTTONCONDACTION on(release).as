on(release){
   if(_root.currentmode == "AllStar")
   {
      if(levelnum < 14)
      {
         if(btype == 1)
         {
            arrnum -= 1;
         }
         else if(btype == 2)
         {
            arrnum -= 2;
         }
         else if(btype == 3)
         {
            arrnum -= 3;
         }
         _root.hearts = 3;
      }
   }
   contmusic.stop();
   saycont.stop();
   ding.start();
   qui._visible = false;
   cont2._visible = false;
   _root.lost = true;
   _root.p1lives = _root.initiallives;
   _root.totalscore = Math.round(_root.totalscore / 2);
   temp.temp.gotoAndPlay("standing");
}
