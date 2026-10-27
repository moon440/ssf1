function gamePercent()
{
   i = 0;
   if(_root.savedata.data.records.blue[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.cloud[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.crono[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.gameandwatch[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.inuyasha[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.jigglypuff[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.lloyd[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.luigi[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.mewtwo[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.incredible[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.naruto[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.shadowa[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.supersonic[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.younglink[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.zero[0] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.misc[12] == true)
   {
      i++;
   }
   if(_root.savedata.data.records.misc[13] == true)
   {
      i++;
   }
   ii = 0;
   if(_root.savedata.data.records.misc[12] == true)
   {
      ii++;
   }
   if(_root.savedata.data.records.misc[13] == true)
   {
      ii++;
   }
   ii += 6;
   _root.savedata.data.records.misc[10] = ii + "/" + 8;
   percentage = Math.round(i / 17 * 100);
   _root.savedata.data.records.misc[9] = i + 13;
   _root.savedata.data.records.misc[11] = percentage;
   _root.savedata.flush();
}
function updateDate()
{
   function howlong(arg)
   {
      if(length(arg) == 1)
      {
         arg = "0" + arg;
         return arg;
      }
      arg;
      return arg;
   }
   myDate = new Date();
   hr = howlong(String(myDate.getHours()));
   mnt = howlong(String(myDate.getMinutes()));
   dd = myDate.getDate();
   mm = myDate.getMonth();
   yyyy = myDate.getFullYear();
   mm++;
   textdate = "<b>" + mm + "." + dd + "." + yyyy + " - " + hr + ":" + mnt + "</b><br>" + itemwon + "<br>";
   _root.savedata.data.special += textdate;
   _root.savedata.flush();
}
percent = 0;
cshow = false;
savedata = SharedObject.getLocal("ssfsavedata","/");
if(savedata.data.records == undefined)
{
   savedata.data.records = {};
   savedata.data.records.misc = Array(1,0,0,0,0,0,0,0,0,13,6,0,false,false,true,false);
   savedata.data.records.blade = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.blue = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.captainfalcon = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.cloud = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.crono = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.fox = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.gameandwatch = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.inuyasha = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.jigglypuff = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.kirby = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.knuckles = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.link = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.lloyd = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.luigi = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.mario = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.megaman = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.mewtwo = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.incredible = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.naruto = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.pikachu = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.samus = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.shadowa = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.sonic = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.supersonic = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.tails = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.younglink = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.zelda = Array(true,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.records.zero = Array(false,null,0,0,0,null,null,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   savedata.data.special = "";
}
else
{
   savedata.data.records.misc[0]++;
}
itemchance = 0.5;
displaynames = true;
itemwon = "";
var website = new ContextMenu();
website.hideBuiltInItems();
hidemenu.menu = website;
hidemenu.useHandCursor = false;
stop();
