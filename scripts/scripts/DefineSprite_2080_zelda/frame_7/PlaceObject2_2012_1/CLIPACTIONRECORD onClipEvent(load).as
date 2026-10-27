onClipEvent(load){
   function loadNew()
   {
      if(_parent._parent.player == 1)
      {
         _parent.sheik = true;
         _parent._parent._parent.ground.maxmove = 19;
         _parent._parent._parent.ground.maxjump = -15;
         _parent._parent._parent.ground.jumpdamage = 0;
         _parent._parent._parent.ground.turnaround = 20;
         _parent._parent._parent.ground.recoveryrate = 8;
         _parent._parent._parent.ground.smash = 4;
         _parent._parent._parent.ground.normal = 2;
         _parent._parent._parent.ground.air = 6;
         _parent._parent._parent.ground.revdamage = 6;
         _parent._parent._parent.ground.revspeed = 0;
         _parent._parent._parent.ground.healthdivision = 18;
         _parent._parent._parent.ground.attackboost = 0;
         _parent._parent._parent.ground.attackspace = 15;
         _parent._parent._parent.ground.attacklength = 23;
         _parent._parent._parent.ground.slow = 0.8;
         _parent._parent._parent.ground.speedup = 0.7;
         _parent._parent._parent.ground.speeddown = 1;
         _parent._parent._parent.ground.jumptimes = 2;
         _parent._parent._parent.player1.attachMovie("sheik","player1",10);
      }
      else if(_parent._parent.player == 2)
      {
         _parent.sheik = true;
         _parent._parent._parent.player2.maxmove = 19;
         _parent._parent._parent.player2.maxjump = -15;
         _parent._parent._parent.player2.jumpdamage = 0;
         _parent._parent._parent.player2.turnaround = 20;
         _parent._parent._parent.player2.recoveryrate = 8;
         _parent._parent._parent.player2.smash = 4;
         _parent._parent._parent.player2.normal = 2;
         _parent._parent._parent.player2.air = 6;
         _parent._parent._parent.player2.revdamage = 6;
         _parent._parent._parent.player2.revspeed = 0;
         _parent._parent._parent.player2.healthdivision = 18;
         _parent._parent._parent.player2.attackboost = 0;
         _parent._parent._parent.player2.attackspace = 15;
         _parent._parent._parent.player2.attacklength = 23;
         _parent._parent._parent.player2.slow = 0.8;
         _parent._parent._parent.player2.speedup = 0.7;
         _parent._parent._parent.player2.speeddown = 1;
         _parent._parent._parent.player2.jumptimes = 2;
         _parent._parent._parent.player2.attachMovie("sheik","player2",10);
      }
      else if(_parent._parent.player == 3)
      {
         _parent.sheik = true;
         _parent._parent._parent.player3.maxjump = -15;
         _parent._parent._parent.player3.jumpdamage = 0;
         _parent._parent._parent.player3.turnaround = 20;
         _parent._parent._parent.player3.recoveryrate = 8;
         _parent._parent._parent.player3.smash = 4;
         _parent._parent._parent.player3.normal = 2;
         _parent._parent._parent.player3.air = 6;
         _parent._parent._parent.player3.revdamage = 6;
         _parent._parent._parent.player3.revspeed = 0;
         _parent._parent._parent.player3.healthdivision = 18;
         _parent._parent._parent.player3.attackboost = 0;
         _parent._parent._parent.player3.attackspace = 15;
         _parent._parent._parent.player3.attacklength = 23;
         _parent._parent._parent.player3.slow = 0.8;
         _parent._parent._parent.player3.speedup = 0.7;
         _parent._parent._parent.player3.speeddown = 1;
         _parent._parent._parent.player3.jumptimes = 2;
         _parent._parent._parent.player3.attachMovie("sheik","player3",10);
      }
      else if(_parent._parent.player == 4)
      {
         _parent.sheik = true;
         _parent._parent._parent.player4.maxjump = -15;
         _parent._parent._parent.player4.jumpdamage = 0;
         _parent._parent._parent.player4.turnaround = 20;
         _parent._parent._parent.player4.recoveryrate = 8;
         _parent._parent._parent.player4.smash = 4;
         _parent._parent._parent.player4.normal = 2;
         _parent._parent._parent.player4.air = 6;
         _parent._parent._parent.player4.revdamage = 6;
         _parent._parent._parent.player4.revspeed = 0;
         _parent._parent._parent.player4.healthdivision = 18;
         _parent._parent._parent.player4.attackboost = 0;
         _parent._parent._parent.player4.attackspace = 15;
         _parent._parent._parent.player4.attacklength = 23;
         _parent._parent._parent.player4.slow = 0.8;
         _parent._parent._parent.player4.speedup = 0.7;
         _parent._parent._parent.player4.speeddown = 1;
         _parent._parent._parent.player4.jumptimes = 2;
         _parent._parent._parent.player4.attachMovie("sheik","player4",10);
      }
      done = true;
   }
   wait = 0;
   done = false;
}
