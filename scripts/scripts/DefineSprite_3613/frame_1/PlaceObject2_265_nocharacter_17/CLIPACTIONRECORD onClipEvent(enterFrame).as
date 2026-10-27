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
               player4jump();
               goright();
               goleft();
            }
            else if(target == "player2")
            {
               checkattack2();
               checkduck2();
               checkFall();
               player4jump2();
               goright2();
               goleft2();
            }
            else if(target == "player3")
            {
               checkattack3();
               checkduck3();
               checkFall();
               player4jump3();
               goright3();
               goleft3();
            }
            checkground();
            checkifmoving();
            player4slow();
            checkspeed();
            _root.p4health = health;
            _root.p4points = points;
            _root.p4kills = kills;
            _root.p4deaths = deaths;
            _root.p4suicides = suicide;
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
         _parent.p4health._visible = false;
      }
   }
}
