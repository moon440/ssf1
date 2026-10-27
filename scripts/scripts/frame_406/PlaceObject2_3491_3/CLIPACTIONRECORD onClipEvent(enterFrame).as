onClipEvent(enterFrame){
   if(this.ground.dead == false)
   {
      if(gamepause == false and gamestarting == false)
      {
         if(this.ground.movingright and this._x < originalx + 36)
         {
            panRight();
         }
         else if(this.ground.movingleft and this._x > originalx - 36)
         {
            panLeft();
         }
         else if(this._x !== originalx and !this.ground.movingleft and !this.ground.movingright)
         {
            if(this._x < originalx and this.ground.speed > - this.ground.maxmove + 2)
            {
               slowRight();
            }
            else if(this._x > originalx and this.ground.speed < this.ground.maxmove - 2)
            {
               slowLeft();
            }
         }
         if(!this.ground.onground and this.ground.falling and this._y < originaly + 36)
         {
            panDown();
         }
         else if(!this.ground.onground and !this.ground.falling and this._y > originaly - 36)
         {
            panUp();
         }
         else if(this._y !== originaly and this.ground.onground)
         {
            if(this._y < originaly and this.ground.onground)
            {
               slowDown();
            }
            else if(this._y > originaly and this.ground.onground)
            {
               slowUp();
            }
         }
      }
   }
}
