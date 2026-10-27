onClipEvent(load){
   function getPoints()
   {
      exist2 = _root.player2.exist;
      exist3 = _root.player3.exist;
      exist4 = _root.player4.exist;
      if(_root.player1.exist)
      {
         p1p += "Points: " + _root.p1points + "<br>";
         if(_root.usinglives)
         {
            p1p += "Remaining Lives: " + _parent.ground.lives + "<br>";
         }
         p1p += "KO\'s: " + _root.p1kills + "<br>";
         p1p += "KO Score: " + _root.p1kills * 500 + "<br>";
         p1points += _root.p1kills * 500;
         p1p += "Falls: " + _root.p1deaths + "<br>";
         p1p += "SD\'s: " + _root.p1suicides + "<br>";
         if(_root.currentmode == "Adventure" or _root.currentmode == "Classic" or _root.currentmode == "AllStar")
         {
            p1p += "Level Clear (5000)<br>";
            p1points += 5000;
            if(_root.currentlevel == "crazyhand")
            {
               p1p += "Adventure Clear (50000)<br>";
               p1points += 50000;
            }
            else if(_root.currentlevel == "masterhand")
            {
               p1p += "Classic Clear (50000)<br>";
               p1points += 50000;
            }
            else if(_root.currentlevel == "allstarfinal")
            {
               p1p += "All-Star Clear (50000)<br>";
               p1points += 50000;
               if(_root.hearts == 3)
               {
                  p1p += "Melee Master (100000)<br>";
                  p1points += 100000;
               }
            }
            if(_root.difficulty == "Very Hard")
            {
               if(_root.currentlevel == "masterhand" or _root.currentlevel == "crazyhand" or _root.levelnum == 14)
               {
                  p1p += "Very Hard Clear (200000)<br>";
                  p1points += 200000;
               }
            }
         }
         if(_root.p1airamount > 0 and _root.p1smashamount == 0 and _root.p1normalamount == 0 and _root.p1dashamount == 0)
         {
            p1p += "Bird of Prey (4000)<br>";
            p1points += 4000;
         }
         if(p1hitamount / _root.p1attackamount >= 0.75 and p1hitamount / _root.p1attackamount < 1)
         {
            p1p += "Exceptional Aim (4000)<br>";
            p1points += 4000;
         }
         if(p1hitamount / _root.p1attackamount == 1)
         {
            p1p += "Perfect Aim (10000)<br>";
            p1points += 10000;
         }
         if(_root.p1airamount == 0)
         {
            p1p += "All Ground (6000)<br>";
            p1points += 10000;
         }
         if(_root.p1smashamount >= 30 and _root.p1normalamount >= 30 and _root.p1dashamount >= 25 and _root.p1normalamount >= 30)
         {
            p1p += "Lethal Weapon(7000)<br>";
            p1points += 7000;
         }
         if(_root.p1smashamount >= 60 and _root.p1normalamount >= 60 and _root.p1dashamount >= 25)
         {
            p1p += "Berserker (3500)<br>";
            p1points += 3500;
         }
         if(_root.p1smashamount / _root.p1attackamount >= 0.85 and _root.p1smashamount / _root.p1attackamount < 1)
         {
            p1p += "Smash King (3000)<br>";
            p1points += 3000;
         }
         if(_root.p1smashamount / _root.p1attackamount == 1)
         {
            p1p += "Smash Maniac (3500)<br>";
            p1points += 3500;
         }
         if(_root.p1smashamount == 0)
         {
            p1p += "Smash-less (1500)<br>";
            p1points += 1500;
         }
         if(_root.p1maxdamage >= 150 and _root.p1maxdamage < 200)
         {
            p1p += "150% Damage (1000)<br>";
            p1points += 1000;
         }
         if(_root.p1maxdamage >= 200 and _root.p1maxdamage < 250)
         {
            p1p += "200% Damage (3000)<br>";
            p1points += 3000;
         }
         if(_root.p1maxdamage >= 250 and _root.p1maxdamage < 300)
         {
            p1p += "250% Damage (7000)<br>";
            p1points += 7000;
         }
         if(_root.p1maxdamage >= 300 and _root.p1maxdamage < 350)
         {
            p1p += "300% Damage (10000)<br>";
            p1points += 10000;
         }
         if(_root.p1maxdamage >= 350 and _root.p1maxdamage < 400)
         {
            p1p += "350% Damage (15000)<br>";
            p1points += 15000;
         }
         if(_root.p1maxdamage >= 400)
         {
            p1p += "Heavy Damage (20000)<br>";
            p1points += 20000;
         }
         if(_root.p1directionamount <= 15 and _root.p1directionamount > 0)
         {
            p1p += "Statue (500) <br>";
            p1points += 500;
         }
         if(_root.p1crouchamount == 0)
         {
            p1p += "Stiff Knees(300)<br>";
            p1points += 300;
         }
         if(_root.p1crouchamount >= 50)
         {
            p1p += "Crouch Master (500)<br>";
            p1points += 500;
         }
         if(_root.p1jumpamount == 0)
         {
            p1p += "Cement Shoes (4000)<br>";
            p1points += 4000;
         }
         if(_root.p1jumpamount >= 100)
         {
            p1p += "Airhog (5000)<br>";
            p1points += 5000;
         }
         if(_root.p1crowdamount >= 10)
         {
            p1p += "Master of Suspense (2500)<br>";
            p1points += 2500;
         }
         if(_root.p1hurtamount == 0)
         {
            p1p += "Impervious (7000)<br>";
            p1points += 7000;
         }
         if(_root.p1hurtamount == 0 and _root.p1attackamount == 0)
         {
            p1p += "Switzerland (12000)<br>";
            p1points += 12000;
         }
         if(_root.p1health == 0 and _parent.ground.dead == false)
         {
            p1p += "Full Power (2000)<br>";
            p1points += 2000;
         }
         if(_root.timer == true)
         {
            if(_parent.clock.lastminute == 3 and _parent.clock.lastsecond == 33)
            {
               p1p += "Lucky Threes(3330)<br>";
               p1points += 3330;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 7)
            {
               p1p += "Lucky Number Seven (3000)<br>";
               p1points += 3000;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 1)
            {
               p1p += "Last Second (5000)<br>";
               p1points += 5000;
            }
         }
         p1points -= _root.p1deaths * 500 + _root.p1suicides * 500;
      }
      if(_root.player2.exist)
      {
         p2p += "Points: " + _root.p2points + "<br>";
         if(_root.usinglives)
         {
            p2p += "Remaining Lives: " + _parent.player2.lives + "<br>";
         }
         p2p += "KO\'s: " + _root.p2kills + "<br>";
         p2p += "KO Score: " + _root.p2kills * 500 + "<br>";
         p2points += _root.p2kills * 500;
         p2p += "Falls: " + _root.p2deaths + "<br>";
         p2p += "SD\'s: " + _root.p2suicides + "<br>";
         if(_root.p2airamount > 0 and _root.p2smashamount == 0 and _root.p2normalamount == 0 and _root.p2dashamount == 0)
         {
            p2p += "Bird of Prey (4000)<br>";
            p2points += 4000;
         }
         if(p2hitamount / _root.p2attackamount >= 0.75 and p2hitamount / _root.p2attackamount < 1)
         {
            p2p += "Exceptional Aim (4000)<br>";
            p2points += 4000;
         }
         if(p2hitamount / _root.p2attackamount == 1)
         {
            p2p += "Perfect Aim (10000)<br>";
            p2points += 10000;
         }
         if(_root.p2airamount == 0)
         {
            p2p += "All Ground (6000)<br>";
            p2points += 10000;
         }
         if(_root.p2smashamount >= 30 and _root.p2normalamount >= 30 and _root.p2dashamount >= 25 and _root.p2normalamount >= 30)
         {
            p2p += "Lethal Weapon(7000)<br>";
            p2points += 7000;
         }
         if(_root.p2smashamount >= 60 and _root.p2normalamount >= 60 and _root.p2dashamount >= 25)
         {
            p2p += "Berserker (3500)<br>";
            p2points += 3500;
         }
         if(_root.p2smashamount / _root.p2attackamount >= 0.85 and _root.p2smashamount / _root.p2attackamount < 1)
         {
            p2p += "Smash King (3000)<br>";
            p2points += 3000;
         }
         if(_root.p2smashamount / _root.p2attackamount == 1)
         {
            p2p += "Smash Maniac (3500)<br>";
            p2points += 3500;
         }
         if(_root.p2smashamount == 0)
         {
            p2p += "Smash-less (1500)<br>";
            p2points += 1500;
         }
         if(_root.p2maxdamage >= 150 and _root.p2maxdamage < 200)
         {
            p2p += "150% Damage (1000)<br>";
            p2points += 1000;
         }
         if(_root.p2maxdamage >= 200 and _root.p2maxdamage < 250)
         {
            p2p += "200% Damage (3000)<br>";
            p2points += 3000;
         }
         if(_root.p2maxdamage >= 250 and _root.p2maxdamage < 300)
         {
            p2p += "250% Damage (7000)<br>";
            p2points += 7000;
         }
         if(_root.p2maxdamage >= 300 and _root.p2maxdamage < 350)
         {
            p2p += "300% Damage (10000)<br>";
            p2points += 10000;
         }
         if(_root.p2maxdamage >= 350 and _root.p2maxdamage < 400)
         {
            p2p += "350% Damage (15000)<br>";
            p2points += 15000;
         }
         if(_root.p2maxdamage >= 400)
         {
            p2p += "Heavy Damage (20000)<br>";
            p2points += 20000;
         }
         if(_root.p2directionamount <= 15 and _root.p2directionamount > 0)
         {
            p2p += "Statue (500) <br>";
            p2points += 500;
         }
         if(_root.p2crouchamount == 0)
         {
            p2p += "Stiff Knees(300)<br>";
            p2points += 300;
         }
         if(_root.p2crouchamount >= 50)
         {
            p2p += "Crouch Master (500)<br>";
            p2points += 500;
         }
         if(_root.p2jumpamount == 0)
         {
            p2p += "Cement Shoes (4000)<br>";
            p2points += 4000;
         }
         if(_root.p2jumpamount >= 100)
         {
            p2p += "Airhog (5000)<br>";
            p2points += 5000;
         }
         if(_root.p2crowdamount >= 10)
         {
            p2p += "Master of Suspense (2500)<br>";
            p2points += 2500;
         }
         if(_root.p2hurtamount == 0)
         {
            p2p += "Impervious (7000)<br>";
            p2points += 7000;
         }
         if(_root.p2hurtamount == 0 and _root.p2attackamount == 0)
         {
            p2p += "Switzerland (12000)<br>";
            p2points += 12000;
         }
         if(_root.p2health == 0 and _parent.player2.dead == false)
         {
            p2p += "Full Power (2000)<br>";
            p2points += 2000;
         }
         if(_root.timer == true)
         {
            if(_parent.clock.lastminute == 3 and _parent.clock.lastsecond == 33)
            {
               p2p += "Lucky Threes(3330)<br>";
               p2points += 3330;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 7)
            {
               p2p += "Lucky Number Seven (3000)<br>";
               p2points += 3000;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 1)
            {
               p2p += "Last Second (5000)<br>";
               p2points += 5000;
            }
         }
         p2points -= _root.p2deaths * 500 + _root.p2suicides * 500;
      }
      if(_root.player3.exist)
      {
         p3p += "Points: " + _root.p3points + "<br>";
         if(_root.usinglives)
         {
            p3p += "Remaining Lives: " + _parent.player3.lives + "<br>";
         }
         p3p += "KO\'s: " + _root.p3kills + "<br>";
         p3p += "KO Score: " + _root.p3kills * 500 + "<br>";
         p3points += _root.p3kills * 500;
         p3p += "Falls: " + _root.p3deaths + "<br>";
         p3p += "SD\'s: " + _root.p3suicides + "<br>";
         if(_root.p3airamount > 0 and _root.p3smashamount == 0 and _root.p3normalamount == 0 and _root.p3dashamount == 0)
         {
            p3p += "Bird of Prey (4000)<br>";
            p3points += 4000;
         }
         if(p3hitamount / _root.p3attackamount >= 0.75 and p3hitamount / _root.p3attackamount < 1)
         {
            p3p += "Exceptional Aim (4000)<br>";
            p3points += 4000;
         }
         if(p3hitamount / _root.p3attackamount == 1)
         {
            p3p += "Perfect Aim (10000)<br>";
            p3points += 10000;
         }
         if(_root.p3airamount == 0)
         {
            p3p += "All Ground (6000)<br>";
            p3points += 10000;
         }
         if(_root.p3smashamount >= 30 and _root.p3normalamount >= 30 and _root.p3dashamount >= 25 and _root.p3normalamount >= 30)
         {
            p3p += "Lethal Weapon(7000)<br>";
            p3points += 7000;
         }
         if(_root.p3smashamount >= 60 and _root.p3normalamount >= 60 and _root.p3dashamount >= 25)
         {
            p3p += "Berserker (3500)<br>";
            p3points += 3500;
         }
         if(_root.p3smashamount / _root.p3attackamount >= 0.85 and _root.p3smashamount / _root.p3attackamount < 1)
         {
            p3p += "Smash King (3000)<br>";
            p3points += 3000;
         }
         if(_root.p3smashamount / _root.p3attackamount == 1)
         {
            p3p += "Smash Maniac (3500)<br>";
            p3points += 3500;
         }
         if(_root.p3smashamount == 0)
         {
            p3p += "Smash-less (1500)<br>";
            p3points += 1500;
         }
         if(_root.p3maxdamage >= 150 and _root.p3maxdamage < 200)
         {
            p3p += "150% Damage (1000)<br>";
            p3points += 1000;
         }
         if(_root.p3maxdamage >= 200 and _root.p3maxdamage < 250)
         {
            p3p += "200% Damage (3000)<br>";
            p3points += 3000;
         }
         if(_root.p3maxdamage >= 250 and _root.p3maxdamage < 300)
         {
            p3p += "250% Damage (7000)<br>";
            p3points += 7000;
         }
         if(_root.p3maxdamage >= 300 and _root.p3maxdamage < 350)
         {
            p3p += "300% Damage (10000)<br>";
            p3points += 10000;
         }
         if(_root.p3maxdamage >= 350 and _root.p3maxdamage < 400)
         {
            p3p += "350% Damage (15000)<br>";
            p3points += 15000;
         }
         if(_root.p3maxdamage >= 400)
         {
            p3p += "Heavy Damage (20000)<br>";
            p3points += 20000;
         }
         if(_root.p3directionamount <= 15 and _root.p3directionamount > 0)
         {
            p3p += "Statue (500) <br>";
            p3points += 500;
         }
         if(_root.p3crouchamount == 0)
         {
            p3p += "Stiff Knees(300)<br>";
            p3points += 300;
         }
         if(_root.p3crouchamount >= 50)
         {
            p3p += "Crouch Master (500)<br>";
            p3points += 500;
         }
         if(_root.p3jumpamount == 0)
         {
            p3p += "Cement Shoes (4000)<br>";
            p3points += 4000;
         }
         if(_root.p3jumpamount >= 100)
         {
            p3p += "Airhog (5000)<br>";
            p3points += 5000;
         }
         if(_root.p3crowdamount >= 10)
         {
            p3p += "Master of Suspense (2500)<br>";
            p3points += 2500;
         }
         if(_root.p3hurtamount == 0)
         {
            p3p += "Impervious (7000)<br>";
            p3points += 7000;
         }
         if(_root.p3hurtamount == 0 and _root.p3attackamount == 0)
         {
            p3p += "Switzerland (12000)<br>";
            p3points += 12000;
         }
         if(_root.p3health == 0 and _parent.player3.dead == false)
         {
            p3p += "Full Power (2000)<br>";
            p3points += 2000;
         }
         if(_root.timer == true)
         {
            if(_parent.clock.lastminute == 3 and _parent.clock.lastsecond == 33)
            {
               p3p += "Lucky Threes(3330)<br>";
               p3points += 3330;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 7)
            {
               p3p += "Lucky Number Seven (3000)<br>";
               p3points += 3000;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 1)
            {
               p3p += "Last Second (5000)<br>";
               p3points += 5000;
            }
         }
         p3points -= _root.p3deaths * 500 + _root.p3suicides * 500;
      }
      if(_root.player4.exist)
      {
         p4p += "Points: " + _root.p4points + "<br>";
         if(_root.usinglives)
         {
            p4p += "Remaining Lives: " + _parent.player4.lives + "<br>";
         }
         p4p += "KO\'s: " + _root.p4kills + "<br>";
         p4p += "KO Score: " + _root.p4kills * 500 + "<br>";
         p4points += _root.p4kills * 500;
         p4p += "Falls: " + _root.p4deaths + "<br>";
         p4p += "SD\'s: " + _root.p4suicides + "<br>";
         if(_root.p4airamount > 0 and _root.p4smashamount == 0 and _root.p4normalamount == 0 and _root.p4dashamount == 0)
         {
            p4p += "Bird of Prey (4000)<br>";
            p4points += 4000;
         }
         if(p4hitamount / _root.p4attackamount >= 0.75 and p4hitamount / _root.p4attackamount < 1)
         {
            p4p += "Exceptional Aim (4000)<br>";
            p4points += 4000;
         }
         if(p4hitamount / _root.p4attackamount == 1)
         {
            p4p += "Perfect Aim (10000)<br>";
            p4points += 10000;
         }
         if(_root.p4airamount == 0)
         {
            p4p += "All Ground (6000)<br>";
            p4points += 10000;
         }
         if(_root.p4smashamount >= 30 and _root.p4normalamount >= 30 and _root.p4dashamount >= 25 and _root.p4normalamount >= 30)
         {
            p4p += "Lethal Weapon(7000)<br>";
            p4points += 7000;
         }
         if(_root.p4smashamount >= 60 and _root.p4normalamount >= 60 and _root.p4dashamount >= 25)
         {
            p4p += "Berserker (3500)<br>";
            p4points += 3500;
         }
         if(_root.p4smashamount / _root.p4attackamount >= 0.85 and _root.p4smashamount / _root.p4attackamount < 1)
         {
            p4p += "Smash King (3000)<br>";
            p4points += 3000;
         }
         if(_root.p4smashamount / _root.p4attackamount == 1)
         {
            p4p += "Smash Maniac (3500)<br>";
            p4points += 3500;
         }
         if(_root.p4smashamount == 0)
         {
            p4p += "Smash-less (1500)<br>";
            p4points += 1500;
         }
         if(_root.p4maxdamage >= 150 and _root.p4maxdamage < 200)
         {
            p4p += "150% Damage (1000)<br>";
            p4points += 1000;
         }
         if(_root.p4maxdamage >= 200 and _root.p4maxdamage < 250)
         {
            p4p += "200% Damage (3000)<br>";
            p4points += 3000;
         }
         if(_root.p4maxdamage >= 250 and _root.p4maxdamage < 300)
         {
            p4p += "250% Damage (7000)<br>";
            p4points += 7000;
         }
         if(_root.p4maxdamage >= 300 and _root.p4maxdamage < 350)
         {
            p4p += "300% Damage (10000)<br>";
            p4points += 10000;
         }
         if(_root.p4maxdamage >= 350 and _root.p4maxdamage < 400)
         {
            p4p += "350% Damage (15000)<br>";
            p4points += 15000;
         }
         if(_root.p4maxdamage >= 400)
         {
            p4p += "Heavy Damage (20000)<br>";
            p4points += 20000;
         }
         if(_root.p4directionamount <= 15 and _root.p4directionamount > 0)
         {
            p4p += "Statue (500) <br>";
            p4points += 500;
         }
         if(_root.p4crouchamount == 0)
         {
            p4p += "Stiff Knees(300)<br>";
            p4points += 300;
         }
         if(_root.p4crouchamount >= 50)
         {
            p4p += "Crouch Master (500)<br>";
            p4points += 500;
         }
         if(_root.p4jumpamount == 0)
         {
            p4p += "Cement Shoes (4000)<br>";
            p4points += 4000;
         }
         if(_root.p4jumpamount >= 100)
         {
            p4p += "Airhog (5000)<br>";
            p4points += 5000;
         }
         if(_root.p4crowdamount >= 10)
         {
            p4p += "Master of Suspense (2500)<br>";
            p4points += 2500;
         }
         if(_root.p4hurtamount == 0)
         {
            p4p += "Impervious (7000)<br>";
            p4points += 7000;
         }
         if(_root.p4hurtamount == 0 and _root.p4attackamount == 0)
         {
            p4p += "Switzerland (12000)<br>";
            p4points += 12000;
         }
         if(_root.p4health == 0 and _parent.player4.dead == false)
         {
            p4p += "Full Power (2000)<br>";
            p4points += 2000;
         }
         if(_root.timer == true)
         {
            if(_parent.clock.lastminute == 3 and _parent.clock.lastsecond == 33)
            {
               p4p += "Lucky Threes(3330)<br>";
               p4points += 3330;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 7)
            {
               p4p += "Lucky Number Seven (3000)<br>";
               p4points += 3000;
            }
            if(_parent.clock.lastminute == 0 and _parent.clock.lastsecond == 1)
            {
               p4p += "Last Second (5000)<br>";
               p4points += 5000;
            }
         }
         p4points -= _root.p4deaths * 500 + _root.p4suicides * 500;
      }
      checkStats();
   }
   function checkStats()
   {
      if(_root.usinglives)
      {
         if(_parent.timecheck == 0 and _root.timer)
         {
            if(_parent.setgameto == "ffa")
            {
               if(_parent.ground.lives > _parent.player2.lives and _parent.ground.lives > _root._parent.player3.lives and _parent.ground.lives > _parent.player4.lives and _parent.ground.dead == false and _root.player1.exist)
               {
                  _parent.winner = "Player 1";
               }
               else if(_parent.player2.lives > _parent.ground.lives and _parent.player2.lives > _parent.player3.lives and _parent.player2.lives > _parent.player4.lives and _parent.player2.dead == false and _root.player2.exist)
               {
                  _parent.winner = "Player 2";
               }
               else if(_parent.player3.lives > _parent.player2.lives and _parent.player3.lives > _parent.ground.lives and _parent.player3.lives > _parent.player4.lives and _parent.player3.dead == false and _root.player3.exist)
               {
                  _parent.winner = "Player 3";
               }
               else if(_parent.player4.lives > _parent.player2.lives and _parent.player4.lives > _parent.ground.lives and _parent.player4.lives > _parent.player3.lives and _parent.player4.dead == false and _root.player4.exist)
               {
                  _parent.winner = "Player 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "2v21")
            {
               if(_parent.ground.lives + _parent.player2.lives > _parent.player3.lives + _parent.player4.lives)
               {
                  _parent.winner = "Players 1 and 2";
               }
               else if(_parent.ground.lives + _parent.player2.lives < _parent.player3.lives + _parent.player4.lives)
               {
                  _parent.winner = "Players 3 and 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "2v22")
            {
               if(_parent.ground.lives + _parent.player3.lives > _parent.player2.lives + _parent.player4.lives)
               {
                  _parent.winner = "Players 1 and 3";
               }
               else if(_parent.ground.lives + _parent.player3.lives < _parent.player2.lives + _parent.player4.lives)
               {
                  _parent.winner = "Players 2 and 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v31")
            {
               if(_parent.ground.lives > _parent.player2.lives + _parent.player4.lives + _parent.player3.lives)
               {
                  _parent.winner = "Player 1";
               }
               else if(_parent.ground.lives < _parent.player2.lives + _parent.player4.lives + _parent.player3.lives)
               {
                  _parent.winner = "Players 2, 3, and 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v32")
            {
               if(_parent.player2.lives > _parent.ground.lives + _parent.player4.lives + _parent.player3.lives)
               {
                  _parent.winner = "Player 2";
               }
               else if(_parent.player2.lives < _parent.ground.lives + _parent.player4.lives + _parent.player3.lives)
               {
                  _parent.winner = "Players 1, 3, and 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v33")
            {
               if(_parent.player3.lives > _parent.ground.lives + _parent.player4.lives + _parent.player2.lives)
               {
                  _parent.winner = "Player 3";
               }
               else if(_parent.player3.lives < _parent.ground.lives + _parent.player4.lives + _parent.player2.lives)
               {
                  _parent.winner = "Players 1, 2, and 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "2v1v1")
            {
               if(_parent.ground.lives + _parent.player2.lives > _parent.player3.lives and _root._parent.ground.lives + _parent.player2.lives > _parent.player4.lives)
               {
                  _parent.winner = "Players 1 and 2";
               }
               else if(_parent.player3.lives > _parent.ground.lives + _parent.player2.lives and _parent.player3.lives > _parent.player4.lives and _root.player3.exist)
               {
                  _parent.winner = "Player 3";
               }
               else if(_parent.player4.lives > _parent.ground.lives + _parent.player2.lives and _parent.player4.lives > _parent.player3.lives and _root.player4.exist)
               {
                  _parent.winner = "Player 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v1v2")
            {
               if(_parent.player3.lives + _parent.player4.lives > _parent.ground.lives and _parent.player3.lives + _parent.player4.lives > _parent.player2.lives)
               {
                  _parent.winner = "Players 3 and 4";
               }
               else if(_parent.ground.lives > _parent.player3.lives + _parent.player4.lives and _parent.ground.lives > _parent.player2.lives)
               {
                  _parent.winner = "Player 1";
               }
               else if(_parent.player2.lives > _parent.player3.lives + _parent.player4.lives and _parent.player2.lives > _parent.ground.lives and _root.player2.exist)
               {
                  _parent.winner = "Player 2";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
         }
         else if(_root.usinglives)
         {
            if(_parent.setgameto == "ffa")
            {
               if(_parent.ground.dead == false and _parent.player2.dead == true and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 1";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == false and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 2";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == true and _parent.player3.dead == false and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 3";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == true and _parent.player3.dead == true and _parent.player4.dead == false)
               {
                  _parent.winner = "Player 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "2v21")
            {
               if(_parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Players 1 and 2";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == true)
               {
                  _parent.winner = "Players 3 and 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "2v22")
            {
               if(_parent.ground.dead == true and _parent.player3.dead == true)
               {
                  _parent.winner = "Players 2 and 4";
               }
               else if(_parent.player2.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Players 1 and 3";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v31")
            {
               if(_parent.ground.dead == true)
               {
                  _parent.winner = "Players 2, 3, and 4";
               }
               else if(_parent.ground.dead == false and _parent.player2.dead == true and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 1";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v32")
            {
               if(_parent.player2.dead == true)
               {
                  _parent.winner = "Players 1, 3, and 4";
               }
               else if(ground.dead == true and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 2";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v33")
            {
               if(_parent.player3.dead == true)
               {
                  _parent.winner = "Players 1, 2, and 4";
               }
               else if(_parent.player3.dead == false and _parent.player2.dead == true and _parent.ground.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 3";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "2v1v1")
            {
               if(_parent.ground.dead == false and _parent.player2.dead == true and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Players 1 and 2";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == true and _parent.player3.dead == false and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 3";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == true and _parent.player3.dead == true and _parent.player4.dead == false)
               {
                  _parent.winner = "Player 4";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
            else if(_parent.setgameto == "1v1v2")
            {
               if(_parent.ground.dead == false and _parent.player2.dead == true and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 1";
               }
               else if(_parent.ground.dead == true and _parent.player2.dead == true)
               {
                  _parent.winner = "Players 3 and 4";
               }
               else if(_parent.ground.dead == true and _parent.player3.dead == true and _parent.player4.dead == true)
               {
                  _parent.winner = "Player 2";
               }
               else
               {
                  _parent.winner = "Draw";
               }
            }
         }
      }
      else if(_parent.setgameto == "ffa")
      {
         if(_root.p1points > _root.p2points2 and _root.p1points > _root.p3points2 and _root.p1points > _root.p4points2)
         {
            _parent.winner = "Player 1";
         }
         else if(_root.p2points > _root.p1points2 and _root.p2points > _root.p3points2 and _root.p2points > _root.p4points2 and _root.player2.exist)
         {
            _parent.winner = "Player 2";
         }
         else if(_root.p3points > _root.p2points2 and _root.p3points > _root.p1points2 and _root.p3points > _root.p4points2 and _root.player3.exist)
         {
            _parent.winner = "Player 3";
         }
         else if(_root.p4points > _root.p2points2 and _root.p4points > _root.p1points2 and _root.p4points > _root.p3points2 and _root.player4.exist)
         {
            _parent.winner = "Player 4";
         }
         else
         {
            _parent.winner = "Draw";
         }
      }
      else if(_parent.setgameto == "2v21")
      {
         if(_root.p1points + _root.p2points > _root.p3points + _root.p4points)
         {
            _parent.winner = "Players 1 and 2";
         }
         else if(_root.p1points + _root.p2points < _root.p3points + _root.p4points)
         {
            _parent.winner = "Players 3 and 4";
         }
         else
         {
            _parent.winner = "Draw";
         }
      }
      else if(_parent.setgameto == "2v22")
      {
         if(_root.p1points + _root.p3points > _root.p2points + _root.p4points)
         {
            _parent.winner = "Players 1 and 3";
         }
         else if(_root.p1points + _root.p3points < _root.p2points + _root.p4points)
         {
            _parent.winner = "Players 2 and 4";
         }
         else
         {
            _parent.winner = "Draw";
         }
      }
      else if(_parent.setgameto == "1v31")
      {
         if(_root.p1points > _root.p2points + _root.p4points + _root.p3points)
         {
            _parent.winner = "Player 1";
         }
         else
         {
            _parent.winner = "Players 2, 3, and 4";
         }
      }
      else if(_parent.setgameto == "1v32")
      {
         if(_root.p2points > _root.p1points + _root.p4points + _root.p3points)
         {
            _parent.winner = "Player 2";
         }
         else
         {
            _parent.winner = "Players 1, 3, and 4";
         }
      }
      else if(_parent.setgameto == "1v33")
      {
         if(_root.p3points > _root.p1points + _root.p4points + _root.p2points)
         {
            _parent.winner = "Player 3";
         }
         else
         {
            _parent.winner = "Players 1, 2, and 4";
         }
      }
      else if(_parent.setgameto == "2v1v1")
      {
         if(_root.p1points + _root.p2points > _root.p3points2 and _root.p1points + _root.p2points > _root.p4points2)
         {
            _parent.winner = "Players 1 and 2";
         }
         else if(_root.p3points2 > _root.p1points + _root.p2points and _root.p3points > _root.p4points2 and _root.player3.exist)
         {
            _parent.winner = "Player 3";
         }
         else if(_root.p4points2 > _root.p2points + _root.p1points and _root.p4points > _root.p3points2 and _root.player4.exist)
         {
            _parent.winner = "Player 4";
         }
         else
         {
            _parent.winner = "Draw";
         }
      }
      else if(_parent.setgameto == "1v1v2")
      {
         if(_root.p3points + _root.p4points > _root.p1points2 and _root.p3points + _root.p4points > _root.p2points2)
         {
            _parent.winner = "Players 3 and 4";
         }
         else if(_root.p1points2 > _root.p3points + _root.p4points and _root.p1points > _root.p2points2)
         {
            _parent.winner = "Player 1";
         }
         else if(_root.p2points2 > _root.p3points + _root.p4points and _root.p2points > _root.p1points2 and _root.player2.exist)
         {
            _parent.winner = "Player 2";
         }
         else
         {
            _parent.winner = "Draw";
         }
      }
      p1p += "<br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
      p2p += "<br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
      p3p += "<br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
      p4p += "<br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
      _parent.p1p = p1p;
      _parent.p2p = p2p;
      _parent.p3p = p3p;
      _parent.p4p = p4p;
      _parent.p1points = p1points;
      _parent.p2points = p2points;
      _parent.p3points = p3points;
      _parent.p4points = p4points;
      if(_root.currentmode == "VS" and _parent.winner != "Draw")
      {
         if(_parent.winner == "Players 1 and 2")
         {
            if(_root.player1.exist)
            {
               _root.savedata.data.records[_root.player1character][19]++;
            }
            if(_root.player2.exist)
            {
               _root.savedata.data.records[_root.player2character][19]++;
            }
         }
         else if(_parent.winner == "Players 1 and 3")
         {
            if(_root.player1.exist)
            {
               _root.savedata.data.records[_root.player1character][19]++;
            }
            if(_root.player3.exist)
            {
               _root.savedata.data.records[_root.player3character][19]++;
            }
         }
         else if(_parent.winner == "Players 2 and 4")
         {
            if(_root.player2.exist)
            {
               _root.savedata.data.records[_root.player2character][19]++;
            }
            if(_root.player4.exist)
            {
               _root.savedata.data.records[_root.player4character][19]++;
            }
         }
         else if(_parent.winner == "Players 3 and 4")
         {
            if(_root.player3.exist)
            {
               _root.savedata.data.records[_root.player3character][19]++;
            }
            if(_root.player4.exist)
            {
               _root.savedata.data.records[_root.player4character][19]++;
            }
         }
         else if(_parent.winner == "Players 1, 3, and 4")
         {
            if(_root.player1.exist)
            {
               _root.savedata.data.records[_root.player1character][19]++;
            }
            if(_root.player3.exist)
            {
               _root.savedata.data.records[_root.player3character][19]++;
            }
            if(_root.player4.exist)
            {
               _root.savedata.data.records[_root.player4character][19]++;
            }
         }
         else if(_parent.winner == "Players 1, 2, and 4")
         {
            if(_root.player1.exist)
            {
               _root.savedata.data.records[_root.player1character][19]++;
            }
            if(_root.player2.exist)
            {
               _root.savedata.data.records[_root.player2character][19]++;
            }
            if(_root.player4.exist)
            {
               _root.savedata.data.records[_root.player4character][19]++;
            }
         }
         else if(_parent.winner == "Players 2, 3, and 4")
         {
            if(_root.player3.exist)
            {
               _root.savedata.data.records[_root.player3character][19]++;
            }
            if(_root.player2.exist)
            {
               _root.savedata.data.records[_root.player2character][19]++;
            }
            if(_root.player4.exist)
            {
               _root.savedata.data.records[_root.player4character][19]++;
            }
         }
      }
      done = true;
   }
   done = false;
   p1points = 0;
   p2points = 0;
   p3points = 0;
   p4points = 0;
   _parent.ground.lives = _root.templife;
   p1p = "";
   p2p = "";
   p3p = "";
   p4p = "";
   if(_root.player1.exist)
   {
      _root.p1points2 = _root.p1points;
   }
   else
   {
      _root.p1points = 0;
      _root.p1points2 = -10000;
      p1points = 0;
   }
   if(_root.player2.exist)
   {
      _root.p2points2 = _root.p2points;
   }
   else
   {
      _root.p2points = 0;
      _root.p2points2 = -10000;
      p2points = 0;
   }
   if(_root.player3.exist)
   {
      _root.p3points2 = _root.p3points;
   }
   else
   {
      _root.p3points = 0;
      _root.p3points2 = -10000;
      p3points = 0;
   }
   if(_root.player4.exist)
   {
      _root.p1points4 = _root.p4points;
   }
   else
   {
      _root.p4points = 0;
      _root.p4points2 = -10000;
      p4points = 0;
   }
   getPoints();
}
