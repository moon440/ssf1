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
moving = false;
if(!music)
{
   bgmusic.start(0,999);
   music = true;
}
_root.gamePercent();
description = "Various records.";
s0 = _root.savedata.data.records.misc[0];
showScore(_root.savedata.data.records.misc[1] / 60);
s1 = scoreshow;
showScore(_root.savedata.data.records.misc[2] / 60);
s2 = scoreshow;
showScore(_root.savedata.data.records.misc[3] / 60);
s3 = scoreshow;
showScore(_root.savedata.data.records.misc[4] / 60);
s4 = scoreshow;
s5 = _root.savedata.data.records.misc[5];
s6 = _root.savedata.data.records.misc[6];
s7 = _root.savedata.data.records.misc[7];
s8 = _root.savedata.data.records.misc[8];
s9 = _root.savedata.data.records.misc[9];
s10 = _root.savedata.data.records.misc[10];
s11 = _root.savedata.data.records.misc[11] + "%";
stop();
