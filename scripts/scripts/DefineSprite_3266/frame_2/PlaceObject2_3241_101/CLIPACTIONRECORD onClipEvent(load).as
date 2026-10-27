onClipEvent(load){
   function enemymove()
   {
      if(!leftxstuck)
      {
         if(_parent.player1._x + _parent.player1._width / 2 < this._x + this.stance._width / 2)
         {
            this._x -= xspeed;
         }
      }
      if(!rightxstuck)
      {
         if(_parent.player1._x + _parent.player1._width / 2 > this._x + this.stance._width / 2)
         {
            this._x += xspeed;
         }
      }
      if(!ystuck and enemytype == "air")
      {
         if(_parent.player1._y + _parent.player1._height < this._y)
         {
            this._y -= yspeed;
         }
         else if(_parent.player1._y > this._y)
         {
            this._y += yspeed;
         }
      }
   }
   function checkface()
   {
      if(_parent.player1._x + _parent.player1._width / 2 < this._x + this.stance._width / 2)
      {
         if(facing == "right")
         {
            this._x += this.stance._width;
            this.stance._xscale = - Math.abs(this.stance._xscale);
            facing = "left";
            rightxstuck = false;
         }
      }
      else if(_parent.player1._x + _parent.player1._width / 2 > this._x + this.stance._width / 2)
      {
         if(facing == "left")
         {
            this._x -= this.stance._width;
            this.stance._xscale = Math.abs(this.stance._xscale);
            facing = "right";
            leftxstuck = false;
         }
      }
   }
   function checkground()
   {
      if(enemytype == "ground")
      {
         if(this.stance.hitTest(_parent.ground) and this._y < _parent.ground._y and !onground)
         {
            onground = true;
         }
         else
         {
            i = 1;
            while(i <= 20)
            {
               if(_parent["ground" + i].hitTest(this.stance) and this._y < _parent["ground" + i]._y and !onground)
               {
                  onground = true;
               }
               i++;
            }
            i = 1;
            while(i <= 30)
            {
               if(_parent["platform" + i].hitTest(this.stance) and _this._y < _parent["platform" + i]._y and !onground)
               {
                  onground = true;
               }
               i++;
            }
         }
         iii = 0;
         ii = 1;
         while(ii <= 20)
         {
            if(!_parent["ground" + ii].hitTest(this.stance))
            {
               iii++;
            }
            ii++;
         }
         ii = 1;
         while(ii <= 30)
         {
            if(!_parent["platform" + ii].hitTest(this.stance))
            {
               iii++;
            }
            ii++;
         }
         if(iii >= 50 and !_parent.ground.hitTest(this.stance))
         {
            onground = false;
         }
         else
         {
            onground = true;
         }
         if(!onground)
         {
            this._y += 8;
         }
      }
   }
   function checkhit()
   {
      if(this.stance.hitTest(_parent.player1.player1.feet) and !dead and _parent.player1._y + _parent.player1._height < this._y + this._height / 2 and !_parent.ground.hurt)
      {
         dead = true;
         _parent.ground.jump *= -1;
         play();
      }
      if(this.stance.hitTest(_parent.player1.player1.attackbox))
      {
         if(!dead)
         {
            dead = true;
            play();
         }
      }
      if(this.stance.hitTest(_parent.p1attackbox))
      {
         if(!dead)
         {
            dead = true;
            play();
         }
      }
      i = 1;
      while(i <= 30)
      {
         if(this.stance.hitTest(_parent["item" + i].attackbox) and _parent["item" + i].active == true and !dead)
         {
            itemplayer = _parent["item" + i].player;
            if(_parent["item" + i].damage !== 0 and ["p" + itemplayer + "hurt"])
            {
               _parent["p" + itemplayer + "hitamount"] += 1;
            }
            dead = true;
            play();
         }
         i++;
      }
   }
   function watchGround()
   {
      if(enemytype !== "air")
      {
         i = 1;
         while(i <= 20)
         {
            if(this._x < _parent["ground" + i]._x and this._y + 30 > _parent["ground" + i]._y and _parent["ground" + i].hitTest(this))
            {
               rightxstuck = true;
            }
            else if(this._x > _parent["ground" + i]._x + _parent["ground" + i]._width and this._y + 30 > _parent["ground" + i]._y and _parent["ground" + i].hitTest(this))
            {
               leftxstuck = true;
            }
            i++;
         }
         if(this._x < _parent.ground._x and this._y + 30 > _parent.ground._y and _parent.ground.hitTest(this))
         {
            rightxstuck = true;
         }
         else if(this._x > _parent.ground._x and this._y + 30 > _parent.ground._y and _parent.ground.hitTest(this))
         {
            leftxstuck = true;
         }
      }
   }
   xspeed = 2;
   yspeed = 4;
   facing = "right";
   enemytype = "ground";
   tempx1 = 1;
   tempx2 = 1;
   tempy1 = 1;
   tempy2 = 1;
   damage = 4;
   sightrange = 750;
   onground = false;
   rightxstuck = false;
   leftxstuck = false;
   ystuck = false;
   hitting = false;
   dead = false;
   turned = false;
}
