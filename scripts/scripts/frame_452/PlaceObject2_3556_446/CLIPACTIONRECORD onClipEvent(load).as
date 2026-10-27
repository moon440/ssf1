onClipEvent(load){
   function showScore()
   {
      if(_parent.score == "")
      {
         _parent.scoreshow = "";
      }
      else if(_parent.score == null)
      {
         _parent.scoreshow = "";
      }
      else
      {
         _parent.scoreshow = _parent.score;
      }
   }
}
