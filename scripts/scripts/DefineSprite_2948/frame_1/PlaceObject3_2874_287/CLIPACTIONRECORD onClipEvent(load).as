onClipEvent(load){
   function checkChar()
   {
      if(_parent.player1.player1.sheik == true and zelda)
      {
         zelda = false;
         this.lifehead.attachMovie("sheiklife","lifehead",10);
      }
      else if(_parent.player1.player1.sheik == false and !zelda)
      {
         zelda = true;
         this.lifehead.attachMovie("zeldalife","lifehead",10);
      }
   }
   function centerit()
   {
      if(_parent._x > _parent.originalx)
      {
         this._x = originalx - _parent.centerdistance;
      }
      else if(_parent._x < _parent.originalx)
      {
         this._x = originalx + _parent.centerdistance;
      }
      if(_parent._y > _parent.originaly)
      {
         this._y = originaly - _parent.middledistance;
      }
      else if(_parent._y < _parent.originaly)
      {
         this._y = originaly + _parent.middledistance;
      }
   }
   function checkGame()
   {
      if(_parent.setgameto == "ffa")
      {
         if(_parent.player2.dead and _parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 1";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 2";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player2.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 3";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player2.dead and _parent.player3.dead)
         {
            _parent.winner = "Player 4";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "2v21")
      {
         if(_parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 1 and Player 2";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player2.dead)
         {
            _parent.winner = "Player 3 and Player 4";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "2v22")
      {
         if(_parent.ground.dead and _parent.player3.dead)
         {
            _parent.winner = "Player 2 and Player 4";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.player2.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 1 and Player 3";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "1v31")
      {
         if(_parent.player2.dead and _parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 1";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead)
         {
            _parent.winner = "Player 2, Player 3, and Player 4";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "1v32")
      {
         if(_parent.ground.dead and _parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 2";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.player2.dead)
         {
            _parent.winner = "Player 1, Player 3, and Player 4";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "1v33")
      {
         if(_parent.ground.dead and _parent.player2.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 3";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.player3.dead)
         {
            _parent.winner = "Player 1, Player 2, and Player 4";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "2v1v1")
      {
         if(_parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 1 and Player 2";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player2.dead and _parent.player3.dead)
         {
            _parent.winner = "Player 4";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player2.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 3";
            _parent.playgame = false;
            _parent.play();
         }
      }
      else if(_parent.setgameto == "1v1v2")
      {
         if(_parent.ground.dead and _parent.player2.dead)
         {
            _parent.winner = "Player 3 and Player 4";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.ground.dead and _parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 2";
            _parent.playgame = false;
            _parent.play();
         }
         else if(_parent.player2.dead and _parent.player3.dead and _parent.player4.dead)
         {
            _parent.winner = "Player 1";
            _parent.playgame = false;
            _parent.play();
         }
      }
   }
   originalx = this._x;
   originaly = this._y;
   player1character = _parent._parent.player1character;
   zelda = true;
   if(_root.player1.exist)
   {
      this.lifehead.attachMovie(_root.player1character + "life","lifehead",10);
   }
   if(!_root.usinglives)
   {
      this.life._visible = false;
   }
}
