class People01 extends People { // First Kind of People: Killer Route

People01(float x, float y){
        super(x,y);
        
  }
  
  
  void displayback(){
    
     if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people1, 0, 0);
      popMatrix();
      }else{
       image(people1,x,y);
      }
  
  
  }
  
  void display(){
      
      if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people1, 0, 0);
      popMatrix();
      }else{
       image(people1,x,y);
      }
}

  void checkCollision(){
    
     if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      HIT = true;
    }
    
   if(isAlive == true){    
   if(HIT){
          interviewing = true;
          iconXposition = x-20;
          iconYposition = y-100;
          normalSpeed=0;
          countforinterview++;
          
          mc = loadImage("mcIdle.png");

       if(countforinterview>30){
         mc = loadImage("mcAsk.png");
         turnAround = true;
       }
       if(countforinterview>60){
         
         image(killer,iconXposition ,iconYposition);
         talkX=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
     if (killerLV==0){
     rect(talkX,473,width,30);
      fill(30);
      text("應該是神經病在裡頭尖叫",talkX,480);
     }
     if (killerLV==1){
      rect(talkX,473,width,30);
      fill(30);
      text("附近有一個神經病很愛大叫，大家都稱呼他「叫叫哥」",talkX,480);
     }
     if (killerLV==2){
     rect(talkX,473,width,30);
      fill(30);
      text("「叫叫哥」常常對著路人大叫，會不會是他啊？",talkX,480);
     }
     if (killerLV==3){
     rect(talkX,473,width,30);
      fill(30);
      text("「叫叫哥」好像很喜歡攻擊小朋友...大屋附近的民衆要小心",talkX,480);
     }
     if (killerLV==4){
      rect(talkX,473,width,30);
      fill(30);
      text("聽説里長兒子被「叫叫哥」攻擊過...",talkX,480);
     }
     if (killerLV==5){
      rect(talkX,473,width,30);
      fill(30);
      text("附近有一個小學生失蹤，該不會被「叫叫哥」...",talkX,480);
     }
     if (killerLV==6){
     rect(talkX,473,width,30);
      fill(30);
      text("大家都説「叫叫哥」在大屋裡囚禁了一個小朋友欸...",talkX,480);
     }
     if (killerLV==7){
     rect(talkX,473,width,30);
      fill(30);
      text("有人説看到「叫叫哥」在附近鬼鬼祟祟的…",talkX,480);
     }
     if (killerLV==8){
     rect(talkX,473,width,30);
      fill(30);
      text("所以那其實是小朋友的尖叫聲嗎？「叫叫哥」好可怕...",talkX,480);
     }
     if (killerLV==9){
     rect(talkX,473,width,30);
      fill(30);
      text("「叫叫哥」常穿著粉色上衣、藍色褲子，綁馬尾，大家要注意",talkX,480);
     }
     if (killerLV==10){
     rect(talkX,473,width,30);
      fill(30);
      text("「叫叫哥」太過分了，不能放過他",talkX,480);
     }
     if (killerLV==11){
     rect(talkX,473,width,30);
      fill(30);
      text("「叫叫哥」從屋子出來的時候，大家一定要抓住他",talkX,480);
     }
     if (killerLV>=12){
     rect(talkX,473,width,30);
      fill(30);
      text("如果看到「叫叫哥」一定要告訴我們…",talkX,480);
     }
     
     }
       
      if(countforinterview>210){
        
        player.materialNum ++;
        if(countforinterview>=210&&countforinterview<211){
                /*if(player.materialNum==1)good1.trigger();
                if(player.materialNum==2)good2.trigger();
                if(player.materialNum==3)good3.trigger();*/
        }
        if(player.materialNum==1)player.material[0] = 1;
        if(player.materialNum==2)player.material[1] = 1;
        if(player.materialNum==3)player.material[2] = 1;
        countforinterview = 0;
        isAlive = false;
        talkX=-1100;
        killerLV++;
        if(keyPressed==true && key==RIGHT){
            normalSpeed=2*faster;
        }else{
         normalSpeed=2;
        }
        if(player.materialNum==1 || player.materialNum==2){
        interviewing = false;
        }
        HIT = false;
       }
          
          
          
    }
  }
}





  
  
  }
