onClipEvent(load){
   function checkItem()
   {
      if(_parent._parent.player1.control !== "cpu")
      {
         pickupwait++;
         i = 1;
         while(i <= 30)
         {
            if(_parent.player1.hitTest(_parent["item" + i]) and _parent["item" + i].pickedup == false and !holding and control and _parent["item" + i].active == false and onground and pickupwait > 15)
            {
               holding = true;
               _parent["item" + i].pickedup = true;
               _parent["item" + i].player = 1;
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
            _parent["item" + itemnumber]._x = _parent.player1._x + _parent.player1._width / 2 - moveamount;
            _parent["item" + itemnumber]._y = _parent.player1._y - 30;
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
         i = 1;
         while(i <= 30)
         {
            if(_parent.player1.hitTest(_parent["item" + i]) and _parent["item" + i].pickedup == false and !holding and _parent["item" + i].active == false and onground and pickupwait > 15)
            {
               holding = true;
               _parent["item" + i].pickedup = true;
               _parent["item" + i].player = 1;
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
            _parent["item" + itemnumber]._x = _parent.player1._x + _parent.player1._width / 2;
            _parent["item" + itemnumber]._y = _parent.player1._y - 30;
            throwwait++;
            if(throwwait > 15 and attacking)
            {
               _parent["item" + itemnumber].gotoAndPlay(attacktype);
               throwwait = 0;
               pickupwait = 0;
               _parent["item" + itemnumber].facing = facing;
            }
         }
      }
   }
   function checkFall()
   {
      _root.savedata.data.records.misc[2] += 0.03333333333333333;
      if(_root.player1.exist)
      {
         _root.savedata.data.records[player1character][20] += 0.03333333333333333;
         _root.savedata.data.records[player1character][14] = Math.round(_root.savedata.data.records[player1character][20] / _root.savedata.data.records.misc[2] * 100);
      }
      if(_root.player2.exist)
      {
         _root.savedata.data.records[player2character][20] += 0.03333333333333333;
         _root.savedata.data.records[player2character][14] = Math.round(_root.savedata.data.records[player2character][20] / _root.savedata.data.records.misc[2] * 100);
      }
      if(_root.player3.exist)
      {
         _root.savedata.data.records[player3character][20] += 0.03333333333333333;
         _root.savedata.data.records[player3character][14] = Math.round(_root.savedata.data.records[player3character][20] / _root.savedata.data.records.misc[2] * 100);
      }
      if(_root.player4.exist)
      {
         _root.savedata.data.records[player4character][20] += 0.03333333333333333;
         _root.savedata.data.records[player4character][14] = Math.round(_root.savedata.data.records[player4character][20] / _root.savedata.data.records.misc[2] * 100);
      }
      if(_root.currentmode == "VS")
      {
         _root.savedata.data.records.misc[4] += 0.03333333333333333;
      }
      else
      {
         _root.savedata.data.records.misc[3] += 0.03333333333333333;
      }
      if(_parent._parent.player1.control == "human")
      {
         if(down and onground)
         {
            downcount += 0.03333333333333333;
         }
         else
         {
            downcount = 0;
         }
         i = 1;
         while(i <= 30)
         {
            if(_parent.player1.hitTest(_parent["platform" + i]) and onground and downcount > 0.5)
            {
               downcount = 0;
               onground = false;
               falling = true;
               jumping = true;
               falldown = true;
               jump = 15;
            }
            i++;
         }
      }
      else
      {
         groundx = this._x;
         groundy = this._y;
         if(target == "player2")
         {
            if(onground)
            {
               downcount += 0.03333333333333333;
            }
            else
            {
               downcount = 0;
            }
            i = 1;
            while(i <= 30)
            {
               if(_parent.player1.hitTest(_parent["platform" + i]) and onground and downcount > 0.5 and _parent.player2._y > _parent.player1._y)
               {
                  downcount = 0;
                  onground = false;
                  falling = true;
                  jumping = true;
                  falldown = true;
                  jump = 15;
               }
               if(falldown and !_parent.player1.hitTest(_parent["platform" + i]))
               {
                  falldown = false;
               }
               i++;
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
            i = 1;
            while(i <= 30)
            {
               if(_parent.player1.hitTest(_parent["platform" + i]) and onground and downcount > 0.5 and _parent.player3._y > _parent.player1._y)
               {
                  downcount = 0;
                  onground = false;
                  falling = true;
                  jumping = true;
                  falldown = true;
                  jump = 15;
               }
               if(falldown and !_parent.player1.hitTest(_parent["platform" + i]))
               {
                  falldown = false;
               }
               i++;
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
            i = 1;
            while(i <= 30)
            {
               if(_parent.player1.hitTest(_parent["platform" + i]) and onground and downcount > 0.5 and _parent.player4._y > _parent.player1._y)
               {
                  downcount = 0;
                  onground = false;
                  falling = true;
                  jumping = true;
                  falldown = true;
                  jump = 15;
               }
               if(falldown and !_parent.player1.hitTest(_parent["platform" + i]))
               {
                  falldown = false;
               }
               i++;
            }
         }
      }
   }
   function getDistances()
   {
      if(exist2)
      {
         p2distance = Math.sqrt(Math.pow(_parent.player1._x - _parent.player2._x + (_parent.player1._y - _parent.player2._y),2));
      }
      else
      {
         p2distance = 999999;
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
         if(p2distance < p3distance and p2distance < p4distance and _parent.player2.dead == false)
         {
            target = "player2";
         }
         else if(exist3 and p3distance < p1distance and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p1distance and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(_parent.player2.dead == false and exist2)
         {
            target = "player2";
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
            target = "player2";
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
            target = "player2";
         }
      }
      else if(_parent.setgameto == "2v22")
      {
         if(exist3 and p3distance < p1distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(p2distance < p3distance and _parent.player2.dead == false)
         {
            target = "player2";
         }
         else if(exist3 and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(_parent.player2.dead == false)
         {
            target = "player2";
         }
         else
         {
            target = "player2";
         }
      }
      else if(_parent.setgameto == "1v31")
      {
         if(p2distance < p3distance and p2distance < p4distance and _parent.player2.dead == false)
         {
            target = "player2";
         }
         else if(exist3 and p3distance < p1distance and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p1distance and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(_parent.player2.dead == false)
         {
            target = "player2";
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
            target = "player2";
         }
      }
      else if(_parent.setgameto == "1v32")
      {
         target = "player2";
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
            target = "player2";
         }
      }
      else if(_parent.setgameto == "1v1v2")
      {
         if(p2distance < p3distance and p2distance < p4distance and _parent.player2.dead == false)
         {
            target = "player2";
         }
         else if(exist3 and p3distance < p1distance and p3distance < p4distance and _parent.player3.dead == false)
         {
            target = "player3";
         }
         else if(exist4 and p4distance < p1distance and p4distance < p3distance and _parent.player4.dead == false)
         {
            target = "player4";
         }
         else if(_parent.player2.dead == false)
         {
            target = "player2";
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
            target = "player2";
         }
      }
   }
   function waitDuck()
   {
      tempwait += 0.03333333333333333;
      if(tempwait >= 3)
      {
         changechance = true;
         if(tempwait >= 5)
         {
            tempwait = 0;
         }
      }
      else
      {
         changechance = false;
      }
   }
   function Timer()
   {
      temptimer += 0.041666666666666664;
   }
   function getKey()
   {
      if(Key.isDown(38))
      {
         up = true;
      }
      else
      {
         up = false;
      }
      if(Key.isDown(40))
      {
         down = true;
      }
      else
      {
         down = false;
      }
      if(Key.isDown(37))
      {
         left = true;
      }
      else
      {
         left = false;
      }
      if(Key.isDown(39))
      {
         right = true;
      }
      else
      {
         right = false;
      }
      if(Key.isDown(80))
      {
         control = true;
      }
      else
      {
         control = false;
      }
      if(Key.isDown(79))
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
      tempalpha = _parent.player1._alpha;
      if(tempalpha < 100)
      {
         _parent.player1._alpha += 2;
      }
      else if(tempalpha >= 100)
      {
         fading = false;
      }
   }
   function checkdeath()
   {
      if(health > _root.p1maxdamage)
      {
         _root.p1maxdamage = health;
      }
      if(_parent.player1._y > this._y + bottombounds)
      {
         death = "bottom";
      }
      else if(_parent.player1._y < this._y - topbounds)
      {
         death = "air";
      }
      else if(_parent.player1._x < this._x - leftbounds)
      {
         death = "left";
      }
      else if(_parent.player1._x > this._width + this._x + rightbounds)
      {
         death = "right";
      }
      else
      {
         death = "no";
      }
      if(death == "left" and !fading)
      {
         fading = true;
         _parent.blow.gotoAndPlay("left");
         if(_root.currentmode == "Adventure")
         {
            tempmovex = Math.sqrt(Math.pow(_parent.player1._x - (_parent.range._x + _parent.range._width / 2),2));
         }
         else
         {
            tempmovex = Math.sqrt(Math.pow(_parent.player1._x - (this._x + this._width / 2),2));
         }
         tempmovey = 400 - this._y;
         this._x -= tempmovex;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= tempmovex;
            i++;
         }
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         _parent.player2._x -= tempmovex;
         _parent.player3._x -= tempmovex;
         _parent.player4._x -= tempmovex;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= tempmovex;
            i++;
         }
         _parent.p1attackbox._x -= tempmovex;
         _parent.p2attackbox._x -= tempmovex;
         _parent.p3attackbox._x -= tempmovex;
         _parent.p4attackbox._x -= tempmovex;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= tempmovex;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= tempmovex;
            i++;
         }
         _parent.object1._x -= tempmovex;
         _parent.object2._x -= tempmovex;
         _parent.object3._x -= tempmovex;
         _parent.object4._x -= tempmovex;
         _parent.object5._x -= tempmovex;
         _parent.range._x -= tempmovex;
         this._y += tempmovey;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y += tempmovey;
            i++;
         }
         _parent.player2._y += tempmovey;
         _parent.player3._y += tempmovey;
         _parent.player4._y += tempmovey;
         _parent.player1._alpha = 0;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y += tempmovey;
            i++;
         }
         _parent.p1attackbox._y += tempmovey;
         _parent.p2attackbox._y += tempmovey;
         _parent.p3attackbox._y += tempmovey;
         _parent.p4attackbox._y += tempmovey;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y += tempmovey;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y += tempmovey;
            i++;
         }
         _parent.object1._y += tempmovey;
         _parent.object2._y += tempmovey;
         _parent.object3._y += tempmovey;
         _parent.object4._y += tempmovey;
         _parent.object5._y += tempmovey;
         _parent.range._y += tempmovey;
         jump = 0;
         speed = 0;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p1lives -= 1;
         }
         if(_root.currentmode == "AllStar")
         {
            if(!_root.waiting)
            {
               health = _root.healthreset;
            }
         }
         else
         {
            health = _root.healthreset;
         }
         checkPoints();
      }
      else if(death == "right" and !fading)
      {
         fading = true;
         _parent.blow.gotoAndPlay("right");
         if(_root.currentmode == "Adventure")
         {
            tempmovex = Math.sqrt(Math.pow(_parent.player1._x - (_parent.range._x + _parent.range._width / 2),2));
         }
         else
         {
            tempmovex = Math.sqrt(Math.pow(_parent.player1._x - (this._x + this._width / 2),2));
         }
         tempmovey = 400 - this._y;
         this._x += tempmovex;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x += tempmovex;
            i++;
         }
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         _parent.player2._x += tempmovex;
         _parent.player3._x += tempmovex;
         _parent.player4._x += tempmovex;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x += tempmovex;
            i++;
         }
         _parent.p1attackbox._x += tempmovex;
         _parent.p2attackbox._x += tempmovex;
         _parent.p3attackbox._x += tempmovex;
         _parent.p4attackbox._x += tempmovex;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x += tempmovex;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x += tempmovex;
            i++;
         }
         _parent.object1._x += tempmovex;
         _parent.object2._x += tempmovex;
         _parent.object3._x += tempmovex;
         _parent.object4._x += tempmovex;
         _parent.object5._x += tempmovex;
         _parent.range._x += tempmovex;
         this._y += tempmovey;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y += tempmovey;
            i++;
         }
         _parent.player2._y += tempmovey;
         _parent.player3._y += tempmovey;
         _parent.player4._y += tempmovey;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y += tempmovey;
            i++;
         }
         _parent.p1attackbox._y += tempmovey;
         _parent.p2attackbox._y += tempmovey;
         _parent.p3attackbox._y += tempmovey;
         _parent.p4attackbox._y += tempmovey;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y += tempmovey;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y += tempmovey;
            i++;
         }
         _parent.object1._y += tempmovey;
         _parent.object2._y += tempmovey;
         _parent.object3._y += tempmovey;
         _parent.object4._y += tempmovey;
         _parent.object5._y += tempmovey;
         _parent.range._y += tempmovey;
         _parent.player1._alpha = 0;
         speed = 0;
         jump = 0;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p1lives -= 1;
         }
         _root.templife = lives;
         if(_root.currentmode == "AllStar")
         {
            if(!_root.waiting)
            {
               health = _root.healthreset;
            }
         }
         else
         {
            health = _root.healthreset;
         }
         checkPoints();
      }
      else if(death == "air" and !fading)
      {
         fading = true;
         _parent.blow.gotoAndPlay("top");
         if(_root.currentmode == "Adventure")
         {
            tempmovex = 225 - (_parent.range._x + _parent.range._width / 2);
         }
         else
         {
            tempmovex = 225 - (this._x + this._width / 2);
         }
         tempmovey = 400 - this._y;
         this._x += tempmovex;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x += tempmovex;
            i++;
         }
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         _parent.player2._x += tempmovex;
         _parent.player3._x += tempmovex;
         _parent.player4._x += tempmovex;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x += tempmovex;
            i++;
         }
         _parent.p1attackbox._x += tempmovex;
         _parent.p2attackbox._x += tempmovex;
         _parent.p3attackbox._x += tempmovex;
         _parent.p4attackbox._x += tempmovex;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x += tempmovex;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x += tempmovex;
            i++;
         }
         _parent.object1._x += tempmovex;
         _parent.object2._x += tempmovex;
         _parent.object3._x += tempmovex;
         _parent.object4._x += tempmovex;
         _parent.object5._x += tempmovex;
         _parent.range._x += tempmovex;
         this._y += tempmovey;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y += tempmovey;
            i++;
         }
         _parent.player2._y += tempmovey;
         _parent.player3._y += tempmovey;
         _parent.player4._y += tempmovey;
         _parent.player1._alpha = 0;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y += tempmovey;
            i++;
         }
         _parent.p1attackbox._y += tempmovey;
         _parent.p2attackbox._y += tempmovey;
         _parent.p3attackbox._y += tempmovey;
         _parent.p4attackbox._y += tempmovey;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y += tempmovey;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y += tempmovey;
            i++;
         }
         _parent.object1._y += tempmovey;
         _parent.object2._y += tempmovey;
         _parent.object3._y += tempmovey;
         _parent.object4._y += tempmovey;
         _parent.object5._y += tempmovey;
         _parent.range._y += tempmovey;
         speed = 0;
         jump = 0;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p1lives -= 1;
         }
         if(_root.currentmode == "AllStar")
         {
            if(!_root.waiting)
            {
               health = _root.healthreset;
            }
         }
         else
         {
            health = _root.healthreset;
         }
         checkPoints();
      }
      else if(death == "bottom" and !fading)
      {
         fading = true;
         _parent.blow.gotoAndPlay("bottom");
         if(_root.currentmode == "Adventure")
         {
            tempmovex = 225 - (_parent.range._x + _parent.range._width / 2);
         }
         else
         {
            tempmovex = 225 - (this._x + this._width / 2);
         }
         tempmovey = Math.sqrt(Math.pow(this._y - 400 - _parent.player1._y,2));
         this._x += tempmovex;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x += tempmovex;
            i++;
         }
         if(holding)
         {
            _parent["item" + itemnumber].removeMovieClip();
            throwwait = 0;
            pickupwait = 0;
            holding = false;
         }
         _parent.player2._x += tempmovex;
         _parent.player3._x += tempmovex;
         _parent.player4._x += tempmovex;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x += tempmovex;
            i++;
         }
         _parent.p1attackbox._x += tempmovex;
         _parent.p2attackbox._x += tempmovex;
         _parent.p3attackbox._x += tempmovex;
         _parent.p4attackbox._x += tempmovex;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x += tempmovex;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x += tempmovex;
            i++;
         }
         _parent.object1._x += tempmovex;
         _parent.object2._x += tempmovex;
         _parent.object3._x += tempmovex;
         _parent.object4._x += tempmovex;
         _parent.object5._x += tempmovex;
         _parent.range._x += tempmovex;
         this._y += tempmovey;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y += tempmovey;
            i++;
         }
         _parent.player2._y += tempmovey;
         _parent.player3._y += tempmovey;
         _parent.player4._y += tempmovey;
         _parent.player1._alpha = 0;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y += tempmovey;
            i++;
         }
         _parent.p1attackbox._y += tempmovey;
         _parent.p2attackbox._y += tempmovey;
         _parent.p3attackbox._y += tempmovey;
         _parent.p4attackbox._y += tempmovey;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y += tempmovey;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y += tempmovey;
            i++;
         }
         _parent.object1._y += tempmovey;
         _parent.object2._y += tempmovey;
         _parent.object3._y += tempmovey;
         _parent.object4._y += tempmovey;
         _parent.object5._y += tempmovey;
         _parent.range._y += tempmovey;
         jump = 0;
         speed = 0;
         if(_root.currentmode == "VS")
         {
            lives -= 1;
         }
         else
         {
            _root.p1lives -= 1;
         }
         if(_root.currentmode == "AllStar")
         {
            if(!_root.waiting)
            {
               health = _root.healthreset;
            }
         }
         else
         {
            health = _root.healthreset;
         }
         checkPoints();
      }
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
         if(_parent.player1.player1.hitTest(_parent.player2.player2.attackbox) and p2hurt)
         {
            health += _parent.player2.damage;
            health = Math.round(health);
            _root.savedata.data.records[player2character][15] += _parent.player2.damage;
            _root.savedata.data.records[player1character][21] += _parent.player2.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player1character][17] = health;
            }
            lasthit = 2;
            _parent.p2hitamount += 1;
            if(_parent.player2.damage == _parent.player2.air)
            {
               if(_parent.player2._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.player2.facing;
               }
               else
               {
                  otherdirection = _parent.player2.facing;
                  hitdirection = "up";
               }
            }
            else
            {
               hitdirection = _parent.player2.facing;
            }
            hit();
         }
         if(_parent.player1.player1.hitTest(_parent.player3.player3.attackbox) and p3hurt)
         {
            health += _parent.player3.damage;
            health = Math.round(health);
            _root.savedata.data.records[player3character][15] += _parent.player3.damage;
            _root.savedata.data.records[player1character][21] += _parent.player3.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player1character][17] = health;
            }
            lasthit = 3;
            _parent.p3hitamount += 1;
            if(_parent.player3.damage == _parent.player3.air)
            {
               if(_parent.player3._y < this._y)
               {
                  otherdirection = _parent.player3.facing;
                  hitdirection = "down";
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
         if(_parent.player1.player1.hitTest(_parent.player4.player4.attackbox) and p4hurt)
         {
            health += _parent.player4.damage;
            health = Math.round(health);
            _root.savedata.data.records[player4character][15] += _parent.player4.damage;
            _root.savedata.data.records[player1character][21] += _parent.player4.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player1character][17] = health;
            }
            lasthit = 4;
            _parent.p4hitamount += 1;
            if(_parent.player4.damage == _parent.player4.air)
            {
               if(_parent.player4._y < this._y)
               {
                  otherdirection = _parent.player4.facing;
                  hitdirection = "down";
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
         if(_parent.player1.player1.hitTest(_parent.p2attackbox) and p2hurt)
         {
            health += _parent.player2.damage;
            health = Math.round(health);
            _root.savedata.data.records[player2character][15] += _parent.player2.damage;
            _root.savedata.data.records[player1character][21] += _parent.player2.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player1character][17] = health;
            }
            lasthit = 2;
            _parent.p2hitamount += 1;
            if(_parent.player2.damage == _parent.player2.air)
            {
               if(_parent.player2._y < this._y)
               {
                  hitdirection = "down";
                  otherdirection = _parent.player2.facing;
               }
               else
               {
                  otherdirection = _parent.player2.facing;
                  hitdirection = "up";
               }
            }
            else
            {
               hitdirection = _parent.player2.facing;
            }
            hit();
         }
         if(_parent.player1.player1.hitTest(_parent.p3attackbox) and p3hurt)
         {
            health += _parent.player3.damage;
            health = Math.round(health);
            _root.savedata.data.records[player3character][15] += _parent.player3.damage;
            _root.savedata.data.records[player1character][21] += _parent.player3.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player1character][17] = health;
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
         if(_parent.player1.player1.hitTest(_parent.p4attackbox) and p4hurt)
         {
            health += _parent.player4.damage;
            _root.savedata.data.records[player4character][15] += _parent.player4.damage;
            _root.savedata.data.records[player1character][21] += _parent.player4.damage;
            if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
            {
               _root.savedata.data.records[player1character][17] = health;
            }
            health = Math.round(health);
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
         while(i <= 30)
         {
            if(_parent.player1.player1.hitTest(_parent["e" + i + "attackbox"]) and !_parent["enemy" + i].dead)
            {
               health += _parent["enemy" + i].damage;
               health = Math.round(health);
               _root.savedata.data.records[player1character][21] += _parent["enemy" + i].damage;
               if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
               {
                  _root.savedata.data.records[player1character][17] = health;
               }
               lasthit = 0;
               if(onground)
               {
                  hitdirection = "up";
               }
               else
               {
                  hitdirection = "down";
               }
               hit();
            }
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            if(_parent.player1.player1.hitTest(_parent["enemy" + i].attackbox) and !_parent["enemy" + i].dead)
            {
               health += _parent["enemy" + i].damage;
               health = Math.round(health);
               _root.savedata.data.records[player1character][21] += _parent["enemy" + i].damage;
               if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
               {
                  _root.savedata.data.records[player1character][17] = health;
               }
               lasthit = 0;
               hitdirection = _parent["enemy" + i].facing;
               hit();
            }
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            if(_parent.player1.player1.hitTest(_parent["item" + i].attackbox) and _parent["item" + i].active == true)
            {
               itemplayer = _parent["item" + i].player;
               if(itemplayer !== 1 and _parent["item" + i].damage !== 0 and ["p" + itemplayer + "hurt"])
               {
                  health += _parent["item" + i].damage;
                  health = Math.round(health);
                  _root.savedata.data.records["player" + itemplayer + "character"][15] += _parent["item" + i].damage;
                  _root.savedata.data.records[player1character][21] += _parent["item" + i].damage;
                  if(health > _root.savedata.data.records[player4character][17] and _root.currentmode != "multiman")
                  {
                     _root.savedata.data.records[player1character][17] = health;
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
         _root.p1hurtamount += 1;
         _parent.p1health.play();
         hurtdelay = 0;
         attacking = false;
         vulnerable = false;
         ducking = false;
         control = false;
         rev = false;
         down = false;
         rolling = false;
         _parent.player1.player1.gotoAndPlay("hurt");
         _loc4_ = Math.round(Math.random() * 4) + 1;
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
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            _parent.target1._y -= jump;
            _parent.target2._y -= jump;
            _parent.target3._y -= jump;
            _parent.target4._y -= jump;
            _parent.target5._y -= jump;
            _parent.target6._y -= jump;
            _parent.target7._y -= jump;
            _parent.target8._y -= jump;
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
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            _parent.target1._y -= jump;
            _parent.target2._y -= jump;
            _parent.target3._y -= jump;
            _parent.target4._y -= jump;
            _parent.target5._y -= jump;
            _parent.target6._y -= jump;
            _parent.target7._y -= jump;
            _parent.target8._y -= jump;
         }
      }
      hurt = true;
   }
   function checkPoints()
   {
      jumps = 0;
      deaths += 1;
      if(_root.currentmode == "Adventure" or _root.currentmode == "Classic" or _root.currentmode == "AllStar")
      {
         _root.died = true;
      }
      _root.savedata.data.records[player1character][12]++;
      if(lasthit == 2)
      {
         _parent.player2.kills += 1;
         _parent.player2.points += 1;
         _root.savedata.data.records[player2character][11]++;
         if(!_root.usinglives)
         {
            _parent.p2health.points.gotoAndPlay("scoreplus");
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
         _root.savedata.data.records[player1character][13]++;
         suicide += 1;
      }
      points -= 1;
      if(!_root.usinglives)
      {
         _parent.p1health.points.gotoAndPlay("scoreminus");
      }
      if(_root.usinglives)
      {
         if(_root.currentmode == "VS")
         {
            if(lives <= 0)
            {
               this._y -= 200;
               i = 0;
               while(i <= 30)
               {
                  _parent["platform" + i]._y -= 200;
                  i++;
               }
               _parent.player2._y -= 200;
               _parent.player3._y -= 200;
               _parent.player4._y -= 200;
               _parent.player1._alpha = 0;
               i = 1;
               while(i < 30)
               {
                  _parent["enemy" + i]._y -= 200;
                  i++;
               }
               _parent.p1attackbox._y -= 200;
               _parent.p2attackbox._y -= 200;
               _parent.p3attackbox._y -= 200;
               _parent.p4attackbox._y -= 200;
               i = 1;
               while(i <= 20)
               {
                  _parent["ground" + i]._y -= 200;
                  i++;
               }
               i = 1;
               while(i <= 30)
               {
                  _parent["item" + i]._y -= 200;
                  i++;
               }
               _parent.object1._y -= 200;
               _parent.object2._y -= 200;
               _parent.object3._y -= 200;
               _parent.object4._y -= 200;
               _parent.object5._y -= 200;
               _parent.range._y -= 200;
               dead = true;
               _parent.grounddead = true;
               if(_parent._parent.player1.control == "human")
               {
                  _parent.p1defeat.start();
               }
               else
               {
                  _parent.cpudefeat.start();
               }
            }
         }
         else if(_root.p1lives <= 0)
         {
            this._y -= 200;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= 200;
               i++;
            }
            _parent.player2._y -= 200;
            _parent.player3._y -= 200;
            _parent.player4._y -= 200;
            _parent.player1._alpha = 0;
            i = 1;
            while(i < 30)
            {
               _parent["enemy" + i]._y -= 200;
               i++;
            }
            _parent.p1attackbox._y -= 200;
            _parent.p2attackbox._y -= 200;
            _parent.p3attackbox._y -= 200;
            _parent.p4attackbox._y -= 200;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= 200;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= 200;
               i++;
            }
            _parent.object1._y -= 200;
            _parent.object2._y -= 200;
            _parent.object3._y -= 200;
            _parent.object4._y -= 200;
            _parent.object5._y -= 200;
            _parent.range._y -= 200;
            dead = true;
            _parent.grounddead = true;
            if(_root.currentmode == "VS")
            {
               if(_parent._parent.player1.control == "human")
               {
                  _parent.p1defeat.start();
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
      _parent.player1.player1.gotoAndPlay("attacknormal");
   }
   function fall()
   {
      _parent.player1.player1.gotoAndPlay("falling");
   }
   function running()
   {
      _parent.player1.player1.gotoAndStop("running");
   }
   function ducka()
   {
      _parent.player1.player1.gotoAndPlay("ducking");
   }
   function standing()
   {
      _parent.player1.player1.gotoAndPlay("standing");
   }
   function jumpa()
   {
      _parent.player1.player1.gotoAndStop("jumping");
   }
   function rolla()
   {
      _parent.player1.player1.gotoAndPlay("rolling");
   }
   function attack2()
   {
      _parent.player1.player1.gotoAndPlay("attackforward");
   }
   function attackup()
   {
      _parent.player1.player1.gotoAndPlay("attackup");
   }
   function attackdown()
   {
      _parent.player1.player1.gotoAndPlay("attackdown");
   }
   function checkduck()
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
            watchGround();
            if(revspeed !== 0)
            {
               rolling = true;
               rev = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player1sound.shoot.start();
               }
               _root.p1attackamount += 1;
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
                     _root.p1airamount += 1;
                  }
                  rolla();
                  if(_parent.player1.player1.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player1sound.shoot.start();
                  }
                  _root.p1attackamount += 1;
               }
               rev = false;
               rolling = false;
               ducking = false;
            }
         }
      }
   }
   function checkduck2()
   {
      tempattack2 = Math.random();
      tempdistance2 = Math.sqrt(Math.pow(_parent.player1._x - _parent.player2._x,2) + Math.pow(_parent.player1._y - _parent.player2._y,2));
      if(onground and !hurt and tempattack2 < revchance and tempdistance > 50 and tempdistance2 < 150 and !rolling)
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
            _root.p1crouchamount += 1;
         }
         rev = true;
         if(rev and !control)
         {
            if(!rolling and revspeed !== 0)
            {
               rolla();
               _root.p1dashamount += 1;
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
               if(_parent.player1.player1.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player1sound.shoot.start();
               }
               _root.p1attackamount += 1;
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
                     _root.p1airamount += 1;
                  }
                  rolla();
                  if(_parent.player1.player1.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player1sound.shoot.start();
                  }
                  _root.p1attackamount += 1;
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
      tempdistance2 = Math.sqrt(Math.pow(_parent.player1._x - _parent.player3._x,2) + Math.pow(_parent.player1._y - _parent.player3._y,2));
      if(onground and !hurt and tempattack2 < revchance and tempdistance > 50 and tempdistance2 < 150 and !rolling)
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
            _root.p1crouchamount += 1;
         }
         rev = true;
         if(rev and !control)
         {
            if(!rolling and revspeed !== 0)
            {
               rolla();
               _root.p1dashamount += 1;
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
               if(_parent.player1.player1.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player1sound.shoot.start();
               }
               _root.p1attackamount += 1;
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
                     _root.p1airamount += 1;
                  }
                  rolla();
                  if(_parent.player1.player1.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player1sound.shoot.start();
                  }
                  _root.p1attackamount += 1;
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
      tempdistance2 = Math.sqrt(Math.pow(_parent.player1._x - _parent.player4._x,2) + Math.pow(_parent.player1._y - _parent.player4._y,2));
      if(onground and !hurt and tempattack2 < revchance and tempdistance > 50 and tempdistance2 < 150 and !rolling)
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
            _root.p1crouchamount += 1;
         }
         rev = true;
         if(rev and !control)
         {
            if(!rolling and revspeed !== 0)
            {
               rolla();
               _root.p1dashamount += 1;
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
               if(_parent.player1.player1.sheik == true)
               {
                  shoot.start();
               }
               else
               {
                  _parent.player1sound.shoot.start();
               }
               _root.p1attackamount += 1;
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
                     _root.p1airamount += 1;
                  }
                  rolla();
                  if(_parent.player1.player1.sheik == true)
                  {
                     shoot.start();
                  }
                  else
                  {
                     _parent.player1sound.shoot.start();
                  }
                  _root.p1attackamount += 1;
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
            if(_parent.player1.player1.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player1sound.aforward.start();
            }
            _root.p1attackamount += 1;
            damage = smash;
            attack2();
            speed += attackboost;
         }
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
            running();
         }
         else if(!movingright and jumping and !hurt)
         {
            if(facing !== "right")
            {
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            facing = "right";
         }
         if(onground)
         {
            running();
         }
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
            if(_parent.player1.player1.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player1sound.aforward.start();
            }
            _root.p1attackamount += 1;
            damage = smash;
            attack2();
            speed -= attackboost;
         }
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
            facing = "left";
            running();
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            facing = "left";
         }
         if(onground)
         {
            running();
         }
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
            running();
         }
         else if(!movingright and jumping and !hurt)
         {
            if(facing !== "right")
            {
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            facing = "right";
         }
         if(onground)
         {
            running();
         }
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
            facing = "left";
            running();
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
            }
            facing = "left";
         }
         if(onground)
         {
            running();
         }
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
      if(!hurt)
      {
         if(attackdelay > attackspace and control and right and facing == "right" and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player1.player1.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player1sound.aforward.start();
            }
            damage = smash;
            attack2();
            if(!onground)
            {
               _root.p1airamount += 1;
            }
            _root.p1smashamount += 1;
            _root.p1attackamount += 1;
            speed *= slow;
         }
         else if(attackdelay > attackspace and control and left and facing == "left" and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player1.player1.sheik == true)
            {
               aforward.start();
            }
            else
            {
               _parent.player1sound.aforward.start();
            }
            damage = smash;
            attack2();
            if(!onground)
            {
               _root.p1airamount += 1;
            }
            _root.p1smashamount += 1;
            _root.p1attackamount += 1;
            speed *= slow;
         }
         else if(attackdelay > attackspace and control and up and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player1.player1.sheik == true)
            {
               aup.start();
            }
            else
            {
               _parent.player1sound.aup.start();
            }
            damage = air;
            attackup();
            speed *= slow;
            if(!onground)
            {
               _root.p1airamount += 1;
            }
            _root.p1attackamount += 1;
         }
         else if(attackdelay > attackspace and control and down and !onground and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player1.player1.sheik == true)
            {
               adown.start();
            }
            else
            {
               _parent.player1sound.adown.start();
            }
            damage = air;
            attackdown();
            speed *= slow;
            if(!onground)
            {
               _root.p1airamount += 1;
            }
            _root.p1attackamount += 1;
         }
         else if(attackdelay > attackspace and control and !ducking and !rev and !rolling and !holding)
         {
            vulnerable = false;
            attacking = true;
            attackdelay = 0;
            if(_parent.player1.player1.sheik == true)
            {
               anormal.start();
            }
            else
            {
               _parent.player1sound.anormal.start();
            }
            damage = normal;
            attack();
            speed *= slow;
            if(!onground)
            {
               _root.p1airamount += 1;
            }
            _root.p1normalamount += 1;
            _root.p1attackamount += 1;
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
   function checkattack2()
   {
      attackdelay++;
      tempattack = Math.random();
      tempdistance = Math.sqrt(Math.pow(_parent.player1._x - _parent.player2._x,2) + Math.pow(_parent.player1._y - _parent.player2._y,2));
      if(!hurt and tempattack <= chanceattack)
      {
         if(attackdelay > attackspace and !onground and !ducking and !rev and !rolling and Math.abs(_parent.player2._y - _parent.player1._y) < 20 and _parent.player2.jump > 3 and _parent.player1._y < _parent.player2._y)
         {
            attacktype = "down";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  adown.start();
               }
               else
               {
                  _parent.player1sound.adown.start();
               }
               damage = air;
               attackdown();
               speed *= slow;
               _root.p1airamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and _parent.player2._x > _parent.player1._x and tempdistance < 80 and tempdistance > 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player1sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p1smashamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and _parent.player2._x < _parent.player1._x and tempdistance < 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player1sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p1smashamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and Math.abs(_parent.player2._y - _parent.player1._y) < 20 and _parent.player2.jump < -1 and _parent.player1._y > _parent.player2._y)
         {
            attacktype = "up";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aup.start();
               }
               else
               {
                  _parent.player1sound.aup.start();
               }
               damage = air;
               attackup();
               speed *= slow;
               _root.p1airamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "right" and _parent.player1._x < _parent.player2._x)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player1sound.anormal.start();
               }
               damage = normal;
               attack();
               speed *= slow;
               _root.p1normalamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "left" and _parent.player1._x > _parent.player2._x)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player1sound.anormal.start();
               }
               damage = normal;
               speed *= slow;
               _root.p1normalamount += 1;
               _root.p1attackamount += 1;
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
      tempdistance = Math.sqrt(Math.pow(_parent.player1._x - _parent.player3._x,2) + Math.pow(_parent.player1._y - _parent.player3._y,2));
      if(!hurt and tempattack <= chanceattack)
      {
         if(attackdelay > attackspace and !onground and !ducking and !rev and !rolling and Math.abs(_parent.player3._y - _parent.player1._y) < 20 and _parent.player3.jump > 3 and _parent.player1._y < _parent.player3._y)
         {
            attacktype = "down";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  adown.start();
               }
               else
               {
                  _parent.player1sound.adown.start();
               }
               damage = air;
               attackdown();
               speed *= slow;
               _root.p1airamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and _parent.player3._x > _parent.player1._x and tempdistance < 80 and tempdistance > 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player1sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p1smashamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and _parent.player3._x < _parent.player1._x and tempdistance < 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player1sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p1smashamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and Math.abs(_parent.player3._y - _parent.player1._y) < 20 and _parent.player3.jump < -1 and _parent.player1._y > _parent.player3._y)
         {
            attacktype = "up";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aup.start();
               }
               else
               {
                  _parent.player1sound.aup.start();
               }
               damage = air;
               attackup();
               speed *= slow;
               _root.p1airamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "right" and _parent.player1._x < _parent.player3._x)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player1sound.anormal.start();
               }
               damage = normal;
               attack();
               speed *= slow;
               _root.p1normalamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "left" and _parent.player1._x > _parent.player3._x)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player1sound.anormal.start();
               }
               damage = normal;
               speed *= slow;
               _root.p1normalamount += 1;
               _root.p1attackamount += 1;
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
      tempdistance = Math.sqrt(Math.pow(_parent.player1._x - _parent.player4._x,2) + Math.pow(_parent.player1._y - _parent.player4._y,2));
      if(!hurt and tempattack <= chanceattack)
      {
         if(attackdelay > attackspace and !onground and !ducking and !rev and !rolling and Math.abs(_parent.player4._y - _parent.player1._y) < 20 and _parent.player4.jump > 3 and _parent.player1._y < _parent.player4._y)
         {
            attacktype = "down";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  adown.start();
               }
               else
               {
                  _parent.player1sound.adown.start();
               }
               damage = air;
               attackdown();
               _root.p1airamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "right" and !ducking and !rev and !rolling and _parent.player4._x > _parent.player1._x and tempdistance < 80 and tempdistance > 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player1sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p1smashamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and facing == "left" and !ducking and !rev and !rolling and _parent.player4._x < _parent.player1._x and tempdistance < 20)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aforward.start();
               }
               else
               {
                  _parent.player1sound.aforward.start();
               }
               damage = smash;
               attack2();
               speed *= slow;
               _root.p1smashamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and Math.abs(_parent.player4._y - _parent.player1._y) < 20 and _parent.player4.jump < -1 and _parent.player1._y > _parent.player4._y)
         {
            attacktype = "up";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  aup.start();
               }
               else
               {
                  _parent.player1sound.aup.start();
               }
               damage = air;
               attackup();
               speed *= slow;
               _root.p1airamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "right" and _parent.player1._x < _parent.player4._x)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player1sound.anormal.start();
               }
               damage = normal;
               attack();
               speed *= slow;
               _root.p1normalamount += 1;
               _root.p1attackamount += 1;
            }
         }
         else if(attackdelay > attackspace and !ducking and !rev and !rolling and tempdistance < 40 and tempdistance > 20 and facing == "left" and _parent.player1._x > _parent.player4._x)
         {
            attacktype = "normal";
            if(!holding)
            {
               vulnerable = false;
               attacking = true;
               attackdelay = 0;
               if(_parent.player1.player1.sheik == true)
               {
                  anormal.start();
               }
               else
               {
                  _parent.player1sound.anormal.start();
               }
               damage = normal;
               speed *= slow;
               _root.p1normalamount += 1;
               _root.p1attackamount += 1;
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
   function goright()
   {
      if(right and speed < maxmove and !ducking and !rev and !rolling and !hurt and !left and !disable)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               _root.p1directionamount += 1;
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += turnaround;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x -= _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = Math.abs(_parent["item" + itemnumber]._xscale);
               }
               _root.p1directionamount += 1;
            }
            facing = "right";
            if(speed < -10 and onground)
            {
               speed += 8;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
         }
         if(onground and vulnerable)
         {
            running();
         }
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
         _parent.target1._x -= speed;
         _parent.target2._x -= speed;
         _parent.target3._x -= speed;
         _parent.target4._x -= speed;
         _parent.target5._x -= speed;
         _parent.target6._x -= speed;
         _parent.target7._x -= speed;
         _parent.target8._x -= speed;
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
   function goright2()
   {
      runwait++;
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player2._x >= _parent.player1._x and speed < maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
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
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
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
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
      if(_parent.player3._x >= _parent.player1._x and speed < maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
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
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
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
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
      if(_parent.player4._x >= _parent.player1._x and speed < maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingright and !jumping)
         {
            if(facing !== "right")
            {
               running();
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
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
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x -= _parent.player1._width;
               _parent.player1._xscale = Math.abs(_parent.player1._xscale);
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
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
      if(left and speed > - maxmove and !ducking and !rev and !rolling and !hurt and !right and !disable)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               _root.p1directionamount += 1;
            }
            facing = "left";
            if(vulnerable)
            {
               running();
            }
            if(speed > 10 and onground)
            {
               speed -= turnaround;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
         }
         else if(!movingleft and jumping)
         {
            if(facing !== "left")
            {
               jumpa();
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
               if(holding)
               {
                  _parent["item" + itemnumber]._x += _parent["item" + itemnumber]._width;
                  _parent["item" + itemnumber]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
               }
               _root.p1directionamount += 1;
            }
            if(speed > 10 and onground)
            {
               speed -= 8;
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
               }
            }
            facing = "left";
         }
         if(onground)
         {
            if(vulnerable)
            {
               running();
            }
         }
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
         _parent.target1._x -= speed;
         _parent.target2._x -= speed;
         _parent.target3._x -= speed;
         _parent.target4._x -= speed;
         _parent.target5._x -= speed;
         _parent.target6._x -= speed;
         _parent.target7._x -= speed;
         _parent.target8._x -= speed;
         s;
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
   function goleft2()
   {
      if(runwait > 60)
      {
         runwait = 0;
         temprun = Math.random();
      }
      if(_parent.player2._x < _parent.player1._x and Math.sqrt(Math.pow(_parent.player1._x - _parent.player2._x,2) + Math.pow(_parent.player1._y - _parent.player2._y,2)) > attackrange and speed > - maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
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
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
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
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
      if(_parent.player3._x < _parent.player1._x and Math.sqrt(Math.pow(_parent.player1._x - _parent.player3._x,2) + Math.pow(_parent.player1._y - _parent.player3._y,2)) > attackrange and speed > - maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
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
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
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
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
      if(_parent.player4._x < _parent.player1._x and Math.sqrt(Math.pow(_parent.player1._x - _parent.player4._x,2) + Math.pow(_parent.player1._y - _parent.player4._y,2)) > attackrange and speed > - maxmove and !hurt and !rolling and !cliff and temprun < followchance)
      {
         if(!movingleft and !jumping)
         {
            if(facing !== "left")
            {
               running();
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
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
               if(_parent.player1.player1.sheik == true)
               {
                  turn.start();
               }
               else
               {
                  _parent.player1sound.turn.start();
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
               _parent.player1._x += _parent.player1._width;
               _parent.player1._xscale = - Math.abs(_parent.player1._xscale);
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
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
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
   function player1slow()
   {
      if(!movingright and !movingleft and speed > 0 and !cliff)
      {
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
         _parent.target1._x -= speed;
         _parent.target2._x -= speed;
         _parent.target3._x -= speed;
         _parent.target4._x -= speed;
         _parent.target5._x -= speed;
         _parent.target6._x -= speed;
         _parent.target7._x -= speed;
         _parent.target8._x -= speed;
         this._x -= speed;
         tempspeed = speed;
         speed -= speeddown;
         slowing = true;
      }
      else if(!movingright and !movingleft and speed < 0 and !cliff)
      {
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
         _parent.target1._x -= speed;
         _parent.target2._x -= speed;
         _parent.target3._x -= speed;
         _parent.target4._x -= speed;
         _parent.target5._x -= speed;
         _parent.target6._x -= speed;
         _parent.target7._x -= speed;
         _parent.target8._x -= speed;
         this._x -= speed;
         tempspeed = speed;
         speed += speeddown;
         slowing = true;
      }
   }
   function player1jump()
   {
      if(jump > 22)
      {
         falldown = false;
      }
      jumpdelay++;
      if(space and onground and ducking and !hurt and !disable)
      {
         jumps++;
         _root.p1jumpamount = _root.p1jumpamount + 1;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         if(_parent.player1.player1.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player1sound.jumpsound.start();
         }
         jumpa();
         damage = jumpdamage;
         ducking = false;
         jumping = true;
         jump = maxjump + 5;
         this._y -= jump;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= jump;
            i++;
         }
         _parent.player2._y -= jump;
         _parent.player3._y -= jump;
         _parent.player4._y -= jump;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= jump;
            i++;
         }
         _parent.p1attackbox._y -= jump;
         _parent.p2attackbox._y -= jump;
         _parent.p3attackbox._y -= jump;
         _parent.p4attackbox._y -= jump;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= jump;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= jump;
            i++;
         }
         _parent.object1._y -= jump;
         _parent.object2._y -= jump;
         _parent.object3._y -= jump;
         _parent.object4._y -= jump;
         _parent.object5._y -= jump;
         _parent.range._y -= jump;
         _parent.target1._y -= jump;
         _parent.target2._y -= jump;
         _parent.target3._y -= jump;
         _parent.target4._y -= jump;
         _parent.target5._y -= jump;
         _parent.target6._y -= jump;
         _parent.target7._y -= jump;
         _parent.target8._y -= jump;
         onground = false;
      }
      else if(space and !hurt and jumps < jumptimes and jumpdelay > 15 and !disable)
      {
         jumps++;
         jumpdelay = 0;
         _root.p1jumpamount = _root.p1jumpamount + 1;
         if(jumps > 0)
         {
            rev = false;
            rolling = false;
            ducking = false;
            if(_parent.player1.player1.sheik == true)
            {
               jumpsound.start();
            }
            else
            {
               _parent.player1sound.jumpsound.start();
            }
            jumpa();
         }
         damage = jumpdamage;
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y -= jump;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= jump;
            i++;
         }
         _parent.player2._y -= jump;
         _parent.player3._y -= jump;
         _parent.player4._y -= jump;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= jump;
            i++;
         }
         _parent.p1attackbox._y -= jump;
         _parent.p2attackbox._y -= jump;
         _parent.p3attackbox._y -= jump;
         _parent.p4attackbox._y -= jump;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= jump;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= jump;
            i++;
         }
         _parent.object1._y -= jump;
         _parent.object2._y -= jump;
         _parent.object3._y -= jump;
         _parent.object4._y -= jump;
         _parent.object5._y -= jump;
         _parent.range._y -= jump;
         _parent.target1._y -= jump;
         _parent.target2._y -= jump;
         _parent.target3._y -= jump;
         _parent.target4._y -= jump;
         _parent.target5._y -= jump;
         _parent.target6._y -= jump;
         _parent.target7._y -= jump;
         _parent.target8._y -= jump;
         onground = false;
      }
      else if(jumping and !onground and !disable)
      {
         this._y -= jump;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= jump;
            i++;
         }
         _parent.player2._y -= jump;
         _parent.player3._y -= jump;
         _parent.player4._y -= jump;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= jump;
            i++;
         }
         _parent.p1attackbox._y -= jump;
         _parent.p2attackbox._y -= jump;
         _parent.p3attackbox._y -= jump;
         _parent.p4attackbox._y -= jump;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= jump;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= jump;
            i++;
         }
         _parent.object1._y -= jump;
         _parent.object2._y -= jump;
         _parent.object3._y -= jump;
         _parent.object4._y -= jump;
         _parent.object5._y -= jump;
         _parent.range._y -= jump;
         _parent.target1._y -= jump;
         _parent.target2._y -= jump;
         _parent.target3._y -= jump;
         _parent.target4._y -= jump;
         _parent.target5._y -= jump;
         _parent.target6._y -= jump;
         _parent.target7._y -= jump;
         _parent.target8._y -= jump;
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
   function player1jump2()
   {
      jumpdelay++;
      var _temp_1 = _parent.player2._y < _parent.player1._y - _parent.player1._height - 40 and onground;
      Math.sqrt(Math.pow(_parent.player1._x - _parent.player2._x));
      if(_temp_1 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumpdelay > 15 and _parent.player2.onground)
      {
         jumps++;
         _root.p1jumpamount = _root.p1jumpamount + 1;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         if(_parent.player1.player1.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player1sound.jumpsound.start();
         }
         jumpa();
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y -= jump;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= jump;
            i++;
         }
         _parent.player2._y -= jump;
         _parent.player3._y -= jump;
         _parent.player4._y -= jump;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= jump;
            i++;
         }
         _parent.p1attackbox._y -= jump;
         _parent.p2attackbox._y -= jump;
         _parent.p3attackbox._y -= jump;
         _parent.p4attackbox._y -= jump;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= jump;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= jump;
            i++;
         }
         _parent.object1._y -= jump;
         _parent.object2._y -= jump;
         _parent.object3._y -= jump;
         _parent.object4._y -= jump;
         _parent.object5._y -= jump;
         _parent.range._y -= jump;
         damage = jumpdamage;
         onground = false;
      }
      else
      {
         var _temp_2 = _parent.player2._y < _parent.player1._y - (_parent.player1._height - 40);
         Math.sqrt(Math.pow(_parent.player1._x - _parent.player2._x));
         if(_temp_2 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumps < 2 and jumpdelay > 15 and _parent.player2.onground)
         {
            jumps++;
            jumpdelay = 0;
            _root.p3jumpamount = _root.p3jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player1sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(cliff and !onground and !hurt and jumps < 2 and jumpdelay > 15 and _parent.player1._y > _parent.ground._y)
         {
            jumps++;
            jumpdelay = 0;
            _root.p3jumpamount = _root.p3jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player1sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(jumping and !onground)
         {
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
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
   function player1jump3()
   {
      jumpdelay++;
      var _temp_1 = _parent.player3._y < _parent.player1._y - _parent.player1._height - 40 and onground;
      Math.sqrt(Math.pow(_parent.player1._x - _parent.player3._x));
      if(_temp_1 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumpdelay > 15 and _parent.player3.onground)
      {
         jumps++;
         _root.p1jumpamount = _root.p1jumpamount + 1;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         if(_parent.player1.player1.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player1sound.jumpsound.start();
         }
         jumpa();
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y -= jump;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= jump;
            i++;
         }
         _parent.player2._y -= jump;
         _parent.player3._y -= jump;
         _parent.player4._y -= jump;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= jump;
            i++;
         }
         _parent.p1attackbox._y -= jump;
         _parent.p2attackbox._y -= jump;
         _parent.p3attackbox._y -= jump;
         _parent.p4attackbox._y -= jump;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= jump;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= jump;
            i++;
         }
         _parent.object1._y -= jump;
         _parent.object2._y -= jump;
         _parent.object3._y -= jump;
         _parent.object4._y -= jump;
         _parent.object5._y -= jump;
         _parent.range._y -= jump;
         damage = jumpdamage;
         onground = false;
      }
      else
      {
         var _temp_2 = _parent.player3._y < _parent.player1._y - (_parent.player1._height - 40);
         Math.sqrt(Math.pow(_parent.player1._x - _parent.player3._x));
         if(_temp_2 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumps < 2 and jumpdelay > 15 and _parent.player3.onground)
         {
            jumps++;
            jumpdelay = 0;
            _root.p1jumpamount = _root.p1jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player1sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(cliff and !onground and !hurt and jumps < 2 and jumpdelay > 15 and _parent.player1._y > _parent.ground._y)
         {
            jumps++;
            jumpdelay = 0;
            _root.p1jumpamount = _root.p1jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player1sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(jumping and !onground)
         {
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
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
   function player1jump4()
   {
      jumpdelay++;
      var _temp_1 = _parent.player4._y < _parent.player1._y - _parent.player1._height - 40 and onground;
      Math.sqrt(Math.pow(_parent.player1._x - _parent.player4._x));
      if(_temp_1 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumpdelay > 15 and _parent.player4.onground)
      {
         jumps++;
         _root.p1jumpamount = _root.p1jumpamount + 1;
         jumpdelay = 0;
         rev = false;
         rolling = false;
         ducking = false;
         if(_parent.player1.player1.sheik == true)
         {
            jumpsound.start();
         }
         else
         {
            _parent.player1sound.jumpsound.start();
         }
         jumpa();
         falling = false;
         jumping = true;
         jump = maxjump;
         this._y -= jump;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= jump;
            i++;
         }
         _parent.player2._y -= jump;
         _parent.player3._y -= jump;
         _parent.player4._y -= jump;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= jump;
            i++;
         }
         _parent.p1attackbox._y -= jump;
         _parent.p2attackbox._y -= jump;
         _parent.p3attackbox._y -= jump;
         _parent.p4attackbox._y -= jump;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= jump;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= jump;
            i++;
         }
         _parent.object1._y -= jump;
         _parent.object2._y -= jump;
         _parent.object3._y -= jump;
         _parent.object4._y -= jump;
         _parent.object5._y -= jump;
         _parent.range._y -= jump;
         damage = jumpdamage;
         onground = false;
      }
      else
      {
         var _temp_2 = _parent.player4._y < _parent.player1._y - (_parent.player1._height - 40);
         Math.sqrt(Math.pow(_parent.player1._x - _parent.player4._x));
         if(_temp_2 and 2 < jumprange and !hurt and Math.random() < jumpchance and jumps < 2 and jumpdelay > 15 and _parent.player4.onground)
         {
            jumps++;
            jumpdelay = 0;
            _root.p1jumpamount = _root.p1jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player1sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(cliff and !onground and !hurt and jumps < 2 and jumpdelay > 15 and _parent.player1._y > _parent.ground._y)
         {
            jumps++;
            jumpdelay = 0;
            _root.p1jumpamount = _root.p1jumpamount + 1;
            if(jumps > 0)
            {
               rev = false;
               rolling = false;
               ducking = false;
               if(_parent.player1.player1.sheik == true)
               {
                  jumpsound.start();
               }
               else
               {
                  _parent.player1sound.jumpsound.start();
               }
               jumpa();
            }
            falling = false;
            jumping = true;
            jump = maxjump;
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
            damage = jumpdamage;
            onground = false;
         }
         else if(jumping and !onground)
         {
            this._y -= jump;
            i = 0;
            while(i <= 30)
            {
               _parent["platform" + i]._y -= jump;
               i++;
            }
            _parent.player2._y -= jump;
            _parent.player3._y -= jump;
            _parent.player4._y -= jump;
            i = 1;
            while(i <= 30)
            {
               _parent["enemy" + i]._y -= jump;
               i++;
            }
            _parent.p1attackbox._y -= jump;
            _parent.p2attackbox._y -= jump;
            _parent.p3attackbox._y -= jump;
            _parent.p4attackbox._y -= jump;
            i = 1;
            while(i <= 20)
            {
               _parent["ground" + i]._y -= jump;
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               _parent["item" + i]._y -= jump;
               i++;
            }
            _parent.object1._y -= jump;
            _parent.object2._y -= jump;
            _parent.object3._y -= jump;
            _parent.object4._y -= jump;
            _parent.object5._y -= jump;
            _parent.range._y -= jump;
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
   function checkground()
   {
      if(this.hitTest(_parent.player1.player1.feet) and falling and _parent.player1._y < this._y and !onground)
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
               _root.p1crowdamount += 1;
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
         tempground = _parent.player1._y + newone - this._y;
         this._y = _parent.player1._y + newone;
         ii = 1;
         while(ii <= 30)
         {
            _parent["platform" + ii]._y += tempground;
            ii++;
         }
         _parent.player2._y += tempground;
         _parent.player3._y += tempground;
         _parent.player4._y += tempground;
         ii = 1;
         while(ii <= 30)
         {
            _parent["enemy" + ii]._y += tempground;
            ii++;
         }
         _parent.p1attackbox._y += tempground;
         _parent.p2attackbox._y += tempground;
         _parent.p3attackbox._y += tempground;
         _parent.p4attackbox._y += tempground;
         ii = 1;
         while(ii <= 20)
         {
            _parent["ground" + ii]._y += tempground;
            ii++;
         }
         ii = 1;
         while(ii <= 30)
         {
            _parent["item" + ii]._y += tempground;
            ii++;
         }
         _parent.object1._y += tempground;
         _parent.object2._y += tempground;
         _parent.object3._y += tempground;
         _parent.object4._y += tempground;
         _parent.object5._y += tempground;
         _parent.range._y += tempground;
         _parent.target1._y += tempground;
         _parent.target2._y += tempground;
         _parent.target3._y += tempground;
         _parent.target4._y += tempground;
         _parent.target5._y += tempground;
         _parent.target6._y += tempground;
         _parent.target7._y += tempground;
         _parent.target8._y += tempground;
      }
      i = 1;
      while(i <= 20)
      {
         if(_parent["ground" + i].hitTest(_parent.player1.player1.feet) and falling and _parent.player1._y < _parent["ground" + i]._y and !onground)
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
                  _root.p1crowdamount += 1;
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
            tempground = _parent.player1._y + newone - _parent["ground" + i]._y;
            _parent["ground" + i]._y = _parent.player1._y + newone;
            ii = 1;
            while(ii <= 30)
            {
               _parent["platform" + ii]._y += tempground;
               ii++;
            }
            ii = 1;
            while(ii <= 30)
            {
               _parent["item" + ii]._y += tempground;
               ii++;
            }
            _parent.player2._y += tempground;
            _parent.player3._y += tempground;
            _parent.player4._y += tempground;
            ii = 1;
            while(ii <= 30)
            {
               _parent["enemy" + ii]._y += tempground;
               ii++;
            }
            _parent.p1attackbox._y += tempground;
            _parent.p2attackbox._y += tempground;
            _parent.p3attackbox._y += tempground;
            _parent.p4attackbox._y += tempground;
            _parent.object1._y += tempground;
            _parent.object2._y += tempground;
            _parent.object3._y += tempground;
            _parent.object4._y += tempground;
            _parent.object5._y += tempground;
            _parent.range._y += tempground;
            _parent.target1._y += tempground;
            _parent.target2._y += tempground;
            _parent.target3._y += tempground;
            _parent.target4._y += tempground;
            _parent.target5._y += tempground;
            _parent.target6._y += tempground;
            _parent.target7._y += tempground;
            _parent.target8._y += tempground;
            this._y += tempground;
            ii = 0;
            while(ii <= i - 1)
            {
               _parent["ground" + ii]._y += tempground;
               ii++;
            }
            ii = i + 1;
            while(ii <= 20)
            {
               _parent["ground" + ii]._y += tempground;
               ii++;
            }
         }
         i++;
      }
      i = 1;
      while(i <= 30)
      {
         if(_parent["platform" + i].hitTest(_parent.player1.player1.feet) and falling and _parent.player1._y + 15 < _parent["platform" + i]._y and !onground and !falldown)
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
                  _root.p1crowdamount += 1;
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
            tempground = _parent.player1._y + newone - _parent["platform" + i]._y;
            _parent["platform" + i]._y = _parent.player1._y + newone;
            ii = 0;
            while(ii <= i - 1)
            {
               _parent["platform" + ii]._y += tempground;
               ii++;
            }
            ii = i + 1;
            while(ii <= 30)
            {
               _parent["platform" + ii]._y += tempground;
               ii++;
            }
            _parent.player2._y += tempground;
            _parent.player3._y += tempground;
            _parent.player4._y += tempground;
            ii = 1;
            while(ii <= 30)
            {
               _parent["enemy" + ii]._y += tempground;
               ii++;
            }
            ii = 1;
            while(ii <= 30)
            {
               _parent["item" + ii]._y += tempground;
               ii++;
            }
            _parent.p1attackbox._y += tempground;
            _parent.p2attackbox._y += tempground;
            _parent.p3attackbox._y += tempground;
            _parent.p4attackbox._y += tempground;
            _parent.object1._y += tempground;
            _parent.object2._y += tempground;
            _parent.object3._y += tempground;
            _parent.object4._y += tempground;
            _parent.object5._y += tempground;
            _parent.range._y += tempground;
            _parent.target1._y += tempground;
            _parent.target2._y += tempground;
            _parent.target3._y += tempground;
            _parent.target4._y += tempground;
            _parent.target5._y += tempground;
            _parent.target6._y += tempground;
            _parent.target7._y += tempground;
            _parent.target8._y += tempground;
            this._y += tempground;
            ii = 1;
            while(ii <= 20)
            {
               _parent["ground" + ii]._y += tempground;
               ii++;
            }
         }
         i++;
      }
      iii = 0;
      ii = 1;
      while(ii <= 20)
      {
         if(!_parent["ground" + ii].hitTest(_parent.player1.player1.feet))
         {
            iii++;
         }
         ii++;
      }
      ii = 1;
      while(ii <= 30)
      {
         if(!_parent["platform" + ii].hitTest(_parent.player1.player1.feet))
         {
            iii++;
         }
         ii++;
      }
      if(iii >= 50 and !_parent.ground.hitTest(_parent.player1.player1.feet))
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
         if(_parent._parent.player1.control == "cpu")
         {
            if(!cliff)
            {
               speed = 0;
            }
         }
         else
         {
            speed = 0;
         }
      }
   }
   function checkifmoving()
   {
      if(speed == 0 and !jumping and !movingright and !movingleft and !rolling)
      {
         if(!attacking and !ducking and !rev and !rolling and _parent.player1.player1._currentframe !== 1)
         {
            standing();
         }
         moving = false;
      }
   }
   function syncStats()
   {
      _parent.p1airamount = airamount;
      _parent.p1smashamount = smashamount;
      _parent.p1attackamount = attackamount;
      _parent.p1normalamount = normalamount;
      _parent.p1dashamount = dashamount;
      _parent.p1maxdamage = maxdamage;
      _parent.p1directionamount = directionamount;
      _parent.p1crouchamount = crouchamount;
      _parent.p1jumpamount = jumpamount;
      _parent.p1crowdamount = crowdamount;
      _parent.p1hurtamount = hurtamount;
   }
   function deadControl()
   {
      speed = 10;
      if(up)
      {
         this._y += speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y += speed;
            i++;
         }
         _parent.player2._y += speed;
         _parent.player3._y += speed;
         _parent.player4._y += speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y += speed;
            i++;
         }
         _parent.p1attackbox._y += speed;
         _parent.p2attackbox._y += speed;
         _parent.p3attackbox._y += speed;
         _parent.p4attackbox._y += speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y += speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y += speed;
            i++;
         }
         _parent.object1._y += speed;
         _parent.object2._y += speed;
         _parent.object3._y += speed;
         _parent.object4._y += speed;
         _parent.object5._y += speed;
         _parent.range._y += speed;
      }
      if(down)
      {
         this._y -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._y -= speed;
            i++;
         }
         _parent.player2._y -= speed;
         _parent.player3._y -= speed;
         _parent.player4._y -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._y -= speed;
            i++;
         }
         _parent.p1attackbox._y -= speed;
         _parent.p2attackbox._y -= speed;
         _parent.p3attackbox._y -= speed;
         _parent.p4attackbox._y -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._y -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._y -= speed;
            i++;
         }
         _parent.object1._y -= speed;
         _parent.object2._y -= speed;
         _parent.object3._y -= speed;
         _parent.object4._y -= speed;
         _parent.object5._y -= speed;
         _parent.range._y -= speed;
      }
      if(left)
      {
         this._x += speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x += speed;
            i++;
         }
         _parent.player2._x += speed;
         _parent.player3._x += speed;
         _parent.player4._x += speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x += speed;
            i++;
         }
         _parent.p1attackbox._x += speed;
         _parent.p2attackbox._x += speed;
         _parent.p3attackbox._x += speed;
         _parent.p4attackbox._x += speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x += speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x += speed;
            i++;
         }
         _parent.object1._x += speed;
         _parent.object2._x += speed;
         _parent.object3._x += speed;
         _parent.object4._x += speed;
         _parent.object5._x += speed;
         _parent.range._x += speed;
      }
      if(right)
      {
         this._x -= speed;
         i = 0;
         while(i <= 30)
         {
            _parent["platform" + i]._x -= speed;
            i++;
         }
         _parent.player2._x -= speed;
         _parent.player3._x -= speed;
         _parent.player4._x -= speed;
         i = 1;
         while(i <= 30)
         {
            _parent["enemy" + i]._x -= speed;
            i++;
         }
         _parent.p1attackbox._x -= speed;
         _parent.p2attackbox._x -= speed;
         _parent.p3attackbox._x -= speed;
         _parent.p4attackbox._x -= speed;
         i = 1;
         while(i <= 20)
         {
            _parent["ground" + i]._x -= speed;
            i++;
         }
         i = 1;
         while(i <= 30)
         {
            _parent["item" + i]._x -= speed;
            i++;
         }
         _parent.object1._x -= speed;
         _parent.object2._x -= speed;
         _parent.object3._x -= speed;
         _parent.object4._x -= speed;
         _parent.object5._x -= speed;
         _parent.range._x -= speed;
      }
   }
   function watchGround()
   {
      i = 1;
      while(i <= 20)
      {
         if(_parent.player1._x < _parent["ground" + i]._x and _parent.player1._y + 30 > _parent["ground" + i]._y and _parent["ground" + i].hitTest(_parent.player1) and speed > 0)
         {
            speed = 0;
         }
         else if(_parent.player1._x > _parent["ground" + i]._x + _parent["ground" + i]._width and _parent.player1._y + 30 > _parent["ground" + i]._y and _parent["ground" + i].hitTest(_parent.player1) and speed < 0)
         {
            speed = 0;
         }
         else if(_parent.player1._x > _parent["ground" + i]._x and _parent.player1._x < _parent["ground" + i]._x + _parent["ground" + i]._width + 75 and _parent.player1._y > _parent["ground" + i]._y and _parent["ground" + i].hitTest(_parent.player1) and jump < 0)
         {
            jump = 0;
         }
         i++;
      }
      if(_parent.player1._x < _parent.ground._x and _parent.player1._y + 30 > _parent.ground._y and _parent.ground.hitTest(_parent.player1) and speed > 0)
      {
         speed = 0;
      }
      else if(_parent.player1._x > _parent.ground._x and _parent.player1._y + 30 > _parent.ground._y and _parent.ground.hitTest(_parent.player1) and speed < 0)
      {
         speed = 0;
      }
      else if(_parent.player1._x > _parent.ground._x and _parent.player1._x < _parent.ground._x + _parent.ground._width + 75 and _parent.player1._y > _parent.ground._y and _parent.ground.hitTest(_parent.player1) and jump < 0)
      {
         jump = 0;
      }
   }
   function watchGround2()
   {
   }
   function watchGround3()
   {
   }
   player1character = _parent._parent.player1character;
   player2character = _parent._parent.player2character;
   player3character = _parent._parent.player3character;
   player4character = _parent._parent.player4character;
   disable = false;
   _parent.grounddead = false;
   attacktype = "normal";
   if(_root.currentmode == "Adventure" or _root.currentmode == "Classic")
   {
      newone = 30;
   }
   else
   {
      newone = 36.5;
   }
   iii = 0;
   if(player1character == "zelda")
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
   if(_parent.setgameto == "ffa")
   {
      p2hurt = true;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "2v21")
   {
      p2hurt = false;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "2v22")
   {
      p2hurt = true;
      p3hurt = false;
      p4hurt = true;
   }
   else if(_parent.setgameto == "1v31")
   {
      p2hurt = true;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "1v32")
   {
      p2hurt = true;
      p3hurt = false;
      p4hurt = false;
   }
   else if(_parent.setgameto == "1v33")
   {
      p2hurt = false;
      p3hurt = true;
      p4hurt = false;
   }
   else if(_parent.setgameto == "2v1v1")
   {
      p2hurt = false;
      p3hurt = true;
      p4hurt = true;
   }
   else if(_parent.setgameto == "1v1v2")
   {
      p2hurt = true;
      p3hurt = true;
      p4hurt = true;
   }
   exist2 = _parent._parent.player2.exist;
   exist = _parent._parent.player1.exist;
   exist3 = _parent._parent.player3.exist;
   exist4 = _parent._parent.player4.exist;
   target = null;
   downcount = 0;
   falldown = false;
   holding = false;
   throwwait = 0;
   pickupwait = 0;
   tempspeed = 0;
   speed = 0;
   maxmove = _parent._parent.player1.maxmove;
   jumping = true;
   jump = 10;
   maxjump = _parent._parent.player1.maxjump;
   moving = false;
   attackboost = _parent._parent.player1.attackboost;
   movingright = false;
   movingleft = false;
   onground = false;
   facing = "right";
   falling = true;
   jumpdamage = _parent._parent.player1.jumpdamage;
   hitdirection = "";
   attacklength = _parent._parent.player1.attacklength;
   attackspace = _parent._parent.player1.attackspace;
   attacking = false;
   attackdelay = 0;
   vulnerable = false;
   ducking = false;
   control = false;
   rev = false;
   down = false;
   rolling = false;
   sounddelay = 0;
   turnaround = _parent._parent.player1.turnaround;
   hurt = false;
   hurtdelay = 0;
   recoveryrate = _parent._parent.player1.recoveryrate;
   knockback = _parent._parent.knockback;
   knockup = _parent._parent.knockup;
   health = _root.healthreset;
   tempattack = 0;
   chanceattack = _parent._parent.player1.chanceattack;
   jumpchance = _parent._parent.player1.jumpchance;
   attackrange = _parent._parent.player1.attackrange;
   jumprange = _parent._parent.player1.jumprange;
   revchance = _parent._parent.player1.revchance;
   followchance = _parent._parent.player1.followchance;
   cliff = false;
   slowing = false;
   damage = 0;
   smash = _parent._parent.player1.smash;
   normal = _parent._parent.player1.normal;
   air = _parent._parent.player1.air;
   revdamage = _parent._parent.player1.revdamage;
   revspeed = _parent._parent.player1.revspeed;
   healthdivision = _parent._parent.player1.healthdivision;
   if(_root.player1.exist)
   {
      if(_root.currentmode == "VS")
      {
         lives = _parent._parent.lives;
      }
      else
      {
         lives = _root.p1lives;
      }
   }
   else
   {
      lives = 0;
   }
   _root.templife = lives;
   dead = false;
   fading = false;
   deaths = 0;
   suicide = 0;
   points = 0;
   kills = 0;
   jumps = 0;
   slow = _parent._parent.player1.slow;
   speedup = _parent._parent.player1.speedup;
   speeddown = _parent._parent.player1.speeddown;
   jumptimes = _parent._parent.player1.jumptimes;
   runwait = 0;
   _root.p1airamount = 0;
   _root.p1smashamount = 0;
   _root.p1attackamount = 0;
   _root.p1normalamount = 0;
   _root.p1dashamount = 0;
   _root.p1maxdamage = 0;
   _root.p1directionamount = 0;
   _root.p1crouchamount = 0;
   _root.p1jumpamount = 0;
   _root.p1crowdamount = 0;
   _root.p1hurtamount = 0;
   attacktime = 0;
   temptimer = 0;
   jumpdelay = 0;
   knockback /= 2;
   knocback /= 2;
}
