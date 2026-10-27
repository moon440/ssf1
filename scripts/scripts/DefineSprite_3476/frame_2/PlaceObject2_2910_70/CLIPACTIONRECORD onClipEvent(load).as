onClipEvent(load){
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
   function checkPause()
   {
      if(Key.isDown(8))
      {
         if(letgo)
         {
            if(_parent.gamepause == false)
            {
               _parent.gamepause = true;
               letgo = false;
               this.gotoAndStop("paused");
               _parent.startmusic.setVolume(30);
               _parent.player1.player1.stance.stop();
               _parent.player2.player2.stance.stop();
               _parent.player3.player3.stance.stop();
               _parent.player4.player4.stance.stop();
               _parent.p1attackbox.p1attackbox.stop();
               _parent.p2attackbox.p2attackbox.stop();
               _parent.p3attackbox.p3attackbox.stop();
               _parent.p4attackbox.p4attackbox.stop();
               i = 1;
               while(i <= 30)
               {
                  if(!(_parent["item" + i] == "motionsense" and _parent["item" + i].bombset))
                  {
                     if(_parent["item" + i].active)
                     {
                        _parent["item" + i].stop();
                     }
                  }
                  i++;
               }
               _parent.blow.stop();
               _parent.p1health.points.stop();
               _parent.p2health.points.stop();
               _parent.p3health.points.stop();
               _parent.p4health.points.stop();
               reset = 0;
            }
            else if(_parent.gamepause == true)
            {
               _parent.gamepause = false;
               letgo = false;
               this.gotoAndStop("notpaused");
               _parent.startmusic.setVolume(100);
               _parent.player1.player1.stance.play();
               _parent.player2.player2.stance.play();
               _parent.player3.player3.stance.play();
               _parent.player4.player4.stance.play();
               _parent.p1attackbox.p1attackbox.play();
               _parent.p2attackbox.p2attackbox.play();
               _parent.p3attackbox.p3attackbox.play();
               _parent.p4attackbox.p4attackbox.play();
               i = 1;
               while(i <= 30)
               {
                  if(!(_parent["item" + i] == "motionsense" and _parent["item" + i].bombset))
                  {
                     if(_parent["item" + i].active)
                     {
                        _parent["item" + i].play();
                     }
                  }
                  i++;
               }
               _parent.blow.play();
               _parent.p1health.points.play();
               _parent.p2health.points.play();
               _parent.p3health.points.play();
               _parent.p4health.points.play();
            }
         }
      }
      else
      {
         letgo = true;
      }
      if(_parent.gamepause == true and Key.isDown(8))
      {
         reset += 0.03333333333333333;
         if(reset >= 3)
         {
            _parent.nocontest = true;
            _parent.startmusic.setVolume(100);
            _parent.startmusic.stop();
            _root.savedata.data.records.misc[8]++;
            _parent.gotoAndPlay("Classic Menu");
         }
      }
      else
      {
         reset = 0;
      }
   }
   this.pausebox._visible = false;
   _parent.gamepause = false;
   letgo = true;
   originalx = this._x;
   originaly = this._y;
}
