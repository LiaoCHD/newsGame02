class People02 extends People { // Second Kind of People: Drug Route

boolean endingChecked = false;

People02(float x, float y){
        super(x,y);
        
  }
  
  void display(){
     
      if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people2, 0, 0);
      popMatrix();
      }else{
      image(people2,x,y);
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
          
          mc = loadImage("img/mcIdle.png");

       if(countforinterview>30){
         mc = loadImage("img/mcAsk.png");
         turnAround = true;
       }
       if(countforinterview>60){
         
         if(ending != fansEnding)image(drug,iconXposition ,iconYposition);
         talkX=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
     if (drugLV==0){
     rect(talkX,473,width,30);
      fill(30);
      text("尖叫？「陳里長」很認真工作，這裡的治安應該很好才對",talkX,480);
     }
     if (drugLV==1){
      rect(talkX,473,width,30);
      fill(30);
      text("「陳里長」要大家不要擔心，那應該就是沒事才對",talkX,480);
     }
     if (drugLV==2){
     rect(talkX,473,width,30);
      fill(30);
      text("應該是有什麼誤會啦，這不是什麼治安漏洞",talkX,480);
     }
     if (drugLV==3){
     rect(talkX,473,width,30);
      fill(30);
      text("這是「陳里長」推廣的「尖叫療法」啦！這是新型醫療啦",talkX,480);
     }
     if (drugLV==4){
      rect(talkX,473,width,30);
      fill(30);
      text("「尖叫療法」真的有效啊！我們要揪大家過來力挺「陳里長」",talkX,480);
     }
     if (drugLV==5){
      rect(talkX,473,width,30);
      fill(30);
      text("「陳里長」很盡責，我們要到處宣傳他的政績，不要讓人抹黑他",talkX,480);
     }
     if (drugLV==6){
     rect(talkX,473,width,30);
      fill(30);
      text("陳里長最近氣色紅潤，一定是因為「尖叫療法」，陳里長加油",talkX,480);
     }
     if (drugLV==7){
     rect(talkX,473,width,30);
      fill(30);
      text("陳里長口才很好，一定是因為「尖叫療法」，陳里長加油",talkX,480);
     }
     if (drugLV==8){
     rect(talkX,473,width,30);
      fill(30);
      text("陳里長因為「尖叫療法」，處理事情更有效率，陳里長加油",talkX,480);
     }
     if (drugLV==9){
     rect(talkX,473,width,30);
      fill(30);
      text("陳里長因為「尖叫療法」，身體才那麼強壯，陳里長加油",talkX,480);
     }
     if (drugLV==10){
     rect(talkX,473,width,30);
      fill(30);
      text("陳里長真的很棒，提供大家免費的「尖叫療法」，陳里長加油",talkX,480);
     }
     if (drugLV==11){
     rect(talkX,473,width,30);
      fill(30);
      text("「尖叫療法」讓我這幾天排便順暢，心情都很好，謝謝陳里長",talkX,480);
     }
     if (drugLV>=12){
     rect(talkX,473,width,30);
      fill(30);
      if(ending == fansEnding){
        text("前方已經擠得水洩不通了，你應該永遠也到不了大屋了",talkX,480);
        endingChecked = true;
      }else{
      text("「尖叫療法」真的不錯，全民都應該來，享受陳里長的政績",talkX,480);
      }
     }
         
       }
       
      if(countforinterview>210){
         
                 if(ending != fansEnding){
        player.materialNum ++;
        if(player.materialNum==1)player.material[0] = 2;
        if(player.materialNum==2)player.material[1] = 2;
        if(player.materialNum==3)player.material[2] = 2;
                 }
                 if(countforinterview>=210&&countforinterview<211){
               /* if(player.materialNum==1)good1.trigger();
                if(player.materialNum==2)good2.trigger();
                if(player.materialNum==3)good3.trigger();*/
        }
        countforinterview = 0;
        isAlive = false;
        drugLV++;
        
        if(endingChecked == true)gameState = GAME_BADEND;
        
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
