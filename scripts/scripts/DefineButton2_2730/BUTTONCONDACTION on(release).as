on(release){
   if(setgameto == "ffa")
   {
      gametype = "2 on 2";
      setgameto = "2v21";
      p1team = "<font color=\'#FF0000\'>O</font>";
      p2team = "<font color=\'#FF0000\'>O</font>";
      p3team = "<font color=\'#00FF00\'>O</font>";
      p4team = "<font color=\'#00FF00\'>O</font>";
      meleetype = "TEAM (VS)";
      gamesay = new Sound();
      gamesay.attachSound("Narrator_team");
      gamesay.start();
   }
   else if(setgameto == "2v21")
   {
      gametype = "2 on 2";
      setgameto = "2v22";
      p1team = "<font color=\'#FF0000\'>O</font>";
      p2team = "<font color=\'#00FF00\'>O</font>";
      p3team = "<font color=\'#FF0000\'>O</font>";
      p4team = "<font color=\'#00FF00\'>O</font>";
   }
   else if(setgameto == "2v22")
   {
      gametype = "1 on 3";
      setgameto = "1v31";
      p1team = "<font color=\'#FF0000\'>O</font>";
      p2team = "<font color=\'#00FF00\'>O</font>";
      p3team = "<font color=\'#00FF00\'>O</font>";
      p4team = "<font color=\'#00FF00\'>O</font>";
   }
   else if(setgameto == "1v31")
   {
      gametype = "1 on 3";
      setgameto = "1v32";
      p1team = "<font color=\'#00FF00\'>O</font>";
      p2team = "<font color=\'#FF0000\'>O</font>";
      p3team = "<font color=\'#00FF00\'>O</font>";
      p4team = "<font color=\'#00FF00\'>O</font>";
   }
   else if(setgameto == "1v32")
   {
      gametype = "1 on 3";
      setgameto = "1v33";
      p1team = "<font color=\'#00FF00\'>O</font>";
      p2team = "<font color=\'#00FF00\'>O</font>";
      p3team = "<font color=\'#FF0000\'>O</font>";
      p4team = "<font color=\'#00FF00\'>O</font>";
   }
   else if(setgameto == "1v33")
   {
      gametype = "2 VS 1 VS 1";
      setgameto = "2v1v1";
      p1team = "<font color=\'#FF0000\'>O</font>";
      p2team = "<font color=\'#FF0000\'>O</font>";
      p3team = "<font color=\'#00FF00\'>O</font>";
      p4team = "<font color=\'#00FFFF\'>O</font>";
   }
   else if(setgameto == "2v1v1")
   {
      gametype = "1 VS 1 VS 2";
      setgameto = "1v1v2";
      p1team = "<font color=\'#00FF00\'>O</font>";
      p2team = "<font color=\'#00FFFF\'>O</font>";
      p3team = "<font color=\'#FF0000\'>O</font>";
      p4team = "<font color=\'#FF0000\'>O</font>";
   }
   else if(setgameto == "1v1v2")
   {
      gametype = "Free For All";
      setgameto = "ffa";
      p1team = "";
      p2team = "";
      p3team = "";
      p4team = "";
      meleetype = "MELEE (VS)";
      gamesay = new Sound();
      gamesay.attachSound("Narrator_melee");
      gamesay.start();
   }
}
