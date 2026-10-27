on(release){
   if(newname.length > 0)
   {
      _root.savedata.data.yourname = newname;
      savedata.flush();
      savedata = SharedObject.getLocal("ssfsavedata","/");
      newname = "";
      ding.start();
      play();
   }
}
