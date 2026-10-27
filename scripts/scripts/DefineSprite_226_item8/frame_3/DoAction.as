onEnterFrame = function()
{
   i = 1;
   while(i <= 30)
   {
      if(attackbox.hitTest(_parent["item" + i]) and _parent["item" + i].itemtype == "bomb" and _parent["item" + i].active == false)
      {
         _parent["item" + i].player = player;
         _parent["item" + i].play();
         _parent["item" + i].attackbox.play();
      }
      i++;
   }
   i = 1;
   while(i <= 30)
   {
      if(this.hitTest(_parent["item" + i]) and _parent["item" + i].itemtype == "shell" and _parent["item" + i].active == false)
      {
         if(this._x > _parent["item" + i]._x)
         {
            _parent["item" + i]._x = _parent["item" + itemnumber]._x + _parent["item" + itemnumber]._width;
            _parent["item" + i]._xscale = - Math.abs(_parent["item" + itemnumber]._xscale);
            _parent["item" + i].gotoAndPlay("normal");
            _parent["item" + i].player = player;
         }
         else if(this._x < _parent["item" + i]._x)
         {
            _parent["item" + i].gotoAndPlay("normal");
            _parent["item" + i].player = player;
         }
      }
      i++;
   }
   iii = 0;
   ii = 1;
   while(ii <= 20)
   {
      if(!_parent["ground" + ii].hitTest(this))
      {
         iii++;
      }
      ii++;
   }
   ii = 1;
   while(ii <= 30)
   {
      if(!_parent["platform" + ii].hitTest(this))
      {
         iii++;
      }
      ii++;
   }
   if(iii >= 50 and !_parent.ground.hitTest(this))
   {
      onground = false;
   }
   else
   {
      onground = true;
   }
   if(!onground and !pickedup)
   {
      this._y += 5;
   }
};
uses++;
active = true;
pickedup = true;
fan = new Sound();
fan.attachSound("fanhit");
fan.start();
