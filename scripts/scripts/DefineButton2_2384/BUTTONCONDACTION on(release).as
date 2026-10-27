on(release){
   if(newname.length > 0)
   {
      itemwon = "Username changed from " + _root.savedata.data.yourname;
      _root.savedata.data.yourname = newname;
      itemwon += " to " + newname + ".";
      _root.updateDate();
      newname = "";
   }
}
