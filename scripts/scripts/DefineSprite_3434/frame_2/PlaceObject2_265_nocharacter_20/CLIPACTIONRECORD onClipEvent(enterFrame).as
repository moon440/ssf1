onClipEvent(enterFrame){
   if(_parent.gamepause == false and _parent.gamestarting == false)
   {
      if(exist)
      {
         if(!dead and _parent.playgame == true)
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
               player3jump();
               goright();
               goleft();
            }
            else if(target == "player2")
            {
               checkattack2();
               checkduck2();
               checkFall();
               player3jump2();
               goright2();
               goleft2();
            }
            else if(target == "player4")
            {
               checkattack4();
               checkduck4();
               checkduck4();
               checkFall();
               player3jump4();
               goright4();
               goleft4();
            }
            checkground();
            checkifmoving();
            player3slow();
            checkspeed();
            _root.p3health = health;
            _root.p3points = points;
            _root.p3kills = kills;
            _root.p3deaths = deaths;
            _root.p3suicides = suicide;
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
      }
   }
}
