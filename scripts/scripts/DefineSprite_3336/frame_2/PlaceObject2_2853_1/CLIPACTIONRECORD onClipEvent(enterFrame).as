onClipEvent(enterFrame){
   if(_parent.gamepause == false and _parent.gamestarting == false)
   {
      if(!dead)
      {
         if(_parent.playgame == true)
         {
            getKey();
            checkdeath();
            setalpha();
            groundx = this._x;
            groundy = this._y;
            playerx = _parent.player1._x;
            playery = _parent.player1._y;
            checkhit();
            checkhurt();
            checkifmoving();
            checkattack();
            checkground();
            checkFall();
            player1jump();
            watchGround();
            watchGround2();
            watchGround3();
            goright();
            goleft();
            checkduck();
            player1slow();
            checkspeed();
            Timer();
            _root.p1health = health;
            _root.p1points = points;
            _root.p1kills = kills;
            _root.p1deaths = deaths;
            _root.p1suicides = suicide;
            _parent.temptimer = temptimer;
         }
         else
         {
            _parent.player1._visible = false;
         }
      }
      else
      {
         _parent.player1._visible = false;
         dead = true;
         _parent.p1health._visible = false;
         getKey();
         deadControl();
         standing();
      }
   }
}
