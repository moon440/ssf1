on(rollOver){
   description = "Multiple Levels of Standard Smash.";
   if(_root.savedata.data.records.misc[15] == true)
   {
      nextscreen = "Classic<br>Adventure<br>All Star";
   }
   else if(_root.savedata.data.records.misc[14] == true)
   {
      nextscreen = "Classic<br>Adventure";
   }
   else
   {
      nextscreen = "Adventure";
   }
}
