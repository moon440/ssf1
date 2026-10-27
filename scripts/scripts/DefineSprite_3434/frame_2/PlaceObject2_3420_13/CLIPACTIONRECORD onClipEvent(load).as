onClipEvent(load){
   function goBack()
   {
      if(!attacking)
      {
         if(this._x < _parent.ground._x + originalx - 30)
         {
            this._x += 14;
         }
         else if(this._x >= _parent.ground._x + originalx + 30)
         {
            this._x -= 14;
         }
         if(this._y < _parent.ground._y - originaly - 30)
         {
            this._y += 14;
         }
         else if(this._y >= _parent.ground._y - originaly + 30)
         {
            this._y -= 14;
         }
      }
   }
   function checkattack()
   {
      if(!attacking)
      {
         standby += 0.03333333333333333;
         if(standby >= 1.5)
         {
            randchance = Math.random();
            if(randchance >= 0.25)
            {
               attack = Math.round(Math.random() * 59) + 10;
               if(attack >= 10 and attack < 20)
               {
                  this.gotoAndPlay("shoot");
               }
               else if(attack >= 20 and attack < 30)
               {
                  this.gotoAndPlay("grabready");
               }
               else if(attack >= 30 and attack < 40)
               {
                  this.gotoAndPlay("pound");
               }
               else if(attack >= 40 and attack < 50)
               {
                  this.gotoAndPlay("push");
               }
               else if(attack >= 50 and attack < 60)
               {
                  this.gotoAndPlay("drill");
               }
               else if(attack >= 60 and attack < 70)
               {
                  this.gotoAndPlay("poke");
               }
               standby = 0;
            }
            else
            {
               standby = 0;
            }
         }
      }
   }
   function checkhit()
   {
      if(this.stance.hitTest(_parent.player1.player1.attackbox) or this.hitTest(_parent.p1attackbox) and !dead and vulnerable)
      {
         health -= Math.round(_parent.ground.damage / 3);
         if(punch.position <= 1 or punch.position >= punch.duration - 50)
         {
            punch.start();
         }
         _parent.p4health.play();
         if(health <= 0)
         {
            health = 0;
            _parent.p4health._visible = false;
            dead = true;
            this.gotoAndPlay("dead");
         }
      }
   }
   function checkexist()
   {
      if(!exist)
      {
         this._visible = false;
      }
      if(_parent.enemy1.health <= _parent.enemy1.halfhealth and !exist and _root.currentmode == "Adventure")
      {
         exist = true;
         laugh = new Sound();
         laugh.attachSound("crazylaugh");
         laugh.start();
         this._visible = true;
      }
   }
   dead = false;
   punch = new Sound();
   punch.attachSound("punch1");
   exist = false;
   this._visible = false;
   damage = 0;
   attacking = false;
   randchance = 0;
   attack = 1;
   originalx = Math.sqrt(Math.pow(this._x - _parent.ground._x,2));
   originaly = Math.sqrt(Math.pow(this._y - _parent.ground._y,2));
   standby = 0;
   if(_root.difficulty == "Very Easy")
   {
      health = 180;
   }
   else if(_root.difficulty == "Easy")
   {
      health = 250;
   }
   else if(_root.difficulty == "Normal")
   {
      health = 300;
   }
   else if(_root.difficulty == "Hard")
   {
      health = 325;
   }
   else if(_root.difficulty == "Very Hard")
   {
      health = 360;
   }
}
