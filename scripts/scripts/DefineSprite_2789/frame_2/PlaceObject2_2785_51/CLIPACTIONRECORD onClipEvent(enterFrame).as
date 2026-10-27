onClipEvent(enterFrame){
   if(_root.itemchance == 0.5)
   {
      _parent.itemamount = "Very High";
   }
   else if(_root.itemchance == 0.4)
   {
      _parent.itemamount = "High";
   }
   else if(_root.itemchance == 0.25)
   {
      _parent.itemamount = "Medium";
   }
   else if(_root.itemchance == 0.15)
   {
      _parent.itemamount = "Low";
   }
   else if(_root.itemchance == 0.05)
   {
      _parent.itemamount = "Very Low";
   }
   else if(_root.itemchance == 0)
   {
      _parent.itemamount = "Off";
   }
   if(_root.timer)
   {
      _parent.timeshow = "On";
   }
   else
   {
      _parent.timeshow = "Off";
   }
   if(_root.usinglives)
   {
      _parent.stockshow = "On";
   }
   else
   {
      _parent.stockshow = "Off";
   }
}
