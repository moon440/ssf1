stop();
setgameto = "1v31";
stage.startmusic1 = "burlybrawl";
stage.setgameto = setgameto;
displaynames = false;
timer = false;
p1lives = 1;
p2lives = 1;
p3lives = 1;
p4lives = 1;
minutes = 15;
itemchance = 0.5;
player2.exist = true;
player3.exist = true;
player4.exist = true;
currentmode = "multiman2";
temprand = Math.round(Math.random() * 27) + 1;
randChar(2,temprand);
if(_root.savedata.data.records[player2character][0] == false)
{
   temprand -= 15;
   if(temprand <= 0)
   {
      temprand = Math.round(Math.random() * 12) + 1;
   }
}
randChar(2,temprand);
var enemies = new Array();
i = 0;
while(i <= 10)
{
   enemies[i] = temprand;
   i++;
}
i = 3;
while(i <= 4)
{
   this["player" + i].exist = this.player2.exist;
   this["player" + i + "character"] = this.player2character;
   this["player" + i].maxmove = this.player2.maxmove;
   this["player" + i].maxjump = this.player2.maxjump;
   this["player" + i].jumpdamage = this.player2.jumpdamage;
   this["player" + i].turnaround = this.player2.turnaround;
   this["player" + i].recoveryrate = this.player2.recoveryrate;
   this["player" + i].smash = this.player2.smash;
   this["player" + i].normal = this.player2.normal;
   this["player" + i].air = this.player2.air;
   this["player" + i].revdamage = this.player2.revdamage;
   this["player" + i].revspeed = this.player2.revspeed;
   this["player" + i].attackboost = this.player2.attackboost;
   this["player" + i].attackspace = this.player2.attackspace;
   this["player" + i].attacklength = this.player2.attacklength;
   this["player" + i].slow = this.player2.slow;
   this["player" + i].speedup = this.player2.speedup;
   this["player" + i].speeddown = this.player2.speeddown;
   this["player" + i].jumptimes = this.player2.jumptimes;
   i++;
}
