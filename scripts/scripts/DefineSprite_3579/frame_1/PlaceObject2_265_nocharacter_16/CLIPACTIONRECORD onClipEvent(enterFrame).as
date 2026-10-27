onClipEvent(enterFrame){
   if(_parent.gamepause == false and _parent.gamestarting == false)
   {
      if(exist)
      {
         if(!dead and _parent.playgame == true)
         {
            if(_parent._parent.player2.control == "cpu")
            {
               getDistances();
               attackwho();
               checkdeath();
               setalpha();
               playerx = this._x;
               checkcliff();
               checkhurt();
               checkhit();
               watchGround();
               watchGround2();
               watchGround3();
               if(target == "player1")
               {
                  checkattack();
                  checkduck();
                  checkFall();
                  player2jump();
                  goright();
                  goleft();
               }
               else if(target == "player3")
               {
                  checkattack3();
                  checkduck3();
                  checkFall();
                  player2jump3();
                  goright3();
                  goleft3();
               }
               else if(target == "player4")
               {
                  checkattack4();
                  checkduck4();
                  checkFall();
                  player2jump4();
                  goright4();
                  goleft4();
               }
               checkground();
               checkifmoving();
               player2slow();
               checkspeed();
               _root.p2health = health;
               _root.p2points = points;
               _root.p2kills = kills;
               _root.p2deaths = deaths;
               _root.p2suicides = suicide;
            }
            else
            {
               getKey();
               checkdeath();
               setalpha();
               playerx = this._x;
               checkhurt();
               checkhit();
               Hcheckground();
               checkifmoving();
               checkFall();
               Hplayer2jump();
               watchGround();
               watchGround2();
               watchGround3();
               Hgoright();
               Hgoleft();
               Hcheckattack();
               Hcheckduck();
               player2slow();
               checkspeed();
               _root.p2health = health;
               _root.p2points = points;
               _root.p2kills = kills;
               _root.p2deaths = deaths;
               _root.p2suicides = suicide;
            }
         }
         else
         {
            this._visible = false;
         }
      }
      else
      {
         dead = true;
         this._visible = false;
         standing();
         _parent.p2health._visible = false;
      }
   }
}
