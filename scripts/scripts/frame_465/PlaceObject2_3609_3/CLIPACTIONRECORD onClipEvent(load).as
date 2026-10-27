onClipEvent(load){
   function getDistance()
   {
      centerdistance = Math.sqrt(Math.pow(this._x - originalx,2));
      middledistance = Math.sqrt(Math.pow(this._y - originaly,2));
   }
   function panLeft()
   {
      if(panspeedx < 8)
      {
         panspeedx++;
      }
      this._x -= panspeedx / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
   }
   function panRight()
   {
      if(panspeedx < 8)
      {
         panspeedx++;
      }
      this._x += panspeedx / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
   }
   function panUp()
   {
      if(panspeedy < 8)
      {
         panspeedy++;
      }
      this._y -= panspeedy / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
   }
   function panDown()
   {
      if(panspeedy < 8)
      {
         panspeedy++;
      }
      this._y += panspeedy / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
   }
   function slowLeft()
   {
      this._x -= panspeedx / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
      if(panspeedx > 1)
      {
         panspeedx--;
      }
      if(this._x == originalx or this._x < originalx)
      {
         this._x = originalx;
         getDistance();
         clock.centerit();
         p1health.centerit();
         p2health.centerit();
         p3health.centerit();
         p4health.centerit();
         pauser.centerit();
         blow.centerit();
         remain.centerit();
      }
   }
   function slowRight()
   {
      this._x += panspeedx / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
      if(panspeedx > 1)
      {
         panspeedx--;
      }
      if(this._x == originalx or this._x > originalx)
      {
         this._x = originalx;
         getDistance();
         clock.centerit();
         p1health.centerit();
         p2health.centerit();
         p3health.centerit();
         p4health.centerit();
         pauser.centerit();
         blow.centerit();
         remain.centerit();
      }
   }
   function slowUp()
   {
      this._y -= panspeedy / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
      if(panspeedy > 1)
      {
         panspeedy--;
      }
      if(this._y == originaly or this._y < originaly)
      {
         this._y = originaly;
         getDistance();
         clock.centerit();
         p1health.centerit();
         p2health.centerit();
         p3health.centerit();
         p4health.centerit();
         pauser.centerit();
         blow.centerit();
         remain.centerit();
      }
   }
   function slowDown()
   {
      this._y += panspeedy / 2;
      getDistance();
      clock.centerit();
      p1health.centerit();
      p2health.centerit();
      p3health.centerit();
      p4health.centerit();
      pauser.centerit();
      blow.centerit();
      remain.centerit();
      if(panspeedy > 1)
      {
         panspeedy--;
      }
      if(this._y == originaly or this._y > originaly)
      {
         this._y = originaly;
         getDistance();
         clock.centerit();
         p1health.centerit();
         p2health.centerit();
         p3health.centerit();
         p4health.centerit();
         pauser.centerit();
         blow.centerit();
      }
   }
   panspeedx = 0;
   panspeedy = 0;
   originalx = this._x;
   originaly = this._y;
}
