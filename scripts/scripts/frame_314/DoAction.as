function showScore(score)
{
   score = Math.round(score);
   if(score == "")
   {
      scoreshow = "- -:- -";
   }
   else if(score == null)
   {
      scoreshow = "- -:- -";
   }
   else
   {
      scoreshow = "";
      if(score < 60)
      {
         scoreshow += "00";
      }
      else if(score >= 60 and score < 600)
      {
         scoreshow += "0";
         ii = 0;
         i = score;
         while(i >= 0)
         {
            ii++;
            i -= 60;
         }
         ii--;
         scoreshow += ii;
      }
      else if(score >= 600)
      {
         ii = 0;
         i = score;
         while(i >= 0)
         {
            ii++;
            i -= 60;
         }
         ii--;
         scoreshow += ii;
      }
      scoreshow += ":";
      temp = score / 60;
      temp2 = Math.round(temp);
      if(temp !== temp2)
      {
         if(temp2 > temp)
         {
            temp2 -= 1;
         }
         temp2 = temp - temp2;
         temp *= 60;
         temp = temp;
         while(temp > 60)
         {
            temp -= 60;
         }
         if(temp < 10)
         {
            scoreshow += "0";
         }
         scoreshow += temp;
      }
      else
      {
         scoreshow += "00";
      }
   }
}
function nextChar()
{
   if(i == 1)
   {
      char = "blade";
      charname = "Blade";
   }
   else if(i == 2)
   {
      char = "captainfalcon";
      charname = "Captain Falcon";
   }
   else if(i == 3)
   {
      char = "fox";
      charname = "Fox";
   }
   else if(i == 4)
   {
      char = "kirby";
      charname = "Kirby";
   }
   else if(i == 5)
   {
      char = "knuckles";
      charname = "Knuckles";
   }
   else if(i == 6)
   {
      char = "link";
      charname = "Link";
   }
   else if(i == 7)
   {
      char = "mario";
      charname = "Mario";
   }
   else if(i == 8)
   {
      char = "megaman";
      charname = "Megaman";
   }
   else if(i == 9)
   {
      char = "pikachu";
      charname = "Pikachu";
   }
   else if(i == 10)
   {
      char = "samus";
      charname = "Samus";
   }
   else if(i == 11)
   {
      char = "sonic";
      charname = "Sonic";
   }
   else if(i == 12)
   {
      char = "tails";
      charname = "Tails";
   }
   else if(i == 13)
   {
      char = "zelda";
      charname = "Zelda";
   }
   else if(i == 14)
   {
      char = "blue";
      charname = "Blue";
   }
   else if(i == 15)
   {
      char = "cloud";
      charname = "Cloud";
   }
   else if(i == 16)
   {
      char = "crono";
      charname = "Crono";
   }
   else if(i == 17)
   {
      char = "gameandwatch";
      charname = "Mr. Game & Watch";
   }
   else if(i == 18)
   {
      char = "inuyasha";
      charname = "Inuyasha";
   }
   else if(i == 19)
   {
      char = "jigglypuff";
      charname = "Jigglypuff";
   }
   else if(i == 20)
   {
      char = "lloyd";
      charname = "Lloyd";
   }
   else if(i == 21)
   {
      char = "luigi";
      charname = "Luigi";
   }
   else if(i == 22)
   {
      char = "mewtwo";
      charname = "Mewtwo";
   }
   else if(i == 23)
   {
      char = "incredible";
      charname = "Mr. Incredible";
   }
   else if(i == 24)
   {
      char = "naruto";
      charname = "Naruto";
   }
   else if(i == 25)
   {
      char = "shadowa";
      charname = "Shadow";
   }
   else if(i == 26)
   {
      char = "supersonic";
      charname = "Super Sonic";
   }
   else if(i == 27)
   {
      char = "younglink";
      charname = "Young Link";
   }
   else if(i == 28)
   {
      char = "zero";
      charname = "Zero";
   }
   if(_root.savedata.data.records[char][0] == false)
   {
      if(going == "next")
      {
         i++;
         if(i > 28)
         {
            i = 1;
         }
      }
      else
      {
         i--;
         if(i < 1)
         {
            i = 28;
         }
      }
      nextChar();
   }
   else
   {
      s11 = _root.savedata.data.records[char][11];
      s12 = _root.savedata.data.records[char][12];
      s13 = _root.savedata.data.records[char][13];
      s14 = Math.round(_root.savedata.data.records[char][14]) + "%";
      s15 = _root.savedata.data.records[char][15] + "%";
      s16 = _root.savedata.data.records[char][16] + "%";
      s17 = _root.savedata.data.records[char][17] + "%";
      s18 = _root.savedata.data.records[char][18];
      s19 = _root.savedata.data.records[char][19];
      showScore(_root.savedata.data.records[char][20] / 60);
      s20 = scoreshow;
      s21 = _root.savedata.data.records[char][21] + "%";
      charholder.attachMovie(char,"charholder",10);
   }
}
moving = false;
if(!music)
{
   bgmusic.start(0,999);
   music = true;
}
stop();
going = "null";
_root.gamePercent();
i = 1;
nextChar();
