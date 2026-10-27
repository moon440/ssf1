stop();
setgameto = "1v31";
stage.startmusic1 = "menu2";
stage.setgameto = setgameto;
displaynames = false;
minutes = 0;
seconds = 0;
timer = true;
p1lives = 1;
p2lives = 1;
p3lives = 1;
p4lives = 1;
itemchance = 0.5;
player2.exist = true;
player3.exist = true;
player4.exist = true;
player2.maxmove = 15;
player2.maxjump = -14;
player2.jumpdamage = 0;
player2.turnaround = 16;
player2.recoveryrate = 8;
player2.smash = 3;
player2.normal = 3;
player2.air = 3;
player2.revdamage = 3;
player2.revspeed = 1;
player2.attackboost = 1;
player2.attackspace = 16;
player2.attacklength = 10;
player2.slow = 0.5;
player2.speedup = 0.5;
player2.speeddown = 0.9;
player2.jumptimes = 2;
player3.maxmove = 15;
player3.maxjump = -14;
player3.jumpdamage = 0;
player3.turnaround = 16;
player3.recoveryrate = 8;
player3.smash = 3;
player3.normal = 3;
player3.air = 3;
player3.revdamage = 3;
player3.revspeed = 1;
player3.attackboost = 1;
player3.attackspace = 16;
player3.attacklength = 10;
player3.slow = 0.5;
player3.speedup = 0.5;
player3.speeddown = 0.9;
player3.jumptimes = 2;
player4.maxmove = 15;
player4.maxjump = -14;
player4.jumpdamage = 0;
player4.turnaround = 16;
player4.recoveryrate = 8;
player4.smash = 3;
player4.normal = 3;
player4.air = 3;
player4.revdamage = 3;
player4.revspeed = 1;
player4.attackboost = 1;
player4.attackspace = 16;
player4.attacklength = 10;
player4.slow = 0.5;
player4.speedup = 0.5;
player4.speeddown = 0.9;
player4.jumptimes = 2;
Array.prototype.randomize = function()
{
   var _loc2_ = this.length;
   if(_loc2_ == 0)
   {
      return undefined;
   }
   var _loc3_;
   var _loc5_;
   var _loc4_;
   while(_loc2_ = _loc2_ - 1)
   {
      _loc3_ = Math.floor(Math.random() * (_loc2_ + 1));
      _loc5_ = this[_loc2_];
      _loc4_ = this[_loc3_];
      this[_loc2_] = _loc4_;
      this[_loc3_] = _loc5_;
   }
   return this;
};
var enemies = new Array();
i = 0;
while(i <= 9)
{
   enemies[i] = Math.round(Math.random() * 27) + 1;
   i++;
}
enemies.randomize();
