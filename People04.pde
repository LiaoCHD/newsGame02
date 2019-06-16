class People04 extends People { //Forth Kind of People: bird Route

People04(float x, float y){
        super(x,y);
        
  }
  
  void display(){
      
      if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(people4, 0, 0);
      popMatrix();
      }else{
      image(people4,x,y);
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
         
         image(bird,iconXposition ,iconYposition);
         
       }
       
      if(countforinterview>180){
        player.materialNum ++;
        if(player.materialNum==1)player.material[0] =4;
        if(player.materialNum==2)player.material[1] =4;
        if(player.materialNum==3)player.material[2] =4;
        countforinterview = 0;
        isAlive = false;
        birdLV++;
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
