class Police {
  
   boolean isAlive;
   boolean turnAround = false;
   boolean HIT=false;
  
  float x, y;
  float w = 75;
  float h = 50;
  float countforinterview;
  float talkX=480;

  Police(float x, float y){
    isAlive = true;
    this.x = x;
    this.y = y;
  }

  void update(){
    x-=speed;
  }

 void display(){
   

       if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(policeImg, 0, 0);
      popMatrix();
      }else{
       image(policeImg,x,y);
      }


     
     
   
      
 
 }

  void checkCollision(){
    
    if(isHit(x, y, w, h, player.x, player.y, player.w, player.h)){
      HIT = true;
    }
    
   if(isAlive == true){    
     if(HIT){
           
           normalSpeed=0;
           countforinterview++;
          interviewing = true;
          
          
          
          mc = loadImage("img/mcIdle.png");

       if(countforinterview>30){
         turnAround = true;
       }
       if(countforinterview>60){
         
          talkX=480;
         textAlign(CENTER);
      textSize(25);
      fill(255,180);
      noStroke();
      rectMode(CENTER);
     rect(talkX,473,300,30);
      fill(30);
      text("不能再過去囉，這一區發生命案，被封鎖了",talkX,480);
         
       }
       
      if(countforinterview>180){
        
        interviewing=false;
        countforinterview = 0;
        isAlive = false;
      
      gameState = GAME_BADEND;
        HIT = false;
       }
          
          
          
    }
  }
}
   
 }
