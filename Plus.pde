class Plus{

  float plusTimer=0;
  int timeGap=40;
  float jump=0;
  float count;
  boolean turn = true;
  boolean p2turn = false;
  int screamX=0;
  
  Plus(){
      screamX =0;
      jump = 0;
      plusTimer=0;
  }
  

  
  void display(){
  plusTimer+=2;
  
  if(killerLV >=9){
         people1 =   loadImage("people1weapon.PNG");
         }
         
          if(ghostLV>=6){
            greatMonk = true;
            people3 =   loadImage("greatMonk.PNG");
          }
  if(ending == truthEnding){
   image(bg4,0, 0);
    textAlign(CENTER);
   textSize(30);
   fill(0);
   text("因為報導了這個消息",480,80);   
   image(truthImg,440,100,80,94);
   text("圍觀的人群都離開了，大屋也被拆除了",480,230);   
   
   
  if( plusTimer>180){
        initGame();
    gameState = GAME_RUN;
  
  
  }
  
  
  }
        
  
        if(day==2&&plusTimer<500 && ending==0){
              image(bg4,0, 0);
              //------------------------------------------
              
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              
              //Display people
        pX[8]=pX[9]=960-192;
        pX[10]=pX[11]=960-192*2;
        pX[12]=pX[13]=960-192*3;
        pX[14]=pX[15]=960-192*4;
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+7].display();
                    }
        }
        
        
        if(day==3&&plusTimer<500&& ending==0){
              image(bg3,0, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
         pX[16]=960;
         pX[17]=pX[16]-96;
         pX[18]=pX[17]-192;
         pX[19]=pX[18]-96;
         pX[20]=pX[19]-192;
         pX[21]=pX[20]-96;
         pX[22]=pX[21]-192;
         pX[23]=pX[22]-96;
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+15].display();
                    }
        }
        
        if(day==4&&plusTimer<500&& ending==0){
              image(bg2,0, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
          pX[24]=pX[25]=960-160;
          pX[26]=pX[27]=960-320;
          for(int i=28 ; i<=31; i++){
            pX[i] =480-160*(i-28);
          }
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+23].display();
                    }
        }
        
        if(day==5&&plusTimer<500&& ending==0){
              image(bg1,0, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
          for(int i=32 ; i<=39; i++){
          if(i%2 !=0){
           pX[i] = 960-120*(i-31);
          }else{
          pX[i] =960-120*(i-30);
          }
        }
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+31].display();
                    }
        }
        
        if(day==6&&plusTimer<500&& ending==0){
              image(bg5,0, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
          for(int i=40 ; i<=44; i++){
             pX[i] = 960-260-91.25*(i-40);
        }
        for(int i=45 ; i<=47; i++){
             pX[i] = 960-260-182.5*(i-45);
        } 
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+39].display();
                    }
        }
        
        if(day==7&&plusTimer<500&& ending==0){
              image(bg4,0, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
             pX[48]=pX[49]=960;
            pX[50]=pX[51]=960-85;
            pX[52]=pX[51]-120;
            pX[53]=pX[52]-85;
            pX[54]=pX[53]-120;
            pX[55]=pX[54]-85;
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+47].display();
                    }
        }
        
        if(day==8&&plusTimer<500&& ending==0){
              image(bg3,-160, 0);
              image(bg4,800, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
             for(int i=56 ; i<=62; i+=2){
             pX[i] = 800-120*(i-56);
              }
              for(int i=57 ; i<=63; i+=2){
                   pX[i] = 800-120*(i-57);
              } 
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+55].display();
                    }
        }
        
         if(day==9&&plusTimer<500&& ending==0){
              image(bg2,0, 0);
                            //------------------------------------------
              textAlign(CENTER);
              textSize(30);
              fill(0);
              text("因為報導了這些消息",480,80);   
      if(player.material[0]==1){
        image(killer,320,100,80,94);
    }
      if(player.material[0]==2){
        image(drug,320,100,80,94);
    }
      if(player.material[0]==3){
        image(ghost,320,100,80,94);
    }
      if(player.material[0]==4){
        image(bird,320,100,80,94);
    }
      //02
            if(player.material[1]==1){
        image(killer,440,100,80,94);
    }
      if(player.material[1]==2){
        image(drug,440,100,80,94);
    }
      if(player.material[1]==3){
        image(ghost,440,100,80,94);
    }
      if(player.material[1]==4){
        image(bird,440,100,80,94);
    }
      //03     
      if(player.material[2]==1){
        image(killer,560,100,80,94);
      }
      if(player.material[2]==2){
        image(drug,560,100,80,94);
    }
      if(player.material[2]==3){
        image(ghost,560,100,80,94);
    }
      if(player.material[2]==4){
        image(bird,560,100,80,94);
    }
     text("圍觀的人變多了",480,230);
              //------------------------------------------
              
              //Display people
             for(int i=64 ; i<=69; i++){
             pX[i] = 960-160*(i-63);
        }
                    for(int i=1;i<=8;i++){
                     if(plusTimer>timeGap*i)people[i+63].display();
                    }
        }


//-----------------尖叫動畫-----------------
if(plusTimer>500){
fill(0);
textAlign(CENTER);
  rect(0,0,width,height);
  fill(255);
  text("當天夜裡...",480,240);
}

if(plusTimer>560){
  
  
  
     tint(80);
     image(bg1,0, 0);
     image(house,250,40);
     
     if(turn == true){
      pushMatrix();
      translate(115, downLine+jump);
      scale(-1, 1);
      image(people1, 0, 0);
      popMatrix();

      pushMatrix();
      translate(175, upLine+jump);
      scale(-1, 1);
      image(people3, 0, 0);
      popMatrix();
      
      }else{
       image(people1, 40,downLine+jump);
       image(people3, 100,upLine+jump);
      }

    if(p2turn == true){
      pushMatrix();
      translate(275, middleLine+jump);
      scale(-1, 1);
      image(people2, 0, 0);
      popMatrix();
      }else{
       image(people2, 200,middleLine+jump);
      }

     
     noStroke();
    
    if(plusTimer>560+2*60){
     
      
      image(screamImage,screamX,0);
      count++;
      if(count<10)jump-=3;
      if(count>=10)jump+=3;
      if(count>=20)jump=0;

      turn=false;
    }
     if(plusTimer>=580 && plusTimer<=581){
               //scream.trigger();
     }
    
    if(plusTimer>560+4*60){
           screamX=-1100;
    }
    if(plusTimer>560+4.5*60){
      p2turn =true;
      image(surprise,200-40 ,middleLine+jump-100);
    }
    
    if(plusTimer>560+5*60){
      image(surprise,100-40 ,upLine+jump-100);
    }
    
    if(plusTimer>560+5.5*60){
      image(surprise,40-40 ,downLine+jump-100);
    }
       if(plusTimer>560+7*60){
         
         initGame();
     gameState = GAME_RUN;

     
    }
}

  
  
  

  
  
  }
  
  void count(){
    
    people = new People[75];
  
   //09 people
    people[0] = new People01(pX[0], pY[0]);
    people[1] = new People02(pX[1], pY[1]);
    people[2] = new People02(pX[2], pY[2]);
    people[3] = new People01(pX[3], pY[3]);
    people[4] = new People01(pX[4], pY[4]);
    people[5] = new People02(pX[5], pY[5]);
    people[6] = new People03(pX[6], pY[6]);
    people[7] = new People03(pX[7], pY[7]);
    
   // 08 people
    if(day>1){
    for(int i=0;i<=1;i++){
            if(DNMN[1][i]==1){people[8+i*3] = new People01(pX[8+i*3], pY[8+i*3]);people[9+i*3] = new People01(pX[9+i*3], pY[9+i*3]);people[10+i*3] = new People01(pX[10+i*3], pY[10+i*3]);}
            if(DNMN[1][i]==2){people[8+i*3] = new People02(pX[8+i*3], pY[8+i*3]);people[9+i*3] = new People02(pX[9+i*3], pY[9+i*3]);people[10+i*3] = new People02(pX[10+i*3], pY[10+i*3]);}
            if(DNMN[1][i]==3){people[8+i*3] = new People03(pX[8+i*3], pY[8+i*3]);people[9+i*3] = new People03(pX[9+i*3], pY[9+i*3]);people[10+i*3] = new People03(pX[10+i*3], pY[10+i*3]);}
            if(DNMN[1][i]==4){people[8+i*3] = new People04(pX[8+i*3], pY[8+i*3]);people[9+i*3] = new People04(pX[9+i*3], pY[9+i*3]);people[10+i*3] = new People04(pX[10+i*3], pY[10+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[1][i]==1){people[14] = new People01(pX[14], pY[14]);people[15] = new People01(pX[15], pY[15]);}
            if(DNMN[1][i]==2){people[14] = new People02(pX[14], pY[14]);people[15] = new People02(pX[15], pY[15]);}
            if(DNMN[1][i]==3){people[14] = new People03(pX[14], pY[14]);people[15] = new People03(pX[15], pY[15]);}
            if(DNMN[1][i]==4){people[14] = new People04(pX[14], pY[14]);people[15] = new People04(pX[15], pY[15]);}
    }
    }
    
    // 07 people
    if(day>2){
    for(int i=0;i<=1;i++){
            if(DNMN[2][i]==1){people[16+i*3] = new People01(pX[16+i*3], pY[16+i*3]);people[17+i*3] = new People01(pX[17+i*3], pY[17+i*3]);people[18+i*3] = new People01(pX[18+i*3], pY[18+i*3]);}
            if(DNMN[2][i]==2){people[16+i*3] = new People02(pX[16+i*3], pY[16+i*3]);people[17+i*3] = new People02(pX[17+i*3], pY[17+i*3]);people[18+i*3] = new People02(pX[18+i*3], pY[18+i*3]);}
            if(DNMN[2][i]==3){people[16+i*3] = new People03(pX[16+i*3], pY[16+i*3]);people[17+i*3] = new People03(pX[17+i*3], pY[17+i*3]);people[18+i*3] = new People03(pX[18+i*3], pY[18+i*3]);}
            if(DNMN[2][i]==4){people[16+i*3] = new People04(pX[16+i*3], pY[16+i*3]);people[17+i*3] = new People04(pX[17+i*3], pY[17+i*3]);people[18+i*3] = new People04(pX[18+i*3], pY[18+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[2][i]==1){people[22] = new People01(pX[22], pY[22]);people[23] = new People01(pX[23], pY[23]);}
            if(DNMN[2][i]==2){people[22] = new People02(pX[22], pY[22]);people[23] = new People02(pX[23], pY[23]);}
            if(DNMN[2][i]==3){people[22] = new People03(pX[22], pY[22]);people[23] = new People03(pX[23], pY[23]);}
            if(DNMN[2][i]==4){people[22] = new People04(pX[22], pY[22]);people[23] = new People04(pX[23], pY[23]);}
    }
    }
    
     // 06 people
    if(day>3){
    for(int i=0;i<=1;i++){
            if(DNMN[3][i]==1){people[24+i*3] = new People01(pX[24+i*3], pY[24+i*3]);people[25+i*3] = new People01(pX[25+i*3], pY[25+i*3]);people[26+i*3] = new People01(pX[26+i*3], pY[26+i*3]);}
            if(DNMN[3][i]==2){people[24+i*3] = new People02(pX[24+i*3], pY[24+i*3]);people[25+i*3] = new People02(pX[25+i*3], pY[25+i*3]);people[26+i*3] = new People02(pX[26+i*3], pY[26+i*3]);}
            if(DNMN[3][i]==3){people[24+i*3] = new People03(pX[24+i*3], pY[24+i*3]);people[25+i*3] = new People03(pX[25+i*3], pY[25+i*3]);people[26+i*3] = new People03(pX[26+i*3], pY[26+i*3]);}
            if(DNMN[3][i]==4){people[24+i*3] = new People04(pX[24+i*3], pY[24+i*3]);people[25+i*3] = new People04(pX[25+i*3], pY[25+i*3]);people[26+i*3] = new People04(pX[26+i*3], pY[26+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[3][i]==1){people[30] = new People01(pX[30], pY[30]);people[31] = new People01(pX[31], pY[31]);}
            if(DNMN[3][i]==2){people[30] = new People02(pX[30], pY[30]);people[31] = new People02(pX[31], pY[31]);}
            if(DNMN[3][i]==3){people[30] = new People03(pX[30], pY[30]);people[31] = new People03(pX[31], pY[31]);}
            if(DNMN[3][i]==4){people[30] = new People04(pX[30], pY[30]);people[31] = new People04(pX[31], pY[31]);}
    }
    }
    
    // 05 people
    if(day>4){
    for(int i=0;i<=1;i++){
            if(DNMN[4][i]==1){people[32+i*3] = new People01(pX[32+i*3], pY[32+i*3]);people[33+i*3] = new People01(pX[33+i*3], pY[33+i*3]);people[34+i*3] = new People01(pX[34+i*3], pY[34+i*3]);}
            if(DNMN[4][i]==2){people[32+i*3] = new People02(pX[32+i*3], pY[32+i*3]);people[33+i*3] = new People02(pX[33+i*3], pY[33+i*3]);people[34+i*3] = new People02(pX[34+i*3], pY[34+i*3]);}
            if(DNMN[4][i]==3){people[32+i*3] = new People03(pX[32+i*3], pY[32+i*3]);people[33+i*3] = new People03(pX[33+i*3], pY[33+i*3]);people[34+i*3] = new People03(pX[34+i*3], pY[34+i*3]);}
            if(DNMN[4][i]==4){people[32+i*3] = new People04(pX[32+i*3], pY[32+i*3]);people[33+i*3] = new People04(pX[33+i*3], pY[33+i*3]);people[34+i*3] = new People04(pX[34+i*3], pY[34+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[4][i]==1){people[38] = new People01(pX[38], pY[38]);people[39] = new People01(pX[39], pY[39]);}
            if(DNMN[4][i]==2){people[38] = new People02(pX[38], pY[38]);people[39] = new People02(pX[39], pY[39]);}
            if(DNMN[4][i]==3){people[38] = new People03(pX[38], pY[38]);people[39] = new People03(pX[39], pY[39]);}
            if(DNMN[4][i]==4){people[38] = new People04(pX[38], pY[38]);people[39] = new People04(pX[39], pY[39]);}
    }
    }
    
        // 04 people
    if(day>5){
    for(int i=0;i<=1;i++){
            if(DNMN[5][i]==1){people[40+i*3] = new People01(pX[40+i*3], pY[40+i*3]);people[41+i*3] = new People01(pX[41+i*3], pY[41+i*3]);people[42+i*3] = new People01(pX[42+i*3], pY[42+i*3]);}
            if(DNMN[5][i]==2){people[40+i*3] = new People02(pX[40+i*3], pY[40+i*3]);people[41+i*3] = new People02(pX[41+i*3], pY[41+i*3]);people[42+i*3] = new People02(pX[42+i*3], pY[42+i*3]);}
            if(DNMN[5][i]==3){people[40+i*3] = new People03(pX[40+i*3], pY[40+i*3]);people[41+i*3] = new People03(pX[41+i*3], pY[41+i*3]);people[42+i*3] = new People03(pX[42+i*3], pY[42+i*3]);}
            if(DNMN[5][i]==4){people[40+i*3] = new People04(pX[40+i*3], pY[40+i*3]);people[41+i*3] = new People04(pX[41+i*3], pY[41+i*3]);people[42+i*3] = new People04(pX[42+i*3], pY[42+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[5][i]==1){people[46] = new People01(pX[46], pY[46]);people[47] = new People01(pX[47], pY[47]);}
            if(DNMN[5][i]==2){people[46] = new People02(pX[46], pY[46]);people[47] = new People02(pX[47], pY[47]);}
            if(DNMN[5][i]==3){people[46] = new People03(pX[46], pY[46]);people[47] = new People03(pX[47], pY[47]);}
            if(DNMN[5][i]==4){people[46] = new People04(pX[46], pY[46]);people[47] = new People04(pX[47], pY[47]);}
    }
    }
    
    // 03 people
    if(day>6){
    for(int i=0;i<=1;i++){
            if(DNMN[6][i]==1){people[48+i*3] = new People01(pX[48+i*3], pY[48+i*3]);people[49+i*3] = new People01(pX[49+i*3], pY[49+i*3]);people[50+i*3] = new People01(pX[50+i*3], pY[50+i*3]);}
            if(DNMN[6][i]==2){people[48+i*3] = new People02(pX[48+i*3], pY[48+i*3]);people[49+i*3] = new People02(pX[49+i*3], pY[49+i*3]);people[50+i*3] = new People02(pX[50+i*3], pY[50+i*3]);}
            if(DNMN[6][i]==3){people[48+i*3] = new People03(pX[48+i*3], pY[48+i*3]);people[49+i*3] = new People03(pX[49+i*3], pY[49+i*3]);people[50+i*3] = new People03(pX[50+i*3], pY[50+i*3]);}
            if(DNMN[6][i]==4){people[48+i*3] = new People04(pX[48+i*3], pY[48+i*3]);people[49+i*3] = new People04(pX[49+i*3], pY[49+i*3]);people[50+i*3] = new People04(pX[50+i*3], pY[50+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[6][i]==1){people[54] = new People01(pX[54], pY[54]);people[55] = new People01(pX[55], pY[55]);}
            if(DNMN[6][i]==2){people[54] = new People02(pX[54], pY[54]);people[55] = new People02(pX[55], pY[55]);}
            if(DNMN[6][i]==3){people[54] = new People03(pX[54], pY[54]);people[55] = new People03(pX[55], pY[55]);}
            if(DNMN[6][i]==4){people[54] = new People04(pX[54], pY[54]);people[55] = new People04(pX[55], pY[55]);}
    }
    }
    
     // 02 people
    if(day>7){
    for(int i=0;i<=1;i++){
            if(DNMN[7][i]==1){people[56+i*3] = new People01(pX[56+i*3], pY[56+i*3]);people[57+i*3] = new People01(pX[57+i*3], pY[57+i*3]);people[58+i*3] = new People01(pX[58+i*3], pY[58+i*3]);}
            if(DNMN[7][i]==2){people[56+i*3] = new People02(pX[56+i*3], pY[56+i*3]);people[57+i*3] = new People02(pX[57+i*3], pY[57+i*3]);people[58+i*3] = new People02(pX[58+i*3], pY[58+i*3]);}
            if(DNMN[7][i]==3){people[56+i*3] = new People03(pX[56+i*3], pY[56+i*3]);people[57+i*3] = new People03(pX[57+i*3], pY[57+i*3]);people[58+i*3] = new People03(pX[58+i*3], pY[58+i*3]);}
            if(DNMN[7][i]==4){people[56+i*3] = new People04(pX[56+i*3], pY[56+i*3]);people[57+i*3] = new People04(pX[57+i*3], pY[57+i*3]);people[58+i*3] = new People04(pX[58+i*3], pY[58+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[7][i]==1){people[62] = new People01(pX[62], pY[62]);people[63] = new People01(pX[63], pY[63]);}
            if(DNMN[7][i]==2){people[62] = new People02(pX[62], pY[62]);people[63] = new People02(pX[63], pY[63]);}
            if(DNMN[7][i]==3){people[62] = new People03(pX[62], pY[62]);people[63] = new People03(pX[63], pY[63]);}
            if(DNMN[7][i]==4){people[62] = new People04(pX[62], pY[62]);people[63] = new People04(pX[63], pY[63]);}
    }
    }
    
     // 01 people
    if(day>8){
    for(int i=0;i<=1;i++){
            if(DNMN[8][i]==1){people[64+i*3] = new People01(pX[64+i*3], pY[64+i*3]);people[65+i*3] = new People01(pX[65+i*3], pY[65+i*3]);people[66+i*3] = new People01(pX[66+i*3], pY[66+i*3]);}
            if(DNMN[8][i]==2){people[64+i*3] = new People02(pX[64+i*3], pY[64+i*3]);people[65+i*3] = new People02(pX[65+i*3], pY[65+i*3]);people[66+i*3] = new People02(pX[66+i*3], pY[66+i*3]);}
            if(DNMN[8][i]==3){people[64+i*3] = new People03(pX[64+i*3], pY[64+i*3]);people[65+i*3] = new People03(pX[65+i*3], pY[65+i*3]);people[66+i*3] = new People03(pX[66+i*3], pY[66+i*3]);}
            if(DNMN[8][i]==4){people[64+i*3] = new People04(pX[64+i*3], pY[64+i*3]);people[65+i*3] = new People04(pX[65+i*3], pY[65+i*3]);people[66+i*3] = new People04(pX[66+i*3], pY[66+i*3]);}
    }
        for(int i=2;i<3;i++){
            if(DNMN[8][i]==1){people[68] = new People01(pX[68], pY[68]);people[69] = new People01(pX[69], pY[69]);}
            if(DNMN[8][i]==2){people[68] = new People02(pX[68], pY[68]);people[69] = new People02(pX[69], pY[69]);}
            if(DNMN[8][i]==3){people[68] = new People03(pX[68], pY[68]);people[69] = new People03(pX[69], pY[69]);}
            if(DNMN[8][i]==4){people[68] = new People04(pX[68], pY[68]);people[69] = new People04(pX[69], pY[69]);}
    }
    }
  
  
  }



}
