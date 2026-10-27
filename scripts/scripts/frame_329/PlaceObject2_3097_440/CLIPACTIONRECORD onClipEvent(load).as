onClipEvent(load){
   function showScore()
   {
      if(_parent.score == "")
      {
         _parent.scoreshow = "- -:- -";
      }
      else if(_parent.score == null)
      {
         _parent.scoreshow = "- -:- -";
      }
      else
      {
         _parent.scoreshow = "";
         if(_parent.score < 60)
         {
            _parent.scoreshow += "00";
         }
         else if(_parent.score >= 60 and _parent.score < 600)
         {
            _parent.scoreshow += "0";
            ii = 0;
            i = _parent.score;
            while(i >= 0)
            {
               ii++;
               i -= 60;
            }
            ii--;
            _parent.scoreshow += ii;
         }
         else if(_parent.score >= 600)
         {
            ii = 0;
            i = _parent.score;
            while(i >= 0)
            {
               ii++;
               i -= 60;
            }
            ii--;
            _parent.scoreshow += ii;
         }
         _parent.scoreshow += ":";
         temp = _parent.score / 60;
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
               _parent.scoreshow += "0";
            }
            _parent.scoreshow += temp;
         }
         else
         {
            _parent.scoreshow += "00";
         }
      }
   }
}
