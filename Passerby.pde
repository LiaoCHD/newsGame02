class Passerby {
  
   boolean isAlive;
   boolean turnAround = false;
   boolean HIT=false;
  
  float x, y;
  float w = 75;
  float h = 50;
  float countforinterview;
  float iconXposition,iconYposition;

  Passerby(float x, float y){
    isAlive = true;
    this.x = x;
    this.y = y;
  }

  void update(){
    x-=speed;
  }

 void display(){
   
     if(y%3==0){
       if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(passerby2, 0, 0);
      popMatrix();
      }else{
       image(passerby2,x,y);
      }
     
     }else{
       if(turnAround == true){
      pushMatrix();
      translate(x+w, y);
      scale(-1, 1);
      image(passerby1, 0, 0);
      popMatrix();
      }else{
       image(passerby1,x,y);
      }
     
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
         disturbing = true;
          iconXposition = x-20;
          iconYposition = y-100;
          
          
          
          mc = loadImage("img/mcIdle.png");

       if(countforinterview>30){
         mc = loadImage("img/mcAsk.png");
         turnAround = true;
       }
       if(countforinterview>60){
         
         image(wonder,iconXposition ,iconYposition);
         
       }
       
      if(countforinterview>180){
        
        disturbing=false;
        countforinterview = 0;
        isAlive = false;
        if(keyPressed==true && keyCode==RIGHT){
            normalSpeed=2*faster;
        }else{
         normalSpeed=2;
        }

        HIT = false;
       }
          
          
          
    }
  }
}
   
 }
