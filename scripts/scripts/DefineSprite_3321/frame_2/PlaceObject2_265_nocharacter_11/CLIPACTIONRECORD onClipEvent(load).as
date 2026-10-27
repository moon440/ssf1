onClipEvent(load){
   function checkItem()
   {
      if(_parent._parent.player2.control !== "cpu")
      {
         pickupwait++;
         i = 1;
         while(i < 30)
         {
            if(_parent.player2.hitTest(_parent["item" + i]) and _parent["item" + i].pickedup == false and !holding and control and _parent["item" + i].active == false and onground and pickupwait > 15)
            {
               holding = true;
               _parent["item" + i].pickedup = true;
               _parent["item" + i].player = 2;
               itemnumber = i;
               pickup = new Sound();
               pickup.attachSound("itempickup");
               pickup.start();
               if(facing == "left")
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            i++;
         }
         if(holding)
         {
            throwwait++;
            if(facing == "left")
            {
               moveamount = _parent["item" + itemnumber]._width;
            }
            else
            {
               moveamount = 0;
            }
            _parent["item" + itemnumber]._x = _parent.player2._x + _parent.player2._width / 2 - moveamount;
            _parent["item" + itemnumber]._y = _parent.player2._y - 30;
            if(control and throwwait > 15 and up)
            {
               _parent["item" + itemnumber].gotoAndPlay("up");
               throwwait = 0;
               pickupwait = 0;
               _parent["item" + itemnumber].facing = facing;
            }
            else if(control and throwwait > 15 and down and !onground)
            {
               _parent["item" + itemnumber].gotoAndPlay("down");
               throwwait = 0;
               pickupwait = 0;
               _parent["item" + itemnumber].facing = facing;
            }
            if(control and throwwait > 15 and !up and !down)
            {
               _parent["item" + itemnumber].gotoAndPlay("normal");
               throwwait = 0;
               pickupwait = 0;
               _parent["item" + itemnumber].facing = facing;
            }
         }
      }
      else
      {
         pickupwait++;
         if(_root.currentmode == "Training")
         {
            if(_parent.remain.cpuattack == true)
            {
               i = 1;
               while(i < 30)
               {
                  if(_parent.player2.hitTest(_parent["item" + i]) and _parent["item" + i].pickedup == false and !holding and _parent["item" + i].active == false and onground and pickupwait > 15)
                  {
                     holding = true;
                     _parent["item" + i].pickedup = true;
                     _parent["item" + i].player = 2;
                     itemnumber = i;
                     pickup = new Sound();
                     pickup.attachSound("itempickup");
                     pickup.start();
                     if(facing == "left")
                     {
                        _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                        _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
                     }
                  }
                  i++;
               }
               if(holding)
               {
                  throwwait++;
                  if(facing == "left")
                  {
                     moveamount = _parent["item" + itemnumber]._width;
                  }
                  else
                  {
                     moveamount = 0;
                  }
                  _parent["item" + itemnumber]._x = _parent.player2._x + _parent.player2._width / 2 - moveamount;
                  _parent["item" + itemnumber]._y = _parent.player2._y - 30;
                  if(attacking and throwwait > 15)
                  {
                     _parent["item" + itemnumber].gotoAndPlay(attacktype);
                     throwwait = 0;
                     pickupwait = 0;
                     _parent["item" + itemnumber].facing = facing;
                  }
               }
            }
         }
         else
         {
            i = 1;
            while(i < 30)
            {
               if(_parent.player2.hitTest(_parent["item" + i]) and _parent["item" + i].pickedup == false and !holding and _parent["item" + i].active == false and onground and pickupwait > 15)
               {
                  holding = true;
                  _parent["item" + i].pickedup = true;
                  _parent["item" + i].player = 2;
                  itemnumber = i;
                  pickup = new Sound();
                  pickup.attachSound("itempickup");
                  pickup.start();
                  if(facing == "left")
                  {
                     _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                     _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
                  }
               }
               i++;
            }
            if(holding)
            {
               throwwait++;
               if(facing == "left")
               {
                  moveamount = _parent["item" + itemnumber]._width;
               }
               else
               {
                  moveamount = 0;
               }
               _parent["item" + itemnumber]._x = _parent.player2._x + _parent.player2._width / 2 - moveamount;
               _parent["item" + itemnumber]._y = _parent.player2._y - 30;
               if(attacking and throwwait > 15)
               {
                  _parent["item" + itemnumber].gotoAndPlay(attacktype);
                  throwwait = 0;
                  pickupwait = 0;
                  _parent["item" + itemnumber].facing = facing;
               }
            }
         }
      }
   }
   function checkFall()
   {
      if(_parent._parent.player2.control == "human")
      {
         if(down and onground)
         {
            downcount += 0.03333333333333333;
         }
         else
         {
            downcount = 0;
         }
         if(this.hitTest(_parent.platform1) and onground and downcount > 0.5)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform2) and onground and downcount > 0.5)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform3) and onground and downcount > 0.5)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform4) and onground and downcount > 0.5)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform5) and onground and downcount > 0.5)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         if(falldown and !this.hitTest(_parent.platform5) and !this.hitTest(_parent.platform4) and !this.hitTest(_parent.platform3) and !this.hitTest(_parent.platform2) and !this.hitTest(_parent.platform1))
         {
            falldown = false;
         }
      }
      else if(target == "player1")
      {
         if(onground)
         {
            downcount += 0.03333333333333333;
         }
         else
         {
            downcount = 0;
         }
         if(_root.currentmode == "Training" and _parent.remain.cpuattack == false)
         {
            downcount = 0;
         }
         if(this.hitTest(_parent.platform1) and onground and downcount > 0.5 and _parent.player1._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform2) and onground and downcount > 0.5 and _parent.player1._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform3) and onground and downcount > 0.5 and _parent.player1._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform4) and onground and downcount > 0.5 and _parent.player1._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform5) and onground and downcount > 0.5 and _parent.player1._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         if(falldown and !this.hitTest(_parent.platform5) and !this.hitTest(_parent.platform4) and !this.hitTest(_parent.platform3) and !this.hitTest(_parent.platform2) and !this.hitTest(_parent.platform1))
         {
            falldown = false;
         }
      }
      else if(target == "player3")
      {
         if(onground)
         {
            downcount += 0.03333333333333333;
         }
         else
         {
            downcount = 0;
         }
         if(this.hitTest(_parent.platform1) and onground and downcount > 0.5 and _parent.player3._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform2) and onground and downcount > 0.5 and _parent.player3._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform3) and onground and downcount > 0.5 and _parent.player3._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform4) and onground and downcount > 0.5 and _parent.player3._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform5) and onground and downcount > 0.5 and _parent.player3._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         if(falldown and !this.hitTest(_parent.platform5) and !this.hitTest(_parent.platform4) and !this.hitTest(_parent.platform3) and !this.hitTest(_parent.platform2) and !this.hitTest(_parent.platform1))
         {
            falldown = false;
         }
      }
      else if(target == "player4")
      {
         if(onground)
         {
            downcount += 0.03333333333333333;
         }
         else
         {
            downcount = 0;
         }
         if(this.hitTest(_parent.platform1) and onground and downcount > 0.5 and _parent.player4._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform2) and onground and downcount > 0.5 and _parent.player4._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform3) and onground and downcount > 0.5 and _parent.player4._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform4) and onground and downcount > 0.5 and _parent.player4._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         else if(this.hitTest(_parent.platform5) and onground and downcount > 0.5 and _parent.player4._y > this._y)
         {
            downcount = 0;
            onground = false;
            falling = true;
            jumping = true;
            falldown = true;
            jump = 15;
         }
         if(falldown and !this.hitTest(_parent.platform5) and !this.hitTest(_parent.platform4) and !this.hitTest(_parent.platform3) and !this.hitTest(_parent.platform2) and !this.hitTest(_parent.platform1))
         {
            falldown = false;
         }
      }
   }
   function getDistances()
   {
      if(exist1)
      {
         p1distance = Math.sqrt(Math.pow(this._x - _parent.player1._x + (this._y - _parent.player1._y),2));
      }
      else
      {
         p1distance = 999999;
      }
      if(exist3)
      {
         p3distance = Math.sqrt(Math.pow(this._x - _parent.player3._x + (this._y - _parent.player3._y),2));
      }
      else
      {
         p3distance = 999999;
      }
      if(exist4)
      {
         p4distance = Math.sqrt(Math.pow(this._x - _parent.player4._x + (this._y - _parent.player4._y),2));
      }
      else
      {
         p4distance = 999999;
      }
   }
   function attackwho()
   {
      if(_parent.setgameto == "ffa")
      {
         if(p1distance < p3distance and p1distance < p4distance and _parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(exist3 and p3distance < p1distance and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p1distance and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(_parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(_parent.player3.dead == false and exist3)
         {
            target = "player3";
         }
         else if(_parent.player4.dead == false and exist4)
         {
            target = "player4";
         }
         else
         {
            target = "player1";
         }
      }
      else if(_parent.setgameto == "2v21")
      {
         if(exist3 and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(exist3 and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else
         {
            target = "player1";
         }
      }
      else if(_parent.setgameto == "2v22")
      {
         if(exist3 and p3distance < p1distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(p1distance < p3distance and _parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(exist3 and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(_parent.ground.dead == false)
         {
            target = "player1";
         }
         else
         {
            target = "player1";
         }
      }
      else if(_parent.setgameto == "1v31")
      {
         target = "player1";
      }
      else if(_parent.setgameto == "1v32")
      {
         if(p1distance < p3distance and p1distance < p4distance and _parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(exist3 and p3distance < p1distance and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p1distance and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(_parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(_parent.player3.dead == false and exist3)
         {
            target = "player3";
         }
         else if(_parent.player4.dead == false and exist4)
         {
            target = "player4";
         }
         else
         {
            target = "player1";
         }
      }
      else if(_parent.setgameto == "1v33")
      {
         target = "player3";
      }
      else if(_parent.setgameto == "2v1v1")
      {
         if(exist3 and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(exist3 and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else
         {
            target = "player1";
         }
      }
      else if(_parent.setgameto == "1v1v2")
      {
         if(p1distance < p3distance and p1distance < p4distance and _parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(exist3 and p3distance < p1distance and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p1distance and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(_parent.ground.dead == false)
         {
            target = "player1";
         }
         else if(_parent.player3.dead == false and exist3)
         {
            target = "player3";
         }
         else if(_parent.player4.dead == false and exist4)
         {
            target = "player4";
         }
         else
         {
            target = "player1";
         }
      }
   }
   function minuteTimer()
   {
      temptimer++;
      if(temptimer >= 1800)
      {
         temptimer = 0;
      }
   }
   function getKey()
   {
      if(Key.isDown(87))
      {
         up = true;
      }
      else
      {
         up = false;
      }
      if(Key.isDown(83))
      {
         down = true;
      }
      else
      {
         down = false;
      }
      if(Key.isDown(65))
      {
         left = true;
      }
      else
      {
         left = false;
      }
      if(Key.isDown(68))
      {
         right = true;
      }
      else
      {
         right = false;
      }
      if(Key.isDown(70))
      {
         control = true;
      }
      else
      {
         control = false;
      }
      if(Key.isDown(71))
      {
         space = true;
      }
      else
      {
         space = false;
      }
   }
   function setalpha()
   {
      checkItem();
      tempalpha = _parent.player2._alpha;
      if(tempalpha < 100)
      {
         _parent.player2._alpha += 2;
      }
      else if(tempalpha >= 100)
      {
         fading = false;
      }
   }
   function checkdeath()
   {
      if(health > maxdamage)
      {
         maxdamage = health;
      }
      if(this._y > _parent.ground._y + bottombounds)
      {
         death = "bottom";
      }
      else if(this._y < _parent.ground._y - topbounds)
      {
         death = "air";
      }
      else if(this._x < _parent.ground._x - leftbounds)
      {
         death = "left";
      }
      else if(this._x > _parent.ground._x + _parent.ground._width + rightbounds)
      {
         death = "right";
      }
      else
      {
         death = "no";
      }
      if(death == "left" and !fading)
      {
         _parent.blow.gotoAndPlay("left");
         _parent.player2._alpha = 0;
         tempmovex = Math.sqrt(Math.pow(this._x - (_parent.ground._x + _parent.ground._width / 2),2));
         tempmovey = Math.sqrt(Math.pow(this._y - (_parent.ground._y - 400),2));
         this._x += tempmovex;
         this._y -= tempmovey;
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         jump = 0;
         speed = 0;
         fading = true;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p2lives -= 1;
         }
         health = _root.healthreset;
         checkPoints();
      }
      else if(death == "right" and !fading)
      {
         _parent.blow.gotoAndPlay("right");
         _parent.player2._alpha = 0;
         tempmovex = Math.sqrt(Math.pow(this._x - (_parent.ground._x + _parent.ground._width / 2),2));
         tempmovey = Math.sqrt(Math.pow(this._y - (_parent.ground._y - 400),2));
         this._x -= tempmovex;
         this._y -= tempmovey;
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         jump = 0;
         speed = 0;
         fading = true;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p2lives -= 1;
         }
         health = _root.healthreset;
         checkPoints();
      }
      else if(death == "air" and !fading)
      {
         _parent.blow.gotoAndPlay("top");
         _parent.player2._alpha = 0;
         tempmovex = _parent.ground._x + _parent.ground._width / 2 - this._x;
         tempmovey = Math.sqrt(Math.pow(this._y - (_parent.ground._y - 400),2));
         this._x += tempmovex;
         this._y += tempmovey;
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         jump = 0;
         speed = 0;
         fading = true;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p2lives -= 1;
         }
         health = _root.healthreset;
         checkPoints();
      }
      else if(death == "bottom" and !fading)
      {
         _parent.blow.gotoAndPlay("bottom");
         _parent.player2._alpha = 0;
         tempmovex = _parent.ground._x + _parent.ground._width / 2 - this._x;
         tempmovey = Math.sqrt(Math.pow(this._y - (_parent.ground._y - 400),2));
         this._x += tempmovex;
         this._y -= tempmovey;
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         jump = 0;
         speed = 0;
         fading = true;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p2lives -= 1;
         }
         health = _root.healthreset;
         checkPoints();
      }
   }
   function checkPoints()
   {
      jumps = 0;
      deaths += 1;
      _root.savedata.data.records[player2character][12]++;
      if(lasthit == 1)
      {
         _parent.ground.kills += 1;
         _parent.ground.points += 1;
         _root.savedata.data.records[player1character][11]++;
         if(!_root.usinglives)
         {
            _parent.p1health.points.gotoAndPlay("scoreplus");
         }
      }
      else if(lasthit == 3)
      {
         _parent.player3.kills += 1;
         _parent.player3.points += 1;
         _root.savedata.data.records[player3character][11]++;
         if(!_root.usinglives)
         {
            _parent.p3health.points.gotoAndPlay("scoreplus");
         }
      }
      else if(lasthit == 4)
      {
         _parent.player4.kills += 1;
         _parent.player4.points += 1;
         _root.savedata.data.records[player4character][11]++;
         if(!_root.usinglives)
         {
            _parent.p4health.points.gotoAndPlay("scoreplus");
         }
      }
      else
      {
         _root.savedata.data.records[player2character][13]++;
         suicide += 1;
      }
      points -= 1;
      if(!_root.usinglives)
      {
         _parent.p2health.points.gotoAndPlay("scoreminus");
      }
      if(_root.usinglives)
      {
         if(_root.currentmode == "VS")
         {
            if(lives <= 0)
            {
               dead = true;
               if(_root.currentmode == "VS")
               {
                  if(_parent._parent.player2.control == "human")
                  {
                     _parent.p2defeat.start();
                  }
                  else
                  {
                     _parent.cpudefeat.start();
                  }
               }
            }
         }
         else if(_root.p2lives <= 0)
         {
            dead = true;
            if(_root.currentmode == "VS")
            {
               if(_parent._parent.player2.control == "human")
               {
                  _parent.p2defeat.start();
               }
               else
               {
                  _parent.cpudefeat.start();
               }
            }
         }
      }
      lasthit = 0;
   }
   function attack()
   {
      _parent.player2.player2.gotoAndPlay("attacknormal");
   }
   function running()
   {
      _parent.player2.player2.gotoAndStop("running");
   }
   function ducka()
   {
      _parent.player2.player2.gotoAndPlay("ducking");
   }
   function standing()
   {
      _parent.player2.player2.gotoAndPlay("standing");
   }
   function jumpa()
   {
      _parent.player2.player2.gotoAndStop("jumping");
   }
   function fall()
   {
      _parent.player2.player2.gotoAndPlay("falling");
   }
   function attack2()
   {
      _parent.player2.player2.gotoAndPlay("attackforward");
   }
   function attackup()
   {
      _parent.player2.player2.gotoAndPlay("attackup");
   }
   function attackdown()
   {
      _parent.player2.player2.gotoAndPlay("attackdown");
   }
   function rolla()
   {
      _parent.player2.player2.gotoAndPlay("rolling");
   }
   function checkhurt()
   {
      hurtdelay++;
      if(hurtdelay >= recoveryrate and hurt)
      {
         hurt = false;
         if(!onground)
         {
            jumpa();
         }
         else if(onground and speed !== 0)
         {
            running();
         }
         else
         {
            standing();
         }
      }
   }
   function checkhit()
   {
      if(!fading)
      {
         if(_parent.player2.player2.hitTest(_parent.p1attackbox) and p1hurt)
         {
            health += _parent.ground.damage;
            health = Math.round(health);
            _root.savedata.data.records[player1character][21] += _parent.ground.damage;
            _root.savedata.data.records[player2character][21] += _parent.ground.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player2character][17] = health;
            }
            lasthit = 1;
            _parent.p1hitamount += 1;
            if(_parent.ground.damage == _parent.ground.air)
            {
               if(_parent.player1._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.ground.facing;
               }
               else
               {
                  hitdirection = "up";
                  otherdirection = _parent.ground.facing;
               }
            }
            else
            {
               hitdirection = _parent.ground.facing;
            }
            hit();
         }
         if(_parent.player2.player2.hitTest(_parent.player1.player1.attackbox) and p1hurt)
         {
            health += _parent.ground.damage;
            health = Math.round(health);
            _root.savedata.data.records[player1character][21] += _parent.ground.damage;
            _root.savedata.data.records[player2character][21] += _parent.ground.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player2character][17] = health;
            }
            lasthit = 1;
            _parent.p1hitamount += 1;
            if(_parent.ground.damage == _parent.ground.air)
            {
               if(_parent.player1._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.ground.facing;
               }
               else
               {
                  otherdirection = _parent.ground.facing;
                  hitdirection = "up";
               }
            }
            else
            {
               hitdirection = _parent.ground.facing;
            }
            hit();
         }
         if(_parent.player2.player2.hitTest(_parent.player3.player3.attackbox) and p3hurt)
         {
            health += _parent.player3.damage;
            health = Math.round(health);
            _root.savedata.data.records[player3character][21] += _parent.player3.damage;
            _root.savedata.data.records[player2character][21] += _parent.player3.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player2character][17] = health;
            }
            lasthit = 3;
            _parent.p3hitamount += 1;
            if(_parent.player3.damage == _parent.player3.air)
            {
               if(_parent.player3._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.player3.facing;
               }
               else
               {
                  otherdirection = _parent.player3.facing;
                  hitdirection = "up";
               }
            }
            else
            {
               hitdirection = _parent.player3.facing;
            }
            hit();
         }
         if(_parent.player2.player2.hitTest(_parent.player4.player4.attackbox) and p4hurt)
         {
            health += _parent.player4.damage;
            health = Math.round(health);
            _root.savedata.data.records[player4character][21] += _parent.player4.damage;
            _root.savedata.data.records[player2character][21] += _parent.player4.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player2character][17] = health;
            }
            lasthit = 4;
            _parent.p4hitamount += 1;
            if(_parent.player4.damage == _parent.player4.air)
            {
               if(_parent.player4._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.player4.facing;
               }
               else
               {
                  otherdirection = _parent.player4.facing;
                  hitdirection = "up";
               }
            }
            else
            {
               hitdirection = _parent.player4.facing;
            }
            hit();
         }
         if(_parent.player2.player2.hitTest(_parent.p3attackbox) and p3hurt)
         {
            health += _parent.player3.damage;
            health = Math.round(health);
            _root.savedata.data.records[player3character][21] += _parent.player3.damage;
            _root.savedata.data.records[player2character][21] += _parent.player3.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player2character][17] = health;
            }
            lasthit = 3;
            _parent.p3hitamount += 1;
            if(_parent.player3.damage == _parent.player3.air)
            {
               if(_parent.player3._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.player3.facing;
               }
               else
               {
                  hitdirection = "up";
               }
            }
            else
            {
               otherdirection = _parent.player3.facing;
               hitdirection = _parent.player3.facing;
            }
            hit();
         }
         if(_parent.player2.player2.hitTest(_parent.p4attackbox) and p4hurt)
         {
            health += _parent.player4.damage;
            health = Math.round(health);
            _root.savedata.data.records[player4character][21] += _parent.player4.damage;
            _root.savedata.data.records[player2character][21] += _parent.player4.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player2character][17] = health;
            }
            lasthit = 4;
            _parent.p4hitamount += 1;
            if(_parent.player4.damage == _parent.player4.air)
            {
               if(_parent.player4._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.player4.facing;
               }
               else
               {
                  otherdirection = _parent.player4.facing;
                  hitdirection = "up";
               }
            }
            else
            {
               hitdirection = _parent.player4.facing;
            }
            hit();
         }
         i = 1;
         while(i < 30)
         {
            if(_parent.player2.player2.hitTest(_parent["item" + i].attackbox) and _parent["item" + i].active == true)
            {
               itemplayer = _parent["item" + i].player;
               if(itemplayer !== 2 and _parent["item" + i].damage !== 0 and ["p" + itemplayer + "hurt"])
               {
                  health += _parent["item" + i].damage;
                  health = Math.round(health);
                  _root.savedata.data.records["player" + itemplayer + "character"][15] += _parent["item" + i].damage;
                  _root.savedata.data.records[player2character][21] += _parent["item" + i].damage;
                  if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
                  {
                     _root.savedata.data.records[player2character][17] = health;
                  }
                  lasthit = itemplayer;
                  _parent["p" + itemplayer + "hitamount"] += 1;
                  hitdirection = _parent["item" + i].facing;
                  hit();
               }
            }
            i++;
         }
      }
   }
   function hit()
   {
      var _loc4_;
      if(!hurt)
      {
         _root.p2hurtamount = _root.p2hurtamount + 1;
         _parent.p2health.play();
         attacking = false;
         vulnerable = false;
         ducking = false;
         control = false;
         rev = false;
         down = false;
         rolling = false;
         _loc4_ = Math.round(Math.random() * 4) + 1;
         hurtdelay = 0;
         _parent.player2.player2.gotoAndPlay("hurt");
         if(_loc4_ == 1)
         {
            punch1 = new Sound();
            punch1.attachSound("punch1");
            punch1.start();
         }
         else if(_loc4_ == 2)
         {
            punch2 = new Sound();
            punch2.attachSound("punch2");
            punch2.start();
         }
         else if(_loc4_ == 3)
         {
            punch3 = new Sound();
            punch3.attachSound("punch3");
            punch3.start();
         }
         else if(_loc4_ == 4)
         {
            punch4 = new Sound();
            punch4.attachSound("punch4");
            punch4.start();
         }
         else if(_loc4_ == 5)
         {
            punch5 = new Sound();
            punch5.attachSound("punch5");
            punch5.start();
         }
         if(!onground)
         {
            if(hitdirection == "left")
            {
               speed = -3;
               jump = -1;
            }
            else if(hitdirection == "right")
            {
               speed = 3;
               jump = -1;
            }
            else if(hitdirection == "up")
            {
               jump = -1;
            }
            else if(hitdirection == "down")
            {
               jump = 1;
            }
            speed *= Number(health / healthdivision * knockback);
            jump *= Number(health / healthdivision * knockup);
            this._y += jump;
         }
         else if(onground)
         {
            if(hitdirection == "left")
            {
               speed = -3;
               jump = -1;
            }
            else if(hitdirection == "right")
            {
               speed = 3;
               jump = -1;
            }
            else if(hitdirection == "up")
            {
               jump = -1;
            }
            else if(hitdirection == "down")
            {
               jump = -1;
            }
            rev = false;
            rolling = false;
            ducking = false;
            onground = false;
            jumping = true;
            speed *= Number(health / healthdivision * knockback);
            jump *= Number(health / healthdivision * knockup);
            this._y += jump;
         }
      }
      hurt = true;
   }
   function checkduck()
   {
      tempattack2 = Math.random();
      tempdistance2 = Math.sqrt(Math.pow(this._x - _parent.player1._x,2) + Math.pow(this._y - _parent.player1._y,2));
      if(onground and !hurt and tempattack2 < revchance and tempdistance > 50 and tempdistance2 < 150 and !rolling and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
      {
         control = false;
         down = true;
         if(down and !ducking)
         {
            ducking = true;
            if(!attacking)
            {
               ducka();
            }
            _root.p2crouchamount += 1;
         }
         rev = true;
         if(rev and !control)
         {
            if(!rolling and revspeed !== 0)
            {
               rolla();
               _root.p2dashamount += 1;
            }
            damage = revdamage;
            if(facing == "right")
            {
               speed = revspeed;
            }
            else if(facing == "left")
            {
               speed = - revspeed;
            }
            if(revspeed !== 0)
            {
               rolling = true;
               rev = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player2sound.shoot.start();
               }
               _root.p2attackamount += 1;
            }
            else
            {
               if(attackdelay > attackspace and !attacking)
               {
                  vulnerable = false;
                  attacking = true;
                  attackdelay = 0;
                  if(!onground)
                  {
                     _root.p2airamount += 1;
                  }
                  rolla();
                  if(_parent.player2.player2.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player2sound.shoot.start();
                  }
                  _root.p2attackamount += 1;
               }
               rev = false;
               rolling = false;
               ducking = false;
            }
         }
      }
   }
   function checkduck3()
   {
      tempattack2 = Math.random();
      tempdistance2 = Math.sqrt(Math.pow(this._x - _parent.player3._x,2) + Math.pow(this._y - _parent.player3._y,2));
      if(onground and !hurt and tempattack2 < revchance and tempdistance > 50 and tempdistance2 < 150 and !rolling and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
      {
         control = false;
         down = true;
         if(down and !ducking)
         {
            ducking = true;
            if(!attacking)
            {
               ducka();
            }
            _root.p2crouchamount += 1;
         }
         rev = true;
         if(rev and !control)
         {
            if(!rolling and revspeed !== 0)
            {
               rolla();
               _root.p2dashamount += 1;
            }
            damage = revdamage;
            if(facing == "right")
            {
               speed = revspeed;
            }
            else if(facing == "left")
            {
               speed = - revspeed;
            }
            if(revspeed !== 0)
            {
               rolling = true;
               rev = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player2sound.shoot.start();
               }
               _root.p2attackamount += 1;
            }
            else
            {
               if(attackdelay > attackspace and !attacking)
               {
                  vulnerable = false;
                  attacking = true;
                  attackdelay = 0;
                  if(!onground)
                  {
                     _root.p2airamount += 1;
                  }
                  rolla();
                  if(_parent.player2.player2.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player2sound.shoot.start();
                  }
                  _root.p2attackamount += 1;
               }
               rev = false;
               rolling = false;
               ducking = false;
            }
         }
      }
   }
   function checkduck4()
   {
      tempattack2 = Math.random();
      tempdistance2 = Math.sqrt(Math.pow(this._x - _parent.player4._x,2) + Math.pow(this._y - _parent.player4._y,2));
      if(onground and !hurt and tempattack2 < revchance and tempdistance > 50 and tempdistance2 < 150 and !rolling and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
      {
         control = false;
         down = true;
         if(down and !ducking)
         {
            ducking = true;
            if(!attacking)
            {
               ducka();
            }
            _root.p2crouchamount += 1;
         }
         rev = true;
         if(rev and !control)
         {
            if(!rolling and revspeed !== 0)
            {
               rolla();
               _root.p2dashamount += 1;
            }
            damage = revdamage;
            if(facing == "right")
            {
               speed = revspeed;
            }
            else if(facing == "left")
            {
               speed = - revspeed;
            }
            if(revspeed !== 0)
            {
               rolling = true;
               rev = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player2sound.shoot.start();
               }
               _root.p2attackamount += 1;
            }
            else
            {
               if(attackdelay > attackspace and !attacking)
               {
                  vulnerable = false;
                  attacking = true;
                  attackdelay = 0;
                  if(!onground)
                  {
                     _root.p2airamount += 1;
                  }
                  rolla();
                  if(_parent.player2.player2.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player2sound.shoot.start();
                  }
                  _root.p2attackamount += 1;
               }
               rev = false;
               rolling = false;
               ducking = false;
            }
         }
      }
   }
   function Hcheckduck()
   {
      if(onground and !hurt and !rolling)
      {
         if(down and !ducking)
         {
            ducking = true;
            if(!attacking)
            {
               ducka();
            }
         }
         if(!down and ducking and !control and !rolling and !rev)
         {
            ducking = false;
         }
         if(ducking and control)
         {
            if(!rev and revspeed !== 0)
            {
               rolla();
            }
            damage = revdamage;
            rev = true;
         }
         if(rev)
         {
            if(facing == "right")
            {
               speed = revspeed;
            }
            else if(facing == "left")
            {
               speed = - revspeed;
            }
            if(revspeed !== 0)
            {
               rolling = true;
               rev = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player2sound.shoot.start();
               }
               _root.p2attackamount += 1;
            }
            else
            {
               if(attackdelay > attackspace and !attacking and down)
               {
                  vulnerable = false;
                  attacking = true;
                  attackdelay = 0;
                  if(!onground)
                  {
                     _root.p2airamount += 1;
                  }
                  rolla();
                  if(_parent.player2.player2.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player2sound.shoot.start();
                  }
                  _root.p2attackamount += 1;
               }
               rev = false;
               rolling = false;
               ducking = false;
            }
         }
      }
   }
   function checkcliff()
   {
      if(playerx < _parent.range.rangex + 50 and !hurt and !onground)
      {
         cliff = true;
         if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and attackboost > 0)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player2.player2.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player2sound.aforward.start();
            }
            _root.p2attackamount += 1;
            damage = smash;
            attack2();
            speed += attackboost;
         }
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            running();
         }
         else if(!movingright and jumping and !hurt)
         {
            if(facing !== "right")
            {
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
            }
            facing = "right";
         }
         if(onground)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed += speedup;
         movingright = true;
         movingleft = false;
      }
      else if(playerx > _parent.range.rangex + _parent.range._width - 50 and !onground)
      {
         cliff = true;
         if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and attackboost > 0)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player2.player2.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player2sound.aforward.start();
            }
            _root.p2attackamount += 1;
            damage = smash;
            attack2();
            speed -= attackboost;
         }
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            facing = "left";
            running();
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
            }
            facing = "left";
         }
         if(onground)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed -= speedup;
         movingleft = true;
         movingright = false;
      }
      else if(Math.sqrt(Math.pow(playerx - _parent.range.rangex + 50,2)) < 50 and !hurt and onground)
      {
         cliff = true;
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            running();
         }
         else if(!movingright and jumping and !hurt)
         {
            if(facing !== "right")
            {
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
            }
            facing = "right";
         }
         if(onground)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed += speedup;
         movingright = true;
         movingleft = false;
      }
      else if(Math.sqrt(Math.pow(playerx - _parent.range.rangex + _parent.range._width - 50,2)) < 50 and onground and !hurt)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            facing = "left";
            running();
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
            }
            facing = "left";
         }
         if(onground)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed -= speedup;
         movingleft = true;
         movingright = false;
         cliff = true;
      }
      else
      {
         cliff = false;
      }
   }
   function checkattack()
   {
      attackdelay++;
      tempattack = Math.random();
      tempdistance = Math.sqrt(Math.pow(this._x - _parent.player1._x,2) + Math.pow(this._y - _parent.player1._y,2));
      if(!hurt and tempattack <= chanceattack)
      {
         if(attackdelay > attackspace and !onground and !ducking and !rev and !rolling and Math.abs(_parent.player1._y - this._y) < 20 and _parent.ground.jump > 3 and this._y < _parent.player1._y)
         {
            attacktype = "down";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  adown.start();
               }
               else
               {
                  _parent.player2sound.adown.start();
               }
               damage = air;
               attackdown();
               speed *= slow;
               _root.p2airamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and _parent.player1._x > this._x and tempdistance < 80 and tempdistance > 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player2sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p2smashamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and _parent.player1._x < this._x and tempdistance < 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player2sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p2smashamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and Math.abs(_parent.player1._y - this._y) < 20 and _parent.ground.jump < -1 and this._y > _parent.player1._y)
         {
            attacktype = "up";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aup.start();
               }
               else
               {
                  _parent.player2sound.aup.start();
               }
               damage = air;
               speed *= slow;
               attackup();
               _root.p2airamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "right" and this._x < _parent.player1._x and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player2sound.anormal.start();
               }
               damage = normal;
               speed *= slow;
               attack();
               _root.p2normalamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "left" and this._x > _parent.player1._x and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player2sound.anormal.start();
               }
               damage = normal;
               _root.p2normalamount += 1;
               _root.p2attackamount += 1;
               attack();
            }
         }
         if(attacking)
         {
            if(facing == "right" and speed < 10)
            {
               speed += attackboost;
            }
            else if(facing == "left" and speed > -10)
            {
               speed -= attackboost;
            }
         }
         if(attackdelay > attacklength)
         {
            vulnerable = true;
            attacking = false;
         }
         if(!onground and attackdelay == attacklength)
         {
            jumpa();
         }
         if(onground and attackdelay == attacklength)
         {
            attacking = false;
            standing();
         }
         if(onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
            standing();
         }
         if(!onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
         }
      }
   }
   function checkattack3()
   {
      attackdelay++;
      tempattack = Math.random();
      tempdistance = Math.sqrt(Math.pow(this._x - _parent.player3._x,2) + Math.pow(this._y - _parent.player3._y,2));
      if(!hurt and tempattack <= chanceattack)
      {
         if(attackdelay > attackspace and !onground and !ducking and !rev and !rolling and Math.abs(_parent.player3._y - this._y) < 20 and _parent.player3.jump > 3 and this._y < _parent.player3._y)
         {
            attacktype = "down";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  adown.start();
               }
               else
               {
                  _parent.player2sound.adown.start();
               }
               damage = air;
               attackdown();
               speed *= slow;
               _root.p2airamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and _parent.player3._x > this._x and tempdistance < 80 and tempdistance > 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player2sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p2smashamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and _parent.player3._x < this._x and tempdistance < 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player2sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p2smashamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and Math.abs(_parent.player3._y - this._y) < 20 and _parent.player3.jump < -1 and this._y > _parent.player3._y)
         {
            attacktype = "up";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aup.start();
               }
               else
               {
                  _parent.player2sound.aup.start();
               }
               damage = air;
               attackup();
               speed *= slow;
               _root.p2airamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "right" and this._x < _parent.player3._x and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player2sound.anormal.start();
               }
               damage = normal;
               attack();
               speed *= slow;
               _root.p2normalamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "left" and this._x > _parent.player3._x and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player2sound.anormal.start();
               }
               damage = normal;
               speed *= slow;
               _root.p2normalamount += 1;
               _root.p2attackamount += 1;
               attack();
            }
         }
         if(attacking)
         {
            if(facing == "right" and speed < 10)
            {
               speed += attackboost;
            }
            else if(facing == "left" and speed > -10)
            {
               speed -= attackboost;
            }
         }
         if(attackdelay > attacklength)
         {
            vulnerable = true;
            attacking = false;
         }
         if(!onground and attackdelay == attacklength)
         {
            jumpa();
         }
         if(onground and attackdelay == attacklength)
         {
            attacking = false;
            standing();
         }
         if(onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
            standing();
         }
         if(!onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
         }
      }
   }
   function checkattack4()
   {
      attackdelay++;
      tempattack = Math.random();
      tempdistance = Math.sqrt(Math.pow(this._x - _parent.player4._x,2) + Math.pow(this._y - _parent.player4._y,2));
      if(!hurt and tempattack <= chanceattack)
      {
         if(attackdelay > attackspace and !onground and !ducking and !rev and !rolling and Math.abs(_parent.player4._y - this._y) < 20 and _parent.player4.jump > 3 and this._y < _parent.player4._y)
         {
            attacktype = "down";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  adown.start();
               }
               else
               {
                  _parent.player2sound.adown.start();
               }
               damage = air;
               attackdown();
               _root.p2airamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and _parent.player4._x > this._x and tempdistance < 80 and tempdistance > 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player2sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p2smashamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and _parent.player4._x < this._x and tempdistance < 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player2sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p2smashamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and Math.abs(_parent.player4._y - this._y) < 20 and _parent.player4.jump < -1 and this._y > _parent.player4._y)
         {
            attacktype = "up";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  aup.start();
               }
               else
               {
                  _parent.player2sound.aup.start();
               }
               damage = air;
               attackup();
               speed *= slow;
               _root.p2airamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "right" and this._x < _parent.player4._x and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player2.player2.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player2sound.anormal.start();
               }
               damage = normal;
               attack();
               speed *= slow;
               _root.p2normalamount += 1;
               _root.p2attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "left" and this._x > _parent.player4._x and _root.currentlevel !== "classic7" and _root.currentmode !== "multiman")
         {
            attacktype = "normal";
            if(!holding)
            {
               attackdelay = 0;
               vulnerable = false;
               attacking = true;
               if(_parent.player2.player2.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player2sound.anormal.start();
               }
               damage = normal;
               speed *= slow;
               _root.p2normalamount += 1;
               _root.p2attackamount += 1;
               attack();
            }
         }
         if(attacking)
         {
            if(facing == "right" and speed < 10)
            {
               speed += attackboost;
            }
            else if(facing == "left" and speed > -10)
            {
               speed -= attackboost;
            }
         }
         if(attackdelay > attacklength)
         {
            vulnerable = true;
            attacking = false;
         }
         if(!onground and attackdelay == attacklength)
         {
            jumpa();
         }
         if(onground and attackdelay == attacklength)
         {
            attacking = false;
            standing();
         }
         if(onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
            standing();
         }
         if(!onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
         }
      }
   }
   function Hcheckattack()
   {
      attackdelay++;
      if(!hurt)
      {
         if(attackdelay > attackspace and control and right and facing == "right" and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player2.player2.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player2sound.aforward.start();
            }
            damage = smash;
            attack2();
            speed *= slow;
            _root.p2smashamount += 1;
            _root.p2attackamount += 1;
         }
         else if(attackdelay > attackspace and control and left and facing == "left" and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player2.player2.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player2sound.aforward.start();
            }
            damage = smash;
            attack2();
            speed *= slow;
            _root.p2smashamount += 1;
            _root.p2attackamount += 1;
         }
         else if(attackdelay > attackspace and control and up and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            speed *= slow;
            if(_parent.player2.player2.sheik == true)
            {
               aup.start();
            }
            else
            {
               _parent.player2sound.aup.start();
            }
            damage = air;
            attackup();
         }
         else if(attackdelay > attackspace and control and down and !onground and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player2.player2.sheik == true)
            {
               adown.start();
            }
            else
            {
               _parent.player2sound.adown.start();
            }
            damage = air;
            attackdown();
            speed *= slow;
            _root.p2airamount += 1;
            _root.p2attackamount += 1;
         }
         else if(attackdelay > attackspace and control and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player2.player2.sheik == true)
            {
               anormal.start();
            }
            else
            {
               _parent.player2sound.anormal.start();
            }
            damage = normal;
            speed *= slow;
            attack();
            _root.p2normalamount += 1;
            _root.p2attackamount += 1;
         }
         if(attacking)
         {
            if(facing == "right" and speed < 10)
            {
               speed += attackboost;
            }
            else if(facing == "left" and speed > -10)
            {
               speed -= attackboost;
            }
         }
         if(attackdelay > attacklength)
         {
            vulnerable = true;
            attacking = false;
         }
         if(!onground and attackdelay == attacklength)
         {
            jumpa();
         }
         if(onground and attackdelay == attacklength)
         {
            attacking = false;
            standing();
         }
         if(onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
            standing();
         }
         if(!onground and attackdelay > attacklength and attacking)
         {
            attacking = false;
         }
      }
   }
   function goright()
   {
      runwait++;
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player1._x >= this._x and speed < maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingright and jumping)
         {
            if(facing !== "right")
            {
               jumpa();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed += speedup;
         movingright = true;
         movingleft = false;
      }
      else
      {
         movingright = false;
      }
   }
   function goright3()
   {
      runwait++;
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player3._x >= this._x and speed < maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingright and jumping)
         {
            if(facing !== "right")
            {
               jumpa();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed += speedup;
         movingright = true;
         movingleft = false;
      }
      else
      {
         movingright = false;
      }
   }
   function goright4()
   {
      runwait++;
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player4._x >= this._x and speed < maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingright and jumping)
         {
            if(facing !== "right")
            {
               jumpa();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed += speedup;
         movingright = true;
         movingleft = false;
      }
      else
      {
         movingright = false;
      }
   }
   function Hgoright()
   {
      if(right and speed < maxmove and !ducking and !rev and !rolling and !hurt and !left)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingright and jumping)
         {
            if(facing !== "right")
            {
               jumpa();
               this._x -= this._width;
               this._xscale = Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "right";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed += speedup;
         movingright = true;
         movingleft = false;
      }
      else
      {
         movingright = false;
      }
   }
   function goleft()
   {
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player1._x < this._x and Math.sqrt(Math.pow(this._x - _parent.player1._x,2) + Math.pow(this._y - _parent.player1._y,2)) > attackrange and speed > - maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            facing = "left";
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               jumpa();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "left";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed -= speedup;
         movingleft = true;
         movingright = false;
      }
      else
      {
         movingleft = false;
      }
   }
   function goleft3()
   {
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player3._x < this._x and Math.sqrt(Math.pow(this._x - _parent.player3._x,2) + Math.pow(this._y - _parent.player3._y,2)) > attackrange and speed > - maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            facing = "left";
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               jumpa();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "left";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed -= speedup;
         movingleft = true;
         movingright = false;
      }
      else
      {
         movingleft = false;
      }
   }
   function goleft4()
   {
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player4._x < this._x and Math.sqrt(Math.pow(this._x - _parent.player4._x,2) + Math.pow(this._y - _parent.player4._y,2)) > attackrange and speed > - maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            facing = "left";
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               jumpa();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "left";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed -= speedup;
         movingleft = true;
         movingright = false;
      }
      else
      {
         movingleft = false;
      }
   }
   function Hgoleft()
   {
      if(left and speed > - maxmove and !ducking and !rev and !rolling and !hurt and !right)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player2.player2.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player2sound.turn.start();
               }
            }
            facing = "left";
            if(vulnerable)
            {
               running();
            }
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               jumpa();
               this._x += this._width;
               this._xscale = - Math.abs(this._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               directionamount += 1;
            }
            facing = "left";
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x += speed;
         tempspeed = speed;
         speed -= speedup;
         movingleft = true;
         movingright = false;
      }
      else
      {
         movingleft = false;
      }
   }
   function player2slow()
   {
      if(!movingright and !movingleft and speed > 0 and !cliff)
      {
         this._x += speed;
         tempspeed = speed;
         speed -= speeddown;
      }
      if(!movingright and !movingleft and speed < 0 and !cliff)
      {
         this._x += speed;
         tempspeed = speed;
         speed += speeddown;
      }
   }
   function player2jump()
   {
      jumpdelay++;
      var _temp_1 = _parent.player1._y < this._y - this._height - 40 and onground;
      Math.sqrt(Math.pow(this._x - _parent.player1._x));
      if(_temp_1 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumpdelay > 15 and _parent.ground.onground)
      {
         if(_root.currentmode != "Training")
         {
            jumps++;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            jumpdelay = 0;
            rev = false;
            rolling = false;
            ducking = false;
            if(_parent.player2.player2.sheik == true)
            {
               jumpsound.start();
            }
            else
            {
               _parent.player2sound.jumpsound.start();
            }
            jumpa();
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(_parent.remain.cpuattack == true)
         {
            jumps++;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            jumpdelay = 0;
            rev = false;
            rolling = false;
            ducking = false;
            if(_parent.player2.player2.sheik == true)
            {
               jumpsound.start();
            }
            else
            {
               _parent.player2sound.jumpsound.start();
            }
            jumpa();
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
      }
      else
      {
         var _temp_2 = _parent.player1._y < this._y - (this._height - 40);
         Math.sqrt(Math.pow(this._x - _parent.player1._x));
         if(_temp_2 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumps < jumptimes and jumpdelay > 15 and _parent.ground.onground)
         {
            jumps++;
            jumpdelay = 0;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player2sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(cliff and !onground and !hurt and jumps < 2 and jumpdelay > 15 and _parent.player2._y > _parent.ground._y)
         {
            jumps++;
            jumpdelay = 0;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player2sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(jumping and !onground)
         {
            this._y += jump;
            if(jump < 25)
            {
               jump++;
            }
         }
      }
      if(!falling and jump >= 0)
      {
         falling = true;
         if(!attacking)
         {
            fall();
         }
      }
   }
   function player2jump3()
   {
      jumpdelay++;
      var _temp_1 = _parent.player3._y < this._y - this._height - 40 and onground;
      Math.sqrt(Math.pow(this._x - _parent.player3._x));
      if(_temp_1 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumpdelay > 15 and _parent.player3.onground)
      {
         jumps++;
         _root.p2jumpamount = _root.p2jumpamount + 1;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         if(_parent.player2.player2.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player2sound.jumpsound.start();
         }
         jumpa();
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y += jump;
         damage = jumpdamage;
         onground = false;
      }
      else
      {
         var _temp_2 = _parent.player3._y < this._y - (this._height - 40);
         Math.sqrt(Math.pow(this._x - _parent.player3._x));
         if(_temp_2 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumps < 2 and jumpdelay > 15 and _parent.player3.onground)
         {
            jumps++;
            jumpdelay = 0;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player2sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(cliff and !onground and !hurt and jumps < 2 and jumpdelay > 15 and _parent.player2._y > _parent.ground._y)
         {
            jumps++;
            jumpdelay = 0;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player2sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(jumping and !onground)
         {
            this._y += jump;
            if(jump < 25)
            {
               jump++;
            }
         }
      }
      if(!falling and jump >= 0)
      {
         falling = true;
         if(!attacking)
         {
            fall();
         }
      }
   }
   function player2jump4()
   {
      jumpdelay++;
      var _temp_1 = _parent.player4._y < this._y - this._height - 40 and onground;
      Math.sqrt(Math.pow(this._x - _parent.player4._x));
      if(_temp_1 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumpdelay > 15 and _parent.player4.onground)
      {
         jumps++;
         _root.p2jumpamount = _root.p2jumpamount + 1;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         if(_parent.player2.player2.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player2sound.jumpsound.start();
         }
         jumpa();
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y += jump;
         damage = jumpdamage;
         onground = false;
      }
      else
      {
         var _temp_2 = _parent.player4._y < this._y - (this._height - 40);
         Math.sqrt(Math.pow(this._x - _parent.player4._x));
         if(_temp_2 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumps < 2 and jumpdelay > 15 and _parent.player4.onground)
         {
            jumps++;
            jumpdelay = 0;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player2sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(cliff and !onground and !hurt and jumps < 2 and jumpdelay > 15 and _parent.player2._y > _parent.ground._y)
         {
            jumps++;
            jumpdelay = 0;
            _root.p2jumpamount = _root.p2jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player2.player2.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player2sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y += jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(jumping and !onground)
         {
            this._y += jump;
            if(jump < 25)
            {
               jump++;
            }
         }
      }
      if(!falling and jump >= 0)
      {
         falling = true;
         if(!attacking)
         {
            fall();
         }
      }
   }
   function Hplayer2jump()
   {
      jumpdelay++;
      if(space and onground and ducking and !hurt)
      {
         jumps++;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         _root.p2jumpamount = _root.p2jumpamount + 1;
         if(_parent.player2.player2.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player2sound.jumpsound.start();
         }
         jumpa();
         falling = false;
         jumping = true;
         jump = maxjump + 5;
         this._y += jump;
         damage = jumpdamage;
         onground = false;
      }
      else if(space and !hurt and jumps < jumptimes and jumpdelay > 15)
      {
         jumps++;
         jumpdelay = 0;
         if(jumps > 0)
         {
            rev = false;
            rolling = false;
            ducking = false;
            if(_parent.player2.player2.sheik == true)
            {
               jumpsound.start();
            }
            else
            {
               _parent.player2sound.jumpsound.start();
            }
            jumpa();
         }
         _root.p2jumpamount = _root.p2jumpamount + 1;
         damage = jumpdamage;
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y += jump;
         onground = false;
      }
      else if(jumping and !onground)
      {
         this._y += jump;
         if(jump < 25)
         {
            jump++;
         }
      }
      if(!falling and jump >= 0)
      {
         falling = true;
         if(!attacking)
         {
            fall();
         }
      }
   }
   function checkground()
   {
      if(_parent.ground.hitTest(_parent.player2.player2.feet) and falling and this._y < _parent.ground._y)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         falldown = false;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.ground._y - newone;
      }
      else if(_parent.ground2.hitTest(_parent.player2.player2.feet) and falling and this._y < _parent.ground2._y)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         falldown = false;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.ground2._y - newone;
      }
      else if(_parent.ground3.hitTest(_parent.player2.player2.feet) and falling and this._y < _parent.ground3._y)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         falldown = false;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.ground3._y - newone;
      }
      else if(_parent.platform1.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform1._y and !falldown)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform1._y - newone;
      }
      else if(_parent.platform2.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform2._y and !falldown)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform2._y - newone;
      }
      else if(_parent.platform3.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform3._y and !falldown)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform3._y - newone;
      }
      else if(_parent.platform4.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform4._y and !falldown)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform4._y - newone;
      }
      else if(_parent.platform5.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform5._y and !falldown)
      {
         if(jumping and !hurt)
         {
            standing();
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform5._y - newone;
      }
      else if(!_parent.ground.hitTest(_parent.player2.player2.feet) and !_parent.platform1.hitTest(_parent.player2.player2.feet) and !_parent.platform1.hitTest(_parent.player2.player2.feet) and !_parent.platform2.hitTest(_parent.player2.player2.feet) and !_parent.platform3.hitTest(_parent.player2.player2.feet) and !_parent.platform4.hitTest(_parent.player2.player2.feet) and !_parent.platform5.hitTest(_parent.player2.player2.feet))
      {
         onground = false;
         jumping = true;
      }
   }
   function Hcheckground()
   {
      if(_parent.ground.hitTest(_parent.player2.player2.feet) and falling and this._y < _parent.ground._y)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         falldown = false;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.ground._y - newone;
      }
      else if(_parent.ground2.hitTest(_parent.player2.player2.feet) and falling and this._y < _parent.ground2._y)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         falldown = false;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.ground2._y - newone;
      }
      else if(_parent.ground3.hitTest(_parent.player2.player2.feet) and falling and this._y < _parent.ground3._y)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         falldown = false;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.ground3._y - newone;
      }
      else if(_parent.platform1.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform1._y and !falldown)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform1._y - newone;
      }
      else if(_parent.platform2.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform2._y and !falldown)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform2._y - newone;
      }
      else if(_parent.platform3.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform3._y and !falldown)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform3._y - newone;
      }
      else if(_parent.platform4.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform4._y and !falldown)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform4._y - newone;
      }
      else if(_parent.platform5.hitTest(_parent.player2.player2.feet) and falling and _parent.player2._y + 15 < _parent.platform5._y and !falldown)
      {
         if(jumping and !hurt)
         {
            if(!attacking)
            {
               standing();
            }
            if(health >= 300 and lasthit > 0)
            {
               _parent.crowd.start();
               _root.p2crowdamount += 1;
            }
         }
         if(hurtdelay >= recoveryrate and hurt)
         {
            hurt = false;
         }
         onground = true;
         jumping = false;
         jump = 0;
         lasthit = 0;
         jumps = 0;
         this._y = _parent.platform5._y - newone;
      }
      else if(!_parent.ground.hitTest(_parent.player2.player2.feet) and !_parent.platform1.hitTest(_parent.player2.player2.feet) and !_parent.platform1.hitTest(_parent.player2.player2.feet) and !_parent.platform2.hitTest(_parent.player2.player2.feet) and !_parent.platform3.hitTest(_parent.player2.player2.feet) and !_parent.platform4.hitTest(_parent.player2.player2.feet) and !_parent.platform5.hitTest(_parent.player2.player2.feet) and !_parent.ground2.hitTest(_parent.player2.player2.feet) and !_parent.ground3.hitTest(_parent.player2.player2.feet))
      {
         onground = false;
         jumping = true;
      }
   }
   function checkspeed()
   {
      if(speed > -1 and speed < 1 and !movingleft and !movingright)
      {
         rolling = false;
         if(!cliff)
         {
            speed = 0;
         }
      }
   }
   function checkifmoving()
   {
      if(speed == 0 and !jumping and !movingright and !movingleft and !rolling)
      {
         if(!attacking and !ducking and !rev and !rolling and _parent.player2.player2._currentframe !== 1)
         {
            standing();
         }
         moving = false;
      }
   }
   function syncStats()
   {
      _parent.p2airamount = airamount;
      _parent.p2smashamount = smashamount;
      _parent.p2attackamount = attackamount;
      _parent.p2normalamount = normalamount;
      _parent.p2dashamount = dashamount;
      _parent.p2maxdamage = maxdamage;
      _parent.p2directionamount = directionamount;
      _parent.p2crouchamount = crouchamount;
      _parent.p2jumpamount = jumpamount;
      _parent.p2crowdamount = crowdamount;
      _parent.p2hurtamount = hurtamount;
   }
   function watchGround()
   {
      if(this._x < _parent.ground._x and this._y > _parent.ground._y and _parent.ground.hitTest(this) and speed > 0)
      {
         speed = 0;
      }
      else if(this._x > _parent.ground._x and this._y > _parent.ground._y and _parent.ground.hitTest(this) and speed < 0)
      {
         speed = 0;
      }
      else if(this._x > _parent.ground._x and this._x < _parent.ground._x + _parent.ground._width + 75 and this._y > _parent.ground._y and _parent.ground.hitTest(this) and jump < 0)
      {
         jump = 0;
      }
   }
   function watchGround2()
   {
      if(this._x < _parent.ground2._x and this._y > _parent.ground2._y and _parent.ground2.hitTest(this) and speed > 0)
      {
         speed = 0;
      }
      else if(this._x > _parent.ground2._x and this._y > _parent.ground2._y and _parent.ground2.hitTest(this) and speed < 0)
      {
         speed = 0;
      }
      else if(this._x > _parent.ground2._x and this._x < _parent.ground2._x + _parent.ground2._width + 75 and this._y > _parent.ground2._y and _parent.ground2.hitTest(this) and jump < 0)
      {
         jump = 0;
      }
   }
   function watchGround3()
   {
      if(this._x < _parent.ground3._x and this._y > _parent.ground3._y and _parent.ground3.hitTest(this) and speed > 0)
      {
         speed = 0;
      }
      else if(this._x > _parent.ground3._x and this._y > _parent.ground3._y and _parent.ground3.hitTest(this) and speed < 0)
      {
         speed = 0;
      }
      else if(this._x > _parent.ground3._x and this._x < _parent.ground3._x + _parent.ground3._width + 75 and this._y > _parent.ground3._y and _parent.ground3.hitTest(this) and jump < 0)
      {
         jump = 0;
      }
   }
   player = 2;
   player2character = _parent._parent.player2character;
   player1character = _parent._parent.player1character;
   player3character = _parent._parent.player3character;
   player4character = _parent._parent.player4character;
   attacktype = "normal";
   newone = 36.5;
   if(player2character == "zelda")
   {
      jumpsound = new Sound();
      jumpsound.attachSound("sheik1");
      anormal = new Sound();
      anormal.attachSound("sheik2");
      shoot = new Sound();
      shoot.attachSound("sheik3");
      aforward = new Sound();
      aforward.attachSound("sheik4");
      turn = new Sound();
      turn.attachSound("sheik5");
      aup = new Sound();
      aup.attachSound("sheik6");
      adown = new Sound();
      adown.attachSound("sheik7");
   }
   p0hurt = true;
   exist1 = _parent._parent.player1.exist;
   exist = _parent._parent.player2.exist;
   exist3 = _parent._parent.player3.exist;
   exist4 = _parent._parent.player4.exist;
   target = null;
   if(exist)
   {
      _parent.player2.attachMovie(player2character,"player2",10);
   }
   if(_parent.setgameto == "ffa")
   {
      p1hurt = true;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "2v21")
   {
      p1hurt = false;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "2v22")
   {
      p1hurt = true;
      p3hurt = true;
      p4hurt = false;
   }
   else if(_parent.setgameto == "1v31")
   {
      p1hurt = true;
      p3hurt = false;
      p4hurt = false;
   }
   else if(_parent.setgameto == "1v32")
   {
      p1hurt = true;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "1v33")
   {
      p1hurt = false;
      p3hurt = true;
      p4hurt = false;
   }
   else if(_parent.setgameto == "2v1v1")
   {
      p1hurt = false;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "1v1v2")
   {
      p1hurt = true;
      p3hurt = true;
      p4hurt = true;
   }
   downcount = 0;
   falldown = false;
   holding = false;
   throwwait = 0;
   pickupwait = 0;
   tempspeed = 0;
   speed = 0;
   maxmove = _parent._parent.player2.maxmove;
   maxjump = _parent._parent.player2.maxjump;
   jumping = true;
   jump = 10;
   moving = false;
   movingright = false;
   movingleft = false;
   falling = true;
   onground = false;
   jumpdamage = _parent._parent.player2.jumpdamage;
   facing = "right";
   hitdirection = "";
   attacking = false;
   attackboost = _parent._parent.player2.attackboost;
   attacklength = _parent._parent.player2.attacklength;
   attackspace = _parent._parent.player2.attackspace;
   vulnerable = false;
   ducking = false;
   control = false;
   rev = false;
   down = false;
   rolling = false;
   sounddelay = 0;
   attackdelay = 0;
   turnaround = _parent._parent.player2.turnaround;
   hurt = false;
   hurtdelay = 0;
   recoveryrate = _parent._parent.player2.recoveryrate;
   knockback = _parent._parent.knockback;
   knockup = _parent._parent.knockup;
   health = _root.healthreset;
   tempattack = 0;
   chanceattack = _parent._parent.player2.chanceattack;
   jumpchance = _parent._parent.player2.jumpchance;
   attackrange = _parent._parent.player2.attackrange;
   jumprange = _parent._parent.player2.jumprange;
   damage = 0;
   smash = _parent._parent.player2.smash;
   normal = _parent._parent.player2.normal;
   air = _parent._parent.player2.air;
   revdamage = _parent._parent.player2.revdamage;
   revspeed = _parent._parent.player2.revspeed;
   healthdivision = _parent._parent.player2.healthdivision;
   revchance = _parent._parent.player2.revchance;
   followchance = _parent._parent.player2.followchance;
   cliff = false;
   if(_root.player2.exist)
   {
      if(_root.currentmode == "VS")
      {
         lives = _parent._parent.lives;
      }
      else
      {
         lives = _root.p2lives;
      }
   }
   else
   {
      lives = 0;
   }
   dead = false;
   runwait = 0;
   kills = 0;
   deaths = 0;
   suicide = 0;
   points = 0;
   speedup = _parent._parent.player2.speedup;
   speeddown = _parent._parent.player2.speeddown;
   jumptimes = _parent._parent.player2.jumptimes;
   _root.p2airamount = 0;
   _root.p2smashamount = 0;
   _root.p2attackamount = 0;
   _root.p2normalamount = 0;
   _root.p2dashamount = 0;
   maxdamage = 0;
   directionamount = 0;
   _root.p2crouchamount = 0;
   _root.p2jumpamount = 0;
   _root.p2crowdamount = 0;
   _root.p2hurtamount = 0;
   attacktime = 0;
   temptimer = 0;
   jumps = 0;
   slow = _parent._parent.player2.slow;
   jumpdelay = 0;
   this._xscale *= 4;
   this._yscale *= 4;
   newone = 120;
}
